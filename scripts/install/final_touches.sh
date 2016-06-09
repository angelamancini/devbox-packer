echo 'copy in vimrc'
cp /tmp/.vimrc /home/vagrant/.vimrc

echo 'copy in tmux.conf'
cp /tmp/.tmux.conf /home/vagrant/.tmux.conf

echo 'set custom bash prompt'
cp /tmp/custom_prompt.sh /etc/profile.d/custom_prompt.sh
