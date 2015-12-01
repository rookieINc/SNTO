#!/bin/zsh

lowerparam1="$(echo $1 | tr '[:upper:]' '[:lower:]')"
lowerparam2="$(echo $2 | tr '[:upper:]' '[:lower:]')"
upperparam1="$(echo $1 | tr '[:lower:]' '[:upper:]')"
upperparam2="$(echo $2 | tr '[:lower:]' '[:upper:]')"

echo "[L_PARAM1:$lowerparam1] [L_PARAM2:$lowerparam2]"
echo "[U_PARAM1:$upperparam1] [U_PARAM2:$upperparam2]"

filecount=`ls | grep -i "$lowerparam1\_*" | wc -l`
if [ $filecount != 0 ]
then
    rename $lowerparam1\_ $lowerparam2\_ $lowerparam1\_*
else
    echo "[FILENAME:$lowerparam1"_"*] not found!"
fi

filecount=`ls | grep -i "$upperparam1\_*" | wc -l`
if [ $filecount != 0 ]
then
    rename $upperparam1\_ $upperparam2\_ $upperparam1\_*
else
    echo "[FILENAME:$upperparam1"_"*] not found!"
fi

sed -i "s/$lowerparam1\_/$lowerparam2\_/g" *
sed -i "s/$upperparam1\_/$upperparam2\_/g" *
