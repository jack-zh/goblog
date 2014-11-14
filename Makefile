EXECUTABLES : aleserver

help:
	@echo "make build		#build aleserver."
	@echo "make initdb		#clean DB and init DB and tables."
	@echo "make clean		#clean build files."
	@echo "make startbynginx	#clean build files."
	@echo "make stopbynginx	#clean build files."

aleserver:
	@echo "make build		#build aleserver."
	@echo "make initdb		#clean DB and init DB and tables."
	@echo "make clean		#clean build files."
	@echo "make startbynginx	#clean build files."
	@echo "make stopbynginx	#clean build files."

build: 
	./bin/build.sh

initdb:
	./bin/initdb

clean:
	./bin/clean

startbynginx:
	./bin/start_nginx_super

stopbynginx:
	./bin/stop_nginx_super

