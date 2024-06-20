if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/manishgupta2026/Stream-Bot-/Stream-Bot-
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Stream-Bot-
fi
cd /Stream-Bot-
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
