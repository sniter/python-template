# Generic Python template project

## Structure

* `bin/` <br>
    scripts for running project in Docker-based infrastructure
* `envs/` <br>
    contains variables for specific environments
* `requirements/` <br>
    contains text files with dependencies
* `requirements.txt` <br>
    main file for describing dependencies for PROD environment
* `.dockerignore` <br>
    File contains [rules][6] what should not be copied into Docker image
* `.editorconfig` <br>
    [Editorconfig][1] describes default text encoding, line endings and indent for specific file formats
* `.gitignore` <br>
    use [Gitignore.io][3] for generation this file. Pls see following [config](http://gitignore.io/api/vim,python,virtualenv,pycharm+all,jupyternotebooks,openframeworks+visualstudio) as example
* `.pre-commit-config.yaml` <br>
    Git hooks implemented via [Pre-commit][4]
* `Dockerfile` <br>
    Building docker image for simplifying deployment acc. to [best practices][5]
* `Makefile` <br>
    Makefile used for automation some routines, i.e. create virtual environment, install dependencies and so on.
* `readme.md` <br>
    This readme. Used [Markdown][2] syntax
* `requirements.txt` <br>
    Python PIP dependencies for *PROD* env
* `requirements-dev.txt` <br>
    Python PIP dependencies for *DEV* env

* **TBD** build wheel

## Init Dev environment via virtualenv

```
virtualenv -p `which python3` venv
source venv/bin/activate
```

## Configure Git hooks

```
pre-commit install
```


[1]: https://editorconfig.org/
[2]: https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
[3]: http://gitignore.io/
[4]: https://pre-commit.com/
[5]: https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
[6]: https://docs.docker.com/engine/reference/builder/#dockerignore-file
