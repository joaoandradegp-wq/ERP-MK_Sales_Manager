unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Buttons, ExtCtrls, StdCtrls, Grids, DBGrids, RXDBCtrl;

type
  TForm4 = class(TForm)
    Bevel2: TBevel;
    Bevel6: TBevel;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    fechar: TSpeedButton;
    ADOQuery1codigo: TWideStringField;
    ADOQuery1nome: TWideStringField;
    ADOQuery1valor: TWideStringField;
    SpeedButton1: TSpeedButton;
    Label16: TLabel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Label5: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    RxDBGrid1: TRxDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure fecharClick(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1, Unit12;

{$R *.DFM}


procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ADOQuery1.Active=True then
ADOQuery1.Active:=False;

//Abaixo para Liberar o Form da Memória
Form4.Release;
Form4 := Nil;
end;

procedure TForm4.FormDestroy(Sender: TObject);
begin
Frmprincipal.Enabled:=True;
end;

procedure TForm4.fecharClick(Sender: TObject);
begin
Close;
end;

end.
