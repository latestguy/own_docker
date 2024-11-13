FROM ubuntu:16.04

# variables
ENV USER=public
ENV USER_ID=1000
ENV PASSWORD=1
ENV WORKSPACE=/home/$USER/t800-rsu-workspace

# ENV WORKSPACE=/home/$USER/workspace

# set USTC apt mirror
RUN sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list
# RUN sed -i 's@//.*archive.ubuntu.com@//mirrors.tuna.tsinghua.edu.cn@g' /etc/apt/sources.list

# install general tools
RUN apt-get update && apt-get install \
clang-format bzip2 file sudo vim zsh cmake make subversion libncurses5-dev \
zlib1g-dev gawk flex quilt libssl-dev xsltproc libxml-parser-perl mercurial \
bzr ecj cvs lib32z1-dev lib32stdc++6 libstdc++6 lib32ncurses5 lib32z1 rsync \
bc wget git diffstat unzip texinfo gcc-multilib build-essential chrpath \
cpio python python3 python3-pip python3-pexpect xz-utils debianutils xterm \
iputils-ping  libsdl1.2-dev openjdk-8-jdk rpm2cpio zip mtd-utils locales mtd-utils -y

RUN pip3 install pycryptodome

RUN locale-gen en_US.UTF-8 && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8


# add a user
RUN useradd -u $USER_ID -ms /bin/zsh $USER && \
echo "$USER:$PASSWORD" | chpasswd && adduser $USER sudo
USER $USER

# run zsh installation script
# RUN git config --global init.defaultBranch main
# RUN sh -c "$(curl -fsSL \
#     https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh)"
# https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install fzf
RUN git clone --depth 1 https://gitee.com/bon-ami/fzf.git ~/.fzf \
&& ~/.fzf/install
# RUN git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf \
#    && ~/.fzf/install

ENV LANG=en_US.UTF-8

# set workdir
WORKDIR $WORKSPACE

# start zsh
# ENTRYPOINT [ "/bin/zsh" ] 
