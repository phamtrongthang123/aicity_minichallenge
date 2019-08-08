apt install vim

sudo apt-get --purge remove cuda-10.0
wget https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb
dpkg -i cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb
apt-get update
apt-get install cuda-8.0
export PATH=/usr/local/nvidia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/tools/node/bin:/tools/google-cloud-sdk/bin:/opt/bin:/usr/local/cuda-8.0/bin
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64:/usr/lib64-nvidia/

git clone https://gitlab.com/dtle/nckh-cntn17
pip install cffi
pip install pandas
pip install cython
pip install opencv-python
pip install requests
pip install tqdm
pip install matplotlib
pip install scikit-image
pip install tensorboardX
pip install tensorflow
pip install torch==0.4.0 torchvision==0.2.0
git clone https://github.com/cocodataset/cocoapi.git
cd cocoapi/PythonAPI
make
make install
cd ../../
cd /content/nckh-cntn17/pytorch-retinanet/lib
bash build.sh
cd ../
wget http://images.cocodataset.org/zips/train2014.zip
wget http://images.cocodataset.org/annotations/annotations_trainval2014.zip
mkdir coco
mkdir images 
unzip train2014.zip -d coco/images/
unzip annotations_trainval2014.zip -d coco/