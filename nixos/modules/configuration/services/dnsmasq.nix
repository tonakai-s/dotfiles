{ ... }:

{
    services.dnsmasq = {
        enable = true;

        settings = {
            # Upstream DNS providers
            server = [
                "1.1.1.1"
                "1.0.0.1"
                "8.8.8.8"
            ];

            cache-size = 10000;
            no-resolv = true;
            domain-needed = true;
            bogus-priv = true;
        };
    };
}
