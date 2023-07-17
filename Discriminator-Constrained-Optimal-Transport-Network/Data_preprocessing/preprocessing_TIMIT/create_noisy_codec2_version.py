import argparse

'''
use this file to replace path
'''

parser = argparse.ArgumentParser()
parser.add_argument('--timit-path', default='/data/tuanio/data/timit_8000/data')
parser.add_argument('--replace-timit-path', default='/data/tuanio/data/noise/codec2/bitrate_3200')

args = parser.parse_args()

src_files = ['CoreTestList.txt', 'CoreTrainList.txt']
tgt_files = ['target_CoreTestList.txt', 'target_CoreTrainList.txt']

noisy_prefix = 'noisy_'

for src in src_files:
    src_data = open(src, 'r').read().strip()
    with open(noisy_prefix + src, 'w') as f:
        src_data = src_data.replace(args.timit_path, args.replace_timit_path)
        f.write(src_data.replace('.WAV.wav', '.wav'))

for tgt in tgt_files:
    tgt_data = open(tgt, 'r').read().strip()
    with open(noisy_prefix + tgt, 'w') as f:
        f.write(tgt_data.replace('/clean/', '/noisy/codec2/0dB/'))
