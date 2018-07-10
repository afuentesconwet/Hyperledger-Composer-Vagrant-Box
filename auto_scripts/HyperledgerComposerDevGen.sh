#!/bin/bash

#Execute the script from the repository directory

vagrant up

vagrant ssh default -c "./prereqs-ubuntu.sh ; exit"

vagrant reload default

vagrant ssh default -c "./setup_2.sh"

vagrant reload default

vagrant ssh default -c "cd fabric-tools ; ./startFabric.sh ; ./createComposerProfile.sh"

vagrant ssh default -c "yo hyperledger-composer:businessnetwork"


