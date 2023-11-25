import json
import random

def read_jsonl(file_name):
    with open(file_name, 'r') as json_file:
        json_list = list(json_file)
    return json_list

def write_jsonl(file_name, json_list):
    with open(file_name, 'w') as outfile:
        for entry in json_list:
            outfile.write(entry)

for err_type in ['cipher', 'hash', 'hnv', 'hnvor', 'key', 'tls', 'tm']: 
    root_path = f'/data/xinyu/code/CodeReview/TUM-Crypto/data_func/{err_type}/'
    jsonl_files = [f'{root_path}insecure.jsonl', f'{root_path}secure.jsonl']

    insecure_json_objects = []
    insecure_json_objects.extend(read_jsonl(f'{root_path}insecure.jsonl'))
    insecure_len = len(insecure_json_objects)

    secure_json_objects = []
    secure_json_objects.extend(read_jsonl(f'{root_path}secure.jsonl'))
    secure_len = len(secure_json_objects)


    train_data = insecure_json_objects[:int(insecure_len * 0.7)]
    train_data.extend(secure_json_objects[:int(secure_len * 0.7)])
    random.shuffle(train_data)

    val_data = insecure_json_objects[int(insecure_len * 0.7): int(insecure_len * 0.85)]
    val_data.extend(secure_json_objects[int(secure_len * 0.7): int(secure_len * 0.85)])
    random.shuffle(val_data)

    test_data = insecure_json_objects[int(insecure_len * 0.85):]
    test_data.extend(secure_json_objects[int(secure_len * 0.85):])
    random.shuffle(test_data)


    write_jsonl(f'{root_path}train.jsonl', train_data)
    write_jsonl(f'{root_path}valid.jsonl', val_data)
    write_jsonl(f'{root_path}test.jsonl', test_data)
