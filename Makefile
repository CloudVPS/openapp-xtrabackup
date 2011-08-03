PREFIX=${CURDIR}/debian/openapp-xtrabackup

install:
# bin
	mkdir -p $(PREFIX)/usr/bin
	cp openapp-mysql-backupmethod $(PREFIX)/usr/bin/

#man
	mkdir -p $(PREFIX)/usr/share/man/man1
	cp debian/openapp-mysql-backupmethod.1 $(PREFIX)/usr/share/man/man1

#openapp-backupmodule
	mkdir -p $(PREFIX)/usr/lib/openapp-backup/modules
	cp openapp-backup/* $(PREFIX)/usr/lib/openapp-backup/modules
	chmod +x $(PREFIX)/usr/lib/openapp-backup/modules

uninstall:
# bin
	rm -rf $(PREFIX)/usr/bin/openapp-mysql-backupmethod
	rm -rf $(PREFIX)/usr/share/man/man1/openapp-mysql-backupmethod.1.gz

clean:
	-echo "NOP"

