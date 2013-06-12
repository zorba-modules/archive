import module namespace a = "http://www.zorba-xquery.com/modules/archive";
import module namespace b = "http://www.zorba-xquery.com/modules/converters/base64";

let $fake_archive := xs:base64Binary("YWJj")
let $new-archive := a:update($fake_archive, "foo2.xml", "<foo2/>")
return (count(a:entries($new-archive)), a:extract-text($new-archive, "foo2.xml"))
