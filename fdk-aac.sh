mkdir -p ~/.local/src/ffmpeg_sources && \
cd ~/.local/src/ffmpeg_sources && \
git -C fdk-aac pull 2> /dev/null || git clone --depth 1 https://github.com/mstorsjo/fdk-aac && \
cd fdk-aac && \
autoreconf -fiv && \
./configure  --disable-shared && \
make -j4 && \
sudo make install && sudo ldconfig
