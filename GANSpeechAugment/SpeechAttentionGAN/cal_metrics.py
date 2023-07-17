import argparse
import os
from metrics.evaluate_lsd import main as lsd
from metrics.mssl import main as mssl

parser = argparse.ArgumentParser()
parser.add_argument('--data-cache')
parser.add_argument('--results-dir')
parser.add_argument('--name')
args = parser.parse_args()

data_cache = args.data_cache
results_dir = args.results_dir
name = args.name

avg_lsd, std_lsd = lsd(
    os.path.join(data_cache, "noisy", "test"),
    os.path.join(results_dir, name, "test_latest", "audios", "fake_B"), use_gender=False)
avg_mssl, std_mssl = mssl(
    os.path.join(data_cache, "noisy", "test"),
    os.path.join(results_dir, name, "test_latest", "audios", "fake_B"), use_gender=False)

print(f"Metrics of {name}")
print(f"LSD: {avg_lsd} ± {std_lsd}")
print(f"MSSL: {avg_mssl} ± {avg_mssl}")
