unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, Grids,
  DBGrids, RXDBCtrl;

type
  TForm13 = class(TForm)
    Bevel2: TBevel;
    Bevel6: TBevel;
    fechar: TSpeedButton;
    ADOQuery1: TADOQuery;
    Label7: TLabel;
    db_linha: TComboBox;
    Edit1: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    ADOQuery1linha: TWideStringField;
    RxDBGrid1: TRxDBGrid;
    ADOQuery2linha: TWideStringField;
    ADOQuery2codigo: TWideStringField;
    ADOQuery2nome: TWideStringField;
    ADOQuery2valor: TWideStringField;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    ListBox1: TListBox;
    bt_confirma: TSpeedButton;
    bt_limpar: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    bt_retirar: TSpeedButton;
    Label6: TLabel;
    ADOQuery3: TADOQuery;
    Label8: TLabel;
    Edit2: TEdit;
    ADOQuery4: TADOQuery;
    ADOQuery4codigo: TWideStringField;
    ADOQuery4valor: TWideStringField;
    ADOQuery4cpf: TWideStringField;
    ADOQuery4qtde: TWideStringField;
    ADOQuery2qtde: TWideStringField;
    ADOQuery_contar: TADOQuery;
    ADOQuery5: TADOQuery;
    ADOQuery5linha: TWideStringField;
    ADOQuery5codigo: TWideStringField;
    ADOQuery5sessao: TWideStringField;
    ADOQuery5nome: TWideStringField;
    ADOQuery5valor: TWideStringField;
    ADOQuery5pontos: TWideStringField;
    db_codigo: TDBEdit;
    Button1: TButton;
    ADOQuery3codigo: TWideStringField;
    ADOQuery3valor: TWideStringField;
    procedure fecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure db_linhaEnter(Sender: TObject);
    procedure db_linhaSelect(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RxDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bt_limparClick(Sender: TObject);
    procedure bt_retirarClick(Sender: TObject);
    procedure ListBox1Exit(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure bt_confirmaClick(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
  Form13: TForm13;
  contador:Integer;
  valores_soma:Real;

implementation

uses Unit1, Unit12, Unit7;

{$R *.dfm}

procedure TForm13.fecharClick(Sender: TObject);
begin
Close;
end;

procedure TForm13.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ADOQuery1.Active=True then
ADOQuery1.Active:=False;

if ADOQuery2.Active=True then
ADOQuery2.Active:=False;

if ADOQuery3.Active=True then
ADOQuery3.Active:=False;

if ADOQuery4.Active=True then
ADOQuery4.Active:=False;

if ADOQuery5.Active=True then
ADOQuery5.Active:=False;

if ADOQuery_contar.Active=True then
ADOQuery_contar.Active:=False;

//Abaixo para Liberar o Form da Memória
Form13.Release;
Form13 := Nil;
end;

procedure TForm13.FormDestroy(Sender: TObject);
begin
Form7.Enabled:=True;
end;

procedure TForm13.db_linhaEnter(Sender: TObject);
var
i,y:integer;
begin

 //ESTA CONDIÇÃO É PARA NÃO DAR BZIU QUANDO SAI DO FOCUS DO db_linha E VOLTA DEPOIS
 if db_linha.Text = '' then
 begin
 Edit1.Clear;
 db_linha.Items.Clear;
 db_linha.ItemIndex:=0;
 db_linha.Items.Add('Todos os Produtos');
 ADOQuery1.Open;
 y:=ADOQuery1.RecordCount;
 i:=0;
   while i < y do
   begin
   i:=i+1;
   db_linha.Items.Add(ADOQuery1.Fieldbyname('linha').Value);
   ADOQuery1.Next;
   end;
 ADOQuery1.Close;
 //Abaixo limpa o campo PRODUTO
 Edit1.Clear;
 end;
 
end;

procedure TForm13.db_linhaSelect(Sender: TObject);
begin
RxDBGrid1.Enabled:=True;

   ADOQuery2.close;
   ADOQuery2.sql.clear;

      if (db_linha.ItemIndex = 0) then
      ADOQuery2.sql.Add('select produtos.linha, produtos.codigo, produtos.nome, produtos.valor, estoque.qtde '
      + 'FROM produtos '
      + 'INNER JOIN estoque ON produtos.codigo = estoque.codigo '
      + 'group by produtos.linha, produtos.codigo, produtos.nome, produtos.valor, estoque.qtde '
      + 'order by produtos.linha, produtos.codigo, produtos.nome, produtos.valor, estoque.qtde')
      else
      ADOQuery2.sql.Add('select produtos.linha, produtos.codigo, produtos.nome, produtos.valor, estoque.qtde '
      + 'FROM produtos '
      + 'INNER JOIN estoque ON produtos.codigo = estoque.codigo '
      + 'WHERE produtos.linha = "'+db_linha.Text+'" '
      + 'group by produtos.linha, produtos.codigo, produtos.nome, produtos.valor, estoque.qtde '
      + 'order by produtos.linha, produtos.codigo, produtos.nome, produtos.valor, estoque.qtde');

      ADOQuery2.open;

   if ADOQuery2.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery2.RecordCount)+' Produtos'
   else
   Label3.Caption:=IntToStr(ADOQuery2.RecordCount)+' Produto';


   if ADOQuery2.RecordCount = 0 then   //Caso não apareça nenhum registro
   begin
   ADOQuery2.Active:=False;
   RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   Label3.Caption:='Nenhum Produto';
   MessageDlg(#13+'Produtos não encontrados no Sistema para a Linha '+db_linha.text+#13, mtwarning, [mbOk], 0);
   db_linha.ItemIndex:=-1;
   db_linha.SetFocus;
   end
   else
   RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];

end;

procedure TForm13.FormActivate(Sender: TObject);
begin
Edit2.Text:=Form7.ADOQuery1nome.Text;
db_linha.SetFocus;

//Abaixo Active False pois estava dando problema
ADOQuery2.Active:=False;

contador:=0;
valores_soma:=0;
end;

procedure TForm13.Edit1Change(Sender: TObject);
begin
if (db_linha.ItemIndex <> -1) then
begin
   ADOQuery2.close;
   ADOQuery2.sql.clear;

      if (db_linha.ItemIndex = 0) then
      ADOQuery2.sql.Add('select produtos.linha, produtos.codigo, produtos.nome, produtos.valor, estoque.qtde '
      + 'FROM produtos '
      + 'INNER JOIN estoque ON produtos.codigo = estoque.codigo '
      + 'WHERE produtos.nome like "%'+trim(Edit1.Text)+'%" '
      + 'group by produtos.linha, produtos.codigo, produtos.nome, produtos.valor, estoque.qtde '
      + 'order by produtos.linha, produtos.codigo, produtos.nome, produtos.valor, estoque.qtde')
      else
      ADOQuery2.sql.Add('select produtos.linha, produtos.codigo, produtos.nome, produtos.valor, estoque.qtde '
      + 'FROM produtos '
      + 'INNER JOIN estoque ON produtos.codigo = estoque.codigo '
      + 'WHERE (produtos.linha = "'+db_linha.Text+'") and (produtos.nome like "%'+trim(Edit1.Text)+'%") '
      + 'group by produtos.linha, produtos.codigo, produtos.nome, produtos.valor, estoque.qtde '
      + 'order by produtos.linha, produtos.codigo, produtos.nome, produtos.valor, estoque.qtde');


      ADOQuery2.open;

   if ADOQuery2.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery2.RecordCount)+' Produtos'
   else
   Label3.Caption:=IntToStr(ADOQuery2.RecordCount)+' Produto';

   if ADOQuery2.RecordCount = 0 then
   begin
   Label3.Caption:='Nenhum Produto';
   RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   end
   else
   RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
   
end;

end;

procedure TForm13.SpeedButton1Click(Sender: TObject);
var
valor:Real;
begin

  if (Label3.Caption <> 'Nenhum Produto') then
  begin
  contador:=contador+1;
  bt_confirma.Enabled:=True;
  bt_limpar.Enabled:=True;
    if contador > 1 then
    Label4.Caption:=IntToStr(contador)+' Produtos'
    else
    Label4.Caption:=IntToStr(contador)+' Produto';
  ListBox1.Items.Add(ADOQuery2codigo.Text+' - '+ADOQuery2nome.Text);
  //Inc(qtde);

  { PRECISA PENSAR EM COMO NAO ADICIONAR NO LISTBOX UM VALOR MAIOR QUE TEM NO ESTOQUE
  if qtde > StrToInt(ADOQuery2qtde.Text) then
  showmessage('o maximo a emprestar e 5');
  }

 // if not ADOQuery2.Locate('qtde',DateToStr(DateTimePicker1.Date), []) then

//  RxDBGrid1.DataSource.DataSet.FieldByName(RxDBGrid1.Columns[2].FieldName).asString

  valor:=strtofloat(copy(ADOQuery2valor.Text,3,10));

  //Variável que pega os produtos selecionados e soma
  valores_soma:=valores_soma+valor;

  Label6.Caption:='Total: R$'+FormatFloat('##,###,##0.00',(valores_soma));

  end;

end;

procedure TForm13.RxDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
                       
 if (gdSelected in State) then // Se a célula está selecionada
 begin
 RxDBGrid1.Canvas.Font.Color:= clWhite;
 //Função para cores personalizadas
 RxDBGrid1.Canvas.Brush.Color:=TColor(HexToTColor('FF66FF'));
 end
  else if odd(ADOQuery2.RecNo) then
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
function TForm13.HexToTColor(sColor : string) : TColor;
begin
Result :=
RGB(
StrToInt('$'+Copy(sColor, 1, 2)),
StrToInt('$'+Copy(sColor, 3, 2)),
StrToInt('$'+Copy(sColor, 5, 2))
) ;
end;

procedure TForm13.bt_limparClick(Sender: TObject);
begin
ListBox1.Clear;
bt_confirma.Enabled:=False;
bt_retirar.Enabled:=False;
bt_limpar.Enabled:=False;
Label4.Caption:='Nenhum Produto';
Label6.Caption:='Total: R$0,00';
contador:=0;
valores_soma:=0;
end;

procedure TForm13.bt_retirarClick(Sender: TObject);
var
soma_retira:Real;
begin

   ADOQuery3.close;
   ADOQuery3.sql.clear;
  // ADOQuery3.sql.Add('Select * from estoque where codigo = "'+copy(ListBox1.Items.Strings[ListBox1.ItemIndex],1,8)+'"');

   ADOQuery3.sql.Add('select produtos.codigo, produtos.valor from produtos '
   +'INNER JOIN estoque ON produtos.codigo = "'+copy(ListBox1.Items.Strings[ListBox1.ItemIndex],1,8)+'" '
   +'group by produtos.codigo, produtos.valor');
   ADOQuery3.open;

//Abaixo retira de acordo com o código do produto na Lista
soma_retira:=valores_soma-StrToFloat(copy(ADOQuery3valor.Text,4,8));
//Abaixo para atualizar o valor global da tela
valores_soma:=soma_retira;
Label6.Caption:='Total: R$'+FormatFloat('##,###,##0.00',(soma_retira));

ListBox1.DeleteSelected;

 //Quando deletar os ítens do ListBox1 e ele ficar vazio
 if Listbox1.Items.Count = 0 then
 begin
 bt_confirma.Enabled:=False;
 bt_limpar.Enabled:=False;
 end;

contador:=contador-1;

    if contador > 1 then
    Label4.Caption:=IntToStr(contador)+' Produtos'
    else
    Label4.Caption:=IntToStr(contador)+' Produto';

bt_retirar.Enabled:=False;
end;

procedure TForm13.ListBox1Exit(Sender: TObject);
begin
bt_retirar.Enabled:=False;
end;

procedure TForm13.ListBox1Click(Sender: TObject);
begin
bt_retirar.Enabled:=True;
end;

procedure TForm13.bt_confirmaClick(Sender: TObject);
var
i,j,contar:Integer;
flag:Boolean;
begin
//(INÍCIO) PERGUNTA DE CONFIRMAÇÃO
if MessageDlg(#13+'Deseja confirmar o empréstimo à '+Edit2.Text+'?',mtConfirmation, [mbyes, mbno],0) = mrYes then
begin

 ADOQuery4.Active:=True;
 contar:=0;
 flag:=False;

 for i:=0 to Listbox1.Items.Count-1 do
 begin

   ADOQuery3.close;
   ADOQuery3.sql.clear;
   ADOQuery3.sql.Add('Select * from estoque where codigo = "'+copy(ListBox1.Items.Strings[i],1,8)+'" order by codigo');
   ADOQuery3.open;

   {
   Caso não encontre cadastrado o código do produto,
   ele grava um NOVO, com o CPF em questão.
   }
   if not (ADOQuery4.Locate('codigo', copy(ListBox1.Items.Strings[i],1,8), [])) then
   begin
   ADOQuery4.Append;
   ADOQuery4codigo.Text:=ADOQuery3codigo.Text;
   ADOQuery4valor.Text:=ADOQuery3valor.Text;
   ADOQuery4cpf.Text:=Form7.ADOQuery1cpf.Text;

         for j:=0 to Listbox1.Items.Count-1 do
         begin
           if (copy(ListBox1.Items.Strings[j],1,8) =  ADOQuery3codigo.Text) then
           inc(contar);
         end;

   ADOQuery4qtde.Text:=IntToStr(contar);
   ADOQuery4.Post;
   contar:=0;
   //Esta variável é para que ele NÃO ENTRE no ELSE e multiplique o valor. Ex: 5x5=25
   flag:=True;
   end
    {
    Caso ja exista o produto CADASTRADO para o CPF em questão,
    ele apenas EDITA a quantidade cadastrada para aquele produto.
    }
    else
    begin
      {
      Caso já exista o produto CADASTRADO mas com OUTRO cpf,
      ele grava o MESMO PRODUTO mas para um NOVO cpf.
      }
      if not (ADOQuery4.Locate('cpf', Trim(Form7.ADOQuery1cpf.Text), [])) then
      begin
      ADOQuery4.Append;
      ADOQuery4codigo.Text:=ADOQuery3codigo.Text;
      ADOQuery4valor.Text:=ADOQuery3valor.Text;
      ADOQuery4cpf.Text:=Form7.ADOQuery1cpf.Text;

          for j:=0 to Listbox1.Items.Count-1 do
          begin
            if (copy(ListBox1.Items.Strings[j],1,8) =  ADOQuery3codigo.Text) then
            inc(contar);
          end;
          
      ADOQuery4qtde.Text:=IntToStr(contar);
      ADOQuery4.Post;
      contar:=0;
      //Esta variável é para que ele NÃO ENTRE no ELSE e multiplique o valor. Ex: 5x5=25
      flag:=True;
      end
       else
       begin
          if flag = False then
          begin
          ADOQuery4.Edit;

             for j:=0 to Listbox1.Items.Count-1 do
             begin
               if (copy(ListBox1.Items.Strings[j],1,8) =  ADOQuery3codigo.Text) then
               inc(contar);
             end;
             
          ADOQuery4qtde.Text:=IntToStr(StrToInt(ADOQuery4qtde.Text) + contar);   
          ADOQuery4.Post;
          contar:=0;
          //Esta variável é para que ele NÃO ENTRE no ELSE e multiplique o valor. Ex: 5x5=25
          flag:=True;
          end;
       end;
    end;

 contar:=0;
 end;

 ADOQuery4.Active:=False;
 MessageDlg(#13+'Confirmado o empréstimo no valor de '+copy(Label6.Caption,7,9)+
               ' em produtos Mary Kay para '+Edit2.Text+#13,mtinformation, [mbok],0);
 //Abaixo para executar a ação de LIMPAR
 bt_limpar.Click;

end; //(FIM) PERGUNTA DE CONFIRMAÇÃO

end;

procedure TForm13.RxDBGrid1DblClick(Sender: TObject);
begin
  if RxDBGrid1.Enabled = True then
  begin
  ADOQuery5.Active:=True;
  ADOQuery5.Locate('codigo',Trim(db_codigo.Text), []);
  MessageDlg(#13+'Código: '
  +ADOQuery5codigo.Text
  +#13+#13+'Linha: '
  +ADOQuery5linha.Text+'.'
  +#13+'Nome: '
  +ADOQuery5nome.Text+'.'
  +#13+#13+'Valor: '
  +ADOQuery5valor.Text+#13,mtinformation, [mbok],0);
  ADOQuery5.Active:=False;
  end;
end;

procedure TForm13.Button1Click(Sender: TObject);
begin
//StrToInt(RxDBGrid1.Columns[2])-2 ;

RxDBGrid1.DataSource.DataSet.FieldByName(RxDBGrid1.Columns[2].FieldName).asString:='teste';
end;

end.
