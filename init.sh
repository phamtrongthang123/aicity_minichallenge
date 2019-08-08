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