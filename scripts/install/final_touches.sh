echo 'cloning random-bits repo to /tmp'
cd /tmp
git clone https://github.com/angelamancini/random-bits.git

echo 'copy in vimrc'
cp /tmp/random-bits/.vimrc /home/vagrant/.vimrc

echo 'copy in tmux.conf'
cp /tmp/random-bits/.tmux.conf /home/vagrant/.tmux.conf

echo 'set custom bash prompt'
cp /tmp/random-bits/custom_prompt.sh /etc/profile.d/custom_prompt.sh 

rm -rf /tmp/random-bits
