unit Unit20_cadcliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ADODB, Mask, Buttons, ExtCtrls;

type
  TForm20 = class(TForm)
    Label19: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label17: TLabel;
    Label14: TLabel;
    Label8: TLabel;
    fechar: TSpeedButton;
    Label3: TLabel;
    dbnome: TDBEdit;
    dbend: TDBMemo;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    novo: TSpeedButton;
    editar: TSpeedButton;
    excluir: TSpeedButton;
    gravar: TSpeedButton;
    cancelar: TSpeedButton;
    localizar: TSpeedButton;
    Bevel4: TBevel;
    Bevel5: TBevel;
    dbcpf: TDBEdit;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    Label4: TLabel;
    Label5: TLabel;
    dbcontato: TDBMemo;
    Label6: TLabel;
    dbestado: TDBComboBox;
    dbcidade: TDBEdit;
    dbniver_real: TDBEdit;
    niver_dia: TEdit;
    niver_mes: TComboBox;
    Label7: TLabel;
    dbcep: TDBEdit;
    Label9: TLabel;
    dbemail: TDBEdit;
    Label10: TLabel;
    dbtipodepele: TDBComboBox;
    dbmeiodecontato: TDBComboBox;
    dbhorariocontato: TDBComboBox;
    Label12: TLabel;
    dbtomdepele: TDBComboBox;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label13: TLabel;
    GroupBox3: TGroupBox;
    Label18: TLabel;
    Label20: TLabel;
    Bevel3: TBevel;
    ADOQuery2: TADOQuery;
    procedure novoClick(Sender: TObject);
    procedure editarClick(Sender: TObject);
    procedure gravarClick(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure excluirClick(Sender: TObject);
    procedure localizarClick(Sender: TObject);
    procedure fecharClick(Sender: TObject);
    procedure dbnomeClick(Sender: TObject);
    procedure dbnomeEnter(Sender: TObject);
    procedure dbnomeExit(Sender: TObject);
    procedure dbnomeKeyPress(Sender: TObject; var Key: Char);
    procedure dbcpfClick(Sender: TObject);
    procedure dbcpfEnter(Sender: TObject);
    procedure dbcpfExit(Sender: TObject);
    procedure dbcpfKeyPress(Sender: TObject; var Key: Char);
    procedure dbendChange(Sender: TObject);
    procedure dbendClick(Sender: TObject);
    procedure dbendEnter(Sender: TObject);
    procedure dbendExit(Sender: TObject);
    procedure dbendKeyPress(Sender: TObject; var Key: Char);
    procedure dbcontatoClick(Sender: TObject);
    procedure dbcontatoEnter(Sender: TObject);
    procedure dbcontatoExit(Sender: TObject);
    procedure dbcontatoKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbcepClick(Sender: TObject);
    procedure dbcepEnter(Sender: TObject);
    procedure dbcepExit(Sender: TObject);
    procedure dbcepKeyPress(Sender: TObject; var Key: Char);
    procedure dbcidadeClick(Sender: TObject);
    procedure dbcidadeEnter(Sender: TObject);
    procedure dbcidadeExit(Sender: TObject);
    procedure dbcidadeKeyPress(Sender: TObject; var Key: Char);
    procedure dbestadoClick(Sender: TObject);
    procedure dbestadoEnter(Sender: TObject);
    procedure dbestadoExit(Sender: TObject);
    procedure niver_diaClick(Sender: TObject);
    procedure niver_diaEnter(Sender: TObject);
    procedure niver_diaExit(Sender: TObject);
    procedure niver_diaKeyPress(Sender: TObject; var Key: Char);
    procedure niver_mesClick(Sender: TObject);
    procedure niver_mesEnter(Sender: TObject);
    procedure niver_mesExit(Sender: TObject);
    procedure dbemailClick(Sender: TObject);
    procedure dbemailEnter(Sender: TObject);
    procedure dbemailExit(Sender: TObject);
    procedure dbemailKeyPress(Sender: TObject; var Key: Char);
    procedure dbtipodepeleClick(Sender: TObject);
    procedure dbtipodepeleEnter(Sender: TObject);
    procedure dbtomdepeleClick(Sender: TObject);
    procedure dbtomdepeleEnter(Sender: TObject);
    procedure dbmeiodecontatoClick(Sender: TObject);
    procedure dbmeiodecontatoEnter(Sender: TObject);
    procedure dbhorariocontatoClick(Sender: TObject);
    procedure dbhorariocontatoEnter(Sender: TObject);
    procedure dbtipodepeleExit(Sender: TObject);
    procedure dbtomdepeleExit(Sender: TObject);
    procedure dbmeiodecontatoExit(Sender: TObject);
    procedure dbhorariocontatoExit(Sender: TObject);
    procedure dbcontatoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    repete_cpf:String;
  end;

var
  Form20: TForm20;

implementation

uses Unit1, Unit12, Unit14, Unit7;

{$R *.dfm}

procedure TForm20.novoClick(Sender: TObject);
begin
ADOQuery1.Active:=True;
ADOQuery1.Append;

//Abaixo s„o os Edit's
dbnome.Enabled:=True;
dbcpf.Enabled:=True;
dbend.Enabled:=True;
dbcep.Enabled:=True;
dbcontato.Enabled:=True;
dbcidade.Enabled:=True;
dbestado.Enabled:=True;
niver_dia.Enabled:=True;
niver_mes.Enabled:=True;
dbemail.Enabled:=True;
dbtipodepele.Enabled:=True;
dbtomdepele.Enabled:=True;
dbmeiodecontato.Enabled:=True;
dbhorariocontato.Enabled:=True;

//Abaixo s„o os Botıes
editar.Enabled:=False;
novo.Enabled:=False;
excluir.Enabled:=False;
cancelar.Enabled:=True;
gravar.Enabled:=True ;
localizar.Enabled:=False;

//Abaixo os campos Combobox
dbestado.ItemIndex:=-1;
niver_mes.ItemIndex:=-1;
dbtipodepele.ItemIndex:=-1;
dbtomdepele.ItemIndex:=-1;
dbmeiodecontato.ItemIndex:=-1;
dbhorariocontato.ItemIndex:=-1;

//Abaixo deixa o campo Nome pronto pra digitar
dbnome.SetFocus;
end;

procedure TForm20.editarClick(Sender: TObject);
begin
ADOQuery1.Edit;

//Abaixo s„o os Edit's
dbnome.Enabled:=True;
dbcpf.Enabled:=True;
dbend.Enabled:=True;
dbcep.Enabled:=True;
dbcontato.Enabled:=True;
dbcidade.Enabled:=True;
dbestado.Enabled:=True;
niver_dia.Enabled:=True;
niver_mes.Enabled:=True;
dbemail.Enabled:=True;
dbtipodepele.Enabled:=True;
dbtomdepele.Enabled:=True;
dbmeiodecontato.Enabled:=True;
dbhorariocontato.Enabled:=True;

//Abaixo s„o os Botıes
editar.Enabled:=False;
novo.Enabled:=False;
excluir.Enabled:=False;
cancelar.Enabled:=True;
gravar.Enabled:=True ;
localizar.Enabled:=False;

end;

procedure TForm20.gravarClick(Sender: TObject);
var
aux_mes: String;
aux_if: Integer;
begin
aux_mes:='';
aux_if:=0;

if trim(dbnome.Text) = '' then
begin
aux:=Label1.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbnome.SetFocus;
aux_if:=1;
end

else if (trim(dbcpf.Text) = '') or (length(trim(dbcpf.Text)) < 11) then
begin
aux:=Label15.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbcpf.SetFocus;
aux_if:=1;
end

else if trim(dbend.Text) = '' then
begin
aux:=Label3.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbend.SetFocus;
aux_if:=1;
end

else if (trim(dbcep.Text) = '') or (length(trim(dbcep.Text)) < 8) then
begin
aux:=Label9.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbcep.SetFocus;
aux_if:=1;
end

else if trim(dbcontato.Text) = '' then
begin
aux:=Label2.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbcontato.SetFocus;
aux_if:=1;
end

else if trim(dbcidade.Text) = '' then
begin
aux:=Label14.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbcidade.SetFocus;
aux_if:=1;
end

else if (dbestado.ItemIndex = -1) or (dbestado.ItemIndex = 3) then
begin
aux:=Label6.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbestado.SetFocus;
aux_if:=1;
end

else if (trim(niver_dia.Text) = '') or (StrtoInt(trim(niver_dia.Text)) > 31) then
begin
MessageDlg(#13+'Preencha corretamente o DIA do Anivers·rio.', mtwarning, [mbOk], 0);
niver_dia.SetFocus;
aux_if:=1;
end

else if niver_mes.ItemIndex = -1 then
begin
MessageDlg(#13+'Preencha corretamente o M S do Anivers·rio.', mtwarning, [mbOk], 0);
niver_mes.SetFocus;
aux_if:=1;
end

else if trim(dbemail.Text) = '' then
begin
aux:=Label10.Caption;
vet:=length(aux);
delete(aux,vet,1);
MessageDlg(#13+'Preencha corretamente o campo '+aux+'.', mtwarning, [mbOk], 0);
dbemail.SetFocus;
aux_if:=1;
end;

if ((Form14 = nil) and (Form7 = nil)) then
begin
  if dbtipodepele.ItemIndex = -1 then
  begin
  MessageDlg(#13+'Preencha corretamente o TIPO DE PELE da Cliente.', mtwarning, [mbOk], 0);
  dbtipodepele.SetFocus;
  aux_if:=1;
  end

  else if dbtomdepele.ItemIndex = -1 then
  begin
  MessageDlg(#13+'Preencha corretamente o TOM DE PELE da Cliente.', mtwarning, [mbOk], 0);
  dbtomdepele.SetFocus;
  aux_if:=1;
  end

  else if dbmeiodecontato.ItemIndex = -1 then
  begin
  MessageDlg(#13+'Preencha corretamente o TIPO DE CONTATO que a Cliente deseja receber.', mtwarning, [mbOk], 0);
  dbmeiodecontato.SetFocus;
  aux_if:=1;
  end

  else if dbhorariocontato.ItemIndex = -1 then
  begin
  MessageDlg(#13+'Preencha corretamente o HOR¡RIO PARA CONTATO que a Cliente deseja receber.', mtwarning, [mbOk], 0);
  dbhorariocontato.SetFocus;
  aux_if:=1;
  end;
end;

if (aux_if = 0) then
begin

//Abaixo trasnforma o MÍs para n˙mero
if niver_mes.ItemIndex = 0 then
aux_mes:='01'
else if niver_mes.ItemIndex = 1 then
aux_mes:='02'
else if niver_mes.ItemIndex = 2 then
aux_mes:='03'
else if niver_mes.ItemIndex = 3 then
aux_mes:='04'
else if niver_mes.ItemIndex = 4 then
aux_mes:='05'
else if niver_mes.ItemIndex = 5 then
aux_mes:='06'
else if niver_mes.ItemIndex = 6 then
aux_mes:='07'
else if niver_mes.ItemIndex = 7 then
aux_mes:='08'
else if niver_mes.ItemIndex = 8 then
aux_mes:='09'
else if niver_mes.ItemIndex = 9 then
aux_mes:='10'
else if niver_mes.ItemIndex = 10 then
aux_mes:='11'
else if niver_mes.ItemIndex = 11 then
aux_mes:='12';

dbniver_real.Text:=niver_dia.Text+'/'+aux_mes;

 //Se n„o foi aberto pelo Form14 e sim pelo frmPrincipal
 if ( (Form14 = nil) and (Form7 = nil) ) then
 ADOQuery1.Post
 else
  begin
  ADOQuery1.Post;
  Close;
  end;

//Abaixo s„o os Edit's
dbnome.Enabled:=False;
dbcpf.Enabled:=False;
dbend.Enabled:=False;
dbcep.Enabled:=False;
dbcontato.Enabled:=False;
dbcidade.Enabled:=False;
dbestado.Enabled:=False;
niver_dia.Enabled:=False;
niver_mes.Enabled:=False;
dbemail.Enabled:=False;

 if ((Form14 = nil) and (Form7 = nil)) then
 begin
 dbtipodepele.Enabled:=False;
 dbtomdepele.Enabled:=False;
 dbmeiodecontato.Enabled:=False;
 dbhorariocontato.Enabled:=False;
 end;

//Abaixo s„o os botıes
editar.Enabled:=True;
novo.Enabled:=True;
excluir.Enabled:=True;
cancelar.Enabled:=False;
gravar.Enabled:=False;
localizar.Enabled:=True;
end;
end;

procedure TForm20.cancelarClick(Sender: TObject);
begin
  //Se n„o foi aberto pelo Form14 e sim pelo frmPrincipal
  if ( (Form14 = nil) and (Form7 = nil) ) then
  begin
  ADOQuery1.Cancel;
  ADOQuery1.Active:=False;

  //Abaixo s„o os Edit's
  dbnome.Enabled:=False;
  dbcpf.Enabled:=False;
  dbend.Enabled:=False;
  dbcep.Enabled:=False;
  dbcontato.Enabled:=False;
  dbcidade.Enabled:=False;
  dbestado.Enabled:=False;
  niver_dia.Enabled:=False;
  niver_mes.Enabled:=False;
  dbemail.Enabled:=False;
  dbtipodepele.Enabled:=False;
  dbtomdepele.Enabled:=False;
  dbmeiodecontato.Enabled:=False;
  dbhorariocontato.Enabled:=False;

  //Abaixo s„o os botıes
  editar.Enabled:=False;
  novo.Enabled:=True;
  excluir.Enabled:=False;
  cancelar.Enabled:=False;
  gravar.Enabled:=False;
  localizar.Enabled:=True;

  //Abaixo os campos Combobox
  dbestado.ItemIndex:=-1;
  niver_mes.ItemIndex:=-1;
  dbtipodepele.ItemIndex:=-1;
  dbtomdepele.ItemIndex:=-1;
  dbmeiodecontato.ItemIndex:=-1;
  dbhorariocontato.ItemIndex:=-1;
  end
else
Close;

end;

procedure TForm20.excluirClick(Sender: TObject);
begin
  if MessageDlg(#13+'Deseja realmente excluir o cliente '+dbnome.Text+'?',mtConfirmation, [mbyes, mbno],0) = mrYes then
  begin
  MessageDlg(#13+'Cliente '+dbnome.Text+' deletado com sucesso!', mtinformation, [mbOk], 0);
  ADOQuery1.Delete;
  ADOQuery1.Active:=False;

  //Abaixo s„o os botıes
  novo.Enabled:=True;
  excluir.Enabled:=False;
  editar.Enabled:=False;
  gravar.Enabled:=False;
  cancelar.Enabled:=False;
  localizar.Enabled:=True;
  end;
end;

procedure TForm20.localizarClick(Sender: TObject);
var
aux_mes: String;
begin
Edit1.Clear;
Edit1.Text:=Trim(Inputbox('Consulta','Digite o CPF da Cliente:',''));
ADOQuery1.Active:=True;

    if not ADOQuery1.Locate('cpf', trim(Edit1.Text), []) then
    begin
    ADOQuery1.Active:=false;

    //Abaixo s„o os botıes
    novo.Enabled:=True;
    excluir.Enabled:=False;
    editar.Enabled:=False;
    cancelar.Enabled:=False;
    gravar.Enabled:=False;
    localizar.Enabled:=True;

    //Limpar o campo Anivers·rio caso tenha encontrado CPF na ˙ltima pesquisa
    niver_dia.Clear;
    niver_mes.ItemIndex:=-1;

    MessageDlg(#13+'CPF '+Edit1.Text+' n„o encontrado no Sistema!', mtwarning, [mbOk], 0);
    end
      else
      begin
      //Abaixo s„o os botıes
      editar.Enabled:=True;
      novo.Enabled:=True;
      excluir.Enabled:=True;
      localizar.Enabled:=True;

      if Trim(dbniver_real.Text) <> '' then
      begin
        //Abaixo trasnforma o N˙mero em MÍs
        if copy(dbniver_real.Text,4,2) = '01' then
        aux_mes:='0'
        else if copy(dbniver_real.Text,4,2) = '02' then
        aux_mes:='1'
        else if copy(dbniver_real.Text,4,2) = '03' then
        aux_mes:='2'
        else if copy(dbniver_real.Text,4,2) = '04' then
        aux_mes:='3'
        else if copy(dbniver_real.Text,4,2) = '05' then
        aux_mes:='4'
        else if copy(dbniver_real.Text,4,2) = '06' then
        aux_mes:='5'
        else if copy(dbniver_real.Text,4,2) = '07' then
        aux_mes:='6'
        else if copy(dbniver_real.Text,4,2) = '08' then
        aux_mes:='7'
        else if copy(dbniver_real.Text,4,2) = '09' then
        aux_mes:='8'
        else if copy(dbniver_real.Text,4,2) = '10' then
        aux_mes:='9'
        else if copy(dbniver_real.Text,4,2) = '11' then
        aux_mes:='10'
        else if copy(dbniver_real.Text,4,2) = '12' then
        aux_mes:='11';
      end;
      //Copia para o campo de Anivers·rio de acordo com cod acima
      niver_dia.Text:=copy(dbniver_real.Text,1,2);
      niver_mes.ItemIndex:=StrtoInt(aux_mes);

      end;
end;

procedure TForm20.fecharClick(Sender: TObject);
begin
Close;
end;

procedure TForm20.dbnomeClick(Sender: TObject);
begin
dbnome.Color:=clWindow;
dbnome.Text:=trim(dbnome.Text);
end;

procedure TForm20.dbnomeEnter(Sender: TObject);
begin
dbnome.Color:=clWindow;
dbnome.Text:=trim(dbnome.Text);
end;

procedure TForm20.dbnomeExit(Sender: TObject);
begin
dbnome.ParentColor:=True;
dbnome.Text:=trim(dbnome.Text);
end;

procedure TForm20.dbnomeKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '<>!@#$%®&*_+={}[]?;:|\/*"`®‡¿Ë»ÏÃÊ∆Ú˘¯£ÿÉÒ—™∫øÆΩº”ﬂ“µ˛Ÿ˝›';//caracteres especiais que sql n„o aceita
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
dbnome.SetFocus;
end;
end;

procedure TForm20.dbcpfClick(Sender: TObject);
begin
dbcpf.Color:=clWindow;
end;

procedure TForm20.dbcpfEnter(Sender: TObject);
begin
dbcpf.Color:=clWindow;
end;

procedure TForm20.dbcpfExit(Sender: TObject);
begin
dbcpf.ParentColor:=True;

  if ( (Form14 = nil) and (Form7 = nil) ) then
  begin
   ADOQuery2.Active:=True;
   if ADOQuery2.Locate('cpf', trim(dbcpf.Text), []) then
   begin
   ADOQuery2.Active:=False;
   repete_cpf:='s';
   MessageDlg(#13+'O seguinte CPF '+dbcpf.Text+' j· existe cadastrado no Sistema.', mtwarning, [mbOk], 0);
   dbcpf.Clear;
   dbcpf.SetFocus;
   end
   else
   repete_cpf:='n';
  end;  

end;

procedure TForm20.dbcpfKeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞-<>!@#$%®&*()_+={}[]?;:,.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
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
dbcpf.SetFocus;
end;
end;

procedure TForm20.dbendChange(Sender: TObject);
begin
//Abaixo o contador de caracteres
Label8.Caption:=FormatFloat('000',StrToFloat(IntToStr(500-length(dbend.Text))));
end;

procedure TForm20.dbendClick(Sender: TObject);
begin
dbend.Color:=clWindow;
dbend.Text:=trim(dbend.Text);
end;

procedure TForm20.dbendEnter(Sender: TObject);
begin
dbend.Color:=clWindow;
dbend.Text:=trim(dbend.Text);
end;

procedure TForm20.dbendExit(Sender: TObject);
begin
dbend.ParentColor:=True;
dbend.Text:=trim(dbend.Text);
end;

procedure TForm20.dbendKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '<>!@#$%®&*_+={}[]?;:|\*"`®‡¿Ë»ÏÃÊ∆Ú˘¯£ÿÉÒ—™∫øÆΩº”ﬂ“µ˛Ÿ˝›';//caracteres especiais que sql n„o aceita
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
dbend.SetFocus;
end;
end;

procedure TForm20.dbcontatoClick(Sender: TObject);
begin
dbcontato.Color:=clWindow;
end;

procedure TForm20.dbcontatoEnter(Sender: TObject);
begin
dbcontato.Color:=clWindow;
dbcontato.Text:=trim(dbcontato.Text);
end;

procedure TForm20.dbcontatoExit(Sender: TObject);
begin
dbcontato.ParentColor:=True;
dbcontato.Text:=trim(dbcontato.Text);
end;

procedure TForm20.dbcontatoKeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞<>!@#$%®&*_+={}[]?;.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
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
dbcontato.SetFocus;
end;
end;

procedure TForm20.FormActivate(Sender: TObject);
var
aux_mes:String;
begin
if ( (Form14 = nil) and (Form7 = nil) ) then //Se N√O foi aberto pelo Cadastro de Cliente
begin
   ADOQuery1.Active:=True;
   ADOQuery1.Append;

   //Abaixo s„o os Edit's
   dbnome.Enabled:=True;
   dbcpf.Enabled:=True;
   dbend.Enabled:=True;
   dbcep.Enabled:=True;
   dbcontato.Enabled:=True;
   dbcidade.Enabled:=True;
   dbestado.Enabled:=True;
   niver_dia.Enabled:=True;
   niver_mes.Enabled:=True;
   dbemail.Enabled:=True;
   dbtipodepele.Enabled:=True;
   dbtomdepele.Enabled:=True;
   dbmeiodecontato.Enabled:=True;
   dbhorariocontato.Enabled:=True;

   //Abaixo s„o os Botıes
   editar.Enabled:=False;
   novo.Enabled:=False;
   excluir.Enabled:=False;
   cancelar.Enabled:=True;
   gravar.Enabled:=True ;
   localizar.Enabled:=False;

   //Abaixo os campos Combobox
   dbestado.ItemIndex:=-1;
   niver_mes.ItemIndex:=-1;
   dbtipodepele.ItemIndex:=-1;
   dbtomdepele.ItemIndex:=-1;
   dbmeiodecontato.ItemIndex:=-1;
   dbhorariocontato.ItemIndex:=-1;

   //Abaixo deixa o campo Nome pronto pra digitar
   dbnome.SetFocus;
end
else if ( (Form7 <> nil) and (Form14 = nil) ) then //Se FOI aberto pelo Cadastro de Filhas
begin
 //Deletar os compos que nao existem no BD
 dbtipodepele.Destroy;
 dbtomdepele.Destroy;
 dbmeiodecontato.Destroy;
 dbhorariocontato.Destroy;
 Groupbox2.Destroy;
 Groupbox3.Destroy;

 Form20.Caption:='FILHAS - MODO DE EDI«√O';

 //Diminuir o tamanho da tela e centralizar
 Form20.Height:=400;
 Form20.Position:=poScreenCenter;

 //Sumir com o bot„o fechar do Form quando for aberto pelo Form14
 fechar.Visible:=False;
 //Sumir com o X no canto superior direito para fechar
 Form20.BorderIcons:=[];

 ADOQuery1.SQL.Clear;
 ADOQuery1.SQL.Add('select * from filhas where cpf ="'+Trim(Form7.ADOQuery1cpf.Text)+'"');

 ADOQuery1.Open;

      if Trim(dbniver_real.Text) <> '' then
      begin
        //Abaixo trasnforma o N˙mero em MÍs
        if copy(dbniver_real.Text,4,2) = '01' then
        aux_mes:='0'
        else if copy(dbniver_real.Text,4,2) = '02' then
        aux_mes:='1'
        else if copy(dbniver_real.Text,4,2) = '03' then
        aux_mes:='2'
        else if copy(dbniver_real.Text,4,2) = '04' then
        aux_mes:='3'
        else if copy(dbniver_real.Text,4,2) = '05' then
        aux_mes:='4'
        else if copy(dbniver_real.Text,4,2) = '06' then
        aux_mes:='5'
        else if copy(dbniver_real.Text,4,2) = '07' then
        aux_mes:='6'
        else if copy(dbniver_real.Text,4,2) = '08' then
        aux_mes:='7'
        else if copy(dbniver_real.Text,4,2) = '09' then
        aux_mes:='8'
        else if copy(dbniver_real.Text,4,2) = '10' then
        aux_mes:='9'
        else if copy(dbniver_real.Text,4,2) = '11' then
        aux_mes:='10'
        else if copy(dbniver_real.Text,4,2) = '12' then
        aux_mes:='11';
      end;
      //Copia para o campo de Anivers·rio de acordo com cod acima
      niver_dia.Text:=copy(dbniver_real.Text,1,2);
      niver_mes.ItemIndex:=StrtoInt(aux_mes);

    ADOQuery1.Edit;

    //Abaixo s„o os Edit's
    dbnome.Enabled:=True;
    dbcpf.Enabled:=True;
    dbend.Enabled:=True;
    dbcep.Enabled:=True;
    dbcontato.Enabled:=True;
    dbcidade.Enabled:=True;
    dbestado.Enabled:=True;
    niver_dia.Enabled:=True;
    niver_mes.Enabled:=True;
    dbemail.Enabled:=True;

    //Abaixo s„o os Botıes
    editar.Enabled:=False;
    novo.Enabled:=False;
    excluir.Enabled:=False;
    cancelar.Enabled:=True;
    gravar.Enabled:=True ;
    localizar.Enabled:=False;

   //Abaixo deixa o campo Nome pronto pra digitar
   dbnome.SetFocus;
end
 else if ( (Form14 <> nil) and (Form7 = nil) ) then // Se FOI aberto pelo Cadastro de Clientes
 begin
 //Diminuir o tamanho da tela e centralizar
 Form20.Height:=560;
 Form20.Position:=poScreenCenter;

 //Sumir com o bot„o fechar do Form quando for aberto pelo Form14
 fechar.Destroy;
 
 //Sumir com o X no canto superior direito para fechar
 Form20.BorderIcons:=[];

 ADOQuery1.SQL.Clear;
 ADOQuery1.SQL.Add('select * from clientes where cpf ="'+Trim(Form14.ADOQuery1cpf.Text)+'"');

 ADOQuery1.Open;

      if Trim(dbniver_real.Text) <> '' then
      begin
        //Abaixo trasnforma o N˙mero em MÍs
        if copy(dbniver_real.Text,4,2) = '01' then
        aux_mes:='0'
        else if copy(dbniver_real.Text,4,2) = '02' then
        aux_mes:='1'
        else if copy(dbniver_real.Text,4,2) = '03' then
        aux_mes:='2'
        else if copy(dbniver_real.Text,4,2) = '04' then
        aux_mes:='3'
        else if copy(dbniver_real.Text,4,2) = '05' then
        aux_mes:='4'
        else if copy(dbniver_real.Text,4,2) = '06' then
        aux_mes:='5'
        else if copy(dbniver_real.Text,4,2) = '07' then
        aux_mes:='6'
        else if copy(dbniver_real.Text,4,2) = '08' then
        aux_mes:='7'
        else if copy(dbniver_real.Text,4,2) = '09' then
        aux_mes:='8'
        else if copy(dbniver_real.Text,4,2) = '10' then
        aux_mes:='9'
        else if copy(dbniver_real.Text,4,2) = '11' then
        aux_mes:='10'
        else if copy(dbniver_real.Text,4,2) = '12' then
        aux_mes:='11';
      end;
      //Copia para o campo de Anivers·rio de acordo com cod acima
      niver_dia.Text:=copy(dbniver_real.Text,1,2);
      niver_mes.ItemIndex:=StrtoInt(aux_mes);


    ADOQuery1.Edit;

    //Abaixo s„o os Edit's
    dbnome.Enabled:=True;
    dbcpf.Enabled:=True;
    dbend.Enabled:=True;
    dbcep.Enabled:=True;
    dbcontato.Enabled:=True;
    dbcidade.Enabled:=True;
    dbestado.Enabled:=True;
    niver_dia.Enabled:=True;
    niver_mes.Enabled:=True;
    dbemail.Enabled:=True;
    dbtipodepele.Enabled:=True;
    dbtomdepele.Enabled:=True;
    dbmeiodecontato.Enabled:=True;
    dbhorariocontato.Enabled:=True;

    //Abaixo s„o os Botıes
    editar.Enabled:=False;
    novo.Enabled:=False;
    excluir.Enabled:=False;
    cancelar.Enabled:=True;
    gravar.Enabled:=True ;
    localizar.Enabled:=False;

   //Abaixo deixa o campo Nome pronto pra digitar
   dbnome.SetFocus;
 end;


end;

procedure TForm20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ADOQuery1.Active=True then
ADOQuery1.Active:=False;

//Abaixo para Liberar o Form da MemÛria
Form20.Release;
Form20 := Nil;
end;

procedure TForm20.FormDestroy(Sender: TObject);
begin

 if ( (Form14 = nil) and (Form7 = nil) ) then
 frmprincipal.Enabled:=True
 else if (Form14 <> nil) then
  begin
  Form14.Enabled:=True;
  Form14.ADOQuery1.Refresh;
  end
 else if (Form7 <> nil) then
  begin
  Form7.Enabled:=True;
  Form7.ADOQuery1.Refresh;
  end

end;

procedure TForm20.dbcepClick(Sender: TObject);
begin
dbcep.Color:=clWindow;
end;

procedure TForm20.dbcepEnter(Sender: TObject);
begin
dbcep.Color:=clWindow;
end;

procedure TForm20.dbcepExit(Sender: TObject);
begin
dbcep.ParentColor:=True;
end;

procedure TForm20.dbcepKeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞-<>!@#$%®&*()_+={}[]?;:,.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
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
dbcep.SetFocus;
end;
end;

procedure TForm20.dbcidadeClick(Sender: TObject);
begin
dbcidade.Color:=clWindow;
dbcidade.Text:=trim(dbcidade.Text);
end;

procedure TForm20.dbcidadeEnter(Sender: TObject);
begin
dbcidade.Color:=clWindow;
dbcidade.Text:=trim(dbcidade.Text);
end;

procedure TForm20.dbcidadeExit(Sender: TObject);
begin
dbcidade.ParentColor:=True;
dbcidade.Text:=trim(dbcidade.Text);
end;

procedure TForm20.dbcidadeKeyPress(Sender: TObject; var Key: Char);
Const
especiais = '0123456789<>!@#$%®&*_+={}[]?;:|\/*"`®‡¿Ë»ÏÃÊ∆Ú˘¯£ÿÉÒ—™∫øÆΩº”ﬂ“µ˛Ÿ˝›';//caracteres especiais que sql n„o aceita
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
dbcidade.SetFocus;
end;
end;

procedure TForm20.dbestadoClick(Sender: TObject);
begin
dbestado.Color:=clWindow;
end;

procedure TForm20.dbestadoEnter(Sender: TObject);
begin
dbestado.Color:=clWindow;
end;

procedure TForm20.dbestadoExit(Sender: TObject);
begin
dbestado.ParentColor:=True;
end;

procedure TForm20.niver_diaClick(Sender: TObject);
begin
niver_dia.Color:=clWindow;
end;

procedure TForm20.niver_diaEnter(Sender: TObject);
begin
niver_dia.Color:=clWindow;
end;

procedure TForm20.niver_diaExit(Sender: TObject);
begin
niver_dia.ParentColor:=True;
end;

procedure TForm20.niver_diaKeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞-<>!@#$%®&*()_+={}[]?;:,.|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
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
niver_dia.SetFocus;
end;
end;

procedure TForm20.niver_mesClick(Sender: TObject);
begin
niver_mes.Color:=clWindow;
end;

procedure TForm20.niver_mesEnter(Sender: TObject);
begin
niver_mes.Color:=clWindow;
end;

procedure TForm20.niver_mesExit(Sender: TObject);
begin
niver_mes.ParentColor:=True;
end;

procedure TForm20.dbemailClick(Sender: TObject);
begin
dbemail.Color:=clWindow;
dbemail.Text:=trim(dbemail.Text);
end;

procedure TForm20.dbemailEnter(Sender: TObject);
begin
dbemail.Color:=clWindow;
dbemail.Text:=trim(dbemail.Text);
end;

procedure TForm20.dbemailExit(Sender: TObject);
begin
dbemail.ParentColor:=True;
dbemail.Text:=trim(dbemail.Text);
end;

procedure TForm20.dbemailKeyPress(Sender: TObject; var Key: Char);
Const
especiais = 'π≤≥£¢¨™∫∞<>!#$%®&*()+={}[]?;:,|\/*"Á«~^¥`®‚¬‡¿„√È…Í Ë»ÌÕÓŒÏÃÊ∆ÙÚ˚˘¯£ÿÉ·¡Û˙Ò—™∫øÆΩº”ﬂ‘“ı’µ˛⁄€Ÿ˝›';//caracteres especiais que sql n„o aceita
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
dbemail.SetFocus;
end;
end;

procedure TForm20.dbtipodepeleClick(Sender: TObject);
begin
dbtipodepele.Color:=clWindow;
end;

procedure TForm20.dbtipodepeleEnter(Sender: TObject);
begin
dbtipodepele.Color:=clWindow;
end;

procedure TForm20.dbtomdepeleClick(Sender: TObject);
begin
dbtomdepele.Color:=clWindow;
end;

procedure TForm20.dbtomdepeleEnter(Sender: TObject);
begin
dbtomdepele.Color:=clWindow;
end;

procedure TForm20.dbmeiodecontatoClick(Sender: TObject);
begin
dbmeiodecontato.Color:=clWindow;
end;

procedure TForm20.dbmeiodecontatoEnter(Sender: TObject);
begin
dbmeiodecontato.Color:=clWindow;
end;

procedure TForm20.dbhorariocontatoClick(Sender: TObject);
begin
dbhorariocontato.Color:=clWindow;
end;

procedure TForm20.dbhorariocontatoEnter(Sender: TObject);
begin
dbhorariocontato.Color:=clWindow;
end;

procedure TForm20.dbtipodepeleExit(Sender: TObject);
begin
dbtipodepele.ParentColor:=True;
end;

procedure TForm20.dbtomdepeleExit(Sender: TObject);
begin
dbtomdepele.ParentColor:=True;
end;

procedure TForm20.dbmeiodecontatoExit(Sender: TObject);
begin
dbmeiodecontato.ParentColor:=True;
end;

procedure TForm20.dbhorariocontatoExit(Sender: TObject);
begin
dbhorariocontato.ParentColor:=True;
end;

procedure TForm20.dbcontatoChange(Sender: TObject);
begin
//Abaixo o contador de caracteres
Label5.Caption:=FormatFloat('000',StrToFloat(IntToStr(500-length(dbcontato.Text))));
end;

end.
