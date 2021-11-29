# aws cli
# https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

cd /tmp/
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# aws copilot
# https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS_Copilot.html#copilot-install

sudo curl -Lo /usr/local/bin/copilot https://github.com/aws/copilot-cli/releases/latest/download/copilot-linux \
   && sudo chmod +x /usr/local/bin/copilot \
   && copilot --help

# aws cdk
sudo dnf module install -y nodejs:16
sudo npm install --no-bin-links -g aws-cdk
cdk --version

