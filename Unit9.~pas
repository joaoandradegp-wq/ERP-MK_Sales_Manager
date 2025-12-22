unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB,
  ADODB, RXDBCtrl;

type
  TForm9 = class(TForm)
    fechar: TSpeedButton;
    Bevel3: TBevel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    comboconsult: TComboBox;
    Label3: TLabel;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Bevel2: TBevel;
    ADOQuery2: TADOQuery;
    Bevel4: TBevel;
    RxDBGrid1: TRxDBGrid;
    btn_baixa: TSpeedButton;
    ADOQuery1nome: TWideStringField;
    Bevel5: TBevel;
    ADOQuery3: TADOQuery;
    ADOQuery4: TADOQuery;
    ADOQuery3Cdigo: TAutoIncField;
    ADOQuery3linha: TWideStringField;
    ADOQuery3codigo: TWideStringField;
    ADOQuery3sessao: TWideStringField;
    ADOQuery3nome: TWideStringField;
    ADOQuery3valor: TWideStringField;
    ADOQuery3pontos: TWideStringField;
    ADOQuery4Cdigo: TAutoIncField;
    ADOQuery4linha: TWideStringField;
    ADOQuery4codigo: TWideStringField;
    ADOQuery4sessao: TWideStringField;
    ADOQuery4nome: TWideStringField;
    ADOQuery4valor: TWideStringField;
    ADOQuery4pontos: TWideStringField;
    ADOQuery4qtde: TWideStringField;
    ADOQuery1qtde: TWideStringField;
    ADOQuery1codigo: TWideStringField;
    ADOQuery5: TADOQuery;
    ADOQuery5Cdigo: TAutoIncField;
    ADOQuery5codigo: TWideStringField;
    ADOQuery5valor: TWideStringField;
    ADOQuery5cpf: TWideStringField;
    ADOQuery5qtde: TWideStringField;
    ADOQuery1valor: TWideStringField;
    ADOQuery1calculo: TFloatField;
    ADOQuery2nome: TWideStringField;
    ADOQuery2cpf: TWideStringField;
    procedure fecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure comboconsultEnter(Sender: TObject);
    procedure comboconsultChange(Sender: TObject);
    procedure RxDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btn_baixaClick(Sender: TObject);
    procedure ADOQuery1CalcFields(DataSet: TDataSet);
    procedure RxDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    {
    Declarando a função que está no final do programa
    para usar cores personalizadas no Delphi no formato #FF00F3
    }
    function HexToTColor(sColor : string) : TColor;
  end;

var
  Form9: TForm9;
  cpf_global:String;

implementation

uses Unit1, Unit12;

{$R *.dfm}


procedure TForm9.fecharClick(Sender: TObject);
begin
Close;
end;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ADOQuery1.Active = True then
ADOQuery1.Active:=False;

if ADOQuery2.Active = True then
ADOQuery2.Active:=False;

if ADOQuery3.Active = True then
ADOQuery3.Active:=False;

if ADOQuery4.Active = True then
ADOQuery4.Active:=False;

if ADOQuery5.Active = True then
ADOQuery5.Active:=False;

//Abaixo para Liberar o Form da Memória
Form9.Release;
Form9 := Nil;
end;

procedure TForm9.FormDestroy(Sender: TObject);
begin
frmprincipal.Enabled:=true;
end;

procedure TForm9.comboconsultEnter(Sender: TObject);
var
i,y:integer;
begin
comboconsult.Items.Clear;
comboconsult.ItemIndex:=0;

ADOQuery2.Open;
y:=ADOQuery2.RecordCount;
i:=0;
while i < y do
begin
i:=i+1;
comboconsult.Items.Add(ADOQuery2.Fieldbyname('nome').Value);
ADOQuery2.Next;
end;
ADOQuery2.Close;
Label2.Caption:='Nenhum Registro';
end;

procedure TForm9.comboconsultChange(Sender: TObject);
begin
RXDBGrid1.Enabled:=True;
btn_baixa.Enabled:=True;

