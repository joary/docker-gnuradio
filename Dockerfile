FROM base/archlinux
MAINTAINER Joary Paulo

# Update Pacman
RUN pacman -Syu --noconfirm

RUN pacman -S --noconfirm \
  alsa-lib \
  blas \
  cblas \
  cairo \
  boost-libs \
  desktop-file-utils \
  fontconfig \
  freeglut \
  freetype2 \
  graphite \
  harfbuzz \
  hicolor-icon-theme \
  icu \
  lapack \
  lcms2 \
  lm_sensors \
  lzo \
  mesa \
  pixman \
  pygobject2-devel \
  pyqt4-common \
  qt4 \
  qwt5 \
  sip \
  wayland \
  xcb-proto \
  xdg-utils \
  xorg-xset \
  xorgproto 
#&& pacman -Scc --noconfirm

# Install basic libs and packages to support python2
RUN pacman -S --noconfirm \
  libdrm \
  libedit \
  libelf \
  libglvnd \
  libice \
  libjpeg-turbo \
  libmng \
  libomxil-bellagio \
  libpciaccess \
  libpng \
  libxi \
  libxml2 \
  libxmu \
  libxrandr \
  libxrender \
  libxshmfence \
  libxslt \
  libxt \
  libxv \
  libxxf86vm \
  llvm-libs && pacman -Scc --noconfirm


# Install python2 core and modules, other package and libs will also be installed
RUN pacman -S --noconfirm python-dbus-common \
  python2 \
  python2-cairo \
  python2-cheetah \
  python2-dbus \
  python2-gobject2 \
  python2-lxml \
  python2-markdown \
  python2-numarray \
  python2-numpy \
  python2-opengl \
  python2-pyqt4 \
  python2-pyqwt \
  python2-requests \
  python2-sip && pacman -Scc --noconfirm

RUN pacman --noconfirm -S gnuradio \
	gnuradio-companion \
	gnuradio-osmosdr \
	&& pacman -Scc --noconfirm

# Enables the graphical interface of gnuradio-companion inside the container
ENV DISPLAY unix:0
