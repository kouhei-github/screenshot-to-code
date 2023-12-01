docker compose -f docker-compose-prod.yml build
aws ecr get-login-password --region ap-northeast-1 --profile=furusato-technical --region ap-northeast-1  | docker login --username AWS --password-stdin 409724938208.dkr.ecr.ap-northeast-1.amazonaws.com
docker tag screenshot-to-code-backebd:latest 409724938208.dkr.ecr.ap-northeast-1.amazonaws.com/screenshot-to-code-backebd:latest
docker push 409724938208.dkr.ecr.ap-northeast-1.amazonaws.com/screenshot-to-code-backebd:latest

docker tag screenshot-to-code-frontend:latest 409724938208.dkr.ecr.ap-northeast-1.amazonaws.com/screenshot-to-code-frontend:latest
docker push 409724938208.dkr.ecr.ap-northeast-1.amazonaws.com/screenshot-to-code-frontend:latest