//(INICIO) - Exclusivo para localizar o CPF quando selecionar o Combobox
ADOQuery2.Active:=True;
ADOQuery2.Locate('nome', trim(comboconsult.Text), []);

   ADOQuery1.close;
   ADOQuery1.sql.clear;

      ADOQuery1.SQL.Add(''
      +'select produtos.nome, emprestimos.qtde, emprestimos.codigo, emprestimos.valor from produtos '
      +'INNER JOIN emprestimos ON '
      +'produtos.codigo = emprestimos.codigo '
      +'where emprestimos.cpf = "'+ADOQuery2cpf.Text+'" '
      +'group by produtos.nome, emprestimos.qtde, emprestimos.codigo, emprestimos.valor');

      ADOQuery1.open;

      //COPIA PARA UMA VARIÁVEL GLOBAL PARA SER ACESSADO NO BOTAO DE DAR BAIXA
      cpf_global:=ADOQuery2cpf.Text;

      //(FIM) - Exclusivo para localizar o CPF quando selecionar o Combobox
      ADOQuery2.Active:=False;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label2.Caption:=IntToStr(ADOQuery1.RecordCount)+' Registros'
   else
   Label2.Caption:=IntToStr(ADOQuery1.RecordCount)+' Registro';

 if ADOQuery1.RecordCount = 0 then   //Caso não apareça nenhum registro
 begin
 ADOQuery1.Active:=False;
 RxDBGrid1.Enabled:=False;
 RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
 btn_baixa.Enabled:=False;
 Label2.Caption:='Nenhum Registro';
 MessageDlg(#13+'Não existem registros de EMPRÉSTIMO para a Consultora '+comboconsult.Text+'!'+#13,mtinformation, [mbok],0);
 end
 else
 begin
 RxDBGrid1.Enabled:=True;
 RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
 end;
end;

procedure TForm9.RxDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

 if (gdSelected in State) then // Se a célula está selecionada
 begin
 RxDBGrid1.Canvas.Font.Color:= clWhite;
 //Função para cores personalizadas
 RxDBGrid1.Canvas.Brush.Color:=TColor(HexToTColor('FF66FF'));
 end
  else if odd(ADOQuery1.RecNo) then
  begin
  RxDBGrid1.Canvas.Font.Color:= clBlack;
  //Função para cores personalizadas
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

//Função para usar cores personalizadas em Hexadecial
function TForm9.HexToTColor(sColor : string) : TColor;
begin
Result :=
RGB(
StrToInt('$'+Copy(sColor, 1, 2)),
StrToInt('$'+Copy(sColor, 3, 2)),
StrToInt('$'+Copy(sColor, 5, 2))
) ;
end;

procedure TForm9.btn_baixaClick(Sender: TObject);
var
linha,codigo,sessao,nome,valor,pontos,qtde:String;
calculo_qtde:Integer;
begin
  {
  if MessageDlg(#13+'Deseja DAR BAIXA no empréstimo do produto '+ADOQuery1nome.Text+'?',mtConfirmation, [mbyes, mbno],0) = mrYes then
  begin
  //(INICIO) - BLOCO QUE LOCALIZA NA TABELA DE PRODUTOS E COPIA PARA AS VARIÁVEIS
  ADOQuery3.Active:=True;
  ADOQuery3.Locate('codigo', trim(ADOQuery1codigo.Text), []);
  linha:=ADOQuery3linha.Text;
  codigo:=ADOQuery3codigo.Text;
  sessao:=ADOQuery3sessao.Text;
  nome:=ADOQuery3nome.Text;
  valor:=ADOQuery3valor.Text;
  pontos:=ADOQuery3pontos.Text;
  qtde:=ADOQuery1qtde.Text; //ADOQUERY1
  ADOQuery3.Active:=False;
  //(FIM)    - BLOCO QUE LOCALIZA NA TABELA DE PRODUTOS E COPIA PARA AS VARIÁVEIS

     //(INICIO) - BLOCO QUE COPIA AS VARIÁVEIS PARA A TABELA DE ESTOQUE
     ADOQuery4.Active:=True;
     if not ADOQuery4.Locate('codigo', trim(ADOQuery1codigo.Text), []) then
     begin
     ADOQuery4.Append;
     ADOQuery4linha.Text:=linha;
     ADOQuery4codigo.Text:=codigo;
     ADOQuery4sessao.Text:=sessao;
     ADOQuery4nome.Text:=nome;
     ADOQuery4valor.Text:=valor;
     ADOQuery4pontos.Text:=pontos;
     ADOQuery4qtde.Text:=qtde;
     ADOQuery4.Post;
     ADOQuery4.Active:=False;
     end
      else
      begin
      ADOQuery4.Edit;
      calculo_qtde:=StrToInt(ADOQuery4qtde.Text+qtde);
      ADOQuery4qtde.Text:=IntToStr(calculo_qtde);
      ADOQuery4.Post;
      end;
     ADOQuery4.Active:=False;
     //(FIM)    - BLOCO QUE COPIA AS VARIÁVEIS PARA A TABELA DE ESTOQUE
  }

    //Abaixo consulta a tabela de Empréstimos e deleta o que está no Grid
    ADOQuery5.Active:=True;
    ADOQuery5.Locate('codigo', trim(ADOQuery1codigo.Text), []);
    ADOQuery5.Delete;
    ADOQuery5.Refresh;
    ADOQuery5.Active:=False;

    //Abaixo ATUALIZA o Grid
    ADOQuery1.close;
    ADOQuery1.sql.clear;
    ADOQuery1.SQL.Add(''
    +'select produtos.nome, emprestimos.qtde, emprestimos.codigo, emprestimos.valor from produtos '
    +'INNER JOIN emprestimos ON '
    +'produtos.codigo = emprestimos.codigo '
    +'where emprestimos.cpf = "'+cpf_global+'" '
    +'order by produtos.nome');
    ADOQuery1.open;

end;

procedure TForm9.ADOQuery1CalcFields(DataSet: TDataSet);
begin
ADOQuery1calculo.Value:=StrToFloat(copy(ADOQuery1valor.AsString,4,7)) * ADOQuery1qtde.AsFloat;
end;

procedure TForm9.RxDBGrid1DblClick(Sender: TObject);
begin
  if RxDBGrid1.Enabled = True then
  begin
  ADOQuery3.Active:=True;
  ADOQuery3.Locate('codigo',RxDBGrid1.DataSource.DataSet.FieldByName(RxDBGrid1.Columns[0].FieldName).asString, []);
  MessageDlg(#13+'Código: '
  +ADOQuery3codigo.Text
  +#13+#13+'Linha: '
  +ADOQuery3linha.Text+'.'
  +#13+'Nome: '
  +ADOQuery3nome.Text+'.'
  +#13+#13+'Valor: '
  +ADOQuery3valor.Text+#13,mtinformation, [mbok],0);
  ADOQuery3.Active:=False;
  end;
end;

end.
