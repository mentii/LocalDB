default: run

run:
	@ xterm ./run.sh &

clean:
	@ rm -rf ~/dynamoDB/

install: clean
	@ ./installDB.sh
