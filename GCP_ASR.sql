Linode US: ssh root@74.207.246.223

GCP : 34.92.46.156    16v64GB
ssh zhengwei8618@34.92.46.156

export KALDI_ROOT=/home/zhengwei8618/asr/kaldi
export KALDI_ROOT=/home/zhengwei8618/kaldi

-- no need to run python set_up.py install
git clone https://github.com/alphacep/vosk-api.git
tar xf alphacep-model-android-cn-0.3.tar.gz
wget https://github.com/alphacep/kaldi-android-demo/releases/download/2020-01/alphacep-model-android-cn-0.3.tar.gz
wget http://kaldi-asr.org/models/2/0002_cvte_chain_model_v2.tar.gz

python test_hsbc.py audiosample1_16k.wav >> log_hsbc_asr.txt

Files in this archive:
1) you should un-tar this inside the asr_hsbc/ directory of kaldi;
2) create the soft-links, i.e., s5/steps, s5/utils, and s5/local/score.sh;
3) "conf" contains the fbank.conf used for feature extraction;
4) "data" contains ten utterances for testing;
5) "exp/chain/tdnn" includes the model;



在src/online2bin输入以下命令:
./online2-wav-nnet3-latgen-faster --do-endpointing=false --online=false --feature-type=fbank --fbank-config=../../egs/cvte/s5/conf/fbank.conf --max-active=7000 --beam=15.0 --lattice-beam=6.0 --acoustic-scale=1.0 --word-symbol-table=../../egs/cvte/s5/exp/chain/tdnn/graph/words.txt ../../egs/cvte/s5/exp/chain/tdnn/final.mdl ../../egs/cvte/s5/exp/chain/tdnn/graph/HCLG.fst 'ark:echo utter1 utter1|' 'scp:echo utter1 ../../egs/cvte/s5/data/wav/00030/2017_03_07_16.57.22_1175.wav|' ark:/dev/null
ln -s ~/kaldi/egs/wsj/s5/steps ~/kaldi/egs/cvte/s5/steps
ln -s ~/kaldi/egs/wsj/s5/utils ~/kaldi/egs/cvte/s5/utils

./online2-wav-nnet3-latgen-incremental --do-endpointing=false --online=false --feature-type=fbank --fbank-config=../../egs/cvte/s5/conf/fbank.conf --max-active=7000 --beam=15.0 --lattice-beam=6.0 --acoustic-scale=1.0 --word-symbol-table=../../egs/cvte/s5/exp/chain/tdnn/graph/words.txt ../../egs/cvte/s5/exp/chain/tdnn/final.mdl ../../egs/cvte/s5/exp/chain/tdnn/graph/HCLG.fst 'ark:echo utter1 utter1|' 'scp:echo utter1 /home/zhengwei8618/audio_temp_16k.wav|' ark:/dev/null



***********************************************
Pykaldi installation
***********************************************
-- start a centos7 server and login as administer

-- 0 os setting
yum install yum-plugin-fastestmirror
yum update

-- 1 install miniconda
-- # http://deeplearning.lipingyang.org/2018/12/24/install-miniconda-on-centos-7-redhat-7/
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh
-- 安装后退出，重新登录server

-- 2 install pykaldi
conda install -c pykaldi pykaldi-cpu
