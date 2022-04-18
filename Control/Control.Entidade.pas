unit Control.Entidade;

interface

uses
  Caixa.DTO,
  Generic.DAO,
  Model.Entidade.interfaces,
  Control.Entidade.interfaces;

type
  TControlEntidades = class(TInterfacedObject, iControlEntidade)
  private
    FCaixa: iModelEntidade<TCAIXAS>;
    FProduto: iModelEntidade<TPRODUTOS>;
    FPedido: iModelEntidade<TPEDIDOS>;
    FItensPedido: iModelEntidade<TITENSPEDIDOS>;
  public
    constructor Create;
    destructor Destroy; override;
    function Caixa: iModelEntidade<TCAIXAS>;
    function Produto: iModelEntidade<TPRODUTOS>;
    function Pedidos: iModelEntidade<TPEDIDOS>;
    function ItensPedido: iModelEntidade<TITENSPEDIDOS>;
  end;

implementation

{ TControlEntidades }

function TControlEntidades.Caixa: iModelEntidade<TCAIXAS>;
begin
  if not Assigned(FCaixa) then
    FCaixa := TGenericDAO<TCAIXAS>.New();
  result := FCaixa;
end;

constructor TControlEntidades.Create;
begin

end;

destructor TControlEntidades.Destroy;
begin

  inherited;
end;

function TControlEntidades.ItensPedido: iModelEntidade<TITENSPEDIDOS>;
begin
  if not Assigned(FItensPedido) then
    FItensPedido := TGenericDAO<TITENSPEDIDOS>.New();
  result := FItensPedido;
end;

function TControlEntidades.Pedidos: iModelEntidade<TPEDIDOS>;
begin
  if not Assigned(FPedido) then
    FPedido := TGenericDAO<TPEDIDOS>.New();
  result := FPedido;
end;

function TControlEntidades.Produto: iModelEntidade<TPRODUTOS>;
begin
  if not Assigned(FProduto) then
    FProduto := TGenericDAO<TPRODUTOS>.New();
  result := FProduto;
end;

end.
