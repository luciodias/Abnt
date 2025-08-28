#import "/estilo/estilo.typ": setPage, setEstilo 

// Conteudo da capa
#let getCapa(config) = [
  #let capa = yaml(config).capa
  #show: doc => setPage(config, doc)
  #show: doc => setEstilo(config, doc)
  
  #grid(
    rows: 1fr,
    //fill:red,
    align:center,
    gutter: 15pt,
    [
      #upper(capa.centro)\
      #capa.faculdade\
      #capa.curso
    ],
    [
      #capa.autor.titulacao 
      #capa.autor.nome 
      #capa.autor.sobrenome_meio 
      #capa.autor.sobrenome
    ],
    [
      #capa.titulo #capa.subtitulo
    ],
    align(bottom)[
        #capa.cidade\
        #capa.data
    ],
  )
]