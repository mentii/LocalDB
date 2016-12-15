default: run-no-install

run: install
	@ xterm ./run.sh &

run-no-install:
	@ xterm ./run.sh &

clean:
	@ rm -rf ~/dynamoDB/

install: clean
	@ ./installDB.sh
