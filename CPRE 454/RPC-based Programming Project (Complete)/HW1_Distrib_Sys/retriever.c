#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {

    //1. process and validate its command-line arguments;

    char *broker = argv[1];
    char *topic = argv[2];

    if (argc != 3) {

        printf("There is an incorrect amount of arguments (%d)\n", argc);
        return 0;

    } else if (broker == NULL || topic == NULL) {

        printf("Broker or topic is invalid\n");
        return 0;
    }
    
    //2. establish an RPC connection to the Broker;
    //3. invoke the Broker's RETRIEVE remote procedure;
    //4. receive a variable-length result;
    //5. print all returned values; and
    //6. terminate.

    return 0;
}