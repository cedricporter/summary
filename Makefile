all: install

install:
	git checkout -b source origin/source
	git pull origin source
	bundle install
	rake install
	rake install["oct2"] 
