unit Generic.DAO;

interface

uses
  System.Rtti,
  Model.Entidade.interfaces;

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
    function Insert: iModelEntidade<T>;
    function Update: iModelEntidade<T>;
    function Delete: iModelEntidade<T>;
    function Get: iModelEntidade<T>;
    procedure List(Sender: TObject);
    function This: T;
    function Display: String;
  end;

implementation

{ TGenericDAO<T> }

constructor TGenericDAO<T>.Create;
begin
  FEntidade := T.Create;
end;

function TGenericDAO<T>.Delete: iModelEntidade<T>;
begin
  //
end;

destructor TGenericDAO<T>.Destroy;
begin
  if Assigned(FEntidade) then
    FEntidade.free;

  inherited;
end;

function TGenericDAO<T>.Display: String;
begin
  Result := FString;
end;

function TGenericDAO<T>.Get: iModelEntidade<T>;
begin
  //
end;

function TGenericDAO<T>.Insert: iModelEntidade<T>;
var
  vContext: TRttiContext;
  vType: TRttiType;
  vProperty: TRttiProperty;
  vRes: String;
begin
  vContext := TRttiContext.Create;
  try
    vType := vContext.GetType(FEntidade.classInfo);

    for vProperty in vType.GetProperties do
    begin
      FString := FString + ' ' + vProperty.Name;
    end;

  finally
    vContext.free;
  end;
end;

procedure TGenericDAO<T>.List(Sender: TObject);
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

function TGenericDAO<T>.Update: iModelEntidade<T>;
begin
  //
end;

end.
