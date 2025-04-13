# coding: utf-8

from __future__ import annotations
from logging import Logger
import sys
import os
import json
from pyodbc import connect, Connection

currentFolder = os.path.dirname(__file__)
folderSrc = os.path.join(currentFolder, '..')
folderBeforeSrc = os.path.join(currentFolder, '..', '..')
sys.path.append(currentFolder)
sys.path.append(folderSrc)
sys.path.append(folderBeforeSrc)

# Load environment data
dataEnv = json.load(open(os.path.join(folderBeforeSrc, 'env.json')))
DB_CONFIG = dataEnv.get("database", {})

user = DB_CONFIG.get('user', 'EXTERNO')
password = DB_CONFIG.get('password', 'EXTERNO')
host = DB_CONFIG.get('host', 'Contabil')
port = DB_CONFIG.get('port', '2638')


class ConnectionDB():

    def __init__(self, logger: Logger):
        self.__connection: Connection | None = None
        self.__logger = logger

    def getConnection(self) -> Connection | None:
        if self.__connection is None:
            try:
                self.__connection = connect(DSN=host, UID=user, PWD=password, PORT=port)
            except Exception as e:
                self.__logger.error(f"Não foi possível realizar a conexão. O erro é: {e}")
        return self.__connection

    def closeConnection(self):
        if self.__connection is not None:
            try:
                self.__connection.close()
            except Exception as e:
                self.__logger.error(f"Não foi possível fechar a conexão. O erro é: {e}")
