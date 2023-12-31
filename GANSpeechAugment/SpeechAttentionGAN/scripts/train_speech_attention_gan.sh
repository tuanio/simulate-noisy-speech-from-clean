set -ex
python train.py \
    --dataroot /data/tuanio/data/cache/SpeechAttentionGAN-VC/data_cache \
    --name speech_attention_gan_helicopter \
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
    --niter 300 \
    --niter_decay 300 \
    --gpu_ids 2 \
    --display_id 0 \
    --display_freq 200 \
    --print_freq 200 \
    --input_nc 1 \
    --output_nc 1 \
    --use_cycled_discriminators \
    --use_mask \
    --max_mask_len 50
    --checkpoints_dir checkpoints \
    --no_html
---
python train.py \
    --dataroot /data/tuanio/data/cache/SpeechAttentionGAN-VC/cabin_data_cache \
    --name speech_attention_gan_cabin \
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
    --niter 300 \
    --niter_decay 300 \
    --gpu_ids 3 \
    --display_id 0 \
    --display_freq 200 \
    --print_freq 200 \
    --input_nc 1 \
    --output_nc 1 \
    --use_cycled_discriminators \
    --use_mask \
    --max_mask_len 50
    --checkpoints_dir checkpoints \
    --no_html