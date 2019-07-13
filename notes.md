# git clone https://github.com/nicolas42/video-40.git
git clone https://github.com/ultralytics/yolov3.git
git clone https://github.com/pdollar/coco

mkdir -p coco/images/val2014
mkdir -p coco/labels/val2014

cp video-40/dataset/*.jpg coco/images/val2014
cp video-40/dataset/*.txt coco/labels/val2014
cp video-40/config-ultralytics/* yolov3/data

echo "
# train
cd yolov3
python3 train.py --data data/obj.data

# to resume
python3 train.py --data data/obj.data --resume


# requirements
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

conda install numpy opencv matplotlib tqdm pillow
conda install pytorch torchvision -c pytorch
conda install -c conda-forge scikit-image
"


# To Use with AlexeyAB Darknet

git clone https://github.com/alexeyAB/darknet.git
git clone https://github.com/JcTechnology/video-40.git
wget https://pjreddie.com/media/files/darknet19_448.conv.23

cp darknet19_448.conv.23 darknet
cp video-40/config-darknet/* darknet

./darknet detector train obj.data yolo-obj.cfg darknet19_448.conv.23

# How to Upload Results to Dropbox
You'll need to follow the instructions to get an authentication key if you don't already have one.

git clone https://github.com/andreafabrizi/Dropbox-Uploader.git
cd Dropbox-Uploader/
chmod +x dropbox_uploader.sh
./dropbox_uploader.sh
<need dropbox authentication key>

/dropbox_uploader.sh upload src dest



# Ivan Goncharov's Colab Stuff
https://github.com/ivangrov/YOLOv3-GoogleColab/blob/master/YOLOv3_GoogleColab.ipynb




# Modify the Makefile

#!cat Makefile
!sed -i 's/GPU=0/GPU=1/g' Makefile
!sed -i 's/CUDNN=0/CUDNN=1/g' Makefile
!sed -i 's/CUDNN_HALF=0/CUDNN_HALF=1/g' Makefile
#!cat Makefile


# Modify makefile using git pull
git pull && cp config-darknet/Makefile ../darknet


