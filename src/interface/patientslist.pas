// Интерфейс списка пациентов
unit patientsList;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, DB, FileUtil, Forms, Controls,
  Graphics, Dialogs, DBGrids, StdCtrls, Menus, ComCtrls, rxdbgrid, RxSortSqlDB,
  rxtoolbar;

type

  { TPatientsListForm }

  TPatientsListForm = class(TForm)
    dsPatientsList: TDatasource;
    RxDBGrid1: TRxDBGrid;
    mRxSortSqlDB: TRxSortSqlDB;
    sqlPatientsList: TSQLQuery;
    procedure FormCreate(Sender: TObject);
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

procedure TPatientsListForm.FormCreate(Sender: TObject);
begin
  sqlPatientsList.Close;
  sqlPatientsList.SQL.Text := 'select * from patients_view';
  CoreDataModule.mSQLite3Connection.Connected := True;
  CoreDataModule.mSQLTransaction.Active := True;
  sqlPatientsList.Open;
end;

end.

