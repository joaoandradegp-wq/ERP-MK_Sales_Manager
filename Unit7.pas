unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Grids, DBGrids, Mask, DBCtrls, Buttons, ExtCtrls,ComObj,
  ADODB, RXDBCtrl, ImgList, AppEvnts;

type
  TForm7 = class(TForm)
    fechar: TSpeedButton;
    Bevel3: TBevel;
    SpeedButton1: TSpeedButton;
    Label16: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label7: TLabel;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    dbcontato: TDBMemo;
    Label9: TLabel;
    dbemail: TDBEdit;
    Bevel4: TBevel;
    Bevel5: TBevel;
    GroupBox1: TGroupBox;
    bt1: TSpeedButton;
    bt3: TSpeedButton;
    bt4: TSpeedButton;
    bt2: TSpeedButton;
    Bevel6: TBevel;
    RxDBGrid1: TRxDBGrid;
    CheckBox1: TCheckBox;
    Timer1: TTimer;
    dbativa: TDBEdit;
    ImageList1: TImageList;
    Label4: TLabel;
    Label5: TLabel;
    dbpontos: TDBEdit;
    bt_pontos: TSpeedButton;
    Edit3: TEdit;
    ADOQuery1nome: TWideStringField;
    ADOQuery1endereco: TMemoField;
    ADOQuery1cidade: TWideStringField;
    ADOQuery1estado: TWideStringField;
    ADOQuery1aniversario: TWideStringField;
    ADOQuery1telefones: TMemoField;
    ADOQuery1cep: TWideStringField;
    ADOQuery1email: TWideStringField;
    ADOQuery1cpf: TWideStringField;
    ADOQuery1nivel: TWideStringField;
    ADOQuery1pontosmk: TIntegerField;
    ADOQuery1ativa: TWideStringField;
    bt_negativo: TSpeedButton;
    ADOQuery1data_desligamento: TWideStringField;
    dbnivel: TComboBox;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fecharClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure RxDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bt4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure bt3Click(Sender: TObject);
    procedure bt_pontosClick(Sender: TObject);
    procedure dbnivelEnter(Sender: TObject);
    procedure dbnivelExit(Sender: TObject);
    procedure dbnivelChange(Sender: TObject);
    procedure bt_negativoClick(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
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
  Form7: TForm7;
  nivel_global:String;

implementation

uses Unit1, Unit12, Unit20_cadcliente, Unit13;

{$R *.DFM}

//Função para verificar se o valor é numérico ou não.
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

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ADOQuery1.Active=True then
ADOQuery1.Active:=False;

//Abaixo para Liberar o Form da Memória
Form7.Release;
Form7 := Nil;
end;

procedure TForm7.fecharClick(Sender: TObject);
begin
close;
end;

procedure TForm7.FormDestroy(Sender: TObject);
begin
frmprincipal.Enabled:=True;
end;

procedure TForm7.SpeedButton1Click(Sender: TObject);
begin
if trim(Edit1.Text) = '' then   //Se o Edit1 for igual à VAZIO
begin
ADOQuery1.Active:=False;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhuma Filha';

   //Desabilitando os botões da tela
   bt1.Enabled:=False;
   bt2.Enabled:=False;

MessageDlg(#13+'Digite o nome de uma Filha cadastrada!', mtwarning, [mbOk], 0);
Edit1.Text:='';
Edit1.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      if CheckBox1.Checked = False then
      ADOQuery1.sql.Add('Select * from filhas where nome like "%'+trim(Edit1.Text)+'%" and ativa = "s" order by nome')
      else
      ADOQuery1.sql.Add('Select * from filhas where (nome like "%'+trim(Edit1.Text)+'%" and ativa = "s") or (nome like "%'+trim(Edit1.Text)+'%" and ativa = "n") order by nome');

      ADOQuery1.open;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Filhas'
   else
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Filha';

   //Habilitando os botões da tela
   bt1.Enabled:=True;
   bt2.Enabled:=True;

   if ADOQuery1.RecordCount = 0 then   //Caso não apareça nenhum registro
   begin
   ADOQuery1.Active:=false;

   //Desabilitando os botões da tela
   bt1.Enabled:=False;
   bt2.Enabled:=False;

   RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   Label3.Caption:='Nenhuma Filha';
   MessageDlg(#13+'Filha não encontrada no Sistema!', mtwarning, [mbOk], 0);
   Edit1.Text:='';
   Edit1.SetFocus;
   end
   else
   RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];

   end;
   
end;

procedure TForm7.SpeedButton2Click(Sender: TObject);
begin
if trim(Edit2.Text) = '' then   //Se o Edit2 for igual à VAZIO
begin
ADOQuery1.Active:=false;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhuma Filha';

   //Desabilitando os botões da tela
   bt1.Enabled:=False;
   bt2.Enabled:=False;

MessageDlg(#13+'Digite o nome de uma Filha cadastrada!', mtwarning, [mbOk], 0);
Edit2.Text:='';
Edit2.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      if CheckBox1.Checked = False then
      ADOQuery1.sql.Add('Select * from filhas where cpf = "'+trim(Edit2.Text)+'" and ativa = "s" order by nome')
      else
      ADOQuery1.sql.Add('Select * from filhas where (cpf = "'+trim(Edit2.Text)+'" and ativa = "s") or (cpf = "'+trim(Edit2.Text)+'" and ativa = "n") order by nome');

      ADOQuery1.open;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Filhas'
   else
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Filha';

   //Habilitando os botões da tela
   bt1.Enabled:=True;
   bt2.Enabled:=True;

   if ADOQuery1.RecordCount = 0 then   //Caso não apareça nenhum registro
   begin
   ADOQuery1.Active:=false;

   //Desabilitando os botões da tela
   bt1.Enabled:=False;
   bt2.Enabled:=False;

   RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   Label3.Caption:='Nenhuma Filha';
   MessageDlg(#13+'Filha não encontrada no Sistema!', mtwarning, [mbOk], 0);
   Edit2.Text:='';
   Edit2.SetFocus;
   end
   else
   RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];

   end;
   
end;

procedure TForm7.Edit1KeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°0123456789<>!@#$%¨&*()_-+={}[]?;:,.|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
Var
Str : String;
begin

inherited;
Str := key;
if (Pos(Str,especiais)<>0) or (Str = '''') Then
begin
key:= #0;
end
else if key = #0 then
begin
Edit1.SetFocus;
end;

if key = #13 then
begin

if trim(Edit1.Text) = '' then   //Se o Edit1 for igual à VAZIO
begin
ADOQuery1.Active:=false;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhuma Filha';

   //Desabilitando os botões da tela
   bt1.Enabled:=False;
   bt2.Enabled:=False;

MessageDlg(#13+'Digite o nome de uma Filha cadastrada!', mtwarning, [mbOk], 0);
Edit1.Text:='';
Edit1.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      if CheckBox1.Checked = False then
      ADOQuery1.sql.Add('Select * from filhas where nome like "%'+trim(Edit1.Text)+'%" and ativa = "s" order by nome')
      else
      ADOQuery1.sql.Add('Select * from filhas where (nome like "%'+trim(Edit1.Text)+'%" and ativa = "s") or (nome like "%'+trim(Edit1.Text)+'%" and ativa = "n") order by nome');

      ADOQuery1.open;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Filhas'
   else
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Filha';

   //Habilitando os botões da tela
   bt1.Enabled:=True;
   bt2.Enabled:=True;

   if ADOQuery1.RecordCount = 0 then   //Caso não apareça nenhum registro
   begin
   ADOQuery1.Active:=false;

   //Desabilitando os botões da tela
   bt1.Enabled:=False;
   bt2.Enabled:=False;

   RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   Label3.Caption:='Nenhuma Filha';
   MessageDlg(#13+'Filha não encontrada no Sistema!', mtwarning, [mbOk], 0);
   Edit1.Text:='';
   Edit1.SetFocus;
   end
   else
   RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];

   end;
   
end;

end;

procedure TForm7.Edit2KeyPress(Sender: TObject; var Key: Char);
Const
especiais = '¹²³£¢¬ªº°<>!@#$%¨&*()_-+={}[]?;:,.|\/*"çÇ~^´`¨âÂàÀãÃéÉêÊèÈíÍîÎìÌæÆôòûùø£ØƒáÁóúñÑªº¿®½¼ÓßÔÒõÕµşÚÛÙıİ';//caracteres especiais que sql não aceita
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

if trim(Edit2.Text) = '' then   //Se o Edit1 for igual à VAZIO
begin
ADOQuery1.Active:=false;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhuma Filha';

   //Desabilitando os botões da tela
   bt1.Enabled:=False;
   bt2.Enabled:=False;

MessageDlg(#13+'Digite o nome de uma Filha cadastrada!', mtwarning, [mbOk], 0);
Edit2.Text:='';
Edit2.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      if CheckBox1.Checked = False then
      ADOQuery1.sql.Add('Select * from filhas where cpf = "'+trim(Edit2.Text)+'" and ativa = "s" order by nome')
      else
      ADOQuery1.sql.Add('Select * from filhas where (cpf = "'+trim(Edit2.Text)+'" and ativa = "s") or (cpf = "'+trim(Edit2.Text)+'" and ativa = "n") order by nome');

      ADOQuery1.open;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Filhas'
   else
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Filha';

   //Habilitando os botões da tela
   bt1.Enabled:=True;
   bt2.Enabled:=True;

   if ADOQuery1.RecordCount = 0 then   //Caso não apareça nenhum registro
   begin
   ADOQuery1.Active:=false;

   //Desabilitando os botões da tela
   bt1.Enabled:=False;
   bt2.Enabled:=False;

   RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   Label3.Caption:='Nenhuma Filha';
   MessageDlg(#13+'Filha não encontrada no Sistema!', mtwarning, [mbOk], 0);
   Edit2.Text:='';
   Edit2.SetFocus;
   end
   else
   RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];

   end;
   
end;

end;

procedure TForm7.Edit1Enter(Sender: TObject);
begin
ADOQuery1.Active:=False;
Edit2.Clear;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhuma Filha';

   //Desabilitando os botões da tela
   bt1.Enabled:=False;
   bt2.Enabled:=False;
   bt3.Enabled:=False;
   bt4.Enabled:=False;
end;

procedure TForm7.Edit2Enter(Sender: TObject);
begin
ADOQuery1.Active:=false;
Edit1.Clear;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhuma Filha';

   //Desabilitando os botões da tela
   bt1.Enabled:=False;
   bt2.Enabled:=False;
   bt3.Enabled:=False;
   bt4.Enabled:=False;
end;

procedure TForm7.FormActivate(Sender: TObject);
begin
Edit1.SetFocus;
Timer1.Enabled:=True;
end;

procedure TForm7.bt1Click(Sender: TObject);
begin
MessageDlg(#13+'Nome: '+ADOQuery1nome.Text+#13
               +'CPF: '+ADOQuery1cpf.Text+#13+#13
               +'Endereço: '+ADOQuery1endereco.AsString+#13
               +'CEP: '+ADOQuery1cep.Text+#13
               +'Cidade: '+ADOQuery1cidade.Text+'/'+ADOQuery1estado.Text+#13+#13
               +'Aniversário: '+ADOQuery1aniversario.Text+#13,mtinformation, [mbok],0);
end;

procedure TForm7.RxDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

 if (gdSelected in State) then // Se a célula está selecionada
 begin
 RxDBGrid1.Canvas.Font.Color:= clWhite;
 //Função para cores personalizadas
 RxDBGrid1.Canvas.Brush.Color:=TColor(HexToTColor('FF66FF'));
   if ADOQuery1.FieldByName('ativa').Text = 'n' then
   RxDBGrid1.Canvas.Font.Style := [fsBold];
 end
  else if odd(ADOQuery1.RecNo) then // Cor SIM - Cor NÃO
  begin
  RxDBGrid1.Canvas.Font.Color:= clBlack;
  //Função para cores personalizadas
  RxDBGrid1.Canvas.Brush.Color:=TColor(HexToTColor('FFCCFF'));

     //Abaixo caso mostre na tabela as filhas Mary Kay, precisa destacar
     if ADOQuery1.FieldByName('ativa').Text = 'n' then
     begin
     RxDBGrid1.Canvas.Font.Color:=clWhite;
     //Função para cores personalizadas
     RxDBGrid1.Canvas.Brush.Color:=TColor(HexToTColor('FFB2AD'));
     RxDBGrid1.Canvas.Font.Style := [fsBold];
      //DBGrid1.Canvas.FillRect(Rect);
      //DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;

  end
   else
   begin
   RxDBGrid1.Canvas.Font.Color:= clBlack;
   RxDBGrid1.Canvas.Brush.Color:= clWhite;

     //Abaixo caso mostre na tabela as filhas Mary Kay, precisa destacar
     if ADOQuery1.FieldByName('ativa').Text = 'n' then
     begin
     RxDBGrid1.Canvas.Font.Color:=clWhite;
     //Função para cores personalizadas
     RxDBGrid1.Canvas.Brush.Color:=TColor(HexToTColor('FFB2AD'));
     RxDBGrid1.Canvas.Font.Style := [fsBold];
      //DBGrid1.Canvas.FillRect(Rect);
      //DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;

   end;
   RxDBGrid1.Canvas.FillRect(Rect);
    //DBGrid1.Canvas.TextOut(Rect.Left+2,Rect.Top,Column.Field.AsString);
   RxDBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

//Função para usar cores personalizadas em Hexadecial
function TForm7.HexToTColor(sColor : string) : TColor;
begin
Result :=
RGB(
StrToInt('$'+Copy(sColor, 1, 2)),
StrToInt('$'+Copy(sColor, 3, 2)),
StrToInt('$'+Copy(sColor, 5, 2))
) ;
end;

procedure TForm7.bt4Click(Sender: TObject);
begin
Application.CreateForm(TForm20, Form20);{Carrega form na memória}
Form20.ShowModal;{Mostra form em modo exclusivo}
Form20.Free; {Libera Memória}
Form7.Enabled:=False;
end;

procedure TForm7.Timer1Timer(Sender: TObject);
begin
  if (dbativa.Text = 's') then
  begin
  bt3.Caption:='Desativar';
  bt3.Enabled:=True;
  ImageList1.GetBitmap( 0, Bt3.Glyph);
  bt4.Enabled:=True;
  bt_pontos.Enabled:=True;
  bt_negativo.Enabled:=True;
  end
   else if (dbativa.Text = 'n') then
   begin
   bt3.Caption:='Ativar';
   bt3.Enabled:=True;
   ImageList1.GetBitmap( 1, Bt3.Glyph);
   bt4.Enabled:=False;
   bt_pontos.Enabled:=False;
   bt_negativo.Enabled:=False;
   end;
end;

procedure TForm7.bt3Click(Sender: TObject);
begin

 if (bt3.Caption = 'Ativar') then
 begin
    if MessageDlg(#13+'Deseja realmente ATIVAR a sua filha '+ADOQuery1nome.Text+' da sua relação?',mtConfirmation, [mbyes, mbno],0) = mrYes then
    begin
    ADOQuery1.Edit;
    ADOQuery1ativa.Text:='s';
    ADOQuery1data_desligamento.Text:='';
    ADOQuery1.Post;
    ADOQuery1.Refresh;
    MessageDlg(#13+'Sua filha '+ADOQuery1nome.Text+
                   ' agora está ATIVADA em sua relação!'+#13,mtinformation, [mbok],0);
    end;
 end
 else if (bt3.Caption = 'Desativar') then
 begin
    if MessageDlg(#13+'Deseja realmente DESATIVAR a sua filha '+ADOQuery1nome.Text+' da sua relação?',mtConfirmation, [mbyes, mbno],0) = mrYes then
    begin
    ADOQuery1.Edit;
    ADOQuery1ativa.Text:='n';
    ADOQuery1data_desligamento.Text:=DateToStr(Date);
    ADOQuery1.Post;
    ADOQuery1.Refresh;
    MessageDlg(#13+'Sua filha '+ADOQuery1nome.Text+
                   ' agora está DESATIVADA em sua relação!'+#13,mtinformation, [mbok],0);
    end;
 end;

end;

procedure TForm7.bt_pontosClick(Sender: TObject);
begin
Edit3.Clear;
Edit3.Text:=Trim(Inputbox('Pontuação','Quantos pontos deseja adicionar?',''));

 if not IsNumeric(Edit3.Text) then
 MessageDlg(#13+'O valor digitado não é numérico!', mtwarning, [mbOk], 0)
 else
 begin
   if Length(Edit3.Text) > 0 then
   begin
   ADOQuery1.Edit;
   dbpontos.text:=FloatToStr(StrToFloat(dbpontos.text)+StrToFloat(Edit3.Text));
   ADOQuery1.Post;
   end;
 end;
 
end;

procedure TForm7.dbnivelEnter(Sender: TObject);
begin
  if (bt3.Caption = 'Ativar') then
  dbnivel.Enabled:=False
  else
  dbnivel.Enabled:=True;
end;

procedure TForm7.dbnivelExit(Sender: TObject);
begin
dbnivel.Enabled:=True;
end;

procedure TForm7.dbnivelChange(Sender: TObject);
begin

  if MessageDlg(#13+'Deseja realmente alterar o nível de '+ADOQuery1nome.Text+' para '+dbnivel.Text+'?',mtConfirmation, [mbyes, mbno],0) = mrYes then
  begin
  ADOQuery1.Edit;
  ADOQuery1nivel.Text:=dbnivel.Text;
  ADOQuery1.Post;
  ADOQuery1.Refresh;
  end
  else
  dbnivel.Items.Add(nivel_global);

RXDBGrid1.SetFocus;

end;

procedure TForm7.bt_negativoClick(Sender: TObject);
begin
Edit3.Clear;
Edit3.Text:=Trim(Inputbox('Pontuação','Quantos pontos deseja retirar?',''));

 if not IsNumeric(Edit3.Text) Then
 MessageDlg(#13+'O valor digitado não é numérico!', mtwarning, [mbOk], 0)
 else
 begin
   if Length(Edit3.Text) > 0 then
   begin
     if (StrToInt(Edit3.Text) > StrToInt(dbpontos.Text)) then
     MessageDlg(#13+'O total disponível para '+ADOQuery1nome.Text+' é de '+dbpontos.Text+' pontos!'+#13,mtWarning, [mbok],0)
     else
     begin
     ADOQuery1.Edit;
     dbpontos.text:=FloatToStr(StrToFloat(dbpontos.text)-StrToFloat(Edit3.Text));
     ADOQuery1.Post;
     end;
   end;
 end;

end;

procedure TForm7.bt2Click(Sender: TObject);
begin
Application.CreateForm(TForm13, Form13);{Carrega form na memória}
Form13.ShowModal;{Mostra form em modo exclusivo}
Form13.Free; {Libera Memória}
Form7.Enabled:=False;
end;

procedure TForm7.DBEdit1Change(Sender: TObject);
begin
dbnivel.Text:=DBEdit1.Text;
nivel_global:=DBEdit1.Text;
end;

end.

