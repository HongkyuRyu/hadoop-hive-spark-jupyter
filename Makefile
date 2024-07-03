build:
	docker build -t clusterbase ./base
	docker build -t cluster-spark-master ./master
	docker build -t cluster-spark-worker ./worker
	docker build -t cluster-spark-history ./history
	docker build -t cluster-jupyter ./jupyter
