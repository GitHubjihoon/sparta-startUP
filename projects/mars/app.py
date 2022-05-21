from flask import Flask, render_template, request, jsonify
app = Flask(__name__)

from pymongo import MongoClient
import certifi
ca = certifi.where()
client = MongoClient('mongodb+srv://test:sparta@cluster0.4neb0.mongodb.net/?retryWrites=true&w=majority', tlsCAFile=ca)
db = client.dbsparta


@app.route('/')
def home():
    return render_template('index.html')

@app.route("/mars", methods=["POST"])
def web_mars_post():
    name_receive = request.form['name_give']  #index.html 파일의 DOM을 선택해서 변수로 지정하는 작업
    address_receive = request.form['address_give']  #index.html 파일의 DOM을 선택해서 변수로 지정하는 작업
    size_receive = request.form['size_give']  #index.html 파일의 DOM을 선택해서 변수로 지정하는 작업

    doc = {   #DB에 저장하는 내용 _ doc라는 이름의 자료구조로 값을 저장한다
        'name': name_receive,  #name이라는 이름으로 name_receive로 들어온 값(데이터)를 저장합니다.
        'address': address_receive,
        'size': size_receive
    }

    db.mars.insert_one(doc)  #doc에 저장한 데이터를 mars라는 이름의 DB에 저장한다.

    return jsonify({'msg': '주문 완료!'})

@app.route("/mars", methods=["GET"])
def web_mars_get():
    # 여러개 찾기 (가져오는 조건 없음(필터 없이 다 가져옴)) ( _id 값은 제외하고 출력)
    order_list = list(db.mars.find({}, {'_id': False}))
    return jsonify({'oders': order_list})  #oders 라는 키로 위에서 order_list라는 변수에 담은 DB데이터를 값으로 정한다.

if __name__ == '__main__':
    app.run('0.0.0.0', port=5000, debug=True)