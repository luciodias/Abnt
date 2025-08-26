#import "../estilo/metadados.typ": metadados, estilo

// Formatação da capa do trabalho acadêmico
// formato da página
#set page(
    paper: estilo.folha,
    margin: (right: estilo.margens.direita, top: estilo.margens.superior, left: estilo.margens.esquerda, bottom: estilo.margens.inferior),
    header-ascent: 0cm,
    footer-descent: 0cm,
  )
#set text(
    font: estilo.fonte,
    size: estilo.size,
 )

 #set par(
    leading: 1.5em,
    justify: true,
    hanging-indent: 0em,
 )

#grid(
  rows: 1fr,
  //fill:red,
  align:center,
  gutter: 15pt,
  [#upper(metadados.centro)\
  #metadados.faculdade\
  #metadados.cursos],
  [
    #metadados.autor.titulacao 
    #metadados.autor.nome 
    #metadados.autor.sobrenome_meio 
    #metadados.autor.sobrenome
  ],
  [#metadados.titulo],
  align(bottom)[
    #metadados.local\
    #metadados.data
  ],
)
