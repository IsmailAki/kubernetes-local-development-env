wget https://gist.githubusercontent.com/AbdullahAki/c362f431df686ebd36b1f48c45870611/raw/12a9f7de292e01773789068bf919b28c20250057/kustomization.yaml
wget https://gist.githubusercontent.com/AbdullahAki/1d87e8099abae915e365d54b7e6f3797/raw/cbd9f60617f37072da0dd663d2343af261b84399/mysql-deployment.yaml
wget https://gist.githubusercontent.com/AbdullahAki/f3d2f0188cac7ab7e9f23a41db8f9ba0/raw/882d26e30f0266a3572969b9130ee64e3c85c517/app-deployment.yaml

echo kubectl apply -k ./ > demo.sh
chmod +x demo.sh
./demo.sh