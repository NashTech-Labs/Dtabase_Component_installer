#!/bin/sh

DIRECTORYNAME=`dirname $0`
INSTALL_DIR=$DIRECTORYNAME/../../..

. "$DIRECTORYNAME/setEnv.sh"

if [ -z "$JAVA_HOME" ]
then
        echo "The environment variable JAVA_HOME must be set"
        echo "Can't run the database component installer."
        exit
fi

if [ -z "$CDBS_HOME" ]
then
        echo "The environment variable CDBS_HOME must be set."
        echo "Can't run the database component installer."
        exit
fi

if [ -z "$DCI_HOME" ]
then
        echo "The environment variable DCI_HOME must be set."
        echo "Can't run the database component installer."
        exit
fi

RUN="$JAVA_HOME/bin/java"

$RUN $JAVA_OPTS com.softwareag.dcc.cli.Main "$@"

exitStatus=$?

exit $exitStatus

