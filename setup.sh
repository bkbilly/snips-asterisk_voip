#/usr/bin/env bash -e

if [ ! -f 'linphoner' ]
then
    echo "couln't find linphone"
fi

VENV=venv

if [ ! -d "$VENV" ]
then

    PYTHON=`which python3`

    if [ ! -f $PYTHON ]
    then
        echo "could not find python"
    fi
    virtualenv -p $PYTHON $VENV

fi

. $VENV/bin/activate

pip install -r requirements.txt
