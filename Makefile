default: npmbuild

npmbuild:
	docker run --rm -it -v ${PWD}:/app -w /app node:latest npm install 
	docker run --rm -it -v ${PWD}:/app -w /app node:latest npm run build

dockerbuild:
	docker build --rm --tag=docker.blnk.io/darksky-spa:latest .
run:
	docker run --rm -d --name darksky_spa --network=isolated_nw docker.blnk.io/darksky-spa
