# coding: utf-8

from __future__ import annotations
from logging import Logger
import os
import sys
from typing import Any, Dict
import pandas as pd

currentFolder = os.path.dirname(__file__)
folderSrc = os.path.join(currentFolder, '..')
folderBeforeSrc = os.path.join(currentFolder, '..', '..')
sys.path.append(currentFolder)
sys.path.append(folderSrc)
sys.path.append(folderBeforeSrc)

from connection_db import ConnectionDB
from common.utils.read_sql import readSql
from common.exceptions.fetch_sql import FetchSQLExcepction


class ExtractData():
    def __init__(self, logger: Logger, pathSql: str, nameSql: str, args: Dict[str, Any]):
        self.__logger = logger
        self.__pathSql = pathSql
        self.__nameSql = nameSql
        self.__args = args

        self.__connectionDB = ConnectionDB(self.__logger)
        self.__connection = self.__connectionDB.getConnection()

    def main(self):
        try:
            sql = readSql(self.__pathSql, self.__nameSql, self.__args)

            df = pd.read_sql_query(sql, self.__connection)
            df = df.replace({r'\n': ''}, regex=True)

            folderToSaveCsv = os.path.join(folderBeforeSrc, 'data', self.__nameSql.replace('.sql', '.csv'))

            df.to_csv(folderToSaveCsv, sep='|', mode='a', header=False, index=False, encoding='cp1252')
        except Exception as e:
            raise FetchSQLExcepction(e)
        finally:
            self.__connectionDB.closeConnection()


# if __name__ == "__main__":
#     import logging

#     logger = logging.getLogger()
#     handler = logging.StreamHandler()
#     formatter = logging.Formatter(
#         '%(asctime)s %(name)-12s %(levelname)-8s %(message)s')
#     handler.setFormatter(formatter)
#     logger.addHandler(handler)
#     logger.setLevel(logging.DEBUG)

#     main = ExtractData(logger, currentFolder, 'foempregados.sql', {"codi_emp": "3"})
#     print(main.fetchData())
