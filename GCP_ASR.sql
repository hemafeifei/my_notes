Linode US: ssh root@74.207.246.223

GCP : 34.92.46.156    16CPU&64GB
ssh zhengwei8618@34.92.46.156
/home/zhengwei8618/kaldi/
***********************************************
Kaldi cvte example
***********************************************
-- Step 1 安装编译
https://blog.csdn.net/baidu_26788951/article/details/83311145

-- Step 2 下载cvte
wget http://kaldi-asr.org/models/2/0002_cvte_chain_model_v2.tar.gz
tar xf 0002_cvte_chain_model_v2.tar.gz

-- Step 3 调试
-- Test function
cd kaldi-tian/egs/yesno/s5 进入yesno样例目录
键入./run.sh
check the result
-- Method 1 Online
在src/online2bin输入以下命令:
./online2-wav-nnet3-latgen-faster --do-endpointing=false --online=false --feature-type=fbank --fbank-config=../../egs/cvte/s5/conf/fbank.conf --max-active=7000 --beam=15.0 --lattice-beam=6.0 --acoustic-scale=1.0 --word-symbol-table=../../egs/cvte/s5/exp/chain/tdnn/graph/words.txt ../../egs/cvte/s5/exp/chain/tdnn/final.mdl ../../egs/cvte/s5/exp/chain/tdnn/graph/HCLG.fst 'ark:echo utter1 utter1|' 'scp:echo utter1 ../../egs/cvte/s5/data/wav/00030/2017_03_07_16.57.22_1175.wav|' ark:/dev/null
-- Method 2 Local
ln -s ~/kaldi/egs/wsj/s5/steps ~/kaldi/egs/cvte/s5/steps
ln -s ~/kaldi/egs/wsj/s5/utils ~/kaldi/egs/cvte/s5/utils
最后运行run.sh即可
如果出现错误：

utils/lang/check_phones_compatible.sh: Error! Both of the two phones-symbol tables are absent.
Please check your command
忽略这个问题，注释掉utils/lang/check_phones_compatible.sh中if语句中的exit 1
继续运行会出现找不到score.sh，建立软连接即可
将egs/hkust/s5/local/score.sh拷贝到egs/cvte/s5/local目录下

./online2-wav-nnet3-latgen-faster --do-endpointing=false --online=false --feature-type=fbank --fbank-config=../../egs/cvte/s5/conf/fbank.conf --max-active=7000 --beam=15.0 --lattice-beam=6.0 --acoustic-scale=1.0 --word-symbol-table=../../egs/cvte/s5/exp/chain/tdnn/graph/words.txt ../../egs/cvte/s5/exp/chain/tdnn/final.mdl ../../egs/cvte/s5/exp/chain/tdnn/graph/HCLG.fst 'ark:echo utter1 utter1|' 'scp:echo utter1 ../../egs/cvte/s5/data/wav/hsbc/out001.wav|' ark:/dev/null

-- deal with your own wav
-- install FFmpeg
git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg
1. Type './configure --disable-x86asm'
2. Then type `make` to build FFmpeg
3. Type `make install`
ffmpeg -i audiosample1_16k.wav -f segment -segment_time 10 -c copy out%03d.wav
./online2-wav-nnet3-latgen-faster --do-endpointing=false --online=false --feature-type=fbank --fbank-config=../../egs/cvte/s5/conf/fbank.conf --max-active=7000 --beam=15.0 --lattice-beam=6.0 --acoustic-scale=1.0 --word-symbol-table=../../egs/cvte/s5/exp/chain/tdnn/graph/words.txt ../../egs/cvte/s5/exp/chain/tdnn/final.mdl ../../egs/cvte/s5/exp/chain/tdnn/graph/HCLG.fst 'ark:echo utter1 utter1|' 'scp:echo utter1 /home/zhengwei8618/audiosample1_16k.wav|' ark:/dev/null
audio_temp_16k.wav/audiosample1_16k.wav/

./online2-wav-nnet3-latgen-faster \
  --online=false \
  --do-endpointing=false \
  --frame-subsampling-factor=3 \
  --config=../../egs/cvte/s5/conf/fbank.conf \
  --max-active=7000 \
  --beam=15.0 \
  --lattice-beam=6.0 \
  --acoustic-scale=1.0 \
  --word-symbol-table=../../egs/cvte/s5/exp/chain/tdnn/graph/words.txt \
  ../../egs/cvte/s5/exp/chain/tdnn/final.mdl \
  ../../egs/cvte/s5/exp/chain/tdnn/graph/HCLG.fst \
  'ark:echo utterance-id1 utterance-id1|' \
  'scp:echo utterance-id1 /home/zhengwei8618/kaldi/egs/cvte/s5/data/wav/0030/sample-16k_0.wav|' \
  'ark:/dev/null'
-- view result: kaldi/egs/cvte/s5/exp/chain/tdnn/decode_test/scoring_kaldi/

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
