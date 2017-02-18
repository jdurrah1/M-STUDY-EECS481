from flask import Flask, request, render_template, redirect, url_for, flash, session, escape
from string import Template
import extensions, config, os, hashlib, re, uuid
from extensions import connect_to_database
from werkzeug.utils import secure_filename
app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = 'static/images'


@app.route('/', methods=['GET','POST'])
def home_page():
    if request.method == 'POST':
        db = connect_to_database()
        cur = db.cursor()
        cur.execute("INSERT INTO Docs (text) VALUES ('"+request.form['text']+"');")
        print("Inserted text into database")
        #return redirect(url_for('albums_edit_page', username=my_username))
    return render_template('base.html')


@app.route('/docs', methods=['GET','POST'])
def docs_page():
    db = connect_to_database()
    if request.method == 'POST':
        cur = db.cursor()
        cur.execute("DELETE * FROM Clipboard")
        cur.execute("INSERT INTO Clipboard (text) VALUES ('"+request.form['text']+"')")
    cur = db.cursor()
    cur.execute("SELECT text FROM Docs")
    my_dictlist = cur.fetchall()
    return render_template('docs.html', dictlist=my_dictlist)


@app.errorhandler(404)
def page_not_found(e):
    return render_template('404.html'), 404


if __name__ == '__main__':
    app.run(host=config.env['host'], port=config.env['port'], debug=True)
