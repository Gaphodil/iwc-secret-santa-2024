/// global_bool(name)
// Returns false if the variable doesn't exist,
// else returns the variable.
var name = argument0;

if (variable_global_exists(name))
    return variable_global_get(name);
return false;
