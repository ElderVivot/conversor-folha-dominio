# coding: utf-8

from __future__ import annotations
from logging import Logger
import os
import sys
from typing import Any, Dict

currentFolder = os.path.dirname(__file__)
folderSrc = os.path.join(currentFolder, '..')
folderBeforeSrc = os.path.join(currentFolder, '..', '..')
sys.path.append(currentFolder)
sys.path.append(folderSrc)
sys.path.append(folderBeforeSrc)

from extract_data import ExtractData


class LoopSqls:
    def __init__(self, logger: Logger, folderToLoop: str, args: Dict[str, Any]) -> None:
        self.__logger = logger
        self.__folderToLoop = folderToLoop
        self.__args = args

    def main(self):
        for root, _, files in os.walk(self.__folderToLoop):
            for file in files:
                if file.lower().endswith(('.sql')):
                    self.__logger.info(f'\t {file}')
                    ExtractData(self.__logger, root, file, self.__args).main()
