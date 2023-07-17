import shutil
import os
import sys
from tqdm.auto import tqdm

src_file, dst_file = sys.argv[1:]

src_paths = open(src_file).read().strip().split('\n')
dst_paths = open(dst_file).read().strip().split('\n')

for src, dst in tqdm(zip(src_paths, dst_paths), total=len(src_paths)):
    folder = dst.rsplit(os.sep, 1)[0]
    if not os.path.exists(folder):
        os.system('mkdir -p ' + folder)
    shutil.copy2(src, dst)
