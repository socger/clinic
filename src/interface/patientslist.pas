// Интерфейс списка пациентов
unit patientsList;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, DBGrids, StdCtrls, rxdbgrid, RxSortSqlDB;

type

  { TPatientsListForm }

  TPatientsListForm = class(TForm)
    Button1: TButton;
    dsPatientsList: TDatasource;
    RxDBGrid1: TRxDBGrid;
    RxSortSqlDB1: TRxSortSqlDB;
    sqlPatientsList: TSQLQuery;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  PatientsListForm: TPatientsListForm;

implementation

uses dbCore;

{$R *.lfm}

{ TPatientsListForm }

// тестовое соединение с БД
procedure TPatientsListForm.Button1Click(Sender: TObject);
begin
  sqlPatientsList.Close;
  sqlPatientsList.SQL.Text:= 'select * from patients_view;';
  CoreDataModule.mSQLite3Connection.Connected:= True;
  CoreDataModule.mSQLTransaction.Active:= True;
  sqlPatientsList.Open;
end;

end.

