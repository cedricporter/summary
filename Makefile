all: install

install:
	git checkout -b source origin/source ; \
	git pull origin source ; \
	git submodule init ; \
	git submodule update ; \
	bundle install && \
	rake install && \
	rake install["oct2"] 
