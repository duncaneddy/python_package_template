"""
Sub-commands for the `cli` command.
"""

import typer

app = typer.Typer()

@app.command()
def hello():
    """
    Simple Subcommand
    """
    typer.echo("World!")