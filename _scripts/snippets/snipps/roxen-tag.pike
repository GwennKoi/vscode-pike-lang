([
"name": "Roxen <tag/>",
"prefix": "roxta",
"body": #"
class Tag${1:Name}
{
  inherit RXML.Tag;

  constant name = \"${2:tag-name}\";

  mapping(string:RXML.Type) req_arg_types = ([
    // \"attribute\" : RXML.t_text(RXML.PEnt)
  ]);

  mapping(string:RXML.Type) opt_arg_types = ([
    // \"attribute\" : RXML.t_text(RXML.PEnt)
  ]);

  class Frame
  {
    inherit RXML.Frame;

    array do_return(RequestID id)
    {
      ${3:// Code here}

      result = \"\";

      return 0;
    }
  }
}
"
])
