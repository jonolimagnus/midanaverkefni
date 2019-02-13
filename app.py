from flask import Flask, flash, redirect, request
from flask import json
import os
from datetime import datetime
from flask import render_template
import urllib.request
from jinja2 import ext

app = Flask(__name__)

with urllib.request.urlopen("http://apis.is/petrol/") as url:
    data = json.loads(url.read().decode())


@app.route("/")
def index():
    return render_template("index.tpl", data=data)


@app.route("/company/<company>")
def comp(company):
    return render_template("Atlandsolía")

"""
@app.route(404)
def page_not_found(error)
    return render_template("page_not_found.tpl")
"""
if __name__ == '__main__':
    app.run()