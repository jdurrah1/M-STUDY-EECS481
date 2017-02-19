from flask import Flask, request, render_template, redirect, url_for, flash, session, escape
from string import Template
import extensions, config, os, hashlib, re, uuid
from extensions import connect_to_database
from werkzeug.utils import secure_filename
app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = 'static/images'


@app.route('/', methods=['GET','POST'])
def home_page():
    db = connect_to_database()
    if request.method == 'POST':
        my_text = request.form['text'][:2000]
        my_text = my_text.replace('"',"'")
        cur = db.cursor()
        cur.execute('INSERT INTO Docs (text) VALUES ("'+my_text+'");')
    cur = db.cursor()
    cur.execute('SELECT text FROM Clipboard')
    my_clipboard_string = cur.fetchall()[0]['text']
    return render_template('base.html', clipboard_string=my_clipboard_string)


@app.route('/docs', methods=['GET','POST'])
def docs_page():
    db = connect_to_database()
    if request.method == 'POST':
        if request.form['op'] == 'PUT ON CLIPBOARD':
            cur = db.cursor()
            cur.execute('DELETE FROM Clipboard')
            cur.execute('INSERT INTO Clipboard (text) VALUES ("'+request.form['text']+'")')
        elif request.form['op'] == 'CHANGE TITLE':
            print("Change Title call with request.form['title'] = '"+request.form['title']+"'")
            cur = db.cursor()
            cur.execute('UPDATE Docs SET title="'+request.form['title']+'" WHERE text="'+request.form['text']+'"')
        else:
            cur = db.cursor()
            cur.execute('DELETE FROM Docs WHERE text="'+request.form['text']+'"')
    cur = db.cursor()
    cur.execute('SELECT text, title FROM Docs')
    my_dictlist = cur.fetchall()
    return render_template('docs.html', dictlist=my_dictlist)


@app.errorhandler(404)
def page_not_found(e):
    return render_template('404.html'), 404


if __name__ == '__main__':
    app.run(host=config.env['host'], port=config.env['port'], debug=True)
