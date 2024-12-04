///print_list(str, ...)

var out = "";

var i;
for (i = 0; i < argument_count-1; i += 1) {
    out += string(argument[i]) + ",";
}
out += string(argument[i]);

show_debug_message(out);
