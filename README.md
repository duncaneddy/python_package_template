# python_package_template

A simple "template" for package development that implements packaging, unit testing, ci/cd, and deployment through containerization.

To get started with this template. Clone it then replace every instance of `mypkg` with your package name.

## Usage

You can install the package for local development with:

```bash
pip install -e ".[dev]"
```

The `[dev]` flag installs the development dependencies, which in this case are `pytest` and `pytest-cov`. These are
used for running the tests.

You can run the tests with:

```bash
pytest
```

You can run the streamlit app with:

```bash
streamlit run mypkg/app.py
```

Or you can run it as a docker container with:

```bash
docker-compose up
```

To stop the container, you can run:

```bash
docker-compose down
```

For efficiency, I generally alias the `docker-compose` command to `dc` in my shell. You can do this by adding the following line to your `.bashrc` or `.zshrc`:

```bash
alias dc='docker-compose'
```

Finally, you can execute the built-in CLI with:

```bash
mypkg --help
```
