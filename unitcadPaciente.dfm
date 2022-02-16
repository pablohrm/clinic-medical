object formcadPacientes: TformcadPacientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 420
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 101
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label3: TLabel
    Left = 192
    Top = 101
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label4: TLabel
    Left = 16
    Top = 155
    Width = 75
    Height = 13
    Caption = 'Nome Completo'
  end
  object Label5: TLabel
    Left = 16
    Top = 219
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label6: TLabel
    Left = 184
    Top = 219
    Width = 85
    Height = 13
    Caption = 'Data de Cadastro'
  end
  object Label7: TLabel
    Left = 367
    Top = 98
    Width = 81
    Height = 13
    Caption = 'Buscar Pacientes'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 700
    Height = 81
    Align = alTop
    TabOrder = 6
    ExplicitWidth = 635
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 222
      Height = 25
      Caption = 'Cadastro de Paciente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 367
      Top = 20
      Width = 230
      Height = 41
      DataSource = DM.dsPaciente
      TabOrder = 0
    end
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 120
    Width = 89
    Height = 21
    CharCase = ecUpperCase
    DataField = 'id'
    DataSource = DM.dsPaciente
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 184
    Width = 313
    Height = 21
    DataField = 'nome'
    DataSource = DM.dsPaciente
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 248
    Width = 121
    Height = 21
    DataField = 'celular'
    DataSource = DM.dsPaciente
    MaxLength = 16
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 184
    Top = 248
    Width = 145
    Height = 21
    DataField = 'data_cadastro'
    DataSource = DM.dsPaciente
    ReadOnly = True
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 184
    Top = 120
    Width = 145
    Height = 21
    DataField = 'cpf'
    DataSource = DM.dsPaciente
    MaxLength = 14
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 367
    Top = 144
    Width = 298
    Height = 255
    DataSource = DM.dsPaciente
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Pacientes Cadastrados'
        Title.Color = 15790320
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object txtBusca: TEdit
    Left = 367
    Top = 117
    Width = 290
    Height = 21
    TabOrder = 5
    OnChange = txtBuscaChange
  end
end
