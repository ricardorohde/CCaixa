unit Model.Entidade.interfaces;

interface

type
  iModelEntidade<T> = interface
    ['{3E537FBC-67E7-4C2F-B300-A04B1605A15E}']
    function Insert: iModelEntidade<T>;
    function Update: iModelEntidade<T>;
    function Delete: iModelEntidade<T>;
    function Get: iModelEntidade<T>;
    procedure List(Sender: TObject);
    function This(id: String = ''): T;
    function New: iModelEntidade<T>;
  end;

implementation

end.
