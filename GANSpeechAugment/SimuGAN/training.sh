python train.py \
  --split train \
  --dataroot /data/tuanio/data/cache/SpeechAttentionGAN-VC/data_cache \
  --name simu_gan_helicopter \
  --CUT_mode CUT \
  --display_id 0 \
  --state Train \
  --n_epochs 100 \
  --n_epochs_decay 400 \
  --gpu_ids 2 \
  --no_html

python train.py \
  --split train \
  --dataroot /data/tuanio/data/cache/SpeechAttentionGAN-VC/cabin_data_cache \
  --name simu_gan_cabin \
  --CUT_mode CUT \
  --display_id 0 \
  --state Train \
  --n_epochs 100 \
  --n_epochs_decay 400 \
  --gpu_ids 2 \
  --no_html