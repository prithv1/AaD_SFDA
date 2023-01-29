# No PASTA

# Source-Pretraining
python src_pretrain.py --dset visda-2017 --output /coc/scratch/prithvi/dg_for_da/recognition_sfda/aad/vanilla --batch_size 64

# With PASTA

# Source-Pretraining
python src_pretrain.py --dset visda-2017 --use_pasta 1 --output /coc/scratch/prithvi/dg_for_da/recognition_sfda/aad/pasta_a3k2b025 --batch_size 64

# Source-Pretraining
python src_pretrain.py --dset visda-2017 --use_pasta 1 --output /coc/scratch/prithvi/dg_for_da/recognition_sfda/aad/pasta_a10k1b05 --batch_size 64


# Source-free Adaptation

# From non-PASTA checkpoint
python tar_adaptation.py \
    --dset visda-2017 \
    --interval 75 \
    --output_src  /coc/scratch/prithvi/dg_for_da/recognition_sfda/aad/vanilla \
    --output /coc/scratch/prithvi/dg_for_da/recognition_sfda/aad/vanilla_adapt


# From PASTA checkpoint
python tar_adaptation.py \
    --dset visda-2017 \
    --interval 75 \
    --output_src  /coc/scratch/prithvi/dg_for_da/recognition_sfda/aad/pasta_a3k2b025 \
    --output /coc/scratch/prithvi/dg_for_da/recognition_sfda/aad/pasta_a3k2b025_adapt