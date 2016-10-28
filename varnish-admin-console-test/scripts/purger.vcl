vcl 4.0;

import std;

backend default {
    .host = "127.0.0.1";
    .port = "8070";
}

acl purge {
        "localhost";
        "10.0.2.2";
        "192.168.50.1";
}

sub vcl_recv {
    # allow PURGE from localhost and 192.168.50.1 (host machine in vagrant)
    std.log("ip:" + client.ip );
    if (req.method == "PURGE") {
        if (!client.ip ~ purge) {
            return(synth(405,"Not allowed."));
        }
        return (purge);
    }
}
