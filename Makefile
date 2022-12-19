build:
	docker build -t williamcharltonengineering/gunbot:latest .

valhallapush:
	docker tag williamcharltonengineering/gunbot:latest valhalla.local:5000/gunbot:latest
	docker push valhalla.local:5000/gunbot:latest

buildanddeploytovalhalla: build valhallapush
	@echo "that should do it"

run: build
	@./run.sh
