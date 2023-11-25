#!/bin/bash
# cd ./code


# test 
ERROR_TYPE=combine
CUDA_VISIBLE_DEVICES=1 python run.py --num_labels 9 --local_rank -1 --do_test --output_dir=../dataset/data/${ERROR_TYPE}/saved_models_new --test_data_file=../dataset/data/${ERROR_TYPE}/test.jsonl
# wait
# CUDA_VISIBLE_DEVICES=1 python run.py --num_labels 9 --local_rank -1 --do_test --output_dir=../dataset/data_func/${ERROR_TYPE}/saved_models_lr=5e-5 --test_data_file=../dataset/data_func/${ERROR_TYPE}/test.jsonl



# train 9 label classification ================================================================================
# ERROR_TYPE=combine
# CUDA_VISIBLE_DEVICES=1 nohup python -u run.py --num_labels 9 --local_rank -1 --do_train --evaluate_during_training --do_test --do_eval --output_dir=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/saved_models_lr=5e-5 --train_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/train.jsonl --eval_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/valid.jsonl --test_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/test.jsonl > /data/xinyu/code/CodeReview/logs/Defect-detection/data/${ERROR_TYPE}_lr=5e-5.log 2>&1 &
# wait
# CUDA_VISIBLE_DEVICES=2 nohup python -u run.py --num_labels 9 --local_rank -1 --do_train --evaluate_during_training --do_test --do_eval --output_dir=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/saved_models_lr=5e-5 --train_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/train.jsonl --eval_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/valid.jsonl --test_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/test.jsonl > /data/xinyu/code/CodeReview/logs/Defect-detection/data_func/${ERROR_TYPE}_lr=5e-5.log 2>&1 &



# train 2 label classification ================================================================================

# ERROR_TYPE=cipher 
# CUDA_VISIBLE_DEVICES=1 nohup python -u run.py --local_rank -1 --do_train --evaluate_during_training --do_test --do_eval --output_dir=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/saved_models --train_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/train.jsonl --eval_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/valid.jsonl --test_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/test.jsonl > /data/xinyu/code/CodeReview/logs/Defect-detection/data/${ERROR_TYPE}.log 2>&1 &
# wait
# CUDA_VISIBLE_DEVICES=1 nohup python -u run.py --local_rank -1 --do_train --evaluate_during_training --do_test --do_eval --output_dir=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/saved_models --train_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/train.jsonl --eval_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/valid.jsonl --test_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/test.jsonl > /data/xinyu/code/CodeReview/logs/Defect-detection/data_func/${ERROR_TYPE}.log 2>&1 &
# wait

# ERROR_TYPE=hash
# CUDA_VISIBLE_DEVICES=1 nohup python -u run.py --local_rank -1 --do_train --evaluate_during_training --do_test --do_eval --output_dir=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/saved_models --train_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/train.jsonl --eval_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/valid.jsonl --test_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/test.jsonl > /data/xinyu/code/CodeReview/logs/Defect-detection/data/${ERROR_TYPE}.log 2>&1 &
# wait
# CUDA_VISIBLE_DEVICES=1 nohup python -u run.py --local_rank -1 --do_train --evaluate_during_training --do_test --do_eval --output_dir=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/saved_models --train_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/train.jsonl --eval_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/valid.jsonl --test_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/test.jsonl > /data/xinyu/code/CodeReview/logs/Defect-detection/data_func/${ERROR_TYPE}.log 2>&1 &
# wait

# ERROR_TYPE=hnv
# CUDA_VISIBLE_DEVICES=2 nohup python -u run.py --local_rank -1 --do_train --evaluate_during_training --do_test --do_eval --output_dir=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/saved_models --train_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/train.jsonl --eval_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/valid.jsonl --test_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/test.jsonl > /data/xinyu/code/CodeReview/logs/Defect-detection/data/${ERROR_TYPE}.log 2>&1 &
# wait
# CUDA_VISIBLE_DEVICES=3 nohup python -u run.py --local_rank -1 --do_train --evaluate_during_training --do_test --do_eval --output_dir=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/saved_models --train_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/train.jsonl --eval_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/valid.jsonl --test_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/test.jsonl > /data/xinyu/code/CodeReview/logs/Defect-detection/data_func/${ERROR_TYPE}.log 2>&1 &


# ERROR_TYPE=iv 
# CUDA_VISIBLE_DEVICES=2 nohup python -u run.py --local_rank -1 --do_train --evaluate_during_training --do_test --do_eval --output_dir=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/saved_models --train_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/train.jsonl --eval_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/valid.jsonl --test_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/test.jsonl > /data/xinyu/code/CodeReview/logs/Defect-detection/data/${ERROR_TYPE}.log 2>&1 &
# wait
# CUDA_VISIBLE_DEVICES=5 nohup python -u run.py --local_rank -1 --do_train --evaluate_during_training --do_test --do_eval --output_dir=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/saved_models --train_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/train.jsonl --eval_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/valid.jsonl --test_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/test.jsonl > /data/xinyu/code/CodeReview/logs/Defect-detection/data_func/${ERROR_TYPE}.log 2>&1 &
# wait

