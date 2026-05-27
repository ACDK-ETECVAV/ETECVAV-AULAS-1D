/* ========================= */
/* script.js */
/* ========================= */

const commands = [

    /* ESTRUTURA */
    
    {
    title:"<html>",
    desc:"Raiz do documento HTML.",
    code:"<html></html>"
    },
    
    {
    title:"<head>",
    desc:"Informações da página.",
    code:"<head></head>"
    },
    
    {
    title:"<body>",
    desc:"Corpo do site.",
    code:"<body></body>"
    },
    
    {
    title:"<title>",
    desc:"Título da aba.",
    code:"<title>Meu Site</title>"
    },
    
    /* TEXTO */
    
    {
    title:"<h1>",
    desc:"Título principal.",
    code:"<h1>Título</h1>"
    },
    
    {
    title:"<h2>",
    desc:"Subtítulo.",
    code:"<h2>Subtítulo</h2>"
    },
    
    {
    title:"<p>",
    desc:"Parágrafo.",
    code:"<p>Texto</p>"
    },
    
    {
    title:"<strong>",
    desc:"Texto em negrito.",
    code:"<strong>Importante</strong>"
    },
    
    {
    title:"<em>",
    desc:"Texto em itálico.",
    code:"<em>Texto</em>"
    },
    
    {
    title:"<code>",
    desc:"Código.",
    code:"<code>alert('Olá')</code>"
    },
    
    {
    title:"<blockquote>",
    desc:"Citação.",
    code:"<blockquote>Citação</blockquote>"
    },
    
    {
    title:"<span>",
    desc:"Elemento inline.",
    code:"<span>Texto</span>"
    },
    
    {
    title:"<br>",
    desc:"Quebra de linha.",
    code:"<br>"
    },
    
    /* LINKS */
    
    {
    title:"<a>",
    desc:"Link.",
    code:'<a href="">Link</a>'
    },
    
    {
    title:"mailto",
    desc:"Link de email.",
    code:'<a href="mailto:email@email.com">Email</a>'
    },
    
    /* LISTAS */
    
    {
    title:"<ul>",
    desc:"Lista não ordenada.",
    code:"<ul><li>Item</li></ul>"
    },
    
    {
    title:"<ol>",
    desc:"Lista ordenada.",
    code:"<ol><li>Item</li></ol>"
    },
    
    {
    title:"<li>",
    desc:"Item da lista.",
    code:"<li>Item</li>"
    },
    
    /* IMAGEM */
    
    {
    title:"<img>",
    desc:"Imagem.",
    code:'<img src="imagem.jpg">'
    },
    
    /* FORMULÁRIO */
    
    {
    title:"<form>",
    desc:"Formulário.",
    code:'<form></form>'
    },
    
    {
    title:"<input>",
    desc:"Campo de texto.",
    code:'<input type="text">'
    },
    
    {
    title:"checkbox",
    desc:"Caixa de seleção.",
    code:'<input type="checkbox">'
    },
    
    {
    title:"submit",
    desc:"Botão submit.",
    code:'<input type="submit">'
    },
    
    {
    title:"textarea",
    desc:"Área de texto.",
    code:'<textarea></textarea>'
    },
    
    /* TABELA */
    
    {
    title:"<table>",
    desc:"Tabela.",
    code:"<table></table>"
    },
    
    {
    title:"<tr>",
    desc:"Linha da tabela.",
    code:"<tr></tr>"
    },
    
    {
    title:"<td>",
    desc:"Coluna.",
    code:"<td>Texto</td>"
    },
    
    {
    title:"<th>",
    desc:"Cabeçalho.",
    code:"<th>Título</th>"
    },
    
    /* VIDEO */
    
    {
    title:"<video>",
    desc:"Vídeo.",
    code:'<video controls></video>'
    },
    
    /* CSS */
    
    {
    title:"display:flex",
    desc:"Flexbox.",
    code:"display:flex;"
    },
    
    {
    title:"justify-content",
    desc:"Alinhamento horizontal.",
    code:"justify-content:center;"
    },
    
    {
    title:"align-items",
    desc:"Alinhamento vertical.",
    code:"align-items:center;"
    },
    
    {
    title:"background",
    desc:"Fundo.",
    code:"background:black;"
    },
    
    {
    title:"color",
    desc:"Cor do texto.",
    code:"color:white;"
    },
    
    {
    title:"padding",
    desc:"Espaçamento interno.",
    code:"padding:20px;"
    },
    
    {
    title:"margin",
    desc:"Espaçamento externo.",
    code:"margin:20px;"
    },
    
    {
    title:"border-radius",
    desc:"Borda arredondada.",
    code:"border-radius:20px;"
    },
    
    {
    title:"box-shadow",
    desc:"Sombra.",
    code:"box-shadow:0 0 20px black;"
    },
    
    {
    title:"font-size",
    desc:"Tamanho da fonte.",
    code:"font-size:20px;"
    },
    
    {
    title:"width",
    desc:"Largura.",
    code:"width:300px;"
    },
    
    {
    title:"height",
    desc:"Altura.",
    code:"height:300px;"
    },
    
    {
    title:"overflow",
    desc:"Controle de rolagem.",
    code:"overflow:auto;"
    }
    
    ];
    
    /* ========================= */
    /* RENDER COMMANDS */
    /* ========================= */
    
    const commandsContainer =
    document.getElementById("commandsContainer");
    
    const searchInput =
    document.getElementById("searchInput");
    
    function renderCommands(filter=""){
    
    commandsContainer.innerHTML="";
    
    const filtered = commands.filter(cmd =>
    cmd.title.toLowerCase()
    .includes(filter.toLowerCase())
    );
    
    if(filtered.length===0){
    
    commandsContainer.innerHTML =
    "<p style='text-align:center;color:#94a3b8'>Nenhum comando encontrado.</p>";
    
    return;
    
    }
    
    filtered.forEach(cmd=>{
    
    commandsContainer.innerHTML += `
    
    <div class="command-card">
    
    <h3>${cmd.title}</h3>
    
    <p>${cmd.desc}</p>
    
    <code>${cmd.code}</code>
    
    </div>
    
    `;
    
    });
    
    }
    
    searchInput.addEventListener("input",(e)=>{
    
    renderCommands(e.target.value);
    
    });
    
    renderCommands();
    
    /* ========================= */
    /* EXECUTAR */
    /* ========================= */
    
    function runCode(){
    
    const html =
    document.getElementById("htmlCode").value;
    
    const css =
    document.getElementById("cssCode").value;
    
    document.getElementById("preview").srcdoc = `
    
    <style>
    ${css}
    </style>
    
    ${html}
    
    `;
    
    }
    
    /* ========================= */
    /* DOWNLOAD */
    /* ========================= */
    
    function downloadFile(filename, content){
    
    const blob = new Blob(
    [content],
    {type:"text/plain"}
    );
    
    const a =
    document.createElement("a");
    
    a.href =
    URL.createObjectURL(blob);
    
    a.download = filename;
    
    a.click();
    
    URL.revokeObjectURL(a.href);
    
    }
    
    function downloadHTML(){
    
    const name =
    document.getElementById("projectName")
    .value.trim() || "site";
    
    const html =
    document.getElementById("htmlCode")
    .value;
    
    downloadFile(
    `${name}.html`,
    html
    );
    
    }
    
    function downloadCSS(){
    
    const name =
    document.getElementById("projectName")
    .value.trim() || "site";
    
    const css =
    document.getElementById("cssCode")
    .value;
    
    downloadFile(
    `${name}.css`,
    css
    );
    
    }
    
    function downloadCompleteProject(){
    
    const name =
    document.getElementById("projectName")
    .value.trim() || "site";
    
    const html =
    document.getElementById("htmlCode")
    .value;
    
    const css =
    document.getElementById("cssCode")
    .value;
    
    const project = `
    <!DOCTYPE html>
    <html lang="pt-BR">
    
    <head>
    
    <meta charset="UTF-8">
    
    <meta name="viewport"
    content="width=device-width, initial-scale=1.0">
    
    <title>${name}</title>
    
    <style>
    
    ${css}
    
    </style>
    
    </head>
    
    <body>
    
    ${html}
    
    </body>
    </html>
    `;
    
    downloadFile(
    `${name}.html`,
    project
    );
    
    }
    
    /* ========================= */
    /* AUTO EXEC */
    /* ========================= */
    
    runCode();
    
    document
    .getElementById("htmlCode")
    .addEventListener("input",runCode);
    
    document
    .getElementById("cssCode")
    .addEventListener("input",runCode);