<h1 align="center">🛒 MK Sales Manager</h1>

<p align="center">
Sistema legado desenvolvido para gerenciamento comercial, controle de estoque, pedidos, caixa, clientes e vendas.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Status-Legado-yellow">
  <img src="https://img.shields.io/badge/Linguagem-Delphi%207-blue">
  <img src="https://img.shields.io/badge/Database-ADO%20%2F%20Access-success">
  <img src="https://img.shields.io/badge/Tipo-ERP%20Comercial-lightgrey">
</p>

---

<h2>📌 Sobre</h2>

<p>
O <b>MK Sales Manager</b> foi desenvolvido como uma solução completa para automação comercial e operacional, centralizando os principais processos administrativos de uma empresa em uma única aplicação desktop.
</p>

<p>
O sistema integra módulos de:
</p>

<ul>
  <li>Cadastro de produtos</li>
  <li>Controle de estoque</li>
  <li>Pedidos</li>
  <li>Clientes</li>
  <li>Vendedores</li>
  <li>Caixa</li>
  <li>Cheques</li>
  <li>Pontuação</li>
  <li>Usuários</li>
  <li>Relatórios e gráficos</li>
</ul>

<p>
Toda a aplicação foi construída em Delphi 7 utilizando componentes nativos VCL, ADO e integração com Microsoft Excel.
</p>

---

<h2>⚙️ Principais funcionalidades</h2>

<h3>🧾 Gestão de Pedidos</h3>

<ul>
  <li>Cadastro completo de pedidos</li>
  <li>Controle de status</li>
  <li>Registro automático de data e horário</li>
  <li>Vinculação com vendedores e clientes</li>
  <li>Controle de formas de pagamento</li>
  <li>Processamento de pagamentos com cheque</li>
  <li>Atualização automática do caixa</li>
</ul>

<p>
Ao concluir um pedido, o sistema:
</p>

<ul>
  <li>Debita automaticamente os materiais do estoque</li>
  <li>Valida disponibilidade mínima</li>
  <li>Registra movimentações financeiras</li>
  <li>Atualiza relatórios e gráficos mensais</li>
</ul>

<p>
O sistema também realiza bloqueios automáticos quando há risco de estoque insuficiente. :contentReference[oaicite:0]{index=0}
</p>

---

<h3>📦 Controle de Estoque</h3>

<p>
O estoque é dividido por categorias e materiais específicos utilizados na produção.
</p>

<p>
Entre os itens controlados:
</p>

<ul>
  <li>Pano</li>
  <li>Madeira</li>
  <li>Espuma</li>
  <li>Flocos</li>
  <li>Pregos</li>
  <li>Grampos</li>
  <li>Percinta</li>
</ul>

<p>
O sistema monitora limites mínimos automaticamente e impede operações que comprometam a produção. :contentReference[oaicite:1]{index=1}
</p>

---

<h3>💰 Controle de Caixa</h3>

<ul>
  <li>Entrada manual de valores</li>
  <li>Retirada de valores</li>
  <li>Validação de saldo disponível</li>
  <li>Total atualizado em tempo real</li>
  <li>Alertas visuais para saldo zerado</li>
</ul>

<p>
As movimentações financeiras são refletidas automaticamente conforme novos pedidos são registrados. :contentReference[oaicite:2]{index=2}
</p>

---

<h3>👥 Gestão de Clientes e Vendedores</h3>

<ul>
  <li>Cadastro completo</li>
  <li>Consultas rápidas</li>
  <li>Pesquisa por filtros</li>
  <li>Integração direta com pedidos</li>
  <li>Controle de pontuação</li>
</ul>

<p>
O sistema possui também recursos de pontuação e níveis para clientes ou usuários específicos. :contentReference[oaicite:3]{index=3}
</p>

---

<h3>📊 Relatórios e Exportações</h3>

<ul>
  <li>Exportação automática para Microsoft Excel</li>
  <li>Relatórios filtrados por período</li>
  <li>Consultas de pagamentos</li>
  <li>Consulta de cheques</li>
  <li>Gráficos mensais</li>
</ul>

<p>
As exportações criam planilhas formatadas automaticamente com dados operacionais e financeiros. :contentReference[oaicite:4]{index=4}
</p>

---

<h2>🧠 Inteligência operacional</h2>

<p>
O sistema implementa diversas regras automáticas para evitar inconsistências operacionais.
</p>

<ul>
  <li>Bloqueio de pedidos sem estoque suficiente</li>
  <li>Validação de dados numéricos</li>
  <li>Controle de saldo de caixa</li>
  <li>Atualização automática de quantidades</li>
  <li>Controle de pagamentos via cheque</li>
  <li>Atualização automática de indicadores mensais</li>
</ul>

---

<h2>🔐 Controle de acesso</h2>

<p>
O login é integrado ao banco de dados e armazena configurações locais de conexão via arquivo INI.
</p>

<p>
O sistema inclui:
</p>

<ul>
  <li>Autenticação de usuários</li>
  <li>Controle administrativo</li>
  <li>Persistência de conexão</li>
  <li>Validação de CAPS LOCK</li>
</ul>

<p>
As configurações eram armazenadas localmente no diretório:
</p>

<pre>
C:\MK\conbd.ini
</pre>

:contentReference[oaicite:5]{index=5}

---

<h2>🖥️ Interface</h2>

<p>
A interface foi construída seguindo o padrão clássico de aplicações comerciais Windows dos anos 2000.
</p>

<ul>
  <li>Menus administrativos</li>
  <li>Toolbars com atalhos rápidos</li>
  <li>DBGrids para listagens</li>
  <li>Consultas em tempo real</li>
  <li>Integração visual com Excel</li>
  <li>Feedback visual em operações críticas</li>
</ul>

<p>
O sistema possuía diversos módulos independentes carregados dinamicamente pela aplicação principal. :contentReference[oaicite:6]{index=6}
</p>

---

<h2>📈 Recursos avançados</h2>

<ul>
  <li>Gráficos mensais automáticos</li>
  <li>Controle de cheques múltiplos por pedido</li>
  <li>Filtros avançados de pedidos</li>
  <li>Atualização automática de grids</li>
  <li>Consultas rápidas por código</li>
  <li>Integração com estoque em tempo real</li>
</ul>

---

<h2>🛠️ Tecnologias</h2>

<ul>
  <li>Delphi 7</li>
  <li>VCL (Visual Component Library)</li>
  <li>ADO Components</li>
  <li>Microsoft Excel Automation</li>
  <li>RXLib Components</li>
  <li>Microsoft Access / Banco local</li>
  <li>Arquivos INI para configuração</li>
</ul>

---

<h2>📂 Estrutura do sistema</h2>

<p>
A aplicação era dividida em diversos módulos independentes:
</p>

<ul>
  <li>Login</li>
  <li>Principal</li>
  <li>Produtos</li>
  <li>Clientes</li>
  <li>Pedidos</li>
  <li>Caixa</li>
  <li>Cheques</li>
  <li>Relatórios</li>
  <li>Usuários</li>
  <li>Gráficos</li>
</ul>

---

<h2>📸 Preview</h2>

<p align="center">
  <img width="650" height="289" alt="image" src="https://github.com/user-attachments/assets/5a4742c6-f789-4370-8d07-180f590fddbd" />
</p>

---

<p align="center">
Sistema legado desenvolvido para centralizar operações comerciais, financeiras e controle de estoque.
</p>
