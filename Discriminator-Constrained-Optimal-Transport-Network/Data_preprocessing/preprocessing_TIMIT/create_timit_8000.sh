:'
$1 is a [helicopter | cabin]
'

python step1_generate_clean_files.py \
        --timit-path /data/tuanio/data/timit_8000/data \
            --target-root /data/tuanio/data/noise/TIMIT_$1 \
                --sample-rate 8000 

python step2_add_noise.py \
        --target-root /data/tuanio/data/noise/TIMIT_$1 \
            --noise-type $1
