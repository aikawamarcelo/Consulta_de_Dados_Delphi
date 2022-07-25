unit UnitConsultaBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    rgrOpcoes: TRadioGroup;
    txtConsulta: TEdit;
    lblConsulta: TLabel;
    btnRealizarConsulta: TButton;
    DBGrid1: TDBGrid;
    procedure rgrOpcoesClick(Sender: TObject);
    procedure btnRealizarConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UnitClientes;

procedure TForm1.btnRealizarConsultaClick(Sender: TObject);
begin
   DMClientes.sqlConsulta.Close;
   DMClientes.sqlConsulta.SQL.Clear;
                // NO SQL = ELE PROCURA O NOME INTEIRO, O LIKE PESQUISA POR PARTES DO NOME.
   if (rgrOpcoes.ItemIndex = 0) then
      begin
        DMClientes.sqlConsulta.SQL.Add('SELECT * from Clientes where nome LIKE :pConsulta');
        DMClientes.sqlConsulta.ParamByName('pConsulta').AsString := txtConsulta.Text + '%';
      end;

    if (rgrOpcoes.ItemIndex = 1) then
    begin
         DMClientes.sqlConsulta.SQL.Add('SELECT * from Clientes where bairro LIKE :pConsulta');
         DMClientes.sqlConsulta.ParamByName('pConsulta').AsString := txtConsulta.Text + '%';
    end;

    DMClientes.sqlConsulta.Open;

end;

procedure TForm1.rgrOpcoesClick(Sender: TObject);
begin

   if (rgrOpcoes.ItemIndex = 0) then
        begin
          lblConsulta.Caption := 'Digite o nome:'
        end;

   if (rgrOpcoes.ItemIndex = 1) then
        begin
          lblConsulta.Caption := 'Digite o bairro:'
        end;

end;

end.
