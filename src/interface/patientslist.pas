// Интерфейс списка пациентов
unit patientsList;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, FileUtil, Forms, Controls, Graphics, Dialogs,
  DBGrids;

type

  { TPatientsListForm }

  TPatientsListForm = class(TForm)
    DBGrid1: TDBGrid;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  PatientsListForm: TPatientsListForm;

implementation

{$R *.lfm}

{ TPatientsListForm }

end.

