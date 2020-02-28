1. ./elastic-mapreduce --create --alive --name mahout-tutorial --num-instances 4 --master-instance-type m1.xlarge --slave-instance-type m2.2xlarge --ami-version 3.1 --ssh
2. wget http://files.grouplens.org/datasets/movielens/ml-1m.zip
3. unzip ml-1m.zip
4. hadoop fs -put ratings.csv /ratings.csv
5. mahout recommenditembased --input /ratings.csv --output recommendations --numRecommendations 10 --outputPathForSimilarityMatrix similarity-matrix --similarityClassname SIMILARITY_COSINE
6.hadoop fs -ls recommendations
7.hadoop fs -cat recommendations/part-r-00000 | head
sudo easy_install twisted
sudo easy_install klein
sudo easy_install redis
wget http://download.redis.io/releases/redis-2.8.7.tar.gz
tar xzf redis-2.8.7.tar.gz
cd redis-2.8.7
make
./src/redis-server &
twistd -noy hello.py &
# Test the web service with user id “37”:
curl localhost:8080/37
