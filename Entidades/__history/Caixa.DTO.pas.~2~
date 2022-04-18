unit Caixa.DTO;

interface

type
  TCAIXAS = class;
  TPRODUTOS = class;
  TPEDIDOS = class;
  TITENSPEDIDOS = class;

  TCAIXAS = class
  private
    FClosedIn: TDateTime;
    FOpenedIn: TDateTime;
    FId: Integer;
    procedure SetClosedIn(const Value: TDateTime);
    procedure SetId(const Value: Integer);
    procedure SetOpenedIn(const Value: TDateTime);
  public
    constructor Create;
    destructor Destroy; override;
  published
    property Id: Integer read FId write SetId;
    property OpenedIn: TDateTime read FOpenedIn write SetOpenedIn;
    property ClosedIn: TDateTime read FClosedIn write SetClosedIn;
  end;

  TPRODUTOS = class
  private
    FPrice: Double;
    FQttStk: Integer;
    FId: Integer;
    FDescription: String;
    procedure SetDescription(const Value: String);
    procedure SetId(const Value: Integer);
    procedure SetPrice(const Value: Double);
    procedure SetQttStk(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
  published
    property Id: Integer read FId write SetId;
    property Description: String read FDescription write SetDescription;
    property Price: Double read FPrice write SetPrice;
    property QttStk: Integer read FQttStk write SetQttStk;
  end;

  TPEDIDOS = class
  private
    FCaixa: Integer;
    FId: Integer;
    procedure SetCaixa(const Value: Integer);
    procedure SetId(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
  published
    property Id: Integer read FId write SetId;
    property IdCaixa: Integer read FCaixa write SetCaixa;
  end;

  TITENSPEDIDOS = class
  private
    FTotal: Double;
    FIdProduto: Integer;
    FId: Integer;
    FQtt: Integer;
    FIdPedido: Integer;
    procedure SetId(const Value: Integer);
    procedure SetIdPedido(const Value: Integer);
    procedure SetIdProduto(const Value: Integer);
    procedure SetQtt(const Value: Integer);
    procedure SetTotal(const Value: Double);
  public
    constructor Create;
    destructor Destroy; override;
  published
    property Id: Integer read FId write SetId;
    property IdPedido: Integer read FIdPedido write SetIdPedido;
    property IdProduto: Integer read FIdProduto write SetIdProduto;
    property Qtt: Integer read FQtt write SetQtt;
    property Total: Double read FTotal write SetTotal;
  end;

implementation

{ TCAIXAS }

constructor TCAIXAS.Create;
begin

end;

destructor TCAIXAS.Destroy;
begin

  inherited;
end;

procedure TCAIXAS.SetClosedIn(const Value: TDateTime);
begin
  FClosedIn := Value;
end;

procedure TCAIXAS.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TCAIXAS.SetOpenedIn(const Value: TDateTime);
begin
  FOpenedIn := Value;
end;

{ TPEDIDOS }

constructor TPEDIDOS.Create;
begin

end;

destructor TPEDIDOS.Destroy;
begin

  inherited;
end;

procedure TPEDIDOS.SetCaixa(const Value: Integer);
begin
  FCaixa := Value;
end;

procedure TPEDIDOS.SetId(const Value: Integer);
begin
  FId := Value;
end;

{ TPRODUTOS }

constructor TPRODUTOS.Create;
begin

end;

destructor TPRODUTOS.Destroy;
begin

  inherited;
end;

procedure TPRODUTOS.SetDescription(const Value: String);
begin
  FDescription := Value;
end;

procedure TPRODUTOS.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TPRODUTOS.SetPrice(const Value: Double);
begin
  FPrice := Value;
end;

procedure TPRODUTOS.SetQttStk(const Value: Integer);
begin
  FQttStk := Value;
end;

{ TITENSPEDIDOS }

constructor TITENSPEDIDOS.Create;
begin

end;

destructor TITENSPEDIDOS.Destroy;
begin

  inherited;
end;

procedure TITENSPEDIDOS.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TITENSPEDIDOS.SetIdPedido(const Value: Integer);
begin
  FIdPedido := Value;
end;

procedure TITENSPEDIDOS.SetIdProduto(const Value: Integer);
begin
  FIdProduto := Value;
end;

procedure TITENSPEDIDOS.SetQtt(const Value: Integer);
begin
  FQtt := Value;
end;

procedure TITENSPEDIDOS.SetTotal(const Value: Double);
begin
  FTotal := Value;
end;

end.
