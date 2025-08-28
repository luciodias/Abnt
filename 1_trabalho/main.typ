#import "/partes/capa_.typ": getCapa, setPage, setEstilo

#let cf = "/1_trabalho/config.yml"
#show: doc => setPage(cf, doc)
#show: doc => setEstilo(cf, doc)
#getCapa(cf)
#counter(page).update(1) 
#include("/estilo/sumario.typ")
#include("cap1.typ")
#include("referencia.typ")