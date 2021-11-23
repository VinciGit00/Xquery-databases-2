(:1: Extract all the articles:)
(://from the root to the leaves:)
let $x := //articles
(:return $x:)

(:2:Extract all the authors:)
let $x := //authors (:I can use also the complete path:)
(:return $x:)

(:3: Extract all the authors with no duplicates:)
(:distinct-value return a sequence of uni:)
let $x := distinct-values(//author) (:Remove all the duplicates:)
(:return $x:)

(:For counting:)
let $x := count(distinct-values(//author)) (:Remove all the duplicates:)
(:return $x:)

(:4:Select the parent of the initPage:)
let $x := //initPage/..
(:return $x:)

(:5: titles of papers with a single author:)
(:count of the author:)
let $x := //article/authors[count(author)<2]/..
(:return $x:)

(:6: all the titles of the authors with second position :)
(:Author with only position 1:)
let $x := distinct-values(//author[@position="02"])
(:return $x:)

(:7:all the papers with only 2 authors:)
(:Occhio alla selezione-> è una selezione shiftata:)
let $x := //article/authors[count(author)<2]/../title
(:return $x:)

let $x := //author[@position="01" and last()=position()]//../../title
(:return $x:)

(:8: :)
let $x := //authors/../..
(:or: //authors/../parent::*:)
(:return $x:)

(:11-> get all document attributes inside the docume:)
let $x := //@*/../name()
return $x



