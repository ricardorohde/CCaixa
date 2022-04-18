unit Manager;

interface

uses
  FireDAC.Comp.Client, System.Generics.Collections;

type
  TManagerObject = class
  private
    FQueryManager: TFDQuery;
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
begin

end;

procedure TManagerObject.Update(Value: TObject);
begin

end;

end.
