unit uMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.DateUtils,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Caixa.DTO,
  Generic.DAO,
  Model.Entidade.interfaces;

type
  TFrmMain = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    pCaixa: iModelEntidade<TCAIXAS>;
    procedure OpenCaixa;
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}
{ TFrmMain }

procedure TFrmMain.Button1Click(Sender: TObject);
begin
  OpenCaixa;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
  pCaixa := TGenericDAO<TCAIXAS>.New;
end;

procedure TFrmMain.OpenCaixa;
begin
  pCaixa.This.OpenedIn := TDateTime(Now);
  pCaixa.This.ClosedIn := IncHour(pCaixa.This.OpenedIn, 8);
  pCaixa.This.Total := 1500.75;
  Memo1.Lines.Add('Aberto em ' + DateTimeToStr(pCaixa.This.OpenedIn));
  Memo1.Lines.Add('Total em Caixa de R$' + CurrToStr(pCaixa.This.Total));
  Memo1.Lines.Add('Fechado em ' + DateTimeToStr(pCaixa.This.ClosedIn));
end;

end.
