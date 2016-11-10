import sys
import time
import requests
import base64
from SimpleCV import Camera

def main():
	camera = Camera(0)
	image = camera.getImage()
	image.show()
	image.save("image.png")
	r = requests.post("http://localhost:3000/salvar", data={'name': "teste", 'file':base64.b64encode(open('image.png', 'rb').read())})
	r.should_close = True
	print(r.status_code, r.reason)

if  __name__ =='__main__':main()