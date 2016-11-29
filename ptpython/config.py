from __future__ import unicode_literals

__all__ = (
    'configure',
)


def configure(repl):
    """This is called during the start-up of ptpython."""

    # Enable history search
    repl.enable_history_search = True
    # Highlight matching parethesis
    repl.highlight_matching_parenthesis = True
    # Show line numbers (when the input contains multiple lines)
    repl.show_line_numbers = True
    # Show function signature
    repl.show_signature = True
    # Use this colorscheme for the code
    repl.use_code_colorscheme('vim')
