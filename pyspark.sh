#install Nano

https://dlcdn.apache.org/spark/spark-3.3.0/spark-3.3.0-bin-hadoop3.tgz
curl -fsSL https://dlcdn.apache.org/spark/spark-3.3.0/spark-3.3.0-bin-hadoop3.tgz -o spark.tgz
tar zxvf spark.tgz

===================
#=====================
# Docker 
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
# Post-installation steps for Linux.
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
docker ps
docker run hello-world

==========pyspark setups==========
cd spark-3.3.0-bin-hadoop3
export SPARK_HOME=`pwd`
export PYTHONPATH=$(ZIPS=("$SPARK_HOME"/python/lib/*.zip); IFS=:; echo "${ZIPS[*]}"):$PYTHONPATH

sudo apt install openjdk-8-jdk

#set java home
sudo nano /etc/environment
JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
source /etc/environment

echo $JAVA_HOME

nano ~/.bashrc
source /etc/environment

source ~/.bashrc 

nano ~/.bashrc
export SPARK_HOME=~/home/poc/workspace/spark-3.3.0-bin-hadoop3
export PATH=$PATH:$SPARK_HOME/bin
export PATH=$PATH:~/anaconda3/bin
export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH
export PYSPARK_DRIVER_PYTHON="jupyter"
export PYSPARK_DRIVER_PYTHON_OPTS="notebook"
export PYSPARK_PYTHON=python3
export PATH=$PATH:$JAVA_HOME/jre/bin

source ~/.bashrc

pyspark

cd $SPARK_HOME
cd bin 
spark-shell --version

