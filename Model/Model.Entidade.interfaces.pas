unit Model.Entidade.interfaces;

interface

uses
  System.Generics.Collections;

type
  iModelEntidade<T: class> = interface
    ['{3E537FBC-67E7-4C2F-B300-A04B1605A15E}']
    procedure Insert;
    procedure Update;
    procedure Delete;
    function This: T;
    function List: TList<T>;
  end;

implementation

end.
