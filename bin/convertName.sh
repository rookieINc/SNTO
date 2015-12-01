#!/bin/zsh

lowerparam1="$(echo $1 | tr '[:upper:]' '[:lower:]')"
lowerparam2="$(echo $2 | tr '[:upper:]' '[:lower:]')"
upperparam1="$(echo $1 | tr '[:lower:]' '[:upper:]')"
upperparam2="$(echo $2 | tr '[:lower:]' '[:upper:]')"

echo "[L_PARAM1:$lowerparam1] [L_PARAM2:$lowerparam2]"
echo "[U_PARAM1:$upperparam1] [U_PARAM2:$upperparam2]"

sed -i "s/$lowerparam1/$lowerparam2/g" *
sed -i "s/$upperparam1/$upperparam2/g" *
