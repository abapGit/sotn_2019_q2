# abapGit: State of the Nation 2019 Q2

[PDF](https://abapgit.github.io/sotn_2019_q2/abapgit_2019_q2.pdf)

## Editing
Recommend using [vscode](https://code.visualstudio.com/) for editing

## Compiling
Prerequsites,

```
gem install asciidoctor-pdf --pre
gem install asciidoctor-diagram
gem install rouge
```

Compiling,
```
asciidoctor-pdf -r asciidoctor-diagram -D build -a imagesdir=../build src/index.adoc
```

Or you can make use of docker,
```bash
sudo docker run --rm -v $(pwd):/sotn -w /sotn asciidoctor/docker-asciidoctor bash ./action/entrypoint.sh
```
