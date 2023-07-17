# $1 can be helicopter, cabin, codec2

noise_type=$1
gpu_ids=$2
data_cache=/data/tuanio/data/cache/$1
checkpoints_dir=checkpoints/

# use the fetchData from SpeechAttentionGAN, because it's the same
# python -m datasets.fetchData \
#     --timit-dir /data/tuanio/data/noise/TIMIT_$noise_type \
#     --data_cache $data_cache \
#     --timit_noise_type $noise_type \
#     --transfer_mode timit

python train.py \
  --split train \
  --dataroot $data_cache \
  --name simu_gan_$noise_type \
  --CUT_mode CUT \
  --display_id 0 \
  --state Train \
  --n_epochs 150 \
  --batch_size 16 \
  --n_epochs_decay 150 \
  --gpu_ids $gpu_ids \
  --no_html

python test.py \
    --split test \
    --dataroot $data_cache \
    --name simu_gan_$noise_type \
    --CUT_mode CUT \
    --phase train \
    --state Test \
    --batch_size 16 \
    --checkpoints_dir $checkpoints_dir \
    --results_dir results

python cal_metrics.py \
    --data-cache $data_cache \
    --results-dir results/ \
    --name simu_gan_$noise_type