# ERROR_TYPE=hnvor
# CUDA_VISIBLE_DEVICES=1 nohup python -u run.py --local_rank -1 --do_train --evaluate_during_training --do_test --do_eval --output_dir=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/saved_models --train_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/train.jsonl --eval_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/valid.jsonl --test_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/test.jsonl > /data/xinyu/code/CodeReview/logs/Defect-detection/data/${ERROR_TYPE}.log 2>&1 &
# wait
# CUDA_VISIBLE_DEVICES=1 nohup python -u run.py --local_rank -1 --do_train --evaluate_during_training --do_test --do_eval --output_dir=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/saved_models --train_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/train.jsonl --eval_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/valid.jsonl --test_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/test.jsonl > /data/xinyu/code/CodeReview/logs/Defect-detection/data_func/${ERROR_TYPE}.log 2>&1 &
# wait

# ERROR_TYPE=key
# CUDA_VISIBLE_DEVICES=1 nohup python -u run.py --local_rank -1 --do_train --evaluate_during_training --do_test --do_eval --output_dir=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/saved_models --train_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/train.jsonl --eval_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/valid.jsonl --test_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/test.jsonl > /data/xinyu/code/CodeReview/logs/Defect-detection/data/${ERROR_TYPE}.log 2>&1 &
# wait
# CUDA_VISIBLE_DEVICES=1 nohup python -u run.py --local_rank -1 --do_train --evaluate_during_training --do_test --do_eval --output_dir=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/saved_models --train_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/train.jsonl --eval_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/valid.jsonl --test_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/test.jsonl > /data/xinyu/code/CodeReview/logs/Defect-detection/data_func/${ERROR_TYPE}.log 2>&1 &
# wait

# ERROR_TYPE=tls
# CUDA_VISIBLE_DEVICES=1 nohup python -u run.py --local_rank -1 --do_train --evaluate_during_training --do_test --do_eval --output_dir=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/saved_models --train_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/train.jsonl --eval_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/valid.jsonl --test_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/test.jsonl > /data/xinyu/code/CodeReview/logs/Defect-detection/data/${ERROR_TYPE}.log 2>&1 &
# wait
# CUDA_VISIBLE_DEVICES=1 nohup python -u run.py --local_rank -1 --do_train --evaluate_during_training --do_test --do_eval --output_dir=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/saved_models --train_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/train.jsonl --eval_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/valid.jsonl --test_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/test.jsonl > /data/xinyu/code/CodeReview/logs/Defect-detection/data_func/${ERROR_TYPE}.log 2>&1 &
# wait

# ERROR_TYPE=tm
# CUDA_VISIBLE_DEVICES=1 nohup python -u run.py --local_rank -1 --do_train --evaluate_during_training --do_test --do_eval --output_dir=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/saved_models --train_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/train.jsonl --eval_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/valid.jsonl --test_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/test.jsonl > /data/xinyu/code/CodeReview/logs/Defect-detection/data/${ERROR_TYPE}.log 2>&1 &
# wait
# CUDA_VISIBLE_DEVICES=1 nohup python -u run.py --local_rank -1 --do_train --evaluate_during_training --do_test --do_eval --output_dir=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/saved_models --train_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/train.jsonl --eval_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/valid.jsonl --test_data_file=/data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/test.jsonl > /data/xinyu/code/CodeReview/logs/Defect-detection/data_func/${ERROR_TYPE}.log 2>&1 &


# Evaluator: calculate accuracy ================================================================================

# ERROR_TYPE=cipher
# python ../evaluator/evaluator.py -a /data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/test.jsonl -p /data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/saved_models/predictions.txt
# wait
# python ../evaluator/evaluator.py -a /data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/test.jsonl -p /data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/saved_models/predictions.txt
# wait

# ERROR_TYPE=hash
# python ../evaluator/evaluator.py -a /data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/test.jsonl -p /data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/saved_models/predictions.txt
# wait
# python ../evaluator/evaluator.py -a /data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/test.jsonl -p /data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/saved_models/predictions.txt
# wait

# ERROR_TYPE=hnv
# python ../evaluator/evaluator.py -a /data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/test.jsonl -p /data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/saved_models/predictions.txt
# wait
# python ../evaluator/evaluator.py -a /data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/test.jsonl -p /data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/saved_models/predictions.txt
# wait

# ERROR_TYPE=iv
# python ../evaluator/evaluator.py -a /data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/test.jsonl -p /data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/saved_models/predictions.txt
# wait
# python ../evaluator/evaluator.py -a /data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/test.jsonl -p /data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/saved_models/predictions.txt


# ERROR_TYPE=combine
# python ../evaluator/evaluator.py -a /data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/test.jsonl -p /data/xinyu/code/CodeReview/TUM-Crypto/data/${ERROR_TYPE}/saved_models_lr=5e-5/predictions.txt
# wait
# python ../evaluator/evaluator.py -a /data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/test.jsonl -p /data/xinyu/code/CodeReview/TUM-Crypto/data_func/${ERROR_TYPE}/saved_models_lr=5e-5/predictions.txt
