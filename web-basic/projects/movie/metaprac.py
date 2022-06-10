import requests
from bs4 import BeautifulSoup

url = 'https://movie.naver.com/movie/bi/mi/basic.naver?code=191597'

headers = {'User-Agent' : 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36'}
data = requests.get(url,headers=headers)

soup = BeautifulSoup(data.text, 'html.parser')

# 여기에 코딩을 해서 meta tag를 먼저 가져와보겠습니다.

title = soup.select_one('meta[property="og:title"]')['content']  #title이라는 변수에 meta테그의 proterty라는 속성의 값이 og:title인 것을 가져와라  그리고 가져온 값에서 content라는 key의 값을 추출하라.
image = soup.select_one('meta[property="og:image"]')['content']
description = soup.select_one('meta[property="og:description"]')['content']

print(title, image, description)