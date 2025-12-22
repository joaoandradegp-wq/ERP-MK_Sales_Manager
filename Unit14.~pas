unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, Mask, Grids, DBGrids, Buttons,
  ExtCtrls, RXDBCtrl, ToolEdit, DBIndex, RXCtrls;

type
  TForm14 = class(TForm)
    fechar: TSpeedButton;
    Bevel3: TBevel;
    SpeedButton1: TSpeedButton;
    Label16: TLabel;
    Bevel1: TBevel;
    Bevel7: TBevel;
    Bevel2: TBevel;
    Label7: TLabel;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Label3: TLabel;
    Label2: TLabel;
    dbcontato: TDBMemo;
    ADOQuery1nome: TWideStringField;
    ADOQuery1endereco: TMemoField;
    ADOQuery1cidade: TWideStringField;
    ADOQuery1estado: TWideStringField;
    ADOQuery1aniversario: TWideStringField;
    ADOQuery1telefones: TMemoField;
    ADOQuery1cep: TWideStringField;
    ADOQuery1email: TWideStringField;
    ADOQuery1pele_tipo: TWideStringField;
    ADOQuery1pele_tom: TWideStringField;
    ADOQuery1contactado: TWideStringField;
    ADOQuery1horario_contato: TWideStringField;
    ADOQuery1cpf: TWideStringField;
    Label4: TLabel;
    dbemail: TDBMemo;
    dbtipo_contato: TDBText;
    dbhorario_contato: TDBText;
    GroupBox1: TGroupBox;
    bt1: TSpeedButton;
    bt2: TSpeedButton;
    bt4: TSpeedButton;
    bt3: TSpeedButton;
    Timer1: TTimer;
    ADOQuery2: TADOQuery;
    ADOQuery2nome: TWideStringField;
    ADOQuery2endereco: TMemoField;
    ADOQuery2cidade: TWideStringField;
    ADOQuery2estado: TWideStringField;
    ADOQuery2aniversario: TWideStringField;
    ADOQuery2telefones: TMemoField;
    ADOQuery2cep: TWideStringField;
    ADOQuery2email: TWideStringField;
    ADOQuery2cpf: TWideStringField;
    ADOQuery1filhamk: TWideStringField;
    CheckBox1: TCheckBox;
    Timer2: TTimer;
    db_filhamk: TDBText;
    bt5: TSpeedButton;
    Bevel4: TBevel;
    RxDBGrid1: TRxDBGrid;
    Bevel5: TBevel;
    Label5: TEdit;
    procedure fecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure bt3Click(Sender: TObject);
    procedure bt4Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure RxDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bt5Click(Sender: TObject);
    procedure Label5Change(Sender: TObject);
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
  Form14: TForm14;

implementation

uses Unit1, Unit20_cadcliente, Unit18; //O Unit20 È para abrir no Modo de EdiÁ„o

{$R *.dfm}

procedure TForm14.fecharClick(Sender: TObject);
begin
Close;
end;

procedure TForm14.FormActivate(Sender: TObject);
begin
Edit1.SetFocus;
Timer1.Enabled:=True;
Timer2.Enabled:=True;
end;

procedure TForm14.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ADOQuery1.Active=True then
ADOQuery1.Active:=False;

//Abaixo para Liberar o Form da MemÛria
Form14.Release;
Form14 := Nil;
end;

procedure TForm14.FormDestroy(Sender: TObject);
begin
frmprincipal.Enabled:=True;
end;

procedure TForm14.SpeedButton1Click(Sender: TObject);
begin
if trim(Edit1.Text) = '' then   //Se o Edit1 for igual ‡ VAZIO
begin
ADOQuery1.Active:=False;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhuma Cliente';
Label5.Visible:=False;

   //Desabilitando os botıes da tela
   bt1.Enabled:=False;
   bt2.Enabled:=False;
   bt5.Enabled:=False;

