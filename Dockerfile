FROM ubuntu:latest

RUN apt-get update \
 && apt-get -y install build-essential \ 
 && apt-get -y install git \
 && apt-get clean
 
RUN git clone https://github.com/dmaddalone/CDataFile.git CDataFile
RUN cd CDataFile && make -f CDataFile.cbp.mak.unix clean && make -f CDataFile.cbp.mak.unix all

RUN git clone https://github.com/dmaddalone/CrapSim.git CrapSim
RUN cd CrapSim && make -f CrapSim.cbp.mak.unix clean && make -f CrapSim.cbp.mak.unix all

RUN cd CrapSim && bin/Release/CrapSim CrapSim.ini