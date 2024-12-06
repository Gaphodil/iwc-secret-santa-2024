///scrArray(...)
// src: https://github.com/dicksonlaw583/gmsugar/blob/master/Array.gml
// Insert in same order
{
var array;
for (var i = argument_count-1; i >= 0; i--) {
  array[i] = argument[i];
}
return array;
}
