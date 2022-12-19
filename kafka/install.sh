sudo apt install openjdk-11-jre-headless

SCALA=2.13
KAFKA_VERSION=3.3.1
curl "https://downloads.apache.org/kafka/${KAFKA_VERSION}/kafka_${SCALA}-${KAFKA_VERSION}.tgz" -o kafka.tgz
mkdir kafka && mv kafka.tgz kafka/ && cd kafka
tar -xvzf kafka.tgz --strip 1 && mv kafka.tgz ../


# Installation of Java
curl https://download.oracle.com/java/19/latest/jdk-19_linux-x64_bin.tar.gz -o java.tar.gz
mkdir ~/java && mv java.tar.gz java/ && cd java
tar -xvzf java.tar.gz --strip 1 && mv java.tar.gz ../
JAVA_HOME=~/java
mkdir ~/bin
echo PATH=$PATH:$HOME/bin:$JAVA_HOME/bin >> ~/.bashrc
source ~/.bashrc
export JAVA_HOME

