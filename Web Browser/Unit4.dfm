object Form4: TForm4
  Left = 191
  Top = 130
  Width = 1065
  Height = 578
  Caption = 'Form4'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Gauge1: TGauge
    Left = 208
    Top = 472
    Width = 465
    Height = 33
    ForeColor = clPurple
    Progress = 0
  end
  object WebBrowser1: TWebBrowser
    Left = 8
    Top = 8
    Width = 33
    Height = 417
    TabOrder = 1
    OnBeforeNavigate2 = WebBrowser1BeforeNavigate2
    OnDocumentComplete = WebBrowser1DocumentComplete
    ControlData = {
      4C00000069030000192B00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Memo1: TMemo
    Left = 31
    Top = 8
    Width = 162
    Height = 425
    BevelKind = bkFlat
    BorderStyle = bsNone
    Lines.Strings = (
      'Mary Kay InTouch'#174'      '
      ' '
      
        ' Op'#231#245'es do pedido  |  Endere'#231'o de entrega  |  Adicionar um produ' +
        'to  |  Revisar o pedido  |  Concluir o pedido  | Sair '
      ''
      'Informa'#231#245'es de entrega'
      'Se'#231#227'o 1 Se'#231#227'o 2 Se'#231#227'o 1 e 2 '
      ''
      '  '
      'Se'#231#227'o 1R$ 0,00'
      'Pre'#231'o SugeridoR$ 0,00'
      'Se'#231#227'o 2R$ 0,00'
      'Pontos0'
      'Percentual de desconto0%'
      'Saldo dispon'#237'vel (d'#233'bito)R$ 0,00'
      ''
      ''
      
        '    P'#225'gina principalLan'#231'amentosTimeWise'#174'Cuidados da Pele com Ten' +
        'd'#234'ncia '#224' AcneLinha Cl'#225'ssicaCuidados PersonalizadosBasesMaquiagem' +
        'Velocity'#174'Cuidados com o CorpoLinha SolarFragr'#226'nciasLinha Masculi' +
        'na  Promo'#231#227'oLan'#231'amentosCuidados com o CorpoTimeWise'#174'Literatura e' +
        ' Formul'#225'riosEmbalagens/DiversosMaterial para Sess'#245'es de Cuidados' +
        ' com a PeleAplicadores Descart'#225'veisMaquiagem '
      'SECTION 1'
      'P'#225'gina principal'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      
        '01082951Kit Sess'#227'o de Fragr'#226'ncias e Spa '#8211' Produtos R$ 275,00 / 1' +
        '50 Pts  '
      '10035651Ultimate'#8482' M'#225'scara para C'#237'lios R$ 49,00 / 25 Pts  '
      '02215251Cole'#231#227'o Experimente e Apaixone-se R$ 69,00 / 52 Pts  '
      '10027859Gel para Sobrancelhas R$ 24,00 / 14 Pts  '
      ''
      ''
      'Lan'#231'amentos'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10040032Compassion Batom Cremoso Mary Kay R$ 30,00 / 19 Pts  '
      '10029475Batom Hidratante Cremoso Hot Mocha R$ 30,00 / 19 Pts  '
      '10020420Brilho para os L'#225'bios Gold Sequins R$ 29,00 / 19 Pts  '
      
        '10034734L'#225'pis Delineador para Sobrancelha Blonde R$ 28,00 / 18 P' +
        'ts  '
      '10016457Len'#231'os de Limpeza Facial R$ 35,00 / 21 Pts  '
      '02207351Cole'#231#227'o Belara R$ 115,00 / 54 Pts  '
      '02207451Cole'#231#227'o Bella Belara R$ 115,00 / 54 Pts  '
      '10030749Pincel Duo de Sombras R$ 20,00 / 10 Pts  '
      
        '10031257Cole'#231#227'o de Sombra Mineral Hypnotic Hazel Eyes para Olhos' +
        ' Cor de Mel R$ 51,00 / 36 Pts  '
      
        '10029025Esfoliante Corportal Sparkling Honeysuckle R$ 45,00 / 22' +
        ' Pts  '
      '10029019Esfoliante Corportal Simply Cotton R$ 45,00 / 22 Pts  '
      '10029023Esfoliante Corportal Warm Amber R$ 45,00 / 22 Pts  '
      
        '10029021Esfoliante Corporal Exotic Passionfruit R$ 45,00 / 22 Pt' +
        's  '
      '10023184Lo'#231#227'o Corporal Simply Cotton R$ 58,00 / 32 Pts  '
      '10023191Lo'#231#227'o Corporal Sparkling Honeysuckle R$ 58,00 / 32 Pts  '
      '10023291Gel para Banho Red Tea & Fig R$ 42,00 / 21 Pts  '
      '10018587Estojo Compacto Pro R$ 155,00 / 100 Pts  '
      '10028082Silk Nectar Mosaico de Blush Mineral R$ 52,00 / 26 Pts  '
      '10028076Pink Organza Sombra em P'#243' Solto R$ 35,00 / 17 Pts  '
      '10028077Lilac Lace Sombra em P'#243' Solto R$ 35,00 / 17 Pts  '
      '10028078Cashmere Sombra em P'#243' Solto R$ 35,00 / 17 Pts  '
      '10028083Soft Sable Mosaico de Blush Mineral R$ 52,00 / 26 Pts  '
      '10025519Kit Tropical Pineapple R$ 99,00 / 50 Pts  '
      ''
      'TimeWise'#174
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      
        '10026940Creme de Limpeza 3 em 1 (Normal/Seca) R$ 55,00 / 37 Pts ' +
        ' '
      
        '10026941Creme de Limpeza 3 em 1 (Mista/Oleosa) R$ 55,00 / 37 Pts' +
        '  '
      
        '10903000Sabonete 3 em 1 de Limpeza Facial, 141g R$ 55,00 / 37 Pt' +
        's  '
      
        '10026925Hidratante Redutor de Linhas de Express'#227'o (Normal/Seca) ' +
        'R$ 57,00 / 39 Pts  '
      
        '10026926Hidratante Redutor de Linhas de Express'#227'o (Mista/Oleosa)' +
        ' R$ 57,00 / 39 Pts  '
      
        '10033255Hidratante Redutor de Linhas de Express'#227'o com FPS 15, 88' +
        'ml R$ 62,00 / 39 Pts  '
      '10563500Kit Solu'#231#227'o Diurna e Noturna, 29ml R$ 144,00 / 94 Pts  '
      '10026905Solu'#231#227'o Diurna com FPS 25, 29ml R$ 80,00 / 47 Pts  '
      '10026919Solu'#231#227'o Noturna, 29ml R$ 80,00 / 47 Pts  '
      
        '10026901Sistema Anti-idade de Cuidados com a Pele TimeWise'#174' - No' +
        'rmal/Seca R$ 256,00 / 170 Pts  '
      
        '10026902Sistema Anti-idade de Cuidados com a Pele TimeWise'#174' - Mi' +
        'sta/Oleosa R$ 256,00 / 170 Pts  '
      
        '10035987Kit Introdut'#243'rio ao Sistema Anti-idade de Cuidados com a' +
        ' Pele Timewise (N/S) R$ 129,00 / 65 Pts  '
      
        '10035802Kit Introdut'#243'rio ao Sistema Anti-idade de Cuidados com a' +
        ' Pele Timewise (M/O) R$ 129,00 / 65 Pts  '
      
        '10004300Kit Microdermoabras'#227'o (Passo 1: Refinar e Passo 2: Resta' +
        'urar) R$ 147,00 / 98 Pts  '
      
        '10029733Microdermoabras'#227'o Passo 1: Refinar, 57g R$ 84,00 / 51 Pt' +
        's  '
      
        '10029735Microdermoabras'#227'o Passo 2: Restaurar, 29ml R$ 80,00 / 47' +
        ' Pts  '
      '10035696S'#233'rum Facial Renovador TimeWise R$ 185,00 / 108 Pts  '
      
        '10035714S'#233'rum Facial Renovador TimeWise (individual) R$ 55,00 / ' +
        '32 Pts  '
      '10029730Lo'#231#227'o Even Complexion, 29ml R$ 87,00 / 55 Pts  '
      '10031174M'#225'scara Even Complexion, 85g R$ 60,00 / 37 Pts  '
      
        '10029737Revitalizante para '#193'rea dos Olhos Targeted-Action, 10ml ' +
        'R$ 75,00 / 52 Pts  '
      
        '10011052Creme Redutor de Linhas de Express'#227'o Targeted-Action Tim' +
        'eWise R$ 75,00 / 52 Pts  '
      
        '10029743Complexo Antiidade para os L'#225'bios, 1,16g R$ 63,00 / 39 P' +
        'ts  '
      
        '10029728Creme Anti-idade para Contorno dos Olhos, 18g R$ 67,00 /' +
        ' 52 Pts  '
      '10010451Sistema Modelador Cellu-Shape'#8482' R$ 169,00 / 112 Pts  '
      '10009574Lo'#231#227'o Corporal Diurna Cellu-Shape'#8482' R$ 99,00 / 66 Pts  '
      '10009549Gel Corporal Noturno Cellu-Shape'#8482' R$ 89,00 / 59 Pts  '
      '10029732Visibly Fit Lo'#231#227'o para o Corpo R$ 70,00 / 57 Pts  '
      ''
      'Cuidados da Pele com Tend'#234'ncia '#224' Acne'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      
        '10023376Spray Corporal para Pele com Tend'#234'ncia '#224' Acne R$ 55,00 /' +
        ' 28 Pts  '
      
        '10021628Kit Introdut'#243'rio Sistema de Cuidados da Pele com Tend'#234'nc' +
        'ia '#224' Acne R$ 95,00 / 65 Pts  '
      
        '10029381Sistema de Cuidados da Pele com Tend'#234'ncia '#224' Acne R$ 163,' +
        '00 / 111 Pts  '
      
        '10020374Gel de Limpeza para Pele com Tend'#234'ncia '#224' Acne R$ 50,00 /' +
        ' 34 Pts  '
      
        '10020379Creme Secativo para Pele com Tend'#234'ncia '#224' Acne R$ 45,00 /' +
        ' 31 Pts  '
      '10020377Lo'#231#227'o para Pele com Tend'#234'ncia '#224' Acne R$ 68,00 / 46 Pts  '
      ''
      'Linha Cl'#225'ssica'
      'Limpar'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10900500Creme Suave de Limpeza 1, 113g R$ 44,00 / 19 Pts  '
      '10105800Lo'#231#227'o Cremosa de Limpeza 2, 192ml R$ 44,00 / 19 Pts  '
      '10105900Espuma de Limpeza Facial 3, 192ml R$ 44,00 / 19 Pts  '
      ''
      'Revitalizar'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      
        '10106100M'#225'scara Hidratante Enriquecida 1, 113g R$ 49,00 / 20 Pts' +
        '  '
      '10419100M'#225'scara Revitalizante 2, 113g R$ 49,00 / 20 Pts  '
      '10347300M'#225'scara Purificante 3, 113g R$ 49,00 / 20 Pts  '
      ''
      'Tonificar'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      
        '10536400T'#244'nico Refrescante e Hidratante 1, 192ml R$ 46,00 / 20 P' +
        'ts  '
      '10567300T'#244'nico Purificante 2, 192ml R$ 46,00 / 20 Pts  '
      
        '10025018T'#244'nico Controlador da Oleosidade 3, 192ml R$ 46,00 / 20 ' +
        'Pts  '
      ''
      'Hidratar'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      
        '10106600Creme Hidratante Enriquecido 1, 118ml R$ 53,00 / 26 Pts ' +
        ' '
      '10106700Creme Hidratante Balanceado 2, 118ml R$ 53,00 / 26 Pts  '
      
        '10106800Fluido Hidratante para Controle da Oleosidade 3, 118ml R' +
        '$ 53,00 / 26 Pts  '
      ''
      'Cuidados Personalizados'
      'Olhos'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      
        '10274300Gel Suavizante para a '#193'rea dos Olhos , 11g R$ 50,00 / 29' +
        ' Pts  '
      ''
      'L'#225'bios'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      
        '10998000Kit L'#225'bios de Seda (B'#225'lsamo + M'#225'scara) R$ 64,00 / 50 Pts' +
        '  '
      
        '10031559B'#225'lsamo para os L'#225'bios Satin Lips'#174', 8g R$ 37,00 / 25 Pts' +
        '  '
      
        '10031567M'#225'scara Para os L'#225'bios Satin Lips'#174', 8g R$ 35,00 / 25 Pts' +
        '  '
      ''
      'Rosto'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      
        '10548800Creme Hidratante Intensivo (Pele Seca), 51g R$ 76,00 / 5' +
        '1 Pts  '
      
        '10027910Hidratante Noturno Extra Emoliente, 60g R$ 47,00 / 30 Pt' +
        's  '
      
        '10013151Len'#231'os de Papel Antibrilho da Pele, 75 Len'#231'os R$ 25,00 /' +
        ' 17 Pts  '
      '10031573Lo'#231#227'o Antibrilho e Oleosidade, 17ml R$ 38,00 / 29 Pts  '
      ''
      'Bases'
      'L'#237'quida de Cobertura M'#233'dia'
      'Ivory'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10356000Ivory 200 R$ 40,00 / 20 Pts  '
      '10355300Ivory 204 R$ 40,00 / 20 Pts  '
      ''
      'Beige'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10355800Beige 300 R$ 40,00 / 20 Pts  '
      '10355900Beige 302 R$ 40,00 / 20 Pts  '
      '10355700Beige 304 R$ 40,00 / 20 Pts  '
      '10357000Beige 400 R$ 40,00 / 20 Pts  '
      '10357100Beige 402 R$ 40,00 / 20 Pts  '
      '10356900Beige 404 R$ 40,00 / 20 Pts  '
      ''
      'Bronze'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10357700Bronze 500 R$ 40,00 / 20 Pts  '
      '10357200Bronze 504 R$ 40,00 / 20 Pts  '
      '10358200Bronze 607 R$ 40,00 / 20 Pts  '
      ''
      'L'#237'quida de Cobertura Total'
      'Ivory'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10367300Ivory 200 R$ 40,00 / 20 Pts  '
      '10366700Ivory 204 R$ 40,00 / 20 Pts  '
      ''
      'Beige'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10367100Beige 300 R$ 40,00 / 20 Pts  '
      '10367200Beige 302 R$ 40,00 / 20 Pts  '
      '10368300Beige 402 R$ 40,00 / 20 Pts  '
      '10367800Beige 404 R$ 40,00 / 20 Pts  '
      '10367000Beige 304 R$ 40,00 / 20 Pts  '
      '10367900Beige 400 R$ 40,00 / 20 Pts  '
      ''
      'Bronze'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10377000Bronze 500 R$ 40,00 / 20 Pts  '
      '10371400Bronze 504 R$ 40,00 / 20 Pts  '
      '10378700Bronze 607 R$ 40,00 / 20 Pts  '
      ''
      'Creme a P'#243
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10014697Ivory 2 R$ 40,00 / 20 Pts  '
      '10014698Beige 1 R$ 40,00 / 20 Pts  '
      '10014699Beige 2 R$ 40,00 / 20 Pts  '
      '10014701Beige 3 R$ 40,00 / 20 Pts  '
      '10014702Beige 4 R$ 40,00 / 20 Pts  '
      '10014703Bronze 1 R$ 40,00 / 20 Pts  '
      ''
      'Hidratante Tonalizante com FPS 20'
      'Ivory'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10031512Ivory 2 R$ 43,00 / 23 Pts  '
      ''
      'Beige'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10031513Beige 1 R$ 43,00 / 23 Pts  '
      '10031514Beige 2 R$ 43,00 / 23 Pts  '
      ''
      'Bronze'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10031515Bronze 1 R$ 43,00 / 23 Pts  '
      '10031517Bronze 2 R$ 43,00 / 23 Pts  '
      ''
      'Base em P'#243' Mineral'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10016886Ivory 1 R$ 43,00 / 23 Pts  '
      '10016887Ivory 2 R$ 43,00 / 23 Pts  '
      '10016888Beige 1 R$ 43,00 / 23 Pts  '
      '10016889Beige 2 R$ 43,00 / 23 Pts  '
      '10016890Bronze 1 R$ 43,00 / 23 Pts  '
      '10016891Bronze 2 R$ 43,00 / 23 Pts  '
      '10017069Pincel para Base em P'#243' Mineral R$ 22,00 / 15 Pts  '
      ''
      'Maquiagem'
      'Acess'#243'rios'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10017362Estojo Compacto Mary Kay'#174' R$ 58,00 / 41 Pts  '
      '10015265Pincel para L'#225'bios (retr'#225'til) R$ 8,00 / 3 Pts  '
      '10015264Aplicadores para Sombra (2 unidades) R$ 7,00 / 7 Pts  '
      '10015263Pincel Compacto para Blush R$ 7,00 / 7 Pts  '
      '10015261Esponjas Cosm'#233'ticas (2 unidades) R$ 9,00 / 4 Pts  '
      '10015262Pincel para P'#243' Compacto R$ 11,00 / 5 Pts  '
      '10011251Cole'#231#227'o de Pinc'#233'is Mary Kay R$ 125,00 / 73 Pts  '
      '10014209Apontador Duplo R$ 12,00 / 7 Pts  '
      ''
      'Batom'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10022936Amber Suede R$ 30,00 / 19 Pts  '
      '10022940Amber Glow R$ 30,00 / 19 Pts  '
      '10022942Apple Berry R$ 30,00 / 19 Pts  '
      '10022950Apricot Glaze R$ 30,00 / 19 Pts  '
      '10022944Berry Kiss R$ 30,00 / 19 Pts  '
      '10029473Copper Star R$ 30,00 / 19 Pts  '
      '10022938Downtown Brown R$ 30,00 / 19 Pts  '
      '10022958Dusty Rose R$ 30,00 / 19 Pts  '
      '10022952Frosted Rose R$ 30,00 / 19 Pts  '
      '10022937Gingerbread R$ 30,00 / 19 Pts  '
      '10022949Golden R$ 30,00 / 19 Pts  '
      '10022961Hibiscus R$ 30,00 / 19 Pts  '
      '10029478Icy Peach R$ 30,00 / 19 Pts  '
      '10022957Pink Melon R$ 30,00 / 19 Pts  '
      '10029472Pink Passion R$ 30,00 / 19 Pts  '
      '10022960Pink Satin R$ 30,00 / 19 Pts  '
      '10022935Raisinberry R$ 30,00 / 19 Pts  '
      '10022965Red R$ 30,00 / 19 Pts  '
      '10022939Rich Cocoa R$ 30,00 / 19 Pts  '
      '10022945Sheer Blush R$ 30,00 / 19 Pts  '
      '10022954Shell R$ 30,00 / 19 Pts  '
      '10022963Sweet Nectar R$ 30,00 / 19 Pts  '
      '10022955Tanned R$ 30,00 / 19 Pts  '
      '10022953Toffee R$ 30,00 / 19 Pts  '
      ''
      'Batom Hidratante com FPS 15'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10025395Apricot R$ 32,00 / 19 Pts  '
      '10025748Blush R$ 32,00 / 19 Pts  '
      '10025397Fig R$ 32,00 / 19 Pts  '
      '10025394Mango R$ 32,00 / 19 Pts  '
      '10025749Natural R$ 32,00 / 19 Pts  '
      '10025396Poppy R$ 32,00 / 19 Pts  '
      '10025393Rose R$ 32,00 / 19 Pts  '
      ''
      'Blush Mineral'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10012983Cherry Blossom R$ 30,00 / 18 Pts  '
      '10012977Cinnamon Stick R$ 30,00 / 18 Pts  '
      '10012965Golden Copper R$ 30,00 / 18 Pts  '
      '10012959Pink Petals R$ 30,00 / 18 Pts  '
      '10012974Shy Blush R$ 30,00 / 18 Pts  '
      '10012950Sparkling Cidar R$ 30,00 / 18 Pts  '
      '10012980Strawberry Cream R$ 30,00 / 18 Pts  '
      '10016243Sunny Spice R$ 30,00 / 18 Pts  '
      ''
      'Brilho para os L'#225'bios NouriShine'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10016978Beach Bronze R$ 29,00 / 19 Pts  '
      '10017036Berry Sparkle R$ 29,00 / 19 Pts  '
      '10016984Bronze Bliss R$ 29,00 / 19 Pts  '
      '10017037Coral Rose R$ 29,00 / 19 Pts  '
      '10017038Gold Rush R$ 29,00 / 19 Pts  '
      '10017039Melon Sorbet R$ 29,00 / 19 Pts  '
      '10016963Pink Diamonds R$ 29,00 / 19 Pts  '
      '10016966Starry R$ 29,00 / 19 Pts  '
      '10016969Sugarberry R$ 29,00 / 19 Pts  '
      '10016972Sweet Raisin R$ 29,00 / 19 Pts  '
      ''
      'Corretivos'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10023467Ivory 1 R$ 28,00 / 20 Pts  '
      '10023468Ivory 2 R$ 28,00 / 20 Pts  '
      '10023469Beige 1 R$ 28,00 / 20 Pts  '
      '10023470Beige 2 R$ 28,00 / 20 Pts  '
      '10023471Bronze 1 R$ 28,00 / 20 Pts  '
      '10023472Bronze 2 R$ 28,00 / 20 Pts  '
      '10027243Yellow R$ 28,00 / 20 Pts  '
      ''
      'Delineador L'#237'quido para os Olhos'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10017587Preto R$ 32,00 / 23 Pts  '
      ''
      'Fixador de Sombras'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10016960Eye Primer Fixador de Sombra, 8,5g R$ 41,00 / 28 Pts  '
      ''
      'Iluminador Facial'
      'Iluminador Facial'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10019029Tonalidade 2 R$ 38,00 / 18 Pts  '
      '10019031Tonalidade 3 R$ 38,00 / 18 Pts  '
      ''
      'L'#225'pis Retr'#225'til para os Olhos'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10021446Black R$ 28,00 / 18 Pts  '
      '10021447Deep Brown R$ 28,00 / 18 Pts  '
      '10021449Navy R$ 28,00 / 18 Pts  '
      '10021448Olive R$ 28,00 / 18 Pts  '
      ''
      'L'#225'pis Retr'#225'til para os L'#225'bios'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10021458Cappuccino R$ 28,00 / 18 Pts  '
      '10021457Chocolate R$ 28,00 / 18 Pts  '
      '10021456Dusty Pink R$ 28,00 / 18 Pts  '
      '10021455Neutral R$ 28,00 / 18 Pts  '
      '10021460Pink R$ 28,00 / 18 Pts  '
      '10021459Raspberry R$ 28,00 / 18 Pts  '
      ''
      'L'#225'pis Delineador para Sobrancelhas'
      'L'#225'pis Delineador para Sobrancelhas'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10034731Brunette R$ 28,00 / 18 Pts  '
      '10034730Classic Blonde R$ 28,00 / 18 Pts  '
      ''
      'M'#225'scara para os C'#237'lios'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      
        '10017660M'#225'scara Alongadora para C'#237'lios MK- Marrom R$ 39,00 / 21 ' +
        'Pts  '
      
        '10017659M'#225'scara Alongadora para C'#237'lios MK - Preta R$ 39,00 / 21 ' +
        'Pts  '
      ''
      'P'#243' Mineral Compacto'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10015136Ivory 2 R$ 39,00 / 21 Pts  '
      '10015137Beige 1 R$ 39,00 / 21 Pts  '
      '10015138Beige 2 R$ 39,00 / 21 Pts  '
      '10015139Bronze 1 R$ 39,00 / 21 Pts  '
      '10015140Bronze 2 R$ 39,00 / 21 Pts  '
      ''
      'P'#243' Mineral Bronzeador'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10016167Bronze Diva (matte) R$ 35,00 / 19 Pts  '
      '10016611Canyon Gold (com brilho) R$ 35,00 / 19 Pts  '
      '10016610Desert Sun (com brilho) R$ 35,00 / 19 Pts  '
      '10016165Sandstone (matte) R$ 35,00 / 19 Pts  '
      ''
      'P'#243' Mineral Iluminador'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10016615Pink Stardust R$ 35,00 / 19 Pts  '
      ''
      'Sombra Creme a P'#243
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10018045Sombra Eyesicle Vanilla MK R$ 25,00 / 15 Pts  '
      ''
      'Sombras Minerais'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10013008Amber Blaze R$ 19,00 / 12 Pts  '
      '10013050Blue Metal R$ 19,00 / 12 Pts  '
      '10013035Chocolate Kiss R$ 19,00 / 12 Pts  '
      '10013038Cinnabar R$ 19,00 / 12 Pts  '
      '10013026Coal R$ 19,00 / 12 Pts  '
      '10013044Crystalline R$ 19,00 / 12 Pts  '
      '10013056Denim Frost R$ 19,00 / 12 Pts  '
      '10013053Dusty Lilac R$ 19,00 / 12 Pts  '
      '10013047Espresso R$ 19,00 / 12 Pts  '
      '10013080Granite R$ 19,00 / 12 Pts  '
      '10013068Hazelnut R$ 19,00 / 12 Pts  '
      '10013032Honey Spice R$ 19,00 / 12 Pts  '
      '10013062Ivy Garden R$ 19,00 / 12 Pts  '
      '10013005Lemongrass R$ 19,00 / 12 Pts  '
      '10013089Navy Blue R$ 19,00 / 12 Pts  '
      '10013074Precious Pink R$ 19,00 / 12 Pts  '
      '10013092Raisin R$ 19,00 / 12 Pts  '
      '10013065Sienna R$ 19,00 / 12 Pts  '
      '10013023Silky Caramel R$ 19,00 / 12 Pts  '
      '10016065Spun Silk R$ 19,00 / 12 Pts  '
      '10013020Sweet Cream R$ 19,00 / 12 Pts  '
      '10013017Sweet Pink R$ 19,00 / 12 Pts  '
      '10013101Sweet Plum R$ 19,00 / 12 Pts  '
      '10016071Vintage Gold R$ 19,00 / 12 Pts  '
      ''
      'Kit Sess'#227'o de Maquiagem'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '02193151Kit Sess'#227'o de Maquiagem (Produtos) R$ 329,00 / 197 Pts  '
      ''
      'Velocity'#174
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10001600Gel de Limpeza para o Rosto,147ml R$ 43,00 / 24 Pts  '
      '10168700Velocity - Eau de Parfum R$ 88,00 / 52 Pts  '
      '10001500Hidratante para o Rosto, 118ml R$ 49,00 / 28 Pts  '
      ''
      'Cuidados com o Corpo'
      'Cuidados com o Corpo'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10007506Lo'#231#227'o Hidratante Mary Kay R$ 33,00 / 20 Pts  '
      '10014082Kit M'#227'os de Seda R$ 120,00 / 67 Pts  '
      '10014094Creme para as M'#227'os R$ 31,00 / 19 Pts  '
      
        '10014095Esfoliante para as M'#227'os Satin Smoothie'#8482' R$ 54,00 / 35 Pt' +
        's  '
      
        '10014096Lo'#231#227'o Energizante para os Pes e Pernas Mint Bliss'#8482', 88ml' +
        ' R$ 42,00 / 19 Pts  '
      '10007441Sabonete em Gel 2 em 1 para o Corpo R$ 33,00 / 20 Pts  '
      ''
      'Cole'#231#227'o Bot'#226'nica'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      
        '10011460Creme Esfoliante de Limpeza Ch'#225' Vermelho & Figo R$ 46,00' +
        ' / 35 Pts  '
      
        '10011437Desodorante Corporal Ch'#225' Vermelho & Figo R$ 48,00 / 38 P' +
        'ts  '
      
        '10011405Lo'#231#227'o Corporal Nutritiva Ch'#225' Vermelho & Figo R$ 50,00 / ' +
        '38 Pts  '
      
        '10011462Creme Esfoliante de Limpeza L'#243'tus & Bambu R$ 46,00 / 35 ' +
        'Pts  '
      
        '10011410Lo'#231#227'o Corporal Nutritiva L'#243'tus & Bambu R$ 50,00 / 38 Pts' +
        '  '
      '10011443Desodorante Corporal L'#243'tus & Bambu R$ 48,00 / 38 Pts  '
      ''
      'Linha Solar'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10010340Gel Restaurador P'#243's-Sol R$ 38,00 / 20 Pts  '
      '10010349Protetor Solar com FPS 30 R$ 53,00 / 28 Pts  '
      
        '10006948Protetor Solar para os L'#225'bios com FPS 15 R$ 19,00 / 13 P' +
        'ts  '
      '10017870Lo'#231#227'o Corporal Autobronzeadora R$ 42,00 / 24 Pts  '
      ''
      'Fragr'#226'ncias'
      'Femininas Eau de Toilette'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10020031Exotic Passionfruit R$ 58,00 / 32 Pts  '
      '10020030Sparkling Honeysuckle R$ 58,00 / 32 Pts  '
      '10020029Simply Cotton R$ 58,00 / 32 Pts  '
      '10020028Warm Amber R$ 58,00 / 32 Pts  '
      ''
      'Femininas Eau de Parfum'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10008283Affection'#8482' Eau de Parfum R$ 120,00 / 61 Pts  '
      '10192900Belara'#174' - Eau de Parfum R$ 75,00 / 41 Pts  '
      '10012512Bella Belara'#8482' Eau de Parfum R$ 80,00 / 44 Pts  '
      '10397300Elige'#174' - Eau de Parfum R$ 95,00 / 59 Pts  '
      '10166700Journey'#174' - Eau de Parfum R$ 85,00 / 48 Pts  '
      ''
      'Masculinas'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10012494MK High Intensity Cologne Spray R$ 110,00 / 60 Pts  '
      '10501700Velocity'#174' for Him, 59ml R$ 88,00 / 52 Pts  '
      '10028783Col'#244'nia Domain, 73 ml R$ 75,00 / 45 Pts  '
      ''
      'Linha Masculina'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10010334Sabonete Facial R$ 38,00 / 21 Pts  '
      '10010336Espuma de Barbear R$ 35,00 / 19 Pts  '
      
        '10010332Lo'#231#227'o Hidratante com Protetor Solar FPS 25 R$ 49,00 / 30' +
        ' Pts  '
      '10010338Gel Refrescante P'#243's Barba R$ 30,00 / 18 Pts  '
      '10020104Fragrancia Corporal em Spray MK Men R$ 39,00 / 18 Pts  '
      ''
      'SECTION 2'
      'Promo'#231#227'o'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10027863Bolsa Kit para Sobrancelhas R$ 10,00 / 0 Pts  '
      '10036770Estojo Demonstrador de Fragr'#226'ncias R$ 22,00 / 0 Pts  '
      '01086351Caixa Boas Festas! R$ 5,00 / 0 Pts  '
      
        '01082851Kit Sess'#227'o de Fragr'#226'ncias e Spa '#8211' impressos e acess'#243'rios' +
        ' R$ 44,00 / 0 Pts  '
      ''
      'Lan'#231'amentos'
      'Lan'#231'amentos'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10839800Folheto The Look 2010 - 5 unidades R$ 9,50 / 0 Pts  '
      ''
      'Edi'#231#227'o Limitada'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      
        '01086251Sacola Pl'#225'stica Masculina - 5 unidades R$ 10,00 / 0 Pts ' +
        ' '
      ''
      'Cuidados com o Corpo'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      
        '10014093Demonstrador Creme para M'#227'os (12 unidades) R$ 19,00 / 0 ' +
        'Pts  '
      ''
      'TimeWise'#174
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10026953Amostra Kit Solu'#231#227'o Diurna e Noturna R$ 4,50 / 0 Pts  '
      
        '10862900Amostra Creme de Limpeza e Hidratante TimeWise (Normal/S' +
        'eca)- 6 pares R$ 4,50 / 0 Pts  '
      
        '10026955Amostra Creme de Limpeza e Hidratante TimeWise (Mista/Ol' +
        'eosa)- 6 pares R$ 4,50 / 0 Pts  '
      
        '10029746Amostra Kit Microdermoabras'#227'o (Passo 1: Refinar e Passo ' +
        '2: Restaurar)- 6 pares R$ 4,50 / 0 Pts  '
      
        '10029745Amostra Creme Antiidade para Contorno dos Olhos - 6 unid' +
        'ades R$ 3,50 / 0 Pts  '
      
        '10003215Amostra Creme Firmador para a '#193'rea dos Olhos - 6 unidade' +
        's R$ 3,50 / 0 Pts  '
      
        '10853900Folheto TimeWise (Para ser usado com todos os demonstrad' +
        'ores da linha)- 6 unidades R$ 5,00 / 0 Pts  '
      ''
      'Literatura e Formul'#225'rios'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10022951Perfil do Cliente R$ 1,45 / 0 Pts  '
      '01082551Folheto entre Amigas - 15 unidades R$ 4,50 / 0 Pts  '
      
        '02193051Kit Sess'#227'o de Maquiagem (Impressos e Acess'#243'rios) R$ 43,8' +
        '0 / 0 Pts  '
      
        '10300400Livro "Milagres que Acontecem"(2'#170' edi'#231#227'o em Portugu'#234's) R' +
        '$ 17,00 / 0 Pts  '
      
        '01079751Folheto Sistema de Cuidados da Pele com Tend'#234'ncia '#224' Acne' +
        ' - 10 unidades R$ 2,00 / 0 Pts  '
      
        '01079951Folheto Mary Kay a Oportunidade Perfeita - 10 unidades R' +
        '$ 3,50 / 0 Pts  '
      
        '10752151Livreto "A Carreira Mary Kay do Brasil" R$ 1,50 / 0 Pts ' +
        ' '
      
        '02072451Cole'#231#227'o T'#233'cnicas de Maquiagem (Cont'#233'm um Livro e um DVD)' +
        ' R$ 35,00 / 0 Pts  '
      '01083751Formul'#225'rio de Inicia'#231#227'o R$ 0,30 / 0 Pts  '
      '01078151Lista de Pre'#231'os Sugeridos e Refer'#234'ncia R$ 0,40 / 0 Pts  '
      
        '02180257Guia para Toda Mulher se tornar Maravilhosa (15 unid.) R' +
        '$ 4,00 / 0 Pts  '
      '01085951Livro Guia da Consultora -Novo R$ 5,00 / 0 Pts  '
      
        '01085751DVD Sess'#227'o de Cuidados com a Pele - Novo R$ 10,00 / 0 Pt' +
        's  '
      
        '01085851Roteiro para Sess'#227'o de Cuidados coma Pele - Novo R$ 7,00' +
        ' / 0 Pts  '
      ''
      'Embalagens/Diversos'
      'Embalagens/Diversos'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '01084251Bolsa Pl'#225'stica para Cosm'#233'ticos R$ 2,00 / 0 Pts  '
      '01082251Bolsa Pink Bow R$ 10,00 / 0 Pts  '
      '10858400Bolsa Branca de Organza R$ 10,00 / 0 Pts  '
      
        '02190651Sacola de Papel para Presente Mary Kay Pequena - 10 unid' +
        'ades R$ 18,00 / 0 Pts  '
      
        '02190751Sacola de Papel para Presente Mary Kay Grande - 5 unidad' +
        'es R$ 14,00 / 0 Pts  '
      
        '10030173Sacola Pl'#225'stica Mary Kay - Pequena (100 unidades) R$ 10,' +
        '00 / 0 Pts  '
      
        '10030174Sacola Pl'#225'stica Mary Kay - Grande (50 unidades) R$ 15,00' +
        ' / 0 Pts  '
      '10739251Decalque Mary Kay'#174' R$ 1,00 / 0 Pts  '
      ''
      'Red Jacket'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '08608251Red Jacket - tam. 38 R$ 96,00 / 0 Pts  '
      '08608451Red Jacket - tam. 40 R$ 96,00 / 0 Pts  '
      '08609051Red Jacket - tam. 42 R$ 96,00 / 0 Pts  '
      '08609351Red Jacket - tam. 44 R$ 96,00 / 0 Pts  '
      '08609651Red Jacket - tam. 46 R$ 96,00 / 0 Pts  '
      '08609851Red Jacket - tam. 48 R$ 96,00 / 0 Pts  '
      '08609951Red Jacket - tam. 50 R$ 96,00 / 0 Pts  '
      '08607051Red Jacket - tam. 52 R$ 96,00 / 0 Pts  '
      '08607151Red Jacket - tam. 54 R$ 96,00 / 0 Pts  '
      '08607251Red Jacket - tam. 56 R$ 96,00 / 0 Pts  '
      ''
      'Material para Sess'#245'es de Cuidados com a Pele'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      
        '01078751Folheto Personalize sua imagem (30 unidades) R$ 2,00 / 0' +
        ' Pts  '
      '10017364Display para Maquiagem R$ 12,00 / 0 Pts  '
      '10758451Tal'#227'o de Pedidos - 30 folhas R$ 4,20 / 0 Pts  '
      '10713351Espelho - 3 unid. R$ 9,00 / 0 Pts  '
      '10997700Broche Mary Kay'#174' R$ 7,00 / 0 Pts  '
      '10014152Bolsa Multiuso para Cosmetico R$ 35,00 / 0 Pts  '
      '02051251Folheto Beleza e Encarte - 5 unidades R$ 4,00 / 0 Pts  '
      '02108251Kit Seu Beijo Sua Personalidade R$ 10,00 / 0 Pts  '
      '10017284Tampas de Acr'#237'lico para Batom R$ 4,00 / 0 Pts  '
      '10017283Display de Batom R$ 8,00 / 0 Pts  '
      '10034259Bolsa Kit Beleza 60 R$ 16,00 / 0 PtsEsgotado'
      '10034258Bolsa Kit Beleza 130 R$ 46,00 / 0 Pts  '
      ''
      'Aplicadores Descart'#225'veis'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10065200Pincel para Sombra e L'#225'bios - 15 unid. R$ 3,75 / 0 Pts  '
      
        '10065100Aplicador com Ponta de Esponja - 15 unid. R$ 3,75 / 0 Pt' +
        's  '
      
        '10006683Toalha Facial Descart'#225'vel - 30 unidades R$ 5,00 / 0 Pts ' +
        ' '
      '10400700Esp'#225'tulas - 24 unid. R$ 3,80 / 0 Pts  '
      '10003370Aplicador de M'#225'scara para C'#237'lios R$ 3,00 / 0 Pts  '
      '10007645Display Descart'#225'vel - 30 unid. R$ 4,65 / 0 Pts  '
      ''
      'Maquiagem'
      'C'#243'digo do produtoDescri'#231#227'oPre'#231'o e pontosQuantidade'
      '10025356Amostra de Corretivo - Ivory 1 R$ 3,50 / 0 Pts  '
      '10025357Amostra de Corretivo - Ivory 2 R$ 3,50 / 0 Pts  '
      '10025358Amostra de Corretivo - Beige 1 R$ 3,50 / 0 Pts  '
      '10025359Amostra de Corretivo - Beige 2 R$ 3,50 / 0 Pts  '
      '10025360Amostra de Corretivo - Bronze 1 R$ 3,50 / 0 Pts  '
      '10025361Amostra de Corretivo - Bronze 2 R$ 3,50 / 0 Pts  '
      '10027245Amostra de Corretivo - Yellow R$ 3,50 / 0 Pts  '
      '10014315Amostra Batom Cremoso Gingerbread R$ 3,50 / 0 Pts  '
      '10014384Amostra Batom Cremoso Pink Satin R$ 3,50 / 0 Pts  '
      '10014399Amostra Batom Cremoso Red R$ 3,50 / 0 Pts  '
      '10014363Amostra Batom Cremoso Toffee R$ 3,50 / 0 Pts  '
      '10014330Amostra Batom Cremoso Apple Berry R$ 3,50 / 0 Pts  '
      ''
      'Todos os pre'#231'os s'#227'o sugeridos para varejo.'
      
        'Exibir diretrizes de pedido | Mary Kay '#174' Inc. 2010 | Pol'#237'tica de' +
        ' privacidade  ')
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Button3: TButton
    Left = 32
    Top = 496
    Width = 121
    Height = 25
    Caption = 'Baixar Lista'
    TabOrder = 2
  end
  object Button4: TButton
    Left = 304
    Top = 440
    Width = 233
    Height = 25
    Caption = 'Tentar novamente ap'#243's Erro'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 200
    Top = 96
    Width = 41
    Height = 25
    Caption = 'TUDO'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Memo2: TMemo
    Left = 248
    Top = 8
    Width = 241
    Height = 425
    BevelKind = bkFlat
    BorderStyle = bsNone
    Lines.Strings = (
      'SECTION 1'
      'P'#225'gina principal'
      
        '01082951Kit Sess'#227'o de Fragr'#226'ncias e Spa '#8211' Produtos R$ 275,00 / 1' +
        '50 Pts  '
      '10035651Ultimate'#8482' M'#225'scara para C'#237'lios R$ 49,00 / 25 Pts  '
      '02215251Cole'#231#227'o Experimente e Apaixone-se R$ 69,00 / 52 Pts  '
      '10027859Gel para Sobrancelhas R$ 24,00 / 14 Pts  '
      'Lan'#231'amentos'
      '10040032Compassion Batom Cremoso Mary Kay R$ 30,00 / 19 Pts  '
      '10029475Batom Hidratante Cremoso Hot Mocha R$ 30,00 / 19 Pts  '
      '10020420Brilho para os L'#225'bios Gold Sequins R$ 29,00 / 19 Pts  '
      
        '10034734L'#225'pis Delineador para Sobrancelha Blonde R$ 28,00 / 18 P' +
        'ts  '
      '10016457Len'#231'os de Limpeza Facial R$ 35,00 / 21 Pts  '
      '02207351Cole'#231#227'o Belara R$ 115,00 / 54 Pts  ')
    ScrollBars = ssBoth
    TabOrder = 5
  end
  object Memo3: TMemo
    Left = 552
    Top = 24
    Width = 121
    Height = 201
    ScrollBars = ssBoth
    TabOrder = 6
  end
  object Button6: TButton
    Left = 496
    Top = 96
    Width = 49
    Height = 25
    Caption = 'LETRAS'
    TabOrder = 7
    OnClick = Button6Click
  end
  object Memo4: TMemo
    Left = 552
    Top = 232
    Width = 121
    Height = 201
    ScrollBars = ssBoth
    TabOrder = 8
  end
  object Button7: TButton
    Left = 496
    Top = 320
    Width = 49
    Height = 25
    Caption = 'CODIG'
    TabOrder = 9
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 680
    Top = 184
    Width = 49
    Height = 25
    Caption = 'FINAL'
    TabOrder = 10
    OnClick = Button8Click
  end
  object Memo5: TMemo
    Left = 736
    Top = 24
    Width = 305
    Height = 409
    ScrollBars = ssBoth
    TabOrder = 11
  end
  object Button1: TButton
    Left = 680
    Top = 304
    Width = 49
    Height = 25
    Caption = 'COPY BD'
    TabOrder = 12
    OnClick = Button1Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\MK' +
      '\Database\DBMKM.mdb;Mode=Share Deny None;Persist Security Info=F' +
      'alse;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet' +
      ' OLEDB:Database Password=604702;Jet OLEDB:Engine Type=5;Jet OLED' +
      'B:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Je' +
      't OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Passwo' +
      'rd="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt D' +
      'atabase=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet O' +
      'LEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    ConnectionTimeout = 0
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 704
    Top = 336
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from produtos')
    Left = 672
    Top = 336
    object ADOQuery1Cdigo: TAutoIncField
      FieldName = 'C'#243'digo'
      ReadOnly = True
    end
    object ADOQuery1linha: TWideStringField
      FieldName = 'linha'
      Size = 100
    end
    object ADOQuery1codigo: TWideStringField
      FieldName = 'codigo'
      Size = 10
    end
    object ADOQuery1sessao: TWideStringField
      FieldName = 'sessao'
      Size = 15
    end
    object ADOQuery1nome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object ADOQuery1valor: TWideStringField
      FieldName = 'valor'
      Size = 10
    end
    object ADOQuery1pontos: TWideStringField
      FieldName = 'pontos'
      Size = 50
    end
  end
end
