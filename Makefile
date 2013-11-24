all: install

install:
	bundle install
	rake install
	rake install["oct2"] 
