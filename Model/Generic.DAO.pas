unit Generic.DAO;

interface

uses
  System.Rtti,
  Model.Entidade.interfaces, System.Generics.Collections;

type
  TGenericDAO<T: class, constructor> = class(TInterfacedObject,
    iModelEntidade<T>)
  private
    FEntidade: T;
    FString: String;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelEntidade<T>;
    procedure Insert;
    procedure Update;
    procedure Delete;
    function This: T;
    function List: TList<T>;
  end;

implementation

{ TGenericDAO<T> }

constructor TGenericDAO<T>.Create;
begin
  FEntidade := T.Create;
end;

procedure TGenericDAO<T>.Delete;
begin
  //
end;

destructor TGenericDAO<T>.Destroy;
begin
  if Assigned(FEntidade) then
    FEntidade.free;

  inherited;
end;

procedure TGenericDAO<T>.Insert;
begin
  //
end;

function TGenericDAO<T>.List: TList<T>;
begin
  //
end;

class function TGenericDAO<T>.New: iModelEntidade<T>;
begin
  Result := Self.Create;
end;

function TGenericDAO<T>.This: T;
begin
  Result := FEntidade;
end;

procedure TGenericDAO<T>.Update;
begin
  //
end;

end.
