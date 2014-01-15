// Модуль для соединения с БД
unit dbCore;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, FileUtil;

type

  { TCoreDataModule }

  TCoreDataModule = class(TDataModule)
  SQLite3Connect: TSQLite3Connection;
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

