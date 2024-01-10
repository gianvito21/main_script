resourceGroup=$1
aksName=$2
token=$3

echo $token
echo $resourceGroup 
echo $aksName

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

curl -H "Authorization: token $token"   -H 'Accept: application/vnd.github.v3.raw'   -O   -L https://raw.githubusercontent.com/gianvito21/deploymentsfile/main/script.txt
mv script.txt script.sh
cat script.sh
echo "separatoreeeee"
ls
chmod +x script.sh
./script.sh $resourceGroup $aksName
# . script.sh $resourceGroup $aksName
