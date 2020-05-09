FROM nvcr.io/nvidia/l4t-base:r32.4.2
WORKDIR /
RUN apt update && apt install -y --fix-missing make g++ python3-pip libhdf5-serial-dev hdf5-tools libhdf5-dev \
        zlib1g-dev zip libjpeg8-dev liblapack-dev libblas-dev gfortran python3-h5py && \
    pip3 install --no-cache-dir --upgrade pip  && \
    pip3 install --no-cache-dir --upgrade testresources setuptools cython && \
    pip3 install --pre --no-cache-dir --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v44 tensorflow && \
    apt-get clean

CMD [ "bash" ]