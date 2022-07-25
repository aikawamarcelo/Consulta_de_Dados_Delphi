program ConsultaBancoDeDados;

uses
  Vcl.Forms,
  UnitConsultaBanco in 'UnitConsultaBanco.pas' {Form1},
  UnitClientes in 'UnitClientes.pas' {DMClientes: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDMClientes, DMClientes);
  Application.Run;
end.
