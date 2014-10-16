FROM ubuntu:14.04
MAINTAINER Rui Gonçalves <ruippeixotog@gmail.com>

RUN apt-get update
RUN apt-get install -y wget

RUN wget http://pypi.python.org/packages/source/Q/QSTK/QSTK-0.2.8.tar.gz
RUN tar -xzf QSTK-0.2.8.tar.gz

RUN sh QSTK-0.2.8/UbuntuInstallation.sh
RUN cd QSTK-0.2.8 && python setup.py install

RUN apt-get install -y ipython-notebook
RUN mkdir /notebooks

EXPOSE 8888
VOLUME /notebooks

WORKDIR /notebooks
CMD /usr/bin/ipython notebook --pylab=inline --ip=*
