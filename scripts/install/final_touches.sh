echo 'install vim'
sudo yum install -y vim

echo 'copy in vimrc'
cp /tmp/.vimrc /home/vagrant/.vimrc

echo 'copy in custom vim colors'
mkdir -p /home/vagrant/.vim/colors/
cp /tmp/codeschool.vim /home/vagrant/.vim/colors/

echo 'copy in tmux.conf'
cp /tmp/.tmux.conf /home/vagrant/.tmux.conf
