unit Control.Entidade.interfaces;

interface

uses Model.Entidade.interfaces, Caixa.DTO;

type
  iControlEntidade = interface
    ['{AA1F0702-9E6F-486C-904E-66D1E23F3845}']
    function Caixa: iModelEntidade<TCAIXAS>;
    function Produto: iModelEntidade<TPRODUTOS>;
    function Pedidos: iModelEntidade<TPEDIDOS>;
    function ItensPedido: iModelEntidade<TITENSPEDIDOS>;
  end;

implementation

end.
