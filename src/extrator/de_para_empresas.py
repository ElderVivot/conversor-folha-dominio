# coding: utf-8

from __future__ import annotations
import os
import sys
import json
import csv
from typing import Dict, List

currentFolder = os.path.dirname(__file__)
folderSrc = os.path.join(currentFolder, '..')
folderBeforeSrc = os.path.join(currentFolder, '..', '..')
sys.path.append(currentFolder)
sys.path.append(folderSrc)
sys.path.append(folderBeforeSrc)

# Load environment data
dataEnv = json.load(open(os.path.join(folderBeforeSrc, 'env.json')))
COMPANIES_MIGRATE: list[int] = dataEnv["companies_migrate"]
FILTER_FILES_DE_PARA_EMPRESAS: List[str] = dataEnv.get("filterFilesDeParaEmpresas", [])


def read_company_mapping() -> Dict[str, str]:
    """Read the company mapping from lista_empresas.txt"""
    mapping = {}
    with open(os.path.join(folderBeforeSrc, 'lista_empresas.txt'), 'r') as f:
        for line in f:
            old_code, new_code = line.strip().split(';')
            mapping[old_code] = new_code
    return mapping


def process_csv_file(mapping: Dict[str, str], file_name: str):
    """Process a CSV file and replace company codes"""
    csv_path = os.path.join(folderBeforeSrc, 'data', file_name)
    temp_path = os.path.join(folderBeforeSrc, 'data', f'temp_{file_name}')

    with open(csv_path, 'r', encoding='cp1252') as infile, \
            open(temp_path, 'w', encoding='cp1252', newline='') as outfile:

        reader = csv.reader(infile, delimiter='|')
        writer = csv.writer(outfile, delimiter='|')

        for row in reader:
            if row:
                updateColumn0 = True
                if file_name == '2_geempre.csv':
                    updateColumn0 = False
                    if row[10] in mapping:
                        row[10] = mapping[row[10]]
                elif file_name == '3_foesocial_dados_eventos.csv':
                    row[7] = row[7].replace(f'codi_emp = {row[0]} ', f'codi_emp = {mapping[row[0]]} ')
                    if row[20] in mapping:
                        row[20] = mapping[row[20]]
                elif file_name == '4_foparmto_alteracao_envios_esocial.csv':
                    if row[2] in mapping:
                        row[2] = mapping[row[2]]
                elif file_name == '6_foempregados.csv' or file_name == '6_foempregados_transf_1.csv' or file_name == '6_foempregados_transf_2.csv':
                    if row[116] in mapping:
                        row[116] = mapping[row[116]]
                    if row[55] == '2':
                        row[55] = 9  # atualiza codigo sindicato
                elif file_name == '5_focargos_alteracao_envios_esocial.csv' or file_name == '5_fohorarios_alteracao_envios_esocial.csv' or file_name == '5_fovigencias_servico_envios_esocial.csv':
                    if row[3] in mapping:
                        row[3] = mapping[row[3]]
                elif file_name == '10_foempregados_envios_esocial.csv':
                    if row[2] in mapping:
                        row[2] = mapping[row[2]]

                if updateColumn0 is True:
                    if row[0] in mapping:
                        row[0] = mapping[row[0]]
                writer.writerow(row)

    # Replace original file with processed file
    os.replace(temp_path, csv_path)


def main():
    # Read company mapping
    company_mapping = read_company_mapping()

    # Get all files in data directory
    data_dir = os.path.join(folderBeforeSrc, 'data')
    all_files = [f for f in os.listdir(data_dir) if os.path.isfile(os.path.join(data_dir, f))]

    # Process only files that match the filter
    print("\n --- INICIANDO DE PARA EMPRESAS --- \n")
    for file_name in all_files:
        if file_name in FILTER_FILES_DE_PARA_EMPRESAS:
            print(f"Processing file: {file_name}")
            process_csv_file(company_mapping, file_name)


if __name__ == "__main__":
    main()
