unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Db, DBTables, Mask, DBCtrls, Buttons, ExtCtrls,ComObj,
  ADODB, IdBaseComponent, IdComponent, IdRawBase, IdRawClient, IdIcmpClient,
  RXDBCtrl;

type
  TForm5 = class(TForm)
    Bevel3: TBevel;
    SpeedButton1: TSpeedButton;
    Label16: TLabel;
    Bevel1: TBevel;
    fechar: TSpeedButton;
    Bevel7: TBevel;
    Bevel2: TBevel;
    Edit1: TEdit;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Edit2: TEdit;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    Label2: TLabel;
    db_linha: TComboBox;
    ComboBox2: TComboBox;
    Label31: TLabel;
    ADOQuery1linha: TWideStringField;
    ADOQuery1nome: TWideStringField;
    ADOQuery1valor: TWideStringField;
    ADOQuery1pontos: TWideStringField;
    Label3: TLabel;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    ADOQuery1codigo: TWideStringField;
    ADOQuery1sessao: TWideStringField;
    ADOQuery3sessao: TWideStringField;
    ADOQuery2linha: TWideStringField;
    RxDBGrid1: TRxDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fecharClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure db_linhaEnter(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure db_linhaSelect(Sender: TObject);
    procedure ComboBox2Select(Sender: TObject);
    procedure RxDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    
  private
    { Private declarations }
  public
    { Public declarations }

    {
    Declarando a funÁ„o que est· no final do programa
    para usar cores personalizadas no Delphi no formato #FF00F3
    }
    function HexToTColor(sColor : string) : TColor;
  end;

var
  Form5: TForm5;

implementation

uses Unit1, Unit12;

{$R *.DFM}

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ADOQuery1.Active=True then
ADOQuery1.Active:=False;
if ADOQuery2.Active=True then
ADOQuery2.Active:=False;
if ADOQuery3.Active=True then
ADOQuery3.Active:=False;

//Abaixo para Liberar o Form da MemÛria
Form5.Release;
Form5 := Nil;
end;


procedure TForm5.fecharClick(Sender: TObject);
begin
close;
end;

procedure TForm5.FormDestroy(Sender: TObject);
begin
Frmprincipal.Enabled:=True;
end;

procedure TForm5.SpeedButton1Click(Sender: TObject);
begin

if trim(Edit1.Text) = '' then   //Se o Edit1 for igual ‡ VAZIO
begin
ADOQuery1.Active:=false;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhum Produto';
MessageDlg(#13+'Digite o nome de um Produto cadastrado!', mtwarning, [mbOk], 0);
Edit1.Text:='';
Edit1.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      ADOQuery1.sql.Add('Select * from produtos where nome like "%'+trim(Edit1.Text)+'%" order by nome');
      ADOQuery1.open;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Produtos'
   else
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Produto';

   if ADOQuery1.RecordCount = 0 then   //Caso n„o apareÁa nenhum registro
   begin
   ADOQuery1.Active:=false;
   RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   Label3.Caption:='Nenhum Produto';
   MessageDlg(#13+'Produto n„o encontrado no Sistema!', mtwarning, [mbOk], 0);
   Edit1.Text:='';
   Edit1.SetFocus;
   end
   else
   RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];

   end;

end;

procedure TForm5.ComboBox2Click(Sender: TObject);
begin
ADOQuery1.Active:=false;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhum Produto';
Edit1.Text:='';
end;

procedure TForm5.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if key = #13 then
begin

if trim(Edit1.Text) = '' then   //Se o Edit1 for igual ‡ VAZIO
begin
ADOQuery1.Active:=false;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhum Produto';
MessageDlg(#13+'Digite o nome de um Produto cadastrado!', mtwarning, [mbOk], 0);
Edit1.Text:='';
Edit1.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      ADOQuery1.sql.Add('Select * from produtos where nome like "%'+trim(Edit1.Text)+'%" order by nome');
      ADOQuery1.open;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Produtos'
   else
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Produto';

   if ADOQuery1.RecordCount = 0 then   //Caso n„o apareÁa nenhum registro
   begin
   ADOQuery1.Active:=false;
   RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   Label3.Caption:='Nenhum Produto';
   MessageDlg(#13+'Produto n„o encontrado no Sistema!', mtwarning, [mbOk], 0);
   Edit1.Text:='';
   Edit1.SetFocus;
   end
   else
   RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];

   end;
   
end;

end;

procedure TForm5.FormActivate(Sender: TObject);
begin
db_linha.SetFocus;
end;

procedure TForm5.SpeedButton2Click(Sender: TObject);
begin
if trim(Edit2.Text) = '' then   //Se o Edit2 for igual ‡ VAZIO
begin
ADOQuery1.Active:=false;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhum Produto';
MessageDlg(#13+'Digite um CÛdigo v·lido!', mtwarning, [mbOk], 0);
Edit2.Text:='';
Edit2.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      ADOQuery1.sql.Add('Select * from produtos where codigo = "'+trim(Edit2.Text)+'" order by nome');
      ADOQuery1.open;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Produtos'
   else
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Produto';

   if ADOQuery1.RecordCount = 0 then   //Caso n„o apareÁa nenhum registro
   begin
   ADOQuery1.Active:=false;
   RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   Label3.Caption:='Nenhum Produto';
   MessageDlg(#13+'CÛdigo n„o encontrado no Sistema!', mtwarning, [mbOk], 0);
   Edit2.Text:='';
   Edit2.SetFocus;
   end
   else
   RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];

   end;

end;

procedure TForm5.Edit2KeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞<>!@#$%®&*()_-+={}[]?;:,|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
mai = 'ABCDEFGHIJKLMNOPQRSTUVXYZW';
min = 'abcdefghijklmnopqrstuvxyzw';
Var
Str : String;
begin

inherited;
Str := key;
if (Pos(Str,especiais+mai+min)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
Edit2.SetFocus;
end;

if key = #13 then
begin

if trim(Edit2.Text) = '' then   //Se o Edit2 for igual ‡ VAZIO
begin
ADOQuery1.Active:=false;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhum Produto';
MessageDlg(#13+'Digite um CÛdigo v·lido!', mtwarning, [mbOk], 0);
Edit2.Text:='';
Edit2.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      ADOQuery1.sql.Add('Select * from produtos where codigo = "'+trim(Edit2.Text)+'" order by nome');
      ADOQuery1.open;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Produtos'
   else
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Produto';

   if ADOQuery1.RecordCount = 0 then   //Caso n„o apareÁa nenhum registro
   begin
   ADOQuery1.Active:=false;
   RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   Label3.Caption:='Nenhum Produto';
   MessageDlg(#13+'CÛdigo n„o encontrado no Sistema!', mtwarning, [mbOk], 0);
   Edit2.Text:='';
   Edit2.SetFocus;
   end
   else
   RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];

   end;
end;

end;

procedure TForm5.Edit1Enter(Sender: TObject);
begin
ADOQuery1.Active:=false;
db_linha.ItemIndex:=-1;
Combobox2.ItemIndex:=-1;
Edit2.Clear;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhum Produto';
end;

procedure TForm5.Edit2Enter(Sender: TObject);
begin
ADOQuery1.Active:=false;
db_linha.ItemIndex:=-1;
Combobox2.ItemIndex:=-1;
Edit1.Clear;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhum Produto';
end;

procedure TForm5.db_linhaEnter(Sender: TObject);
var
i,y:integer;
begin
Combobox2.ItemIndex:=-1;
Edit1.Clear;
Edit2.Clear;

db_linha.Color:=clWindow;

db_linha.Items.Clear;
db_linha.ItemIndex:=0;

ADOQuery2.Open;
y:=ADOQuery2.RecordCount;
i:=0;
while i < y do
begin
i:=i+1;
db_linha.Items.Add(ADOQuery2.Fieldbyname('linha').Value);
ADOQuery2.Next;
end;
ADOQuery2.Close;

//Abaixo limpa a pesquisa anterior
ADOQuery1.Active:=false;
Edit2.Clear;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhum Produto';
end;

procedure TForm5.ComboBox2Enter(Sender: TObject);
var
i,y:integer;
begin
db_linha.ItemIndex:=-1;
Edit1.Clear;
Edit2.Clear;

Combobox2.Color:=clWindow;

Combobox2.Items.Clear;
Combobox2.ItemIndex:=0;

ADOQuery3.Open;
y:=ADOQuery3.RecordCount;
i:=0;
while i < y do
begin
i:=i+1;
Combobox2.Items.Add(ADOQuery3.Fieldbyname('sessao').Value);
ADOQuery3.Next;
end;
ADOQuery3.Close;

//Abaixo limpa a pesquisa anterior
ADOQuery1.Active:=false;
Edit2.Clear;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhum Produto';
end;

procedure TForm5.db_linhaSelect(Sender: TObject);
begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      ADOQuery1.sql.Add('Select * from produtos where linha = "'+db_linha.Text+'" order by nome');
      ADOQuery1.open;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Produtos'
   else
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Produto';

   if ADOQuery1.RecordCount = 0 then   //Caso n„o apareÁa nenhum registro
   begin
   ADOQuery1.Active:=false;
   RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   Label3.Caption:='Nenhum Produto';
   MessageDlg(#13+'Produtos n„o encontrados no Sistema para a linha '+db_linha.Text+'.'+#13, mtwarning, [mbOk], 0);
   db_linha.ItemIndex:=-1;
   db_linha.SetFocus;
   end
   else
   RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];

end;

procedure TForm5.ComboBox2Select(Sender: TObject);
begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      ADOQuery1.sql.Add('Select * from produtos where sessao = "'+Combobox2.Text+'" order by nome');
      ADOQuery1.open;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Produtos'
   else
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Produto';

   if ADOQuery1.RecordCount = 0 then   //Caso n„o apareÁa nenhum registro
   begin
   ADOQuery1.Active:=false;
   RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   Label3.Caption:='Nenhum Produto';
   MessageDlg(#13+'Section n„o encontrada no Sistema!', mtwarning, [mbOk], 0);
   Combobox2.ItemIndex:=-1;
   Combobox2.SetFocus;
   end
   else
   RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];

end;

procedure TForm5.RxDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

 if (gdSelected in State) then // Se a cÈlula est· selecionada
 begin
 RxDBGrid1.Canvas.Font.Color:= clWhite;
 //FunÁ„o para cores personalizadas
 RxDBGrid1.Canvas.Brush.Color:=TColor(HexToTColor('FF66FF'));
 end
  else if odd(ADOQuery1.RecNo) then
  begin
  RxDBGrid1.Canvas.Font.Color:= clBlack;
  //FunÁ„o para cores personalizadas
  RxDBGrid1.Canvas.Brush.Color:=TColor(HexToTColor('FFCCFF'));
  end
   else
   begin
   RxDBGrid1.Canvas.Font.Color:= clBlack;
   RxDBGrid1.Canvas.Brush.Color:= clWhite;
   end;
   RxDBGrid1.Canvas.FillRect(Rect);
    //DBGrid1.Canvas.TextOut(Rect.Left+2,Rect.Top,Column.Field.AsString);
   RxDBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

//FunÁ„o para usar cores personalizadas em Hexadecial
function TForm5.HexToTColor(sColor : string) : TColor;
begin
Result :=
RGB(
StrToInt('$'+Copy(sColor, 1, 2)),
StrToInt('$'+Copy(sColor, 3, 2)),
StrToInt('$'+Copy(sColor, 5, 2))
) ;
end;

end.

