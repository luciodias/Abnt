#import "../metadados.typ": metadados, estilo

// Formatação da capa do trabalho acadêmico
// formato da página
#set page(
    paper: estilo.folha,
    margin: (inside: estilo.margens.interna, top: estilo.margens.superior, outside: estilo.margens.externa, bottom: estilo.margens.inferior),
    header-ascent: 0cm,
    footer-descent: 0cm,
  )
#set text(
    font:"Arial",
    size: 12pt,
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
