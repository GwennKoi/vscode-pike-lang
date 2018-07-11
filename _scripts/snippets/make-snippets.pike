#!/usr/bin/env pike
//! You can run this script directly from VSCode via ctrl/cmd + b and then
//! "Generate Snippets".

constant OUTPUT_PATH = combine_path(__DIR__, "../../snippets/pike.json");
constant INPUT_PATH  = combine_path(__DIR__, "snipps");

int main(int argc, array(string) argv)
{
  array(mapping) out = ({});

  foreach (glob("*.pike", get_dir(INPUT_PATH)), string snipp) {
    string file = combine_path(INPUT_PATH, snipp);
    string c = "mapping data = " + Stdio.read_file(file) + ";";

    mapping m;

    if (mixed e = catch(m = compile_string(c)()->data)) {
      werror("Malformed syntax in %O!\n", file);
      continue;
    }

    if (m["is-auto-completion"]) {
      m_delete(m, "is-auto-completion");
      foreach (m; string key; string val) {
        mapping mm = ([
          key :  ([
            "prefix": key,
            "body": val
          ])
        ]);

        out += ({ mm });
      }

      continue;
    }

    if (has_value(m->body, "\n")) {
      m->body = String.trim_all_whites(m->body) / "\n";
    }

    mapping mm = ([
      m->name : ([
        "prefix": m->prefix,
        "body": m->body
      ])
    ]);

    out += ({ mm });
  }

  Stdio.write_file(
    OUTPUT_PATH,
    Standards.JSON.encode(out, Standards.JSON.HUMAN_READABLE)
  );

  write("All was fine and dandy, %O was generated.\n", OUTPUT_PATH);
}
