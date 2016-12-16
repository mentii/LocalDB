default: run

TERMINALSPAWNER=xterm -e
osType=$(shell uname -a | awk -F " " '{print $$1}')
ifneq ($(osType),Linux)
	TERMINALSPAWNER=open -a Terminal
endif

run:
	@ $(TERMINALSPAWNER) ./run.sh &
	@ $(TERMINALSPAWNER) ./createTables.sh &

clean:
	@ rm -rf ~/dynamoDB/

install: clean
	@ ./installDB.sh
