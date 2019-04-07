def _parse_char(char) {
    switch char {
        ">" { _add(AST::Next.new); }
        "<" { _add(AST::Prev.new); }
        "+" { _add(AST::Inc.new); }
        "-" { _add(AST::Dec.new); }
        "." { _add(AST::Output.new); }
        "," { _add(AST::Input.new); }
        "[" { _open_loop(); }
        "]" { _close_loop(); }
    }
}