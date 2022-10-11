# coding: utf-8

from __future__ import annotations
import logging
import os
import sys
import shutil

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


class MainExtrator:
    def __init__(self) -> None:
        folderData = os.path.join(folderBeforeSrc, 'data')
        shutil.rmtree(folderData)
        os.makedirs(folderData)

    def main(self):
        for codiEmp in [3, 4]:
            logger.info(f'Exportando empresa {codiEmp}')
            LoopSqls(logger, {"codi_emp": str(codiEmp)}).main()


if __name__ == "__main__":
    MainExtrator().main()
