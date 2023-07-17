# Timit
## Helicopter
1. /data/tuanio/projects/noisy-speech-simulation/Discriminator-Constrained-Optimal-Transport-Network/Data_preprocessing/preprocessing_TIMIT ./create_timit_8000.sh helicopter
## Cabin
1. /data/tuanio/projects/noisy-speech-simulation/Discriminator-Constrained-Optimal-Transport-Network/Data_preprocessing/preprocessing_TIMIT ./create_timit_8000.sh cabin
# Codec2
1. /data/tuanio/projects/noisy-speech-simulation/codec2/build_linux$ ./gen_bitrate_wav.sh 8000
2. /data/tuanio/projects/noisy-speech-simulation/Discriminator-Constrained-Optimal-Transport-Network/Data_preprocessing/preprocessing_TIMIT ./create_codec_timit_format_8000.sh

# need do
1. Training SimuGAN on Helicopter, Cabin, Codec2
2. Restructure the Code then make slide 