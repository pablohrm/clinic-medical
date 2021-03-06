object formcadAgendamentos: TformcadAgendamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Agendamentos'
  ClientHeight = 431
  ClientWidth = 693
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
  object Label4: TLabel
    Left = 175
    Top = 101
    Width = 75
    Height = 13
    Caption = 'Nome Completo'
  end
  object Label2: TLabel
    Left = 16
    Top = 101
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label6: TLabel
    Left = 16
    Top = 163
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label5: TLabel
    Left = 16
    Top = 235
    Width = 64
    Height = 13
    Caption = 'Especialidade'
  end
  object Label3: TLabel
    Left = 177
    Top = 163
    Width = 23
    Height = 13
    Caption = 'Hora'
  end
  object Label7: TLabel
    Left = 177
    Top = 235
    Width = 33
    Height = 13
    Caption = 'M'#233'dico'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 693
    Height = 81
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -32
    ExplicitWidth = 636
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 156
      Height = 25
      Caption = 'Agendamentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 420
      Top = 20
      Width = 240
      Height = 41
      DataSource = DM.dsAgendamento
      TabOrder = 0
    end
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 120
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    DataField = 'id'
    DataSource = DM.dsAgendamento
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 175
    Top = 120
    Width = 218
    Height = 21
    DataField = 'id_paciente'
    DataSource = DM.dsAgendamento
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dsPaciente
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 192
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    DataField = 'data'
    DataSource = DM.dsAgendamento
    MaxLength = 10
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 175
    Top = 192
    Width = 98
    Height = 21
    CharCase = ecUpperCase
    DataField = 'hora'
    DataSource = DM.dsAgendamento
    MaxLength = 5
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 177
    Top = 264
    Width = 212
    Height = 21
    CharCase = ecUpperCase
    DataField = 'medico'
    DataSource = DM.dsAgendamento
    TabOrder = 5
  end
  object DBComboBox1: TDBComboBox
    Left = 8
    Top = 264
    Width = 145
    Height = 21
    DataField = 'especialidade'
    DataSource = DM.dsAgendamento
    Items.Strings = (
      'Ortopedia'
      'Cardiologista'
      'Neuro')
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 420
    Top = 101
    Width = 249
    Height = 225
    DataSource = DM.dsAgendamento
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hora'
        Title.Caption = 'Hora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'especialidade'
        Title.Caption = 'Especialidade'
        Visible = True
      end>
  end
end
