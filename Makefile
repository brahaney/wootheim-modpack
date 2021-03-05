patch-client:
	cp -r ./client/* /mnt/c/Program\ Files\ \(x86\)/Steam/steamapps/common/Valheim/

patch-server:
	cp -r ./server/* /home/valheim/server/

release:
	./scripts/release.sh

