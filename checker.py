import os

from flask import Flask
from flask import request
app = Flask(__name__)

@app.route('/check/<secret_value>')
def hello_world(secret_value):
    actual_secret = os.environ.get('SECRET_VALUE')
    if secret_value == actual_secret:
        return "YES!"

    return "NO!"
