Config files
############

.inputrc
  The file belongs in user's $HOME directory. It modifies the default uparrow
  and downarrow behavior to resemble that of of Firefox's navigation bar.
  Instead of just cycling through previous/next command in bash history,
  you get history-based autocompletion. Old behavior still available
  if command prompt is empty(CTRL-u will clear it if you're in a hurry).

.vimrc
  Configuration file for the vim text editor. Highlights:
  
  *  Syntax highlighting is ON by default.
  *  TAB key inserts 4 spaces (the recommended indentation for Python).
  *  lines exceeding 80 characters are highlighted
  *  F7, F8 mapped to previous/next tab - useful for editing multiple files.
