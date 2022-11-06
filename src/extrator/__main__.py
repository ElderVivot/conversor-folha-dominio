# coding: utf-8

from __future__ import annotations
import logging
import os
import sys
import shutil
import json
from typing import List

currentFolder = os.path.dirname(__file__)
folderSrc = os.path.join(currentFolder, '..')
folderBeforeSrc = os.path.join(currentFolder, '..', '..')
sys.path.append(currentFolder)
sys.path.append(folderSrc)
sys.path.append(folderBeforeSrc)

from loop_sqls import LoopSqls

logger = logging.getLogger()
handler = logging.StreamHandler()
formatter = logging.Formatter(
    '%(asctime)s %(name)-12s %(levelname)-8s %(message)s')
handler.setFormatter(formatter)
logger.addHandler(handler)
logger.setLevel(logging.INFO)

dataEnv = json.load(open(os.path.join(folderBeforeSrc, 'env.json')))
COMPANIES_MIGRATE: List[int] = dataEnv["companies_migrate"]


class MainExtrator:
    def __init__(self) -> None:
        folderData = os.path.join(folderBeforeSrc, 'data')
        if os.path.exists(folderData) is True:
            shutil.rmtree(folderData)
        os.makedirs(folderData)

    def main(self):
        folderSqlsFilterCompanie = os.path.join(folderSrc, 'sqls', 'filter_companie')
        folderSqlsGeneral = os.path.join(folderSrc, 'sqls', 'general')

        LoopSqls(logger, folderSqlsGeneral, {}).main()

        for codiEmp in COMPANIES_MIGRATE:
            logger.info(f'Exportando empresa {codiEmp}')
            LoopSqls(logger, folderSqlsFilterCompanie, {"codi_emp": str(codiEmp)}).main()


if __name__ == "__main__":
    MainExtrator().main()
