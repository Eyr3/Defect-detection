from openai import OpenAI
import os
import time

client = OpenAI(
    # defaults to os.environ.get("OPENAI_API_KEY")
    api_key = "",
    # api_key = "",
)
# "sk-QglF6TyAzne6SBZs2e1d150e64De4321B3C0261e62169472", "https://api.132999.xyz/v1/chat/completions"
# "https://api.openai.com/v1/chat/completions"

err_type = 'cipher'
root_path = f"/data/xinyu/code/CodeReview/TUM-Crypto/data/{err_type}/"

for sub_path in ['secure']: #'insecure', 
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
        
        with open(file_name) as f:
            data = f.read()

            chat_completion = client.chat.completions.create(
                model = "gpt-3.5-turbo",
                temperature = 0.7,
                # max_tokens = 2000,
                messages=[
                    # {
                    #     "role": "user",
                    #     "content": f"You are code extractor. Each sample shows at least one usage pattern for one of the following API elements:\n* `javax.crypto.Cipher getInstance(String transformation)`\n* `javax.crypto.Cipher getInstance(String transformation, Provider provider)`\n* `javax.crypto.Cipher getInstance(String transformation, String provider)`\n\
                    #         The java code sample is {data}. Please extract the code that contains 'getInstance' function, without explanation.",
                    # }
                    {
                        "role": "system", 
                        "content": f"You are code extractor. Each sample shows at least one usage pattern for one of the following API elements:\n* `javax.crypto.Cipher getInstance(String transformation)`\n* `javax.crypto.Cipher getInstance(String transformation, Provider provider)`\n* `javax.crypto.Cipher getInstance(String transformation, String provider)` "
                    },
                    {
                        "role": "user", 
                        "content": f"The java code sample is {data}. Please extract the code that contains 'getInstance' function, without explanation. "
                    },
                ],
            )
            
            with open(f'{write_path}/{file}.txt','w') as f2:
                f2.write(chat_completion.choices[0].message.content)
                # f2.write(response['choices'][0]['message']['content'])
            f.close()
            f2.close()
            print(f'{write_path}/{file}.txt')
            time.sleep(1)
            # exit()

