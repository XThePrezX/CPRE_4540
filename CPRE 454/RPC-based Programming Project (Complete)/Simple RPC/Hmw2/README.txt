• how to compile the programs; 
	make -f Makefile.RPC_Interface

• how to start the Broker; 
	./RPC_Interface_server


• how to run a Publisher; 
	./publisher <broker-host> <topic> <value>


• how to run a Retriever; and 
	./retriever <broker-host> <topic>


• any implementation assumptions.
	Make sure to remove any existing program on Pyrite that overlaps with the program number. Other than that, the parameters from the publisher and retriever only check the number of items, but do not have a lot of edge case functionality.