build-and-push:
	docker build -t staging-codese-frontend .
	aws ecr get-login-password --region ap-southeast-1 --profile h1sonath | docker login --username AWS --password-stdin 339712938940.dkr.ecr.ap-southeast-1.amazonaws.com
	docker tag staging-codese-frontend:latest 339712938940.dkr.ecr.ap-southeast-1.amazonaws.com/staging-codese-frontend:latest
	docker push 339712938940.dkr.ecr.ap-southeast-1.amazonaws.com/staging-codese-frontend:latest