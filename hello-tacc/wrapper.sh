set -x
WRAPPERDIR=$( cd "$( dirname "$0" )" && pwd )

echo job $JOB_ID execution at: `date`

${AGAVE_JOB_CALLBACK_RUNNING}

echo 'hello taccster!'

if [ ! $? ]; then
    echo "Test exited with an error status. $?" >&2
    ${AGAVE_JOB_CALLBACK_FAILURE}
    exit
fi
