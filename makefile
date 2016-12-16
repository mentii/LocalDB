default: run

run:
	@ osType=$(shell uname -a | awk -F " " '{print $$1}'); \
  if [ $$osType = Linux ]; then \
		xterm ./run.sh &; \
		xterm ./createTables.sh &; \
	else \
		open -a Terminal ./run.sh &; \
		open -a Terminal ./createTables.sh &; \
	fi

run-mac:
	@ open -a Terminal ./run.sh &
	@ open -a Terminal ./createTables.sh &

clean:
	@ rm -rf ~/dynamoDB/

install: clean
	@ ./installDB.sh
