# Type 'alias' to see these from terminal

#-------------------------------------------------------------
# Constants
#-------------------------------------------------------------
REPOS=C:/Repos/

export JAVA_HOME='C:\Program Files\Java\jdk1.7.0_25'
export PATH=$PATH:/cygdrive/c/maven/3.2.5/bin
export PATH=$PATH:/cygdrive/c/Python27

alias killnode="taskkill /IM node.exe /F"

alias br=". ~/.bash_profile &>/dev/null ; echo --- reloaded .bash_profile"
alias vibash="vi ~/.bash_profile"
alias pon="C:/scripts/proxy-on.sh"
alias pof="C:/scripts/proxy-off.sh"
alias setup-npm="C:/scripts/setup-npm.sh"


#-------------------------------------------------------------
# Shortcut to repository
#-------------------------------------------------------------
alias rep='cd $REPOS' ; ls -g


#-------------------------------------------------------------
# Update list of branches to what branches origin/master have
#-------------------------------------------------------------
alias gitup='gitup'
gitup() {
	cd $REPOFRONT
	git fetch origin
	git branch -v -a
	cd - &>/dev/null
}


#-------------------------------------------------------------
# Revert local changes to config.js
#-------------------------------------------------------------
alias resetconf='resetconf'
resetconf() {
	cd $REPOFRONT
	git checkout origin/master -- app/scripts/config.js
	echo --- config.js now similar to origin/master
	cd - &>/dev/null
}


#-------------------------------------------------------------
# protractor debug uses port 5858, see if there's an undead process to be killed
# see last post on https://github.com/angular/protractor/issues/552
#-------------------------------------------------------------
alias prodebugport='ps ax | grep :5858';
alias seldrv='./node_modules/protractor/bin/webdriver-manager update'
alias seldrv2='./node_modules/gulp-protractor/node_modules/protractor/bin/webdriver-manager update'
