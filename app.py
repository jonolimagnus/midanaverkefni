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

def format_time(data):
    return datetime.strptime(data, '%Y-%m-%dT%H:%M:%S.%f').strftime('%d. %m. %Y k1. %H:%M')

app.jinja_env.add_extension(ext.do)

app.jinja_env.filters['format_time'] = format_time


@app.route("/")
def index():
    return render_template("index.tpl", data=data)


@app.route("/company/<company>")
def comp(company):
    return render_template("company.tpl",data=data,com=company)

@app.route("/moreinfo/<moreinfo>")
def info(key):
    return render_template("moreinfo.tpl",data=data,k=key)

"""
@app.route(404)
def page_not_found(error)
    return render_template("page_not_found.tpl")
"""


if __name__ == '__main__':
    app.run(debug =True)