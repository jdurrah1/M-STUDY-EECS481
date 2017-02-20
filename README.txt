MSTUDY-01
for University of Michigan EECS 481 Winter 2017

Jacob Durrah (jdurrah)
Meredith Keesling (merek)
Justin Patrick (jmpat)
Paul Scott (paulscot)

Steps to deploy and initialize on your local server:

With Oracle VM VirtualBox and Vagrant installed on your machine, you can
run the following commands in a terminal opened in the same location as base.py.
Note: These are known to work successfully on a Windows 10 system with
virtualization enabled.  If you know a method of running a Python web app
that works for your own system, please use that instead.

vagrant up
vagrant ssh
	cd /vagrant
	pip3 install virtualenv
	virtualenv venv --always-copy
	venv/bin/activate
	pip3 install -r requirements.txt
	pip3 install flask
	mysql -u root -p
		root
		create database mstudy_db;
		exit
	mysql -u root -p mstudy_db < sql/init_db.sql
		root
	python3 base.py

That last line is the line which starts the app running.  You can then open
your browser and navigate to localhost:3000 to use the app.  To stop the app,
press ctrl+C in the terminal.  Then, when you are finished and you want to
exit the virtual environment and stop vagrant, you can use these commands:

	exit
vagrant halt


Alpha Release functionality:

When going to the main page of the app, you can see the dashboard, which
displays the clipboard and several buttons.  The clipboard's purpose is to
store text that the user types in, pastes in, or records.  The button's
functions are as follows:

Save -		Stores the message currently on the clipboard into the database.
		If you go to the Manage Docs page, you can see it there.

Cut -		Takes the message on the clipboard, copies it to your computer's
		clipboard and empties the MStudy clipboard.

Copy -		Takes the message on the clipboard and copies it to your
		computer's clipboard.

Paste -		Intended to take a string from your computer's clipboard and
		replace the contents of the MStudy clipboard with that string.
		We haven't got it to work successfully yet; the problem seems to
		stem from a security issue that is system or browser-dependent.

Manage Docs -	Navigates to the Manage Docs page, where you
		can see all of the messages you have saved, and
		edit them in various ways.

Record Voice -	Clicking this button once will make the browser begin
		recording audio, and clicking a second time will stop it.
		The intended functionality was to have this recorded
		message be immediately sent to the VoiceBase API to
		be converted into a text string, which would appear in
		the clipboard.  However, this proved to be quite a difficult
		task to implement; we attempted a workaround by having
		manual download and upload buttons, but we are still
		still not yet able to quite get it working.  We intend to continue
		working on this, since this was a very important part of our initial
		M-Study idea, and would be very useful to our client Brad.


On the Manage Docs page, you can see a list of saved messages, which
one of can be selected at a time.  There are also several buttons,
which have various functions:

Delete -		Takes the selected message and deletes it from the database.

Put on Clipboard -	Takes the selected message and copies it to the clipboard
			on the main page.

Change Title -		You can type a title for the selected message in the box
			next to this button; click to apply the title to that message.

Back -			Navigates back to the main page.

There is also a default instructional message in the list.  This message
cannot be deleted or given a title; it exists for the purpose of preventing
errors due to attempting to edit a message if one didn’t exist.
It also mentions that the maximum possible message size is 2000
characters, and that all double quotes will be converted into
single quotes (to prevent database errors; this is because all
of our SQL commands are formatted with double quotes).