apt update -y
git -version
git --version
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install -y fontconfig openjdk-17-jre openjdk-17-jdk
cd /tmp ; sudo wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz
ls -al
cd /tmp ; sudo tar -xzf apache-maven-3.9.6-bin.tar.gz -C  /opt/
ls 
ls /opt/
mv /opt/apache-maven-3.9.6 /opt/maven
sudo echo "MAVEN_HOME=\"/opt/maven\"" >> /etc/profile
sudo echo "PATH=\$MAVEN_HOME/bin:\$PATH" >> /etc/profile
source /etc/profile
ls -l
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update -y
sudo apt-get install jenkins
service jenkins status
service jenkins restart
service jenkins status
sudo echo "MAVEN_HOME=\"/opt/apache-maven-3.8.5\"" >> /etc/profile
sudo echo "JAVA_HOME=\"/usr/lib/jvm/java-8-openjdk-amd64\"" >> /etc/profile
sudo echo "PATH=\$JAVA_HOME/bin:\$MAVEN_HOME/bin:\$PATH" >> /etc/profile
source /etc/profile
cat /var/lib/jenkins/secrets/initialAdminPassword
sudo apt update -y
df -h
sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint
sudo apt-get install terraform
terraform -v
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
terraform -v
vim ~/.aws/credentials
exit
vim ~/.aws/credentials
sudo -i
ls -al
sudo apt update
sudo apt install awscli
git branch
git remote -v
exit
