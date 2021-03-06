FROM munken/ucesb


RUN git clone https://Munken@git.kern.phys.au.dk/ausa/MBS-unpacker.git \
    && make -C MBS-unpacker mbs 

COPY unpack.sh /

ENV INPUT_DIR=/data
ENV OUTPUT_DIR=/output
ENV UNPACKER=/MBS-unpacker/mbs/MBS_unpacker

CMD /unpack.sh 
