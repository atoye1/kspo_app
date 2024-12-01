import os
import pandas as pd

def load_column_definitions(definition_file):
    df = pd.read_csv(definition_file)
    return dict(zip(df['컬럼영문명'], df['컬럼한글명']))

def change_column_names(data_file, column_definitions):
    df = pd.read_csv(data_file)
    df.rename(columns=column_definitions, inplace=True)
    df.to_csv(data_file, index=False)

def main():
    data_folder = '/workspaces/kspo_app/data'
    definition_files = [f for f in os.listdir(data_folder) if '컬럼정의서' in f]
    data_files = [f for f in os.listdir(data_folder) if '컬럼정의서' not in f]

    for definition_file in definition_files:
        column_definitions = load_column_definitions(os.path.join(data_folder, definition_file))
        for data_file in data_files:
            change_column_names(os.path.join(data_folder, data_file), column_definitions)

if __name__ == "__main__":
    main()
