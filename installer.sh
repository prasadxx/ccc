REPO="REPO="https://github.com/prasadxx/tgbotlk.git"
DIR="/root/prasadxx"

spinner(){
    local pid=$!
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ];
    do
        for i in "Ooooo" "oOooo" "ooOoo" "oooOo" "ooooO" "oooOo" "ooOoo" "oOooo" "Ooooo"
        do
          echo -ne "\r• $i"
          sleep 0.2
        done
    done
}

clone_repo(){
    if [ ! $BRANCH ]
        then export BRANCH="main"
    fi
    if [ -d $DIR ]
        then
            echo -e $DIR "Already exists.."
            cd $DIR
            git pull
            currentbranch="$(git rev-parse --abbrev-ref HEAD)"
            if [ currentbranch != $BRANCH ]
                then
                    git checkout $BRANCH
            fi
            
            return
    fi
    echo -e "Cloning Ultroid ${BRANCH}... "
    git clone -b $BRANCH $REPO $DIR
}

install_requirements(){
    echo -e "\n\nInstalling requirements... "
    pip3 install -q --no-cache-dir -r $DIR/requirements.txt
}






main(){
    (clone_repo)
    (install_requirements)
}

main"
DIR="/root/prasadxx"

spinner(){
    local pid=$!
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ];
    do
        for i in "Ooooo" "oOooo" "ooOoo" "oooOo" "ooooO" "oooOo" "ooOoo" "oOooo" "Ooooo"
        do
          echo -ne "\r• $i"
          sleep 0.2
        done
    done
}

clone_repo(){
    if [ ! $BRANCH ]
        then export BRANCH="main"
    fi
    if [ -d $DIR ]
        then
            echo -e $DIR "Already exists.."
            cd $DIR
            git pull
            currentbranch="$(git rev-parse --abbrev-ref HEAD)"
            if [ currentbranch != $BRANCH ]
                then
                    git checkout $BRANCH
            fi
            
    fi
    echo -e "Cloning tgbotlk ${BRANCH}... "
    git clone -b $BRANCH $REPO $DIR
}

install_requirements(){
    echo -e "\n\nInstalling requirements... "
    pip3 install -q --no-cache-dir -r $DIR/requirements.txt
}







main(){
    (clone_repo)
    (install_requirements)
}

main
