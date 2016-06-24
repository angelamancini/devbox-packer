echo 'copy bash prompt'
cp /tmp/custom_prompt.sh /etc/profile.d/custom_prompt.sh

echo 'copy in vimrc'
cp /tmp/my-vimrc /home/vagrant/.vimrc

echo 'copy in tmux.conf'
cp /tmp/my-tmux.conf /home/vagrant/.tmux.conf
