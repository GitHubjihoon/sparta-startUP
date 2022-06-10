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

@app.route("/bucket", methods=["POST"])
def bucket_post():
    bucket_receive = request.form['bucket_give']

    bucket_list = list(db.bucket.find({}, {'_id': False}))  #bucket_list라는 변수에 리스트 형태로 DB에 있는 모든 데이터를 담는 코드.
    count = len(bucket_list) + 1    #count라는 변수에 위에서 bucket_list에 담은 리스트에 담긴 데이터의 수를 셈 + 1

    doc = {
        'num': count,
        'bucket': bucket_receive,
        'done': 0
    }

    db.bucket.insert_one(doc)

    return jsonify({'msg': '등록 완료!'})

@app.route("/bucket/done", methods=["POST"])
def bucket_done():
    num_receive = request.form["num_give"]
    db.bucket.update_one({'num': int(num_receive)}, {'$set': {'done': 1}}) #클라이언트로 numgive에 담긴 정보를 받아서 numreceive에 저장, *문자열로 들어가서 숫자로 바꿔줘야함( int(문자열 정보))
    return jsonify({'msg': '버킷 완료!'})   # num이라는 키의 값이 num_receive 것의 done이라는 키값의 value를 1로 변환하라.

@app.route("/bucket", methods=["GET"])
def bucket_get():
    bucket_list = list(db.bucket.find({}, {'_id': False}))

    return jsonify({'buckets': bucket_list})   #buckets 라는 key에 위에서 DB에서 불러온 정보를 value로 담아준다.

if __name__ == '__main__':
    app.run('0.0.0.0', port=5000, debug=True)
