import module namespace a = "http://www.expath.org/ns/archive";
import schema namespace as = "http://www.expath.org/ns/archive";
import module namespace f = "http://expath.org/ns/file";

for $a in a:entries(f:read-binary(resolve-uri("simple.tar.bz2")))
return validate { $a }
