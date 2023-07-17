python step1_generate_clean_files.py \
        --timit-path /data/tuanio/data/timit_8000/data \
            --target-root /data/tuanio/data/noise/TIMIT_codec2 \
                --sample-rate 8000 

python create_noisy_codec2_version.py

bash copy_audio.sh
