import typer

from mypkg.cli.sub import app as sub_app

app = typer.Typer()

# Add sub-clis
app.add_typer(sub_app, name="db")

def main():
    app()