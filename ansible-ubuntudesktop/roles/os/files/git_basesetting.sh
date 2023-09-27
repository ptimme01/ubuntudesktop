git config --global user.name $USER

if [ $USER == 'ptimme01' ]; then
git config --global user.email $USER@outlook.com
else
git config --global user.email $USER@cymcore.com
fi
