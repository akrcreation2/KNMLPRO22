if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/akrcreation2/KNMLPRO2.git /Knmlpro2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Knmlpro2
fi
cd /Knmlpro2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
