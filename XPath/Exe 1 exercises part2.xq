(:PART 2:-> Dove i figli contengono testo-> qualsiasi testo:)
(:13:)
let $x :=  //text()/..
(:return $x:)

(:14:)
(:// senza dire nulla -> scendo al figlio più in basso:)
(:* -> Serve a selezionare tutti quelli che hanno una determinata caratteristica a prescindere dal nodo:)
let $x := //*[text()="Afghanistan"]
return $x
