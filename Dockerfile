FROM i386/ubuntu

ADD loop.sh /tmp/loop.sh
ADD maemo_flasher.deb /tmp/maemo_flasher.deb

RUN apt-get update && apt-get install -y libusb-0.1-4
# RUN yes | dpkg -i /tmp/maemo_flasher.deb
RUN chmod +x /tmp/loop.sh
