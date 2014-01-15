program clinic;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, patientsList, dbcore
  { you can add units after this };

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TPatientsListForm, PatientsListForm);
  Application.CreateForm(TCoreDataModule, CoreDataModule);
  Application.Run;
end.

