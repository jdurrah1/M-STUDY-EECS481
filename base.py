from flask import Flask, request, render_template, redirect, url_for, flash, session, escape
from string import Template
import extensions, config, os, hashlib, re, uuid
from extensions import connect_to_database
from werkzeug.utils import secure_filename
app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = 'static/images'


@app.route('/')
def home_page():
    return render_template('base.html')


@app.route('/docs')
def docs_page():
    return render_template('docs.html')


@app.errorhandler(404)
def page_not_found(e):
    return render_template('404.html'), 404


if __name__ == '__main__':
    app.run(host=config.env['host'], port=config.env['port'], debug=True)
