([
"name": "Roxen <if#tag>",
"prefix": "roxif",
"body": #"
class TagIf${1:Name}
{
  inherit RXML.Tag;

  constant name = \"if\";
  constant plugin_name = \"${2:plugin-name}\";

  mapping(string:RXML.Type) req_arg_types = ([
    // \"attribute\" : RXML.t_text(RXML.PXml)
  ]);

  mapping(string:RXML.Type) opt_arg_types = ([
    // \"attribute\" : RXML.t_text(RXML.PXml)
  ]);

  int eval(string a, RequestID id, mapping args)
  {
    ${3:// Code here}

    return 0; // 0 or 1
  }
}
"
])
