import os

err_type = 'cipher'
root_path = f"/data/xinyu/code/CodeReview/TUM-Crypto/data/{err_type}/"

func_name = 'getInstance'

for sub_path in ['insecure', 'secure']:
    write_path = f'/data/xinyu/code/CodeReview/TUM-Crypto/data_func/{err_type}/{sub_path}/'
    folder = os.path.exists(write_path)
    if not folder:
        os.makedirs(write_path)

    file_path = f'{root_path}{sub_path}/'
    files = os.listdir(file_path)
    for file in files:
        file_name = f'{file_path}{file}'

        if os.path.exists(f'{write_path}/{file}.txt'):
            continue
        else:
            with open(f'{write_path}/{file}.txt','w') as f2:
                with open(file_name, 'r') as f1:
                    for line in f1:
                        if func_name in line:
                            # write_flag = True
                            f2.write(f'{line.strip()}\n')
                        # if ')' in line:
                        #     write_flag = False
            f1.close()
            f2.close()
