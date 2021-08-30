# pandoc-texlive

TeX Live and Pandoc in a Docker container.

This project contains the configuration for a Docker container that can be used
for generating PDFs with Pandoc and/or XeLaTeX. The configuration is centered
around an installation of TeX Live which provides XeLaTeX and it's supporting
tools and packages. The image's default entry point is `pandoc`.

> *NOTE*: For details about how to use this image see the use cases below.

In addition to what the Tex Live distribution packages, the following open
source fonts are included:

| Name                                                                      | License     |
| ------------------------------------------------------------------------- | ----------- |
| [Adobe Source Code Pro](https://github.com/adobe-fonts/source-code-pro)   | [OFL 1.1]   |
| [Adobe Source Sans 3](https://github.com/adobe-fonts/source-sans-pro)     | [OFL 1.1]   |
| [Adobe Source Serif 4](https://github.com/adobe-fonts/source-serif-pro)   | [OFL 1.1]   |
| [Libre Caslon Text](https://github.com/impallari/Libre-Caslon-Text)       | [OFL 1.1]   |
| [Libre Franklin](https://github.com/impallari/Libre-Franklin)             | [OFL 1.1]   |

[OFL 1.1]: https://opensource.org/licenses/OFL-1.1

> *TIP*: You can make OTF or TTF fonts from your local system available to the
> container by mapping a volume it into the container in the appropriate
> directory underneath */usr/share/fonts* (e.g. */usr/share/fonts/opentype* for
> OTF fonts and */usr/share/fonts/truetype* for TTF fonts).
>
>     docker run --rm -it \
>       -v <path to your local fonts>:/usr/share/fonts/truetype:/usr/share/fonts/truetype \
>       hgjt/pandoc-texlive:latest


## Docker

### Building a *pandoc-texlive* Docker image

To build the image:

```sh
make build
```
