BDIR := ./build

clean:
	rm -rf $(BDIR)/*

local:
	$(CC) -o $(BDIR)/mdns mdns.c
cross:
	. /usr/local/oecore-x86_64/environment-setup-armv7at2hf-neon-angstrom-linux-gnueabi;
	$(CC) -o $(BDIR)/mdns mdns.c