object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Controle de Caixa'
  ClientHeight = 541
  ClientWidth = 743
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Abrir Caixa'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 264
    Top = 24
    Width = 471
    Height = 393
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
end
