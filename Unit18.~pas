unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, ExtCtrls, Mask, DBCtrls,
  IdBaseComponent, IdComponent, IdRawBase, IdRawClient, IdIcmpClient,
  Grids, DBGrids, RXDBCtrl, RxGIF, abfControls, ToolEdit, ComCtrls,
  AppEvnts;

type
  TForm18 = class(TForm)
    fechar: TSpeedButton;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label11: TLabel;
    RxDBGrid1: TRxDBGrid;
    Label1: TLabel;
    combo_status: TComboBox;
    Label2: TLabel;
    combo_mes: TComboBox;
    edit_ano: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Bevel5: TBevel;
    Timer1: TTimer;
    SpeedButton1: TSpeedButton;
    btn_entrega: TSpeedButton;
    Label5: TLabel;
    Bevel6: TBevel;
    DateTimePicker1: TDateTimePicker;
    Bevel7: TBevel;
    Edit1: TEdit;
    ADOQuery2: TADOQuery;
    ADOQuery2cpf_cliente: TWideStringField;
    ADOQuery2codigo_produto: TWideStringField;
    ADOQuery2data_pedido: TWideStringField;
    ADOQuery2situacao: TWideStringField;
    ADOQuery2data_entrega: TWideStringField;
    ADOQuery2qtde: TWideStringField;
    ADOQuery3: TADOQuery;
    ADOQuery3linha: TWideStringField;
    ADOQuery3codigo: TWideStringField;
    ADOQuery3sessao: TWideStringField;
    ADOQuery3nome: TWideStringField;
    ADOQuery3valor: TWideStringField;
    ADOQuery3pontos: TWideStringField;
    DBText1: TDBEdit;
    ADOQuery1codigo: TWideStringField;
    ADOQuery1valor: TWideStringField;
    ADOQuery1linha: TWideStringField;
    ADOQuery1nome: TWideStringField;
    ADOQuery1qtde: TWideStringField;
    ADOQuery1data_pedido: TWideStringField;
    ADOQuery1total: TFloatField;
    Speed_cancelar: TSpeedButton;
    ADOQuery_cancela: TADOQuery;
    ADOQuery_cancelaCdigo: TAutoIncField;
    ADOQuery_cancelacpf_cliente: TWideStringField;
    ADOQuery_cancelacodigo_produto: TWideStringField;
    ADOQuery_canceladata_pedido: TWideStringField;
    ADOQuery_cancelasituacao: TWideStringField;
    ADOQuery_canceladata_entrega: TWideStringField;
    ADOQuery_cancelaqtde: TWideStringField;
    procedure fecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure combo_statusChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RxDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btn_entregaClick(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure edit_anoKeyPress(Sender: TObject; var Key: Char);
    procedure Speed_cancelarClick(Sender: TObject);
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
  Form18: TForm18;

implementation

uses Unit1, Unit14;

{$R *.dfm}

//FunÁ„o para verificar se o valor È numÈrico ou n„o.
function IsNumeric(const s: string): boolean;
var
i: integer;
begin
Result := True;
for i:=1 to length(s) do
if not (s[i] in ['0'..'9']) then
begin
Result := False;
Break;
end;
end;

procedure TForm18.fecharClick(Sender: TObject);
begin
Close;
end;

procedure TForm18.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ADOQuery1.Active=True then
ADOQuery1.Active:=False;

if ADOQuery2.Active=True then
ADOQuery2.Active:=False;

if ADOQuery3.Active=True then
ADOQuery3.Active:=False;

if ADOQuery_cancela.Active=True then
ADOQuery_cancela.Active:=False;

//Abaixo para Liberar o Form da MemÛria
Form18.Release;
Form18 := Nil;
end;

procedure TForm18.FormDestroy(Sender: TObject);
begin
Form14.Enabled:=True;
end;

procedure TForm18.combo_statusChange(Sender: TObject);
begin

if (combo_status.Text = 'Em pedido') then
begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      ADOQuery1.SQL.Add(''
      +'select produtos.codigo, produtos.valor, produtos.linha, produtos.nome, pedidos_cliente.qtde, pedidos_cliente.data_pedido, (pedidos_cliente.qtde*produtos.valor) as total from produtos '
      +'INNER JOIN pedidos_cliente ON '
      +'produtos.codigo = pedidos_cliente.codigo_produto '
      +'where (pedidos_cliente.cpf_cliente = "'+Form14.ADOQuery1cpf.Text+'" '
      +'and pedidos_cliente.situacao = "'+combo_status.Text+'") group by produtos.codigo, produtos.valor, produtos.linha, produtos.nome, pedidos_cliente.qtde, pedidos_cliente.data_pedido');

      RxDBGrid1.Columns.Items[3].Title.Caption:='Pedido';
      RxDBGrid1.Columns.Items[3].FieldName:='data_pedido';

      ADOQuery1.open;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label4.Caption:=IntToStr(ADOQuery1.RecordCount)+' Registros'
   else
   Label4.Caption:=IntToStr(ADOQuery1.RecordCount)+' Registro';

 if ADOQuery1.RecordCount = 0 then   //Caso n„o apareÁa nenhum registro
 begin
 ADOQuery1.Active:=False;
 RxDBGrid1.Enabled:=False;
 RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
 Label4.Caption:='Nenhum Registro';
  //Abaixo os 2 campos de Entrega
  DateTimePicker1.Enabled:=False;
  btn_entrega.Enabled:=False;
 Speed_cancelar.Enabled:=False;
 MessageDlg(#13+'N„o existem registros de PEDIDOS para a Cliente '+DBText1.Text+'!'+#13,mtinformation, [mbok],0);
 end
 else
 begin
 RxDBGrid1.Enabled:=True;
 RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
  //Abaixo os 2 campos de Entrega
  DateTimePicker1.Enabled:=True;
  btn_entrega.Enabled:=True;
 Speed_cancelar.Enabled:=True;
 end;

//Abaixo os 2 campos + bot„o de pesquisa por data
combo_mes.Enabled:=False;
edit_ano.Enabled:=False;
Speedbutton1.Enabled:=False;
end
  else
  begin
  ADOQuery1.Active:=False;
  RxDBGrid1.Options:=[];
  Label4.Caption:='Nenhum Registro';

  //Abaixo os 2 campos + bot„o de pesquisa por data
  combo_mes.Enabled:=True;
  combo_mes.SetFocus;
  edit_ano.Enabled:=True;
  Speedbutton1.Enabled:=True;

  //Abaixo os 2 campos de Entrega
  DateTimePicker1.Enabled:=False;
  btn_entrega.Enabled:=False;

  Speed_cancelar.Enabled:=False;
  end;

end;

procedure TForm18.Timer1Timer(Sender: TObject);
var
aux:Integer;
begin
Timer1.Enabled:=False;
aux:=0;

   ADOQuery1.close;
   ADOQuery1.sql.clear;

      ADOQuery1.SQL.Add(''
      +'select produtos.codigo, produtos.valor, produtos.linha, produtos.nome, pedidos_cliente.qtde, pedidos_cliente.data_pedido, (pedidos_cliente.qtde*produtos.valor) as total from produtos '
      +'INNER JOIN pedidos_cliente ON '
      +'produtos.codigo = pedidos_cliente.codigo_produto '
      +'where (pedidos_cliente.cpf_cliente = "'+Form14.ADOQuery1cpf.Text+'" '
      +'and pedidos_cliente.situacao = "'+combo_status.Text+'") group by produtos.codigo, produtos.valor, produtos.linha, produtos.nome, pedidos_cliente.qtde, pedidos_cliente.data_pedido');

      RxDBGrid1.Columns.Items[3].Title.Caption:='Pedido';
      RxDBGrid1.Columns.Items[3].FieldName:='data_pedido';

      ADOQuery1.open;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label4.Caption:=IntToStr(ADOQuery1.RecordCount)+' Registros'
   else
   Label4.Caption:=IntToStr(ADOQuery1.RecordCount)+' Registro';

 if ADOQuery1.RecordCount = 0 then   //Caso n„o apareÁa nenhum registro
 begin
 ADOQuery1.Active:=False;
 RxDBGrid1.Enabled:=False;
 RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
 Label4.Caption:='Nenhum Registro';
 DateTimePicker1.Enabled:=False;
 btn_entrega.Enabled:=False;
 Speed_cancelar.Enabled:=False;
 MessageDlg(#13+'N„o existem registros de PEDIDOS para a Cliente '+DBText1.Text+'!'+#13,mtinformation, [mbok],0);
 end
 else
 begin
 RxDBGrid1.Enabled:=True;
 RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
 DateTimePicker1.Enabled:=True;
 btn_entrega.Enabled:=True;
 Speed_cancelar.Enabled:=True;
 end;

if aux = 1 then
MessageDlg(#13+'N„o existem registros de PEDIDOS para a Cliente '+DBText1.Text+'!'+#13,mtinformation, [mbok],0);
end;

procedure TForm18.FormActivate(Sender: TObject);

begin
   //Para fazer o fundo do Label5 ficar igual o fundo do Form, mesmo usando SKIN.
   DBText1.Color:=Form18.Color;

   DateTimePicker1.Date:=(Date);

   combo_status.SetFocus;
   edit_ano.Text:=Copy(DateToStr(date), 7, 10);

   if Copy(DateToStr(date),4,2) = '01' then
   combo_mes.ItemIndex := 0
   else if Copy(DateToStr(date),4,2) = '02' then
   combo_mes.ItemIndex := 1
   else if Copy(DateToStr(date),4,2) = '03' then
   combo_mes.ItemIndex := 2
   else if Copy(DateToStr(date),4,2) = '04' then
   combo_mes.ItemIndex := 3
   else if Copy(DateToStr(date),4,2) = '05' then
   combo_mes.ItemIndex := 4
   else if Copy(DateToStr(date),4,2) = '06' then
   combo_mes.ItemIndex := 5
   else if Copy(DateToStr(date),4,2) = '07' then
   combo_mes.ItemIndex := 6
   else if Copy(DateToStr(date),4,2) = '08' then
   combo_mes.ItemIndex := 7
   else if Copy(DateToStr(date),4,2) = '09' then
   combo_mes.ItemIndex := 8
   else if Copy(DateToStr(date),4,2) = '10' then
   combo_mes.ItemIndex := 9
   else if Copy(DateToStr(date),4,2) = '11' then
   combo_mes.ItemIndex := 10
   else if Copy(DateToStr(date),4,2) = '12' then
   combo_mes.ItemIndex := 11;

   Timer1.Enabled:=True;
end;

procedure TForm18.SpeedButton1Click(Sender: TObject);
begin
if not(length(trim(edit_ano.Text)) < 4) then
begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      ADOQuery1.SQL.Add(''
      +'select produtos.valor, produtos.codigo, produtos.linha, produtos.nome, pedidos_cliente.qtde, (pedidos_cliente.data_entrega) as data_pedido, (pedidos_cliente.qtde*produtos.valor) as total from produtos '
      +'INNER JOIN pedidos_cliente ON '
      +'produtos.codigo = pedidos_cliente.codigo_produto '
      +'where (pedidos_cliente.cpf_cliente = "'+Form14.ADOQuery1cpf.Text+'" '
      +'and pedidos_cliente.situacao = "'+combo_status.Text+'" '
      +'and MONTH(pedidos_cliente.data_entrega) = "'+IntToStr(combo_mes.ItemIndex+1)+'" '
      +'and YEAR(pedidos_cliente.data_entrega) = "'+edit_ano.Text+'" '
      +') group by produtos.valor, produtos.codigo, produtos.linha, produtos.nome, pedidos_cliente.qtde, pedidos_cliente.data_entrega');

      RxDBGrid1.Columns.Items[3].Title.Caption:='Entrega';
      RxDBGrid1.Columns.Items[3].FieldName:='data_pedido';

      ADOQuery1.open;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label4.Caption:=IntToStr(ADOQuery1.RecordCount)+' Registros'
   else
   Label4.Caption:=IntToStr(ADOQuery1.RecordCount)+' Registro';

 if ADOQuery1.RecordCount = 0 then   //Caso n„o apareÁa nenhum registro
 begin
 ADOQuery1.Active:=False;
 RxDBGrid1.Enabled:=False;
 RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
 Label4.Caption:='Nenhum Registro';
 MessageDlg(#13+'N„o existem registros de ENTREGAS para a Cliente '+DBText1.Text+' para o mÍs de '+combo_mes.Text+' de '+edit_ano.Text+'!'+#13,mtinformation, [mbok],0);
 end
 else
 begin
 RxDBGrid1.Enabled:=True;
 RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
 end;
end
 else
 begin
 MessageDlg(#13+'Digite o ano no formato de 4 dÌgitos.'+#13,mtinformation, [mbok],0);
 edit_ano.Clear;
 edit_ano.SetFocus;
 end;

end;

procedure TForm18.RxDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

 if (gdSelected in State) then // Se a cÈlula est· selecionada
 begin
 RxDBGrid1.Canvas.Font.Color:= clWhite;
 //FunÁ„o para cores personalizadas
 RxDBGrid1.Canvas.Brush.Color:=TColor(HexToTColor('FF66FF'));
 end
  else if odd(ADOQuery1.RecNo) then // Cor SIM - Cor N√O
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
function TForm18.HexToTColor(sColor : string) : TColor;
begin
Result :=
RGB(
StrToInt('$'+Copy(sColor, 1, 2)),
StrToInt('$'+Copy(sColor, 3, 2)),
StrToInt('$'+Copy(sColor, 5, 2))
) ;
end;

procedure TForm18.btn_entregaClick(Sender: TObject);
var
var_codigo_produto,var_cpf_cliente,var_data_pedido,nome_produto:String;
begin
Edit1.Clear;

  if MessageDlg(#13+'O produto '+RxDBGrid1.DataSource.DataSet.FieldByName(RxDBGrid1.Columns[1].FieldName).AsString+' foi ENTREGUE na data de '+DateToStr(DateTimePicker1.Date)+'?'+#13,mtConfirmation, [mbyes, mbno],0) = mrYes then
  begin //LINHA 325
  Edit1.Text:=Trim(Inputbox('Quantidade','Digite qual a quantidade entregue:',''));
  if not IsNumeric(Edit1.Text) then
  MessageDlg(#13+'O valor digitado da quantidade entregue n„o È numÈrico!', mtwarning, [mbOk], 0)
  else
  begin //LINHA 394 - IsNumeric
  if Length(Edit1.Text) > 0 then //Caso o usu·rio clique em CANCEL
  begin //LINHA 396 - if Length > 0
  nome_produto:=RxDBGrid1.DataSource.DataSet.FieldByName(RxDBGrid1.Columns[1].FieldName).AsString;

    //Caso seja digitado um valor SUPERIOR ao que existe em pedido.
    if (StrToInt(Edit1.Text) > RxDBGrid1.DataSource.DataSet.FieldByName(RxDBGrid1.Columns[2].FieldName).AsInteger) then
    MessageDlg(#13+'O quantidade digitada È MAIOR que a do pedido!', mtwarning, [mbOk], 0)
      else if (StrToInt(Edit1.Text) = 0) then
      MessageDlg(#13+'Digite um valor superior ‡ ZERO!', mtwarning, [mbOk], 0)
      else //LINHA 334
      begin
         {
         Caso seja digitado a MESMA quantidade produto.
         Ex: Pediu 3 batons e entregou DE UMA VEZ os 3 batons.
         Obs: Ele executa o exemplo acima no ELSE abaixo deste IF abaixo
         }
         if (StrToInt(Edit1.Text) = RxDBGrid1.DataSource.DataSet.FieldByName(RxDBGrid1.Columns[2].FieldName).AsInteger) then
         begin //LINHA 344
         ADOQuery2.Active:=True;
            {
            Se digitar a quantidade total, ele procura para ver se existe o mesmo produto
            com o status de "ENTREGUE".
            Ex: Faz pedido de 5 cremes, mas a consultora entregou apenas 3.
                Logo, TEM QUE TER um registro EM PEDIDO de 2 CREMES e ENTREGUE de 3 cremes.
            }
            ADOQuery2.close;
            ADOQuery2.sql.clear;
            ADOQuery2.SQL.Add(''
            +'select * from pedidos_cliente where '
            +'(cpf_cliente = "'+Form14.ADOQuery1cpf.Text+'" '
            +'and codigo_produto = "'+RxDBGrid1.DataSource.DataSet.FieldByName(RxDBGrid1.Columns[0].FieldName).asString+'")');
            ADOQuery2.open;

               {
               Se encontrar mais de 1 registro, È porque existe O MESMO com os dois STATUS acima.
               }
               if ADOQuery2.RecordCount > 1 then
               begin //LINHA 363
               ADOQuery2.close;
               ADOQuery2.SQL.clear;
               ADOQuery2.SQL.Add(''
               +'select * from pedidos_cliente where '
               +'(cpf_cliente = "'+Form14.ADOQuery1cpf.Text+'" '
               +'and codigo_produto = "'+RxDBGrid1.DataSource.DataSet.FieldByName(RxDBGrid1.Columns[0].FieldName).asString+'") '
               +'and situacao = "Em pedido" ');
               ADOQuery2.Open;

               {
               Deleta o registro "EM PEDIDO" pois na regra acima o valor DIGITADO, È o total CADASTRADO.
               Ex: Comprou 5 cremes e entregou os 5 cremes de uma vez.
               }
               ADOQuery2.Delete;

               {
               Abaixo faz a pesquisa pelo status "ENTREGUE" que sobrou quando achou os dois juntos.
               }
               ADOQuery2.close;
               ADOQuery2.SQL.clear;
               ADOQuery2.SQL.Add(''
               +'select * from pedidos_cliente where '
               +'(cpf_cliente = "'+Form14.ADOQuery1cpf.Text+'" '
               +'and codigo_produto = "'+RxDBGrid1.DataSource.DataSet.FieldByName(RxDBGrid1.Columns[0].FieldName).asString+'") '
               +'and situacao = "Entregue" ');
               ADOQuery2.Open;

                    var_codigo_produto:=ADOQuery2codigo_produto.Text;
                    var_cpf_cliente:=ADOQuery2cpf_cliente.Text;
                    var_data_pedido:=ADOQuery2data_pedido.Text;

                      {
                      Procura na Tabela o registro "ENTREGUE" mas com a data setada no DateTimePicker1.
                      Se n„o encontrar o registro, ele ADICIONA.
                      Se encontrar, ele EDITA o que foi achado pelo locate.
                      }
                      if not ADOQuery2.Locate('data_entrega',DateToStr(DateTimePicker1.Date), []) then
                      begin
                         ADOQuery2.Append;
                         ADOQuery2codigo_produto.Text:=var_codigo_produto;
                         ADOQuery2cpf_cliente.Text:=var_cpf_cliente;
                         ADOQuery2data_pedido.Text:=var_data_pedido;
                         ADOQuery2situacao.Text:='Entregue';
                         ADOQuery2qtde.Text:=Edit1.Text;
                         ADOQuery2data_entrega.Text:=DateToStr(DateTimePicker1.Date);
                         ADOQuery2.Post;
                      end
                      else
                      begin
                         ADOQuery2.Edit;
                         ADOQuery2qtde.Text:=IntToStr(StrToInt(ADOQuery2qtde.Text)+StrToInt(Edit1.Text));
                         ADOQuery2data_entrega.Text:=DateToStr(DateTimePicker1.Date);
                         ADOQuery2.Post;
                      end;

                      ADOQuery2.Active:=False;

                    var_codigo_produto:='';
                    var_cpf_cliente:='';
                    var_data_pedido:='';

               end //LINHA 363

               {
               Edita o status "EM PEDIDO" para "ENTREGUE" e preenche o resto dos campos.
               }
               else
               begin //LINHA 400
               ADOQuery2.close;
               ADOQuery2.SQL.clear;
               ADOQuery2.SQL.Add(''
               +'select * from pedidos_cliente where '
               +'(cpf_cliente = "'+Form14.ADOQuery1cpf.Text+'" '
               +'and codigo_produto = "'+RxDBGrid1.DataSource.DataSet.FieldByName(RxDBGrid1.Columns[0].FieldName).asString+'") '
               +'and situacao = "Em pedido" ');
               ADOQuery2.Open;

               ADOQuery2.Edit;
               ADOQuery2situacao.Text:='Entregue';
               ADOQuery2data_entrega.Text:=DateToStr(DateTimePicker1.Date);
               ADOQuery2.Post;
               ADOQuery2.Active:=False;
               end; //LINHA 400
               
         ADOQuery2.Active:=False;
         end //LINHA 344
         {
         Caso seja digitado uma quantidade MENOR que a total do produto, ele grava um
         NOVO registro copiando idÍntico os campos do registro de status "EM PEDIDO",
         mas agora com o status de "ENTREGUE" e com a quantidade que foi entregue.

         Ex: Pediu 4 batons e entregou por enquanto 2 batons.
         }
         else //LINHA 408
         begin
         ADOQuery2.Active:=True;

            {
            Vai pesquisar novamente se existem 2 registros. "EM PEDIDO" e "ENTREGUE"
            }
            ADOQuery2.close;
            ADOQuery2.sql.clear;
            ADOQuery2.SQL.Add(''
            +'select * from pedidos_cliente where '
            +'(cpf_cliente = "'+Form14.ADOQuery1cpf.Text+'" '
            +'and codigo_produto = "'+RxDBGrid1.DataSource.DataSet.FieldByName(RxDBGrid1.Columns[0].FieldName).asString+'")');
            ADOQuery2.open;

               {
               Se encontrar mais de 1 registro, È porque existe O MESMO com os dois STATUS acima.
               }
               if ADOQuery2.RecordCount > 1 then
               begin //LINHA 443
               {
               Localiza o registro "EM PEDIDO"
               }
               ADOQuery2.close;
               ADOQuery2.SQL.clear;
               ADOQuery2.SQL.Add(''
               +'select * from pedidos_cliente where '
               +'(cpf_cliente = "'+Form14.ADOQuery1cpf.Text+'" '
               +'and codigo_produto = "'+RxDBGrid1.DataSource.DataSet.FieldByName(RxDBGrid1.Columns[0].FieldName).asString+'") '
               +'and situacao = "Em pedido" ');
               ADOQuery2.Open;

               {
               Abaixo edita a quantidade que sobrou do status "EM PEDIDO".
               }
               ADOQuery2.Edit;
               ADOQuery2qtde.Text:=IntToStr(StrToInt(ADOQuery2qtde.Text) - StrToInt(Edit1.Text));
               ADOQuery2.Post;

               {
               Abaixo faz a pesquisa pelo status "ENTREGUE" que sobrou quando achou os dois juntos.
               }
               ADOQuery2.close;
               ADOQuery2.SQL.clear;
               ADOQuery2.SQL.Add(''
               +'select * from pedidos_cliente where '
               +'(cpf_cliente = "'+Form14.ADOQuery1cpf.Text+'" '
               +'and codigo_produto = "'+RxDBGrid1.DataSource.DataSet.FieldByName(RxDBGrid1.Columns[0].FieldName).asString+'") '
               +'and situacao = "Entregue" ');
               ADOQuery2.Open;

                 var_codigo_produto:=ADOQuery2codigo_produto.Text;
                 var_cpf_cliente:=ADOQuery2cpf_cliente.Text;
                 var_data_pedido:=ADOQuery2data_pedido.Text;

                      {
                      Procura na Tabela o registro "ENTREGUE" mas com a data setada no DateTimePicker1.
                      Se n„o encontrar o registro, ele ADICIONA.
                      Se encontrar, ele EDITA o que foi achado pelo locate.
                      }
                      if not ADOQuery2.Locate('data_entrega',DateToStr(DateTimePicker1.Date), []) then
                      begin
                         ADOQuery2.Append;
                         ADOQuery2codigo_produto.Text:=var_codigo_produto;
                         ADOQuery2cpf_cliente.Text:=var_cpf_cliente;
                         ADOQuery2data_pedido.Text:=var_data_pedido;
                         ADOQuery2situacao.Text:='Entregue';
                         ADOQuery2qtde.Text:=Edit1.Text;
                         ADOQuery2data_entrega.Text:=DateToStr(DateTimePicker1.Date);
                         ADOQuery2.Post;
                      end
                      else
                      begin
                         ADOQuery2.Edit;
                         ADOQuery2qtde.Text:=IntToStr(StrToInt(ADOQuery2qtde.Text)+StrToInt(Edit1.Text));
                         ADOQuery2data_entrega.Text:=DateToStr(DateTimePicker1.Date);
                         ADOQuery2.Post;
                      end;

                      ADOQuery2.Active:=False;

                 var_codigo_produto:='';
                 var_cpf_cliente:='';
                 var_data_pedido:='';

               end //LINHA 443
               else
               begin //LINHA 482
               {
               Localiza o registro "EM PEDIDO"
               }
               ADOQuery2.close;
               ADOQuery2.SQL.clear;
               ADOQuery2.SQL.Add(''
               +'select * from pedidos_cliente where '
               +'(cpf_cliente = "'+Form14.ADOQuery1cpf.Text+'" '
               +'and codigo_produto = "'+RxDBGrid1.DataSource.DataSet.FieldByName(RxDBGrid1.Columns[0].FieldName).asString+'") '
               +'and situacao = "Em pedido" ');
               ADOQuery2.Open;

                 {
                 Abaixo pega os valores localizados para criar um novo registro "ENTREGUE" e joga em vari·veis.
                 }
                 var_codigo_produto:=ADOQuery2codigo_produto.Text;
                 var_cpf_cliente:=ADOQuery2cpf_cliente.Text;
                 var_data_pedido:=ADOQuery2data_pedido.Text;

               {
               Abaixo edita a quantidade que sobrou do status "EM PEDIDO".
               }
               ADOQuery2.Edit;
               ADOQuery2qtde.Text:=IntToStr(StrToInt(ADOQuery2qtde.Text) - StrToInt(Edit1.Text));
               ADOQuery2.Post;

               {
               Abaixo cria um novo registro "ENTREGUE" com a quantidade digitada.
               PS: A quantidade digitada N√O foi a total.
               }
               ADOQuery2.close;
               ADOQuery2.SQL.clear;
               ADOQuery2.SQL.Add(''
               +'select * from pedidos_cliente where '
               +'(cpf_cliente = "'+Form14.ADOQuery1cpf.Text+'" '
               +'and codigo_produto = "'+RxDBGrid1.DataSource.DataSet.FieldByName(RxDBGrid1.Columns[0].FieldName).asString+'") '
               +'and situacao = "Entregue" ');
               ADOQuery2.Open;
                 //AQUI
                 if ADOQuery2.RecordCount = 0 then
                 begin
                 ADOQuery2.Append;
                 ADOQuery2codigo_produto.Text:=var_codigo_produto;
                 ADOQuery2cpf_cliente.Text:=var_cpf_cliente;
                 ADOQuery2data_pedido.Text:=var_data_pedido;
                 ADOQuery2situacao.Text:='Entregue';
                 ADOQuery2qtde.Text:=Edit1.Text;
                 ADOQuery2data_entrega.Text:=DateToStr(DateTimePicker1.Date);
                 ADOQuery2.Post;
                 ADOQuery2.Active:=False;
                 end;
               end; //LINHA 482
         ADOQuery2.Active:=False;
         end; //LINHA 408

      MessageDlg(#13+'Confirmada a ENTREGA de '+Edit1.Text+' '+nome_produto+' na data de '+DateToStr(DateTimePicker1.Date)+'!'+#13,mtinformation, [mbok],0);
      //(INICIO) - BLOCO FINAL PARA ATUALIZAR O STATUS "EM PEDIDO"
      ADOQuery1.close;
      ADOQuery1.sql.clear;
      ADOQuery1.SQL.Add(''
      +'select produtos.codigo, produtos.valor, produtos.linha, produtos.nome, pedidos_cliente.qtde, pedidos_cliente.data_pedido, (pedidos_cliente.qtde*produtos.valor) as total from produtos '
      +'INNER JOIN pedidos_cliente ON '
      +'produtos.codigo = pedidos_cliente.codigo_produto '
      +'where (pedidos_cliente.cpf_cliente = "'+Form14.ADOQuery1cpf.Text+'" '
      +'and pedidos_cliente.situacao = "'+combo_status.Text+'") group by produtos.codigo, produtos.valor, produtos.linha, produtos.nome, pedidos_cliente.qtde, pedidos_cliente.data_pedido');
      RxDBGrid1.Columns.Items[3].Title.Caption:='Pedido';
      RxDBGrid1.Columns.Items[3].FieldName:='data_pedido';
      ADOQuery1.open;
      if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
      Label4.Caption:=IntToStr(ADOQuery1.RecordCount)+' Registros'
      else
      Label4.Caption:=IntToStr(ADOQuery1.RecordCount)+' Registro';
      if ADOQuery1.RecordCount = 0 then   //Caso n„o apareÁa nenhum registro
      begin
      ADOQuery1.Active:=False;
      RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
      Label4.Caption:='Nenhum Registro';
      MessageDlg(#13+'N„o existem registros de PEDIDOS para a Cliente '+DBText1.Text+'!'+#13,mtinformation, [mbok],0);
      end
      else
      RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
      //(FIM) - BLOCO FINAL PARA ATUALIZAR O STATUS "EM PEDIDO"

      end; //LINHA 334
  end; //LINHA 396 - if Length > 0
  end; //LINHA 394 - IsNumeric
  end; //LINHA 325


end;

procedure TForm18.RxDBGrid1DblClick(Sender: TObject);
begin
  if RxDBGrid1.Enabled = True then
  begin
  ADOQuery3.Active:=True;
  ADOQuery3.Locate('codigo',RxDBGrid1.DataSource.DataSet.FieldByName(RxDBGrid1.Columns[0].FieldName).asString, []);
  MessageDlg(#13+'CÛdigo: '
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

procedure TForm18.edit_anoKeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞<>!@#$%®&*()_-+={}[]?;:,.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
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
edit_ano.SetFocus;
end;

end;

procedure TForm18.Speed_cancelarClick(Sender: TObject);
var
nome,codigo,qtde:String;
begin
nome:=RxDBGrid1.DataSource.DataSet.FieldByName(RxDBGrid1.Columns[1].FieldName).asString;
codigo:=RxDBGrid1.DataSource.DataSet.FieldByName(RxDBGrid1.Columns[0].FieldName).asString;
qtde:=RxDBGrid1.DataSource.DataSet.FieldByName(RxDBGrid1.Columns[2].FieldName).asString;

  if MessageDlg(#13+'Deseja realmente cancelar o pedido abaixo?'+#13+#13+'Produto: '+nome+#13+'Quantidade: '+qtde,mtConfirmation, [mbyes, mbno],0) = mrYes then
  begin
  ADOQuery_cancela.close;
  ADOQuery_cancela.sql.clear;
      ADOQuery_cancela.SQL.Add(''
      +'select * from pedidos_cliente '
      +'where (codigo_produto = "'+codigo+'") and (cpf_cliente = "'+Form14.ADOQuery1cpf.text+'") and (situacao = "Em pedido")');
  ADOQuery_cancela.open;

  ADOQuery_cancela.Delete;
  
  MessageDlg(#13+'Produto '+nome+' excluÌdo da listagem de pedidos!', mtinformation, [mbOk], 0);
  Timer1.Enabled:=True;
  end;
  
end;

end.
