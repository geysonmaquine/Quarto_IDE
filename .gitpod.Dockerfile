FROM gitpod/workspace-full

RUN sudo add-apt-repository ppa:c2d4u.team/c2d4u4.0+ -y
RUN sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common -y
RUN sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
RUN sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
RUN sudo apt install r-base -y
RUN sudo apt install build-essential -y
RUN sudo apt install r-cran-rmarkdown -y
RUN sudo apt-get install gdebi-core -y
RUN wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.1.149/quarto-1.1.149-linux-amd64.deb
RUN sudo dpkg -i *.deb -y




