object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Consultas ao Banco de Dados'
  ClientHeight = 445
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblConsulta: TLabel
    Left = 280
    Top = 35
    Width = 70
    Height = 13
    Caption = 'Digite o Nome:'
  end
  object rgrOpcoes: TRadioGroup
    Left = 16
    Top = 35
    Width = 240
    Height = 57
    Caption = 'Op'#231#245'es de Consulta'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Nome'
      'Bairro')
    TabOrder = 0
    OnClick = rgrOpcoesClick
  end
  object txtConsulta: TEdit
    Left = 280
    Top = 54
    Width = 281
    Height = 21
    TabOrder = 1
  end
  object btnRealizarConsulta: TButton
    Left = 16
    Top = 98
    Width = 545
    Height = 41
    Caption = 'Realizar Consulta'
    TabOrder = 2
    OnClick = btnRealizarConsultaClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 145
    Width = 545
    Height = 265
    DataSource = DMClientes.dsConsulta
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'NOME'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 187
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'BAIRRO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 206
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'IDADE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 56
        Visible = True
      end>
  end
end
