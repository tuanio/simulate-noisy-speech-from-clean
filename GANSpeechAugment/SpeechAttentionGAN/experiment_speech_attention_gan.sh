# $1 can be helicopter, cabin, codec2

noise_type=$1
gpu_ids=$2
data_cache=/data/tuanio/data/cache/$1
checkpoints_dir=checkpoints/

python -m datasets.fetchData \
    --timit-dir /data/tuanio/data/noise/TIMIT_$noise_type \
    --data_cache $data_cache \
    --timit_noise_type $noise_type \
    --transfer_mode timit

python train.py \
    --dataroot $data_cache \
    --name speech_attention_gan_$noise_type \
    --model attention_gan \
    --dataset_mode audio \
    --pool_size 50 \
    --no_dropout \
    --norm instance \
    --lambda_A 10 \
    --lambda_B 10 \
    --lambda_identity 0.5 \
    --load_size_h 128  \
    --load_size_w 128  \
    --crop_size 128 \
    --preprocess resize \
    --batch_size 8 \
    --niter 150 \
    --niter_decay 150 \
    --gpu_ids $gpu_ids \
    --display_id 0 \
    --display_freq 200 \
    --print_freq 200 \
    --input_nc 1 \
    --output_nc 1 \
    --use_cycled_discriminators \
    --use_mask \
    --max_mask_len 50
    --checkpoints_dir $checkpoints_dir \
    --no_html

python test.py \
    --dataroot $data_cache \
    --name speech_attention_gan_$noise_type \
    --model attention_gan \
    --dataset_mode audio \
    --norm instance \
    --phase test \
    --no_dropout \
    --load_size_h 128 \
    --load_size_w 128 \
    --crop_size 128 \
    --batch_size 1 \
    --gpu_ids $gpu_ids \
    --input_nc 1 \
    --output_nc 1 \
    --use_mask

python cal_metrics.py \
    --data-cache $data_cache \
    --results-dir results/ \
    --name speech_attention_gan_$noise_type