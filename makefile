default: run

TERMINALSPAWNER=xterm -e
osType=$(shell uname -a | awk -F " " '{print $$1}')
ifeq ($(osType),Darwin)
	TERMINALSPAWNER=xterm -e
endif

run:
	@ $(TERMINALSPAWNER) ./run.sh &
	@ $(TERMINALSPAWNER) ./createTables.sh &

clean:
	@ rm -rf ~/dynamoDB/

install: clean
	@ ./installDB.sh
