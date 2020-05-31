#! /bin/bash
# DDoS forensics tool interface

figlet DDoS Forensics
cowsay -f tux Team BackTrack

#Shows options for the user
echo "Press 1 for Only  S1"
echo "Press 2 for S1 & S2"
echo "Press 3 to stop all services"

read slave

if [ $slave -eq 1 ]
	then
	sed -i '4d' /usr/local/hadoop/etc/hadoop/slaves
	start-all.sh
	jps 
echo "Hi there!"
echo "Please select from one of the options to download, upload or run an analysis on a file"
echo "Press 1 to Download a File"
echo "Press 2 to Upload file to the Hadoop Mapreduce system"
echo "Press 3 to run analysis on the uploaded file"
echo "Press 4 to get output"
#Reads user input
read choice
#Executes the entered input
if [ $choice -eq 1 ]
	then
               echo -e "Enter url: \c"
               read URL
               wget $URL
	
	echo "Press 2 to Upload file to the Hadoop Mapreduce system"
	echo "Press 3 to run analysis on the uploaded file"
	echo "Press 4 to get output"
	read choice1

	if [ $choice1 -eq 2 ] 
	then
	ls /home/hduser/CSVs/*.csv
        echo -e "Enter the Name of the file:  \c"
	read file
	$HADOOP_HOME/bin/hdfs dfs -copyFromLocal /home/hduser/CSVs/$file /
	$HADOOP_HOME/bin/hdfs dfs -ls /$file

	echo "Press 3 to run analysis on the uploaded file"
        echo "Press 4 to get output"
	
	read choice2
	if [ $choice2 -eq 3 ]
	
	then
	$HADOOP_HOME/bin/hdfs dfs -ls /
	echo -e "Enetr the name of file: \c"
	read f
	echo -e "Enter name of output folder: \c"
	read o
	echo -e "Select a program: \c"
	ls ~/ddos/*.jar
	echo -e "Name of Jar File: \c"
	read name
	$HADOOP_HOME/bin/hadoop jar /home/hduser/ddos/$name /$f /$o

	echo "Press 4 to get output"
	
	read choice3
	if [ $choice3 -eq 4 ]
	$HADOOP_HOME/bin/hdfs dfs -ls /
	then
	
	echo -e "Enter Name of Output Folder: \c"
	read ou
	echo -e "Backup in Local File System, Give name for the file:"
        read save
        $HADOOP_HOME/bin/hdfs dfs -copyToLocal /$ou/part-00000 /home/hduser/output/$save
        nl /home/hduser/output/$save
        echo "List of attack IPs"
        awk '{ if ($2>=500) print $0}' /home/hduser/output/$save
	
	else 
		echo "Wrong Option"
	fi
	else
	echo "Wrong Option"
	fi
	else
	echo "Wrong Option"
	fi
		
elif [ $choice -eq 2 ]
	
        then
	ls /home/hduser/CSVs/*.csv
                echo -e "Enter the Name of the file:  \c"
                read file
                $HADOOP_HOME/bin/hdfs dfs -copyFromLocal /home/hduser/CSVs/$file /
                $HADOOP_HOME/bin/hdfs dfs -ls /$file
	echo "Press 3 to run analysis on the uploaded file"
        echo "Press 4 to get output"
        read choice13
        if [ $choice13 -eq 3 ]
        $HADOOP_HOME/bin/hdfs dfs -ls /
        then
        echo -e "Enter the name of file: \c"
        read f
        echo -e "Enter name of output folder: \c"
        read o
        echo -e "Select a program: \c"
        ls ~/ddos/*.jar
        echo -e "Name of Jar File: \c"
        read name
        $HADOOP_HOME/bin/hadoop jar /home/hduser/ddos/$name /$f /$o
#       fi
        echo "Press 4 to get output"
        read choice14
        if [ $choice14 -eq 4 ]
        $HADOOP_HOME/bin/hdfs dfs -ls /
        then
        echo -e "Enter Name of Output Folder: \c"
        read ou
       echo -e "Backup in Local File System, Give name for the file:"
        read save
        $HADOOP_HOME/bin/hdfs dfs -copyToLocal /$ou/part-00000 /home/hduser/output/$save
        nl /home/hduser/output/$save
        echo "List of attack IPs"
        awk '{ if ($2>=500) print $0}' /home/hduser/output/$save
        fi
	fi
elif [ $choice -eq 3 ]
        
        then
	$HADOOP_HOME/bin/hdfs dfs -ls /
        echo -e "Enetr the name of file: \c"
        read f
        echo -e "Enter name of output folder: \c"
        read o
        echo -e "Select a program: \c"
        ls ~/ddos/*.jar
        echo -e "Name of Jar File: \c"
        read name
        $HADOOP_HOME/bin/hadoop jar /home/hduser/ddos/$name /$f /$o

        echo "Press 4 to get output"
	read choice4
	if [ $choice4 -eq 4 ]
	
        then
	$HADOOP_HOME/bin/hdfs dfs -ls /
        echo -e "Enter Name of Output Folder: \c"
        read ou
	 echo -e "Backup in Local File System, Give name for the file:"
        read save
        $HADOOP_HOME/bin/hdfs dfs -copyToLocal /$ou/part-00000 /home/hduser/output/$save
        nl /home/hduser/output/$save
        echo "List of attack IPs"
        awk '{ if ($2>=500) print $0}' /home/hduser/output/$save      
	fi

elif [ $choice -eq 4 ]
	
        then
	$HADOOP_HOME/bin/hdfs dfs -ls /
        echo -e "Enter Name of Output Folder: \c"
        read ou
        echo -e "Backup in Local File System, Give name for the file:"
        read save
        $HADOOP_HOME/bin/hdfs dfs -copyToLocal /$ou/part-00000 /home/hduser/output/$save
        nl /home/hduser/output/$save
        echo "List of attack IPs"
        awk '{ if ($2>=500) print $0}' /home/hduser/output/$save
else
	echo "Wrong Option"
fi

elif [ $slave -eq 2 ]
	then
	start-all.sh
	jps
	
echo "Hi there!"
echo "Please select from one of the options to download, upload or run an analysis on a file"
echo "Press 1 to Download a File"
echo "Press 2 to Upload file to the Hadoop Mapreduce system"
echo "Press 3 to run analysis on the uploaded file"
echo "Press 4 to get output"

#Reads user input
read choice69
#Executes the entered input
if [ $choice69 -eq 1 ]
        then
               echo -e "Enter url: \c"
               read URL
               wget $URL
#       fi
        echo "Press 2 to Upload file to the Hadoop Mapreduce system"
        echo "Press 3 to run analysis on the uploaded file"
        echo "Press 4 to get output"

        read choice1

        if [ $choice1 -eq 2 ]
       
        then
	ls /home/hduser/CSVs/*.csv
                echo -e "Enter the Nanme of the file:  \c"
                read file
                $HADOOP_HOME/bin/hdfs dfs -copyFromLocal /home/hduser/CSVs/$file /
                $HADOOP_HOME/bin/hdfs dfs -ls /$file
#       fi
        echo "Press 3 to run analysis on the uploaded file"
        echo "Press 4 to get output"
        read choice2
        if [ $choice2 -eq 3 ]
        
        then
	$HADOOP_HOME/bin/hdfs dfs -ls /
        echo -e "Enter the name of file: \c"
        read f
        echo -e "Enter name of output folder: \c"
        read o
        echo -e "Select a program: \c"
        ls ~/ddos/*.jar
        echo -e "Name of Jar File: \c"
        read name
        $HADOOP_HOME/bin/hadoop jar /home/hduser/ddos/$name /$f /$o
#       fi
        echo "Press 4 to get output"
        read choice3
        if [ $choice3 -eq 4 ]
        
        then
	$HADOOP_HOME/bin/hdfs dfs -ls /
	echo -e "Enter Name of Output Folder: \c"
        read ou
        echo -e "Backup in Local File System, Give name for the file:"
        read $save
        $HADOOP_HOME/bin/hdfs dfs -copyToLocal /$ou/part-00000 /home/hduser/output/$save
        nl /home/hduser/output/$save
        echo "List of attack IPs"
        awk '{ if ($2>=500) print $0}' /home/hduser/output/$save
     
        fi
 
        fi
        
        fi

elif [ $choice69 -eq 2 ]
    
        then
	ls /home/hduser/CSVs/*.csv
                echo -e "Enter the Nanme of the file:  \c"
                read file
                $HADOOP_HOME/bin/hdfs dfs -copyFromLocal /home/hduser/CSVs/$file /
                $HADOOP_HOME/bin/hdfs dfs -ls /$file
#       fi
        echo "Press 3 to run analysis on the uploaded file"
        echo "Press 4 to get output"
        read choice2
        if [ $choice2 -eq 3 ]
        
        then
	$HADOOP_HOME/bin/hdfs dfs -ls /
        echo -e "Enter the name of file: \c"
        read f
        echo -e "Enter name of output folder: \c"
        read o
        echo -e "Select a program: \c"
        ls ~/ddos/*.jar
        echo -e "Name of Jar File: \c"
        read name
        $HADOOP_HOME/bin/hadoop jar /home/hduser/ddos/$name /$f /$o
#       fi
        echo "Press 4 to get output"
        read choice3
        if [ $choice3 -eq 4 ]
        
        then
	$HADOOP_HOME/bin/hdfs dfs -ls /
        echo -e "Enter Name of Output Folder: \c"
        read ou
        echo -e "Backup in Local File System, Give name for the file:"
        read save
        $HADOOP_HOME/bin/hdfs dfs -copyToLocal /$ou/part-00000 /home/hduser/output/$save
        nl /home/hduser/output/$save
	echo "List of attack IPs"
        awk '{ if ($2>=500) print $0}' /home/hduser/output/$save

        fi
       
        fi
       
elif [ $choice69 -eq 3 ]
        
        then
	$HADOOP_HOME/bin/hdfs dfs -ls /
        echo -e "Enetr the name of file: \c"
        read f
        echo -e "Enter name of output folder: \c"
        read o
        echo -e "Select a program: \c"
        ls ~/ddos/*.jar
        echo -e "Name of Jar File: \c"
        read name
        $HADOOP_HOME/bin/hadoop jar /home/hduser/ddos/$name /$f /$o
        echo "Press 4 to get output"
        read choice4
        if [ $choice4 -eq 4 ]
        
        then
	$HADOOP_HOME/bin/hdfs dfs -ls /
        echo -e "Enter Name of Output Folder: \c"
        read ou
        echo -e "Backup in Local File System, Give name for the file:"
        read save
        $HADOOP_HOME/bin/hdfs dfs -copyToLocal /$ou/part-00000 /home/hduser/output/$save
        nl /home/hduser/output/$save
        echo "List of attack IPs"
        awk '{ if ($2>=500) print $0 }' /home/hduser/output/$save
	
        fi

elif [ $choice69 -eq 4 ]

        then
	$HADOOP_HOME/bin/hdfs dfs -ls /
        echo -e "Enter Name of Output Folder: \c"
        read ou
        echo -e "Backup in Local File System, Give name for the file:"
        read save
        $HADOOP_HOME/bin/hdfs dfs -copyToLocal /$ou/part-00000 /home/hduser/output/$save
        nl /home/hduser/output/$save
        echo "List of attack IPs"
        awk '{ if ($2>=500) print $0}' /home/hduser/output/$save

else
echo "wrong"
fi
elif [ $slave -eq 3 ]
	then
	stop-all.sh
	sed -i -e "\$aslave2" /usr/local/hadoop/etc/hadoop/slaves
	jps
	echo "Services Stopped"

else
	echo "Wrong Option"

fi

