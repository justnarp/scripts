export HOME=C:/scripts

# for npm install
npm config set ca null --global
npm config set registry http://vda1cs0236:4873/ --global
npm config delete proxy --global
npm config delete https-proxy --global

# for everything else needed via git
unset HTTP_PROXY
unset HTTPS_PROXY
unset http_proxy
unset https_proxy
git config --global --unset http.proxy
git config --global --unset https.proxy
sed -i '/\[http/d' C:/scripts/.gitconfig
sed -i '/sslVerify/d' C:/scripts/.gitconfig
git config --global http.sslVerify false

# confirmation output
echo --- proxy off
