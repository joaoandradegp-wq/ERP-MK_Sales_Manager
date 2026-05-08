<h1 align="center">💄 MK Sales Manager</h1>

<p align="center">
Sistema legado desenvolvido para gerenciamento de vendas, pedidos, catálogo de produtos e acompanhamento operacional de consultoras independentes Mary Kay.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Status-Legado-yellow">
  <img src="https://img.shields.io/badge/Linguagem-Delphi%207-blue">
  <img src="https://img.shields.io/badge/Tipo-ERP%20Comercial-lightgrey">
</p>

---

<h2>📌 Sobre</h2>

<p>
O <b>MK Sales Manager</b> foi desenvolvido como uma solução desktop voltada para representantes e consultoras da linha Mary Kay, centralizando controle de produtos, pedidos, valores, pontuações e atualização automática de catálogo.
</p>

<p>
A proposta do sistema era simplificar o processo operacional de vendas, evitando consultas manuais ao portal da empresa e reduzindo o tempo gasto na organização de produtos, sessões, preços e pedidos.
</p>

<p>
O sistema também automatizava tarefas de sincronização de dados diretamente do portal Mary Kay InTouch, realizando captura, tratamento e gravação das informações em banco de dados local.
</p>

---

<h2>⚙️ Principais funcionalidades</h2>

<ul>
  <li>Cadastro e gerenciamento de produtos</li>
  <li>Controle de catálogo Mary Kay</li>
  <li>Atualização automática da base de produtos</li>
  <li>Separação por sessões e coleções</li>
  <li>Controle de preços e pontuação</li>
  <li>Organização de pedidos</li>
  <li>Consulta rápida de itens</li>
  <li>Persistência em banco de dados</li>
  <li>Automação de navegação web</li>
  <li>Importação automatizada de informações do portal</li>
</ul>

---

<h2>🌐 Atualização automática da base</h2>

<p>
Uma das funcionalidades mais avançadas do sistema era o módulo responsável pela atualização automática do catálogo Mary Kay.
</p>

<p>
O aplicativo realizava autenticação diretamente no portal da empresa utilizando automação embarcada com componente WebBrowser do Delphi.
</p>

<p>
Após o login, o sistema navegava automaticamente pelas páginas internas do portal, acessando áreas específicas de pedidos e catálogo de produtos.
</p>

<p>
Durante esse processo, o sistema:
</p>

<ul>
  <li>Capturava o conteúdo HTML das páginas</li>
  <li>Extraía códigos dos produtos</li>
  <li>Separava sessões e coleções</li>
  <li>Obtinha preços automaticamente</li>
  <li>Capturava pontuação dos itens</li>
  <li>Classificava produtos por categoria</li>
  <li>Tratava dados inconsistentes</li>
  <li>Persistia tudo automaticamente no banco de dados</li>
</ul>

<p>
Isso eliminava praticamente todo o trabalho manual de atualização de catálogo.
</p>

---

<h2>🧠 Organização inteligente de catálogo</h2>

<p>
O sistema identificava automaticamente a estrutura textual das páginas do portal e reorganizava os dados em formato comercial.
</p>

<p>
Os produtos eram vinculados automaticamente a:
</p>

<ul>
  <li>Seções de catálogo</li>
  <li>Coleções especiais</li>
  <li>Linha de produtos</li>
  <li>Preço atual</li>
  <li>Pontuação de consultora</li>
</ul>

<p>
Também existia diferenciação automática entre:
</p>

<ul>
  <li>Produtos com pontuação</li>
  <li>Produtos promocionais</li>
  <li>Itens sem pontuação</li>
  <li>Produtos de sessões especiais</li>
</ul>

---

<h2>📊 Controle operacional</h2>

<p>
Além da sincronização do catálogo, o sistema ajudava no gerenciamento diário da atividade comercial da consultora.
</p>

<ul>
  <li>Consulta rápida de produtos</li>
  <li>Organização de pedidos</li>
  <li>Controle de preços atualizados</li>
  <li>Visualização simplificada do catálogo</li>
  <li>Centralização de informações comerciais</li>
</ul>

---

<h2>🔄 Automação de navegação</h2>

<p>
O sistema possuía um mecanismo automatizado de navegação web integrado diretamente na aplicação.
</p>

<p>
A navegação era capaz de:
</p>

<ul>
  <li>Detectar páginas específicas</li>
  <li>Executar login automático</li>
  <li>Submeter formulários</li>
  <li>Interpretar elementos HTML</li>
  <li>Validar mensagens de erro</li>
  <li>Detectar bloqueios de acesso</li>
  <li>Extrair conteúdo textual das páginas</li>
</ul>

<p>
Tudo isso era realizado automaticamente em background pelo sistema.
</p>

---

<h2>🗄️ Banco de dados</h2>

<p>
O sistema utilizava integração via ADO para armazenamento das informações locais.
</p>

<p>
Os dados capturados do portal eram persistidos automaticamente contendo:
</p>

<ul>
  <li>Código do produto</li>
  <li>Nome</li>
  <li>Sessão</li>
  <li>Coleção</li>
  <li>Preço</li>
  <li>Pontuação</li>
  <li>Estrutura hierárquica do catálogo</li>
</ul>

---

<h2>🖥️ Interface</h2>

<ul>
  <li>Navegador embutido</li>
  <li>Área de captura textual</li>
  <li>Painéis de processamento</li>
  <li>Separação automática de conteúdo</li>
  <li>Indicador visual de progresso</li>
  <li>Ferramentas de sincronização</li>
  <li>Controle de importação</li>
</ul>

---

<h2>🛠️ Tecnologias utilizadas</h2>

<ul>
  <li>Delphi 7</li>
  <li>VCL (Visual Component Library)</li>
  <li>ADO Database Components</li>
  <li>TWebBrowser / Internet Explorer Engine</li>
  <li>Manipulação HTML via MSHTML</li>
  <li>Automação Web embarcada</li>
</ul>

---

<h2>🎯 Objetivo do projeto</h2>

<p>
O objetivo principal do <b>MK Sales Manager</b> era reduzir o esforço operacional da consultora independente, centralizando informações comerciais e automatizando tarefas repetitivas relacionadas ao catálogo Mary Kay.
</p>

<p>
A aplicação buscava oferecer mais produtividade, agilidade na consulta de produtos e maior controle das informações comerciais utilizadas no dia a dia.
</p>

---

<h2>📸 Preview</h2>

<p align="center">
  <img width="650" height="289" alt="image" src="https://github.com/user-attachments/assets/5a4742c6-f789-4370-8d07-180f590fddbd" />
</p>

---

<p align="center">
Sistema legado desenvolvido para automação comercial e atualização inteligente de catálogo Mary Kay.
</p>
