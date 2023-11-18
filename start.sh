if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  gh repo clone matrixbotz0/PETER-PARKER-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /VishaBotV6
fi
cd /VishaBotV6
pip3 install -U -r requirements.txt
echo "Starting Bot..."
python3 bot.py
