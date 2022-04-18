program ControleCaixa;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form1} ,
  Model.Entidade.interfaces in 'Model\Model.Entidade.interfaces.pas',
  Caixa.DTO in 'Entidades\Caixa.DTO.pas',
  Control.Entidade.interfaces in 'Control\Control.Entidade.interfaces.pas',
  Utils.functions in 'Assets\Utils.functions.pas',
  DM.Main in 'DM.Main.pas' {DTM: TDataModule} ,
  Manager in 'Manager.pas',
  Generic.DAO in 'Model\Generic.DAO.pas',
  Control.Entidade in 'Control\Control.Entidade.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TDTM, DTM);
  Application.Run;

end.
