default: run

run:
	@ xterm ./run.sh &
	@ xterm ./createTables.sh &

clean:
	@ rm -rf ~/dynamoDB/

install: clean
	@ ./installDB.sh
