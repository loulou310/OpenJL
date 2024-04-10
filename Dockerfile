FROM archlinux:base-devel
RUN useradd -m user

RUN echo user:user | chpasswd
RUN pacman -Syu --noconfirm --noprogressbar 
RUN pacman -S archiso --noconfirm --noprogressbar

RUN mkdir /archiso
COPY ./build.sh /

ENTRYPOINT /build.sh
