install
chmod u+x nvim.appimage && ./nvim.appimage --appimage-extract && cp -fpr ./squashfs-root/usr/* /usr/;

neovim的bin目录要添加到系统环境变量，不然剪切板会出问题
https://github.com/neovim/neovim/issues/7000


要安装jedi才会有提示
