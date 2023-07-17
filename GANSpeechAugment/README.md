# GANSpeechAugment

This repository hosts the codebases for the 4 GANs used in the paper.

The respective GAN codebases are present under the appropriately named directories. Instructions to train and test models are present in pdf files in the respective directories.

Demo Website can be found at : https://leandermaben.github.io/GANSpeechAugment/

# Codec2 bitrate

- [450, 3200]

- Val speaker is the last 4 [MRVG0  MTAS0  MTJU0  MVJH0]
- Test speaker is another subset

# Examples for training 

## SpeechAttentionGAN

1. `cd` to SpeechAttentionGAN
2. RUN the bash file with `noise_type` and `gpu_ids`: 
    `sh experiment_speech_attention_gan.sh helicopter 0`
3. Wait for results.