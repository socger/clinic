// Модуль для соединения с БД
unit dbCore;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, FileUtil;

type

  { TCoreDataModule }

  TCoreDataModule = class(TDataModule)
  mSQLite3Connection: TSQLite3Connection;
  mSQLTransaction: TSQLTransaction;
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  CoreDataModule: TCoreDataModule;

implementation

{$R *.lfm}

end.

