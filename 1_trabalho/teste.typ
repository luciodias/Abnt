#import "/partes/capa_.typ": getCapa
#import "/estilo/estilo.typ": setPage, setEstilo

#let cf = "/1_trabalho/config.yml"
//#show: doc => setPage(cf, doc)
//#show: doc => setEstilo(cf, doc)
#getCapa(cf)
