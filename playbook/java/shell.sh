sudo cp /etc/profile /etc/profile_backup
sudo touch /etc/profile.d/java.sh
echo 'export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.161-0.b14.el7_4.x86_64/jre' | sudo tee -a /etc/profile.d/java.sh
echo 'export PATH=${JAVA_HOME}/bin:${PATH}' | sudo tee -a /etc/profile.d/java.sh
#echo 'export JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk' | sudo tee -a /etc/profile
echo 'export JRE_HOME=/usr/lib/jvm/jre' | sudo tee -a /etc/profile
source /etc/profile.d/java.sh
source /etc/profile