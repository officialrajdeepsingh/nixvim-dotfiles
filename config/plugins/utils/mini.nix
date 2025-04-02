{
  plugins.mini = {
    enable = true;

    modules = {
      indentscope = {
        symbol = "│";
        options = {
          try_as_border = true;
        };
      };
      surround = { };
      comment = {
        mappings = {
          comment = "<Leader>//"; # Toggle comment on current line
          comment_line = "<Leader>//"; # Toggle comment on current line
          comment_visual = "<Leader>//"; # Toggle comment on visual selection
        };
      };
    };
  };
}
