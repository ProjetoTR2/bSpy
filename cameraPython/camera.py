import sys
import time
import requests
import base64

def main():
	r = requests.post("http://bspy.herokuapp.com/salvar", data={'name': "teste", 'file':base64.b64encode(open('image.png', 'rb').read())})
	r.should_close = True
	print(r.status_code, r.reason)

if  __name__ =='__main__':main()