#!/usr/bin/env bash

###############################################################################
# S3A
# Run all experiments reported in the paper
#
# Usage:
#   bash scripts/run_all.sh
###############################################################################

set -e

GPU=0

echo "=================================================================="
echo "S3A Experiments"
echo "GPU = ${GPU}"
echo "=================================================================="

###############################################################################
# EAC + S3A
###############################################################################

echo ""
echo "==================== EAC + S3A ===================="

python main.py --conf conf/PEMS03/eac_S3A.json   --gpuid ${GPU} --seed 43
python main.py --conf conf/AIR/eac_S3A.json    --gpuid ${GPU} --seed 46
python main.py --conf conf/PEMS04/eac_S3A.json --gpuid ${GPU} --seed 43


###############################################################################
# STBP + S3A
###############################################################################

echo ""
echo "==================== STBP + S3A ===================="

python mainSTBP_S3A.py --conf conf/PEMS03/STBP_S3A.json --gpuid ${GPU} --seed 43
python mainSTBP_S3A.py --conf conf/AIR/STBP_S3A.json   --gpuid ${GPU} --seed 44
python mainSTBP_S3A.py --conf conf/PEMS04/STBP_S3A.json --gpuid ${GPU} --seed 43


###############################################################################
# DCRNN + S3A
###############################################################################

echo ""
echo "==================== DCRNN + S3A ===================="

python main.py --conf conf/PEMS03/DCRNN_S3A.json   --gpuid ${GPU} --seed 43
python main.py --conf conf/AIR/DCRNN_S3A.json    --gpuid ${GPU} --seed 43
python main.py --conf conf/PEMS04/DCRNN_S3A.json --gpuid ${GPU} --seed 43


###############################################################################
# PDFormer + S3A
###############################################################################

echo ""
echo "==================== PDFormer + S3A ===================="

python main.py --conf conf/PEMS03/PDFormer_S3A.json   --gpuid ${GPU} --seed 43
python main.py --conf conf/AIR/PDFormer_S3A.json    --gpuid ${GPU} --seed 85
python main.py --conf conf/PEMS04/PDFormer_S3A.json --gpuid ${GPU} --seed 43


echo ""
echo "=================================================================="
echo "All S3A experiments completed."
echo "=================================================================="