MessageDlg(#13+'Digite o nome de uma Cliente cadastrada!', mtwarning, [mbOk], 0);
Edit1.Text:='';
Edit1.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      if CheckBox1.Checked = False then
      ADOQuery1.sql.Add('Select * from clientes where nome like "%'+trim(Edit1.Text)+'%" and filhamk = "n" order by nome')
      else
      ADOQuery1.sql.Add('Select * from clientes where (nome like "%'+trim(Edit1.Text)+'%" and filhamk = "n") or (nome like "%'+trim(Edit1.Text)+'%" and filhamk = "s") order by nome');

      ADOQuery1.open;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Clientes'
   else
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Cliente';

   //Habilitando os botıes da tela
   bt1.Enabled:=True;
   bt2.Enabled:=True;
   bt5.Enabled:=True;

   //Escreve no Label5 por extenso o Tipo de contato e o hor·rio
   Label5.Visible:=True;

   if ADOQuery1.RecordCount = 0 then   //Caso n„o apareÁa nenhum registro
   begin
   Label5.Visible:=False;
   ADOQuery1.Active:=false;

   //Desabilitando os botıes da tela
   bt1.Enabled:=False;
   bt2.Enabled:=False;
   bt5.Enabled:=False;

   RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   Label3.Caption:='Nenhuma Cliente';
   MessageDlg(#13+'Cliente n„o encontrada no Sistema!', mtwarning, [mbOk], 0);
   Edit1.Text:='';
   Edit1.SetFocus;
   end
   else
   RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];

   end;
   
end;

procedure TForm14.SpeedButton2Click(Sender: TObject);
begin
if trim(Edit2.Text) = '' then   //Se o Edit2 for igual ‡ VAZIO
begin
ADOQuery1.Active:=false;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhuma Cliente';
Label5.Visible:=False;

   //Desabilitando os botıes da tela
   bt1.Enabled:=False;
   bt2.Enabled:=False;
   bt5.Enabled:=False;

MessageDlg(#13+'Digite o nome de uma Cliente cadastrada!', mtwarning, [mbOk], 0);
Edit2.Text:='';
Edit2.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      if CheckBox1.Checked = False then
      ADOQuery1.sql.Add('Select * from clientes where cpf = "'+trim(Edit2.Text)+'" and filhamk = "n" order by nome')
      else
      ADOQuery1.sql.Add('Select * from clientes where (cpf = "'+trim(Edit2.Text)+'" and filhamk = "n") or (cpf = "'+trim(Edit2.Text)+'" and filhamk = "s") order by nome');

      ADOQuery1.open;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Clientes'
   else
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Cliente';

   //Habilitando os botıes da tela
   bt1.Enabled:=True;
   bt2.Enabled:=True;
   bt5.Enabled:=True;

   //Escreve no Label5 por extenso o Tipo de contato e o hor·rio que gostaria de receber
   Label5.Visible:=True;

   if ADOQuery1.RecordCount = 0 then   //Caso n„o apareÁa nenhum registro
   begin
   Label5.Visible:=False;
   ADOQuery1.Active:=false;

   //Desabilitando os botıes da tela
   bt1.Enabled:=False;
   bt2.Enabled:=False;
   bt5.Enabled:=False;

   RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   Label3.Caption:='Nenhuma Cliente';
   MessageDlg(#13+'Cliente n„o encontrada no Sistema!', mtwarning, [mbOk], 0);
   Edit2.Text:='';
   Edit2.SetFocus;
   end
   else
   RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];

   end;
   
end;

procedure TForm14.Edit1KeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞0123456789<>!@#$%®&*()_-+={}[]?;:,.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
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

if trim(Edit1.Text) = '' then   //Se o Edit1 for igual ‡ VAZIO
begin
ADOQuery1.Active:=false;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhuma Cliente';
Label5.Visible:=False;

   //Desabilitando os botıes da tela
   bt1.Enabled:=False;
   bt2.Enabled:=False;
   bt5.Enabled:=False;

MessageDlg(#13+'Digite o nome de uma Cliente cadastrada!', mtwarning, [mbOk], 0);
Edit1.Text:='';
Edit1.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      if CheckBox1.Checked = False then
      ADOQuery1.sql.Add('Select * from clientes where nome like "%'+trim(Edit1.Text)+'%" and filhamk = "n" order by nome')
      else
      ADOQuery1.sql.Add('Select * from clientes where (nome like "%'+trim(Edit1.Text)+'%" and filhamk = "n") or (nome like "%'+trim(Edit1.Text)+'%" and filhamk = "s") order by nome');

      ADOQuery1.open;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Clientes'
   else
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Cliente';

   //Habilitando os botıes da tela
   bt1.Enabled:=True;
   bt2.Enabled:=True;
   bt5.Enabled:=True;

   //Escreve no Label5 por extenso o Tipo de contato e o hor·rio que gostaria de receber
   Label5.Visible:=True;

   if ADOQuery1.RecordCount = 0 then   //Caso n„o apareÁa nenhum registro
   begin
   Label5.Visible:=False;
   ADOQuery1.Active:=false;

   //Desabilitando os botıes da tela
   bt1.Enabled:=False;
   bt2.Enabled:=False;
   bt5.Enabled:=False;

   RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   Label3.Caption:='Nenhuma Cliente';
   MessageDlg(#13+'Cliente n„o encontrada no Sistema!', mtwarning, [mbOk], 0);
   Edit1.Text:='';
   Edit1.SetFocus;
   end
   else
   RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];

   end;
   
end;

end;

procedure TForm14.Edit2KeyPress(Sender: TObject; var Key: Char);
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
Edit2.SetFocus;
end;

if key = #13 then
begin

if trim(Edit2.Text) = '' then   //Se o Edit1 for igual ‡ VAZIO
begin
ADOQuery1.Active:=false;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhuma Cliente';
Label5.Visible:=False;

   //Desabilitando os botıes da tela
   bt1.Enabled:=False;
   bt2.Enabled:=False;
   bt5.Enabled:=False;

MessageDlg(#13+'Digite o nome de uma Cliente cadastrada!', mtwarning, [mbOk], 0);
Edit2.Text:='';
Edit2.SetFocus;
end

   else
   begin
   ADOQuery1.close;
   ADOQuery1.sql.clear;

      if CheckBox1.Checked = False then
      ADOQuery1.sql.Add('Select * from clientes where cpf = "'+trim(Edit2.Text)+'" and filhamk = "n" order by nome')
      else
      ADOQuery1.sql.Add('Select * from clientes where (cpf = "'+trim(Edit2.Text)+'" and filhamk = "n") or (cpf = "'+trim(Edit2.Text)+'" and filhamk = "s") order by nome');

      ADOQuery1.open;

   if ADOQuery1.RecordCount > 1 then  //Pra contar a quantidade de Registros
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Clientes'
   else
   Label3.Caption:=IntToStr(ADOQuery1.RecordCount)+' Cliente';

   //Habilitando os botıes da tela
   bt1.Enabled:=True;
   bt2.Enabled:=True;
   bt5.Enabled:=True;

   //Escreve no Label5 por extenso o Tipo de contato e o hor·rio que gostaria de receber
   Label5.Visible:=True;

   if ADOQuery1.RecordCount = 0 then   //Caso n„o apareÁa nenhum registro
   begin
   Label5.Visible:=False;
   ADOQuery1.Active:=false;

   //Desabilitando os botıes da tela
   bt1.Enabled:=False;
   bt2.Enabled:=False;
   bt5.Enabled:=False;

   RxDBGrid1.Options:=[dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   Label3.Caption:='Nenhuma Cliente';
   MessageDlg(#13+'Cliente n„o encontrada no Sistema!', mtwarning, [mbOk], 0);
   Edit2.Text:='';
   Edit2.SetFocus;
   end
   else
   RxDBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];

   end;
   
end;

end;

procedure TForm14.Edit1Enter(Sender: TObject);
begin
ADOQuery1.Active:=False;
Edit2.Clear;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhuma Cliente';
Label5.Visible:=False;

   //Desabilitando os botıes da tela
   bt1.Enabled:=False;
   bt2.Enabled:=False;
   bt3.Enabled:=False;
   bt4.Enabled:=False;
   bt5.Enabled:=False;
end;

procedure TForm14.Edit2Enter(Sender: TObject);
begin
ADOQuery1.Active:=false;
Edit1.Clear;
RxDBGrid1.Options:=[];
Label3.Caption:='Nenhuma Cliente';
Label5.Visible:=False;

   //Desabilitando os botıes da tela
   bt1.Enabled:=False;
   bt2.Enabled:=False;
   bt3.Enabled:=False;
   bt4.Enabled:=False;
   bt5.Enabled:=False;
end;

procedure TForm14.bt1Click(Sender: TObject);
begin
MessageDlg(#13+'Nome: '+ADOQuery1nome.Text+#13
               +'CPF: '+ADOQuery1cpf.Text+#13+#13
               +'EndereÁo: '+ADOQuery1endereco.AsString+#13
               +'CEP: '+ADOQuery1cep.Text+#13
               +'Cidade: '+ADOQuery1cidade.Text+'/'+ADOQuery1estado.Text+#13+#13
               +'Anivers·rio: '+ADOQuery1aniversario.Text+#13,mtinformation, [mbok],0);
end;

procedure TForm14.Timer1Timer(Sender: TObject);
begin
   //Escreve no Label5 por extenso o Tipo de contato e o hor·rio
   Label5.Text:='PreferÍncia via '+dbtipo_contato.Caption+' pelo turno da '+dbhorario_contato.Caption+'.';
end;

procedure TForm14.bt2Click(Sender: TObject);
begin
MessageDlg(#13+'Nome: '+ADOQuery1nome.Text+#13+#13
               +'Tipo: '+ADOQuery1pele_tipo.Text+#13
               +'Tom: '+ADOQuery1pele_tom.Text+#13,mtinformation, [mbok],0);
end;

procedure TForm14.bt3Click(Sender: TObject);
begin
Application.CreateForm(TForm20, Form20);{Carrega form na memÛria}
Form20.ShowModal;{Mostra form em modo exclusivo}
Form20.Free; {Libera MemÛria}
Form14.Enabled:=False;
end;

procedure TForm14.bt4Click(Sender: TObject);
begin
if MessageDlg(#13+'Deseja realmente converter a cliente '+ADOQuery1nome.Text+' para ser sua filha Mary Kay?',mtConfirmation, [mbyes, mbno],0) = mrYes then
  begin
  ADOQuery2.Active:=True;
  ADOQuery2.Append;
  ADOQuery2nome.Text:=ADOQuery1nome.Text;
  ADOQuery2endereco.AsString:=ADOQuery1endereco.AsString;
  ADOQuery2cidade.Text:=ADOQuery1cidade.Text;
  ADOQuery2estado.Text:=ADOQuery1estado.Text;
  ADOQuery2aniversario.Text:=ADOQuery1aniversario.Text;
  ADOQuery2telefones.AsString:=ADOQuery1telefones.AsString;
  ADOQuery2cep.Text:=ADOQuery1cep.Text;
  ADOQuery2email.Text:=ADOQuery1email.Text;
  ADOQuery2cpf.Text:=ADOQuery1cpf.Text;
  ADOQuery2.Post;
  ADOQuery2.Active:=False;
  ADOQuery1.Edit;
  ADOQuery1filhamk.Text:='s';
  ADOQuery1.Post;
  ADOQuery1.Refresh;
  MessageDlg(#13+'Cliente '+ADOQuery1nome.Text+
                 ' agora È sua filha Mary Kay!'+#13+
                 'PARAB…NS PELA CONQUISTA, CONTINUE ASSIM!'+#13,mtinformation, [mbok],0);
  end;
end;

procedure TForm14.Timer2Timer(Sender: TObject);
begin
  if (db_filhamk.Caption = 's') or (RxDBGrid1.FieldCount = 0) then
  begin
  bt3.Enabled:=False;
  bt4.Enabled:=False;
  end
   else
   begin
   bt3.Enabled:=True;
   bt4.Enabled:=True;
   end;
end;

procedure TForm14.RxDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

 if (gdSelected in State) then // Se a cÈlula est· selecionada
 begin
 RxDBGrid1.Canvas.Font.Color:= clWhite;
 //FunÁ„o para cores personalizadas
 RxDBGrid1.Canvas.Brush.Color:=TColor(HexToTColor('FF66FF'));
   if ADOQuery1.FieldByName('filhamk').Text = 's' then
   RxDBGrid1.Canvas.Font.Style := [fsBold];
 end
  else if odd(ADOQuery1.RecNo) then // Cor SIM - Cor N√O
  begin
  RxDBGrid1.Canvas.Font.Color:= clBlack;
  //FunÁ„o para cores personalizadas
  RxDBGrid1.Canvas.Brush.Color:=TColor(HexToTColor('FFCCFF'));

     //Abaixo caso mostre na tabela as filhas Mary Kay, precisa destacar
     if ADOQuery1.FieldByName('filhamk').Text = 's' then
     begin
     RxDBGrid1.Canvas.Font.Color:=clWhite;
     //FunÁ„o para cores personalizadas
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
     if ADOQuery1.FieldByName('filhamk').Text = 's' then
     begin
     RxDBGrid1.Canvas.Font.Color:=clWhite;
     //FunÁ„o para cores personalizadas
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

//FunÁ„o para usar cores personalizadas em Hexadecial
function TForm14.HexToTColor(sColor : string) : TColor;
begin
Result :=
RGB(
StrToInt('$'+Copy(sColor, 1, 2)),
StrToInt('$'+Copy(sColor, 3, 2)),
StrToInt('$'+Copy(sColor, 5, 2))
) ;
end;

procedure TForm14.bt5Click(Sender: TObject);
begin
Application.CreateForm(TForm18, Form18);{Carrega form na memÛria}
Form18.ShowModal;{Mostra form em modo exclusivo}
Form18.Free; {Libera MemÛria}
Form14.Enabled:=False;
end;

procedure TForm14.Label5Change(Sender: TObject);
begin
//Para fazer o fundo do Label5 ficar igual o fundo do Form, mesmo usando SKIN.
Label5.Color:=Form14.Color;
end;

end.
