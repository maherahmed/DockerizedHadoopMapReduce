hdfs dfs -mkdir /myInputFiles
hdfs dfs -put /workspace/cats.txt /myInputFiles
cd /opt/hadoop-3.2.1/share/hadoop/mapreduce
hadoop jar hadoop-mapreduce-examples-3.2.1.jar wordcount /myInputFiles/cats.txt /jobOutput 
hdfs dfs -ls /jobOutput/
hdfs dfs -cat /jobOutput/
hdfs dfs -cat /jobOutput/part-r-00000
