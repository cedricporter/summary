all: install

install:
	git checkout -b source origin/source ; \
	git pull origin source ; \
	git submodule init ; \
	git submodule update ; \
	bundle install && \
	echo y | bundle exec rake install && \
	echo y | bundle exec rake install[oct2-orange] && \
	git reset --hard
