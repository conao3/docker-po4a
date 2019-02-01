
![https://img.shields.io/github/tag/conao3/docker-po4a.svg?style=flat-square](https://github.com/conao3/docker-po4a)
![https://img.shields.io/travis/conao3/docker-po4a/master.svg?style=flat-square](https://travis-ci.org/conao3/docker-po4a)
![https://img.shields.io/github/license/conao3/docker-po4a.svg?style=flat-square](https://github.com/conao3/docker-po4a)
![](https://img.shields.io/docker/pulls/conao3/jq.svg?style=flat-square)
![](https://files.conao3.com/github-header/gif/docker-po4a.gif)(https://github.com/conao3/github-header)

1. [docker-po4a](#docker-po4a)
1. [Install](#install)
1. [Usage](#usage)
    1. [Using po4a](#using-po4a)
    1. [Using other bundled tool](#using-other-bundled-tool)

# docker-po4a
`docker-po4a` is standalone [po4a](https://github.com/mquinson/po4a).

# Install
Depend Docker.

```bash
brew install docker
brew cask install docker

# docker start-up test
docker version
```

# Usage
## Using po4a
Run `docker-po4a` like as below.

```bash
docker container run -i --rm conao3/po4a:0.55 --version
    po4a version 0.55.
    Written by Martin Quinson and Denis Barbier.

    Copyright © 2002-2018 Software in the Public Interest, Inc.
    This is free software; see source code for copying
    conditions. There is NO warranty; not even for
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```

Or, alias it.

```bash
alias po4a0.55='docker container run -i --rm conao3/po4a:0.55'
po4a0.55 --version
    po4a version 0.55.
    Written by Martin Quinson and Denis Barbier.

    Copyright © 2002-2018 Software in the Public Interest, Inc.
    This is free software; see source code for copying
    conditions. There is NO warranty; not even for
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```

## Using other bundled tool
Since ENTRYPOINT is `po4a`, override ENTRYPOINT to use other `po4a` tool.

```bash
docker container run -i --rm  --entrypoint="" conao3/po4a:0.55 po4a-translate --version
    po4a-translate version 0.55.
    Written by Martin Quinson and Denis Barbier.
    
    Copyright © 2002-2018 Software in the Public Interest, Inc.
    This is free software; see source code for copying
    conditions. There is NO warranty; not even for
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
    
alias po4a-translate0.55='docker container run -i --rm  --entrypoint="" conao3/po4a:0.55 po4a-translate'
po4a-translate0.55 --version
    po4a-translate version 0.55.
    Written by Martin Quinson and Denis Barbier.
    
    Copyright © 2002-2018 Software in the Public Interest, Inc.
    This is free software; see source code for copying
    conditions. There is NO warranty; not even for
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```
Below tools are all `po4a` bundled tools.

```bash
alias po4a0.55='docker container run -i --rm conao3/po4a:0.55'
alias po4a-gettextize0.55='docker container run -i --rm  --entrypoint="" conao3/po4a:0.55 po4a-gettextize'
alias po4a-normalize0.55='docker container run -i --rm  --entrypoint="" conao3/po4a:0.55 po4a-normalize'
alias po4a-translate0.55='docker container run -i --rm  --entrypoint="" conao3/po4a:0.55 po4a-translate'
alias po4a-updatepo0.55='docker container run -i --rm  --entrypoint="" conao3/po4a:0.55 po4a-updatepo'
```
