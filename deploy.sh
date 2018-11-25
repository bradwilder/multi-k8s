docker build -t bradwilder31415/multi-client:latest -t bradwilder31415/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t bradwilder31415/multi-server:latest -t bradwilder31415/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t bradwilder31415/multi-worker:latest -t bradwilder31415/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push bradwilder31415/multi-client:latest
docker push bradwilder31415/multi-client:$SHA
docker push bradwilder31415/multi-server:latest
docker push bradwilder31415/multi-server:$SHA
docker push bradwilder31415/multi-worker:latest
docker push bradwilder31415/multi-worker:$SHA

#kubectl apply -f k8s

#kubectl set image deployments/client-deployment client=bradwilder31415/multi-client:$SHA
#kubectl set image deployments/server-deployment server=bradwilder31415/multi-server:$SHA
#kubectl set image deployments/worker-deployment worker=bradwilder31415/multi-worker:$SHA