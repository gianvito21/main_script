resourceGroup=$1
aksName=$2
token=$3

echo $token
echo $resourceGroup 
echo $aksName

curl -H "Authorization: token $token"   -H 'Accept: application/vnd.github.v3.raw'   -O   -L https://raw.githubusercontent.com/gianvito21/deploymentsfile/main/script.txt
mv script.txt script.sh
cat script.sh
echo "separatoreeeee"
ls
chmod +x script.sh
./script.sh $resourceGroup $aksName
# . script.sh $resourceGroup $aksName
