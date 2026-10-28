/*
 * RPC_Interface.x  Specification of the remote data and time server
 */

/*
 * Define two procedures
 *
 *     publish_RPC_Interface_1() publishes an event to the Broker (topic, value), also returns a string status
 *     retrieve_RPC_Interface_1()  requests from the Broker all currently stored events having a specified topic (topic)
 */

const MAX_TOPIC = 32;

struct event { /*contain topic and value*/

    string topic<MAX_TOPIC>;
    int value;
};

typedef int value_list<>;

program RPC_Interface_PROG {

    version RPC_Interface_VERS { /*Create a prototype for each function, SunRPC allows only a single parameter and a single result*/

        string PUBLISH_RPC_Interface(event) = 1;      /* procedure number = 1 */
        value_list RETRIEVE_RPC_Interface(string) = 2;    /* procedure number = 2 */

    } = 1;                            /* version number = 1 */

} = 0x31234567;                       /* program number = 0x31234567 pick whatever you want between range 0x20000000 to 0x3fffffff */
