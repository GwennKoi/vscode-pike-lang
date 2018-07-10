([
"name": "Roxen <emit#tag>",
"prefix": "roxem",
"body": #"
class TagEmit${1:Name}
{
  inherit RXML.Tag;

  constant name = \"emit\";
  constant plugin_name = \"${2:plugin-name}\";

  mapping(string:RXML.Type) req_arg_types = ([
    // \"attribute\" : RXML.t_text(RXML.PEnt)
  ]);

  mapping(string:RXML.Type) opt_arg_types = ([
    // \"attribute\" : RXML.t_text(RXML.PEnt)
  ]);

  array get_dataset(mapping args, RequestID id)
  {
    ${3:// Code}
    return ({});
  }
}
"
])
