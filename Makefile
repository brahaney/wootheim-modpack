patch-client:
	cp -r ./client/* /mnt/c/Program\ Files\ \(x86\)/Steam/steamapps/common/Valheim/

patch-server:
	cp -r ./server/* /home/valheim/server/

release:
	@read -p "Enter Version Tag: " tag; \
	(cd client && zip -r ../dist/client-$$tag.zip ./**) \
	(cd server && zip -r ../dist/server-$$tag.zip ./**) \
	gh release create $$tag ./dist/*-$$tag.zip

