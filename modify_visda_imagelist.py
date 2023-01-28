import os
import sys

import numpy as np

from pprint import pprint

def load_txt(txt_file):
    with open(txt_file, "r") as f:
        data = [x.strip('\n') for x in f.readlines()]
    return data

def modify_data(txt_file, prepend_path='/srv/datasets/visda/train/', save_file='image_lists/visda/train_imagelist.txt'):
    data = load_txt(txt_file)
    mod_data = [prepend_path + x for x in data]
    with open(save_file, "w") as f:
        for line in mod_data:
            f.write(line + "\n")

if __name__ == "__main__":
    # TXT_FILE = "/srv/datasets/visda/train/image_list.txt"
    # PREPEND_PATH = "/srv/datasets/visda/train/"
    # SAVE_FILE = "image_lists/visda/train_imagelist.txt"
    
    TXT_FILE = "/srv/datasets/visda/validation/image_list.txt"
    PREPEND_PATH = "/srv/datasets/visda/validation/"
    SAVE_FILE = "image_lists/visda/validation_imagelist.txt"
    
    
    modify_data(TXT_FILE, PREPEND_PATH, SAVE_FILE)

