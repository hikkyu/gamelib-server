connect-cluster:
	doctl kubernetes cluster kubeconfig save aa157449-13c1-498a-8fb4-151f43cb2f62

connect-cluster-other:
	cd ~/.kube && kubectl --kubeconfig="k8s-gamelib-kubeconfig.yaml" get nodes

prepare-db:
	kubectl apply -f https://raw.githubusercontent.com/arangodb/kube-arangodb/1.1.3/manifests/arango-crd.yaml
	kubectl apply -f https://raw.githubusercontent.com/arangodb/kube-arangodb/1.1.3/manifests/arango-deployment.yaml
	# To use `ArangoLocalStorage`, also run
	#kubectl apply -f https://raw.githubusercontent.com/arangodb/kube-arangodb/1.1.3/manifests/arango-storage.yaml
	# To use `ArangoDeploymentReplication`, also run
	#kubectl apply -f https://raw.githubusercontent.com/arangodb/kube-arangodb/1.1.3/manifests/arango-deployment-replication.yaml
