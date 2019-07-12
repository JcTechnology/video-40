# git clone https://github.com/nicolas42/video-40.git
git clone https://github.com/ultralytics/yolov3.git
git clone https://github.com/pdollar/coco

echo "Copying files to coco dir..."
mkdir -p coco/images/val2014
mkdir -p coco/labels/val2014

cp video-40/images/*.jpg coco/images/val2014
cp video-40/labels/*.txt coco/labels/val2014
cp video-40/config/* yolov3/data

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