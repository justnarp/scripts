export HOME=C:/scripts

USER=XXXXXX
PASSWORD=XXXXXX
GATE=XXXXXX:8080

PROXY=http://$USER:$PASSWORD@$GATE

# for npm install
npm config set registry https://registry.npmjs.org --global
npm config set proxy $PROXY --global
npm config set https-proxy $PROXY --global

# for everything else needed via git
export http_proxy=$PROXY
export https_proxy=$PROXY
export HTTP_PROXY=$PROXY
export HTTPS_PROXY=$PROXY
git config --global http.proxy $PROXY
git config --global https.proxy $PROXY
git config --global http.sslVerify false

# confirmation output
echo --- proxy on
