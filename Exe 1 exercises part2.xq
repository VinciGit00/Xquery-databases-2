(:PART 2:)
(:13:)
let $x :=  //text()/..
(:return $x:)

(:14:)
(:// senza dire nulla -> scendo al figlio più in basso:)
let $x := //*[text()="Afghanistan"]
(:return $x:)

(:15:)
let $x := //country | //GDP_per_capita
return $x
