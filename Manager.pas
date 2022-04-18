unit Manager;

interface

uses
  FireDAC.Comp.Client, System.Generics.Collections, System.Rtti;

type
  TManagerObject = class
  private
    FQueryManager: TFDQuery;
    FEntidade: TObject;
  public
    constructor Create;
    destructor Destroy; Override;
    class function New(Conn: TFDConnection): TManagerObject;
    procedure Save(Value: TObject);
    procedure Update(Value: TObject);
    procedure Remove(Value: TObject);
    function Find<T>: TManagerObject; overload;
    function Find<T>(ID: Integer): T; overload;
  end;

implementation

{ TManagerObject }

constructor TManagerObject.Create;
begin

end;

destructor TManagerObject.Destroy;
begin

  inherited;
end;

function TManagerObject.Find<T>(ID: Integer): T;
begin

end;

function TManagerObject.Find<T>: TManagerObject;
begin

end;

class function TManagerObject.New(Conn: TFDConnection): TManagerObject;
begin
  Result := Self.Create;
end;

procedure TManagerObject.Remove(Value: TObject);
begin

end;

procedure TManagerObject.Save(Value: TObject);
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
      // FString := FString + ' ' + vProperty.Name;
    end;
    // Result := Copy(Result, 0, Length(Result) - 1); //Remover ultimo caracter
  finally
    vContext.free;
  end;

end;

procedure TManagerObject.Update(Value: TObject);
begin

end;

// pManager.Find<TTicket>.Where(Linq.Eq('ID',1)).UniqueResult;
// pManager.Find<TTicket>.Where(Linq.Eq('NAME','TESTE')).List;
// pManager.Find<TTicket>.Where(Linq.Eq('NAME','TESTE')).Add(Linq.Eq('DESC','TESTE')).List;
// pManager.Find<TTicket>.List;
// pManager.Save(Obj);
// pManager.SaveOrUpdate(Obj);
// pManager.Update(Obj);
// pManager.Remove(Obj);
end.
