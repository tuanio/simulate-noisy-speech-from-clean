python test.py \
    --split test \
    --dataroot /data/tuanio/data/cache/SpeechAttentionGAN-VC/data_cache \
    --name simu_gan_helicopter \
    --CUT_mode CUT \
    --phase train \
    --state Test \
    --checkpoints_dir checkpoints \
    --results_dir results 

python test.py \
    --split test \
    --dataroot /data/tuanio/data/cache/SpeechAttentionGAN-VC/cabin_data_cache \
    --name simu_gan_cabin \
    --CUT_mode CUT \
    --phase train \
    --state Test \
    --checkpoints_dir checkpoints \
    --results_dir results 