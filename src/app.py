from flask import Flask
import json

app = Flask(__name__)

@app.route('/')
def home():
	return json.dumps({'result': 'This is your ECS Fargate Cluster and Fargate Launch Type container'})

if __name__== "__main__":
	app.run(host='0.0.0.0',port=80)