echo "setting up ARM device"
sudo apt-get update && sudo apt-get upgrade

echo "Installing awscli...."
curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

echo "Install docker..."
sudo apt-get install -y docker.io
sudo systemctl start docker.service
sudo systemctl enable docker.service

echo "Installing Python..."
sudo apt-get install -y libffi-dev libssl-dev
sudo apt-get install -y python3-dev python3 python3-pip

echo "Installing docker compose..."
sudo pip3 install docker-compose
