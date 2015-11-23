FROM ubuntu:latest

# Install development tools
RUN apt-get update \
 && apt-get -y install build-essential \ 
 && apt-get -y install git 
 
# Install and build CDataFile  
RUN git clone https://github.com/dmaddalone/CDataFile.git CDataFile \
 && cd CDataFile \
 && make -f CDataFile.cbp.mak.unix clean && make -f CDataFile.cbp.mak.unix all

# Install and build CrapSim
RUN git clone https://github.com/dmaddalone/CrapSim.git CrapSim \
 && cd CrapSim \
 && make -f CrapSim.cbp.mak.unix clean && make -f CrapSim.cbp.mak.unix all

# Execute CrapSim
CMD CrapSim/bin/Release/CrapSim CrapSim/CrapSim.ini