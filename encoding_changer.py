import os

import chardet


def convert_to_utf8(file_path):
    # 파일의 인코딩을 감지
    with open(file_path, 'rb') as f:
        result = chardet.detect(f.read())
        encoding = result['encoding']
    
    # 인코딩이 UTF-8이 아닌 경우 변환
    if encoding.lower() != 'utf-8':
        with open(file_path, 'r', encoding=encoding) as f:
            content = f.read()
        with open(file_path, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"Converted {file_path} from {encoding} to UTF-8")
    else:
        print(f"{file_path} is already in UTF-8")

# data 폴더 내의 모든 CSV 파일을 변환
data_folder = './data'
for file_name in os.listdir(data_folder):
    if file_name.endswith('.csv'):
        file_path = os.path.join(data_folder, file_name)
        convert_to_utf8(file_path)