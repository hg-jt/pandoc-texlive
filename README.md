# pandoc-texlive

TeX Live and Pandoc in a Docker container.

This project contains the configuration for a Docker container that can be used
for generating PDFs with Pandoc and/or XeLaTeX. The configuration is centered
around an installation of TeX Live which provides XeLaTeX and it's supporting
tools and packages. The image's default entry point is `pandoc`.

In addition to what the Tex Live distribution packages, the following open
source fonts are included:

| Name                                                                    | Font Family Name  | License   |
|-------------------------------------------------------------------------|-------------------|-----------|
| [Adobe Source Code Pro](https://github.com/adobe-fonts/source-code-pro) | Source Code Pro   | [OFL 1.1] |
| [Adobe Source Sans 3](https://github.com/adobe-fonts/source-sans-pro)   | Source Sans 3     | [OFL 1.1] |
| [Adobe Source Serif 4](https://github.com/adobe-fonts/source-serif-pro) | Source Serif 4    | [OFL 1.1] |
| [Charis SIL](https://github.com/silnrsi/font-charis)                    | Charis SIL        | [OFL 1.1] |
| [IBM Plex](https://github.com/IBM/plex) (Sans, Serif, and Mono)         | IBM Plex          | [OFL 1.1] |
| [Libre Caslon Text](https://github.com/impallari/Libre-Caslon-Text)     | Libre Caslon Text | [OFL 1.1] |
| [Libre Franklin](https://github.com/impallari/Libre-Franklin)           | Libre Franklin    | [OFL 1.1] |

[OFL 1.1]: https://opensource.org/licenses/OFL-1.1

> *TIP*: You can make OTF or TTF fonts from your local system available to the
> container by mapping a volume it into the container in the appropriate
> directory underneath */usr/share/fonts* (e.g. */usr/share/fonts/opentype* for
> OTF fonts and */usr/share/fonts/truetype* for TTF fonts).
>
>     docker run --rm -it \
>       -v <path to your local fonts>:/usr/share/fonts/truetype \
>       ghcr.io/hg-jt/pandoc-texlive:main


## Usage

Container images for this project are published to GitHub Packages. The image
name is:

```
ghcr.io/hg-jt/pandoc-texlive:<tag>
```

The `<tag>` can be either a branch name or a tag name. To use the container in a
similar fashion to a local install of pandoc, you will want to mount a local
volume with your current working directory.


For example:

```sh
docker run \
       --rm -it
       -v "$(pwd)":/docs \
       ghcr.io/hg-jt/pandoc-texlive:main [OPTIONS]
```

To save some typing you can set the above command to a shell alias:

```sh
alias pandoc='docker run -v "$(pwd)":/docs --rm -it ghcr.io/hg-jt/pandoc-texlive:main'
```

[GitHub Packages]: https://github.com/hg-jt?tab=packages&repo_name=pandoc-texlive


### Generating PDFs

This projects includes both Pandoc and TexLive in a container for the purpose of
generating PDFs from markdown files. For example, to generate a PDF of this
README file:

```sh
docker run \
       --rm -it
       -v "$(pwd)":/docs \
       ghcr.io/hg-jt/pandoc-texlive:main \
       -i README.md \
       -o README.pdf
```

This command uses Pandoc's default LaTeX template to generate a PDF. The results
can be customized by setting certain CLI options and/or by using a YAML header
in the source file to set relevant parameters.

> *NOTE*: In practice, if you are using this image to generate PDFs, you likely
> want to set the PDF engine to XeLaTeX and enable the listings package at a
> minimum:
>
> ```sh
> docker run \
>        --rm -it
>        -v "$(pwd)":/docs \
>        ghcr.io/hg-jt/pandoc-texlive:main \
>        --pdf-engine=xelatex \
>        --listings \
>        -i README.md \
>        -o README.pdf
> ```


An alternative approach to customizing the output is to use custom templates.
One custom template, "notes", is provided with the image. The *notes* template
assumes that title has been set.

```sh
docker run \
       --rm \
       -it \
       -v "$(pwd)":/docs \
       ghcr.io/hg-jt/pandoc-texlive:main \
       --template notes \
       --pdf-engine=xelatex \
       --listings \
       -V title='README (pandoc-texlive)'
       -i README.md \
       -o README.pdf
```

See the examples directory for [examples](examples/README.md) of using header
metadata and templates.


## Development

To build the image for local testing:

```sh
make build
```

## Resources

- https://github.com/pandoc/dockerfiles
