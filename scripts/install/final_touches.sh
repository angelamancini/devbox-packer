echo 'copy bash prompt'
cp /tmp/custom_prompt.sh /etc/profile.d/custom_prompt.sh

echo 'copy in vimrc'
cp /tmp/my-vimrc /home/vagrant/.vimrc

echo 'copy in tmux.conf'
cp /tmp/my-tmux.conf /home/vagrant/.tmux.conf

echo 'handle keys'
echo 'copy vagrant public key'
cp /tmp/vagrant_rsa.pub /home/vagrant/.ssh/vagrant_rsa.pub
echo 'add public key to authorized_keys'
cat /home/vagrant/.ssh/vagrant_rsa.pub >> /home/vagrant/.ssh/authorized_keys
echo 'add private key'
echo $VAGRANT_SSH_PRIVATE_KEY > /home/vagrant/.ssh/vagrant_rsa
echo 'cmod private key'
chmod 400 /home/vagrant/.ssh/vagrant_rsa
# eval "$(ssh-agent -s)"
# echo 'add key to ssh agent'
# ssh-add /home/vagrant/.ssh/vagrant_rsa
