///List(...)
// src: https://github.com/dicksonlaw583/gmsugar/blob/master/List.gml
// Insert in same order
{
var list = ds_list_create();
for (var i = 0; i < argument_count; i++) {
  ds_list_add(list, argument[i]);
}
return list;
}
