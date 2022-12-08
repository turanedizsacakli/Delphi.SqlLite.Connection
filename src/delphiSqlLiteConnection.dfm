object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'delphiSqlLiteConnection'
  ClientHeight = 455
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 271
    Width = 777
    Height = 25
    DataSource = DataSource1
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 310
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 296
    Width = 777
    Height = 159
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnShow: TButton
    Left = 280
    Top = 200
    Width = 193
    Height = 57
    Caption = 'SHOW DATA'
    TabOrder = 2
    OnClick = btnShowClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=D:\myRepo\delphiSqlLiteConnection\database\denemeData.d' +
        'b'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 288
    Top = 24
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select id,name,price from products')
    Left = 352
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 424
    Top = 24
  end
end
