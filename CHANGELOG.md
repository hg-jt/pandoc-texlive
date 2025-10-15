# Changelog

All notable changes to this project will be documented in this file. The format
is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this
project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- Upgraded base image to Debian "Forky"


## [20251015]

### Added

- Added IBM Plex Sans Condensed font

### Changed

- Upgraded Pandoc to 3.8.2
- Aligned with latest version and packaging of IBM Plex fonts
- *Notes Template*: Switched to IBM Plex Math as the default math font
- *Notes Template*: Removed page number from first page


## [20241228]

### Added

- Added support for selecting architectures (e.g. `arm64`)
- Added "labnotes" template.
- Added Noto Sans Math font
- Added Plex Math font
- Added support for textile ouptut in `pd` script

### Changed

- Upgraded Pandoc to 3.6.1
- Upgraded base image to Debian "Trixie"
- Upgraded fonts (i.e. Charis SIL, IBM Plex, Source Code Pro, Source Sans 3, and Source Serif 4)
- Moved docker provisioning into a heredoc in the Dockerfile
- *Notes Template*: Updated to align with latest (circa 3.2) Pandoc Latex template


## [20230226]

### Added

- *Notes Template*: Added highlighted box around block quotes
- *Better Default Template*: Added a new template to modernize the default latex template

### Changed

- Revved base image from Debian "Bullseye" to "Bookworm"
- Upgraded Pandoc to 2.19.2
- Upgraded IBM Plex from 5.1.3 to 6.1.1
- Cleaned up docker-publish workflow.
- Changed default user to to a unprivileged account
- *Notes Template*: Reformatted headings styles
- *Notes Template*: Changed default font to sans serif (IBM Plex Sans)
- *Notes Template*: Template cleanup

### Removed

- Removed "report" and "techdoc" templates


## [20220530]

### Added

- *Notes Template*: Added framed quotes and custom inline code font


## [20220509]

### Added

- Added Github Workflow configuration
- Added examples
- Added Lua Filter support
- Added "report" template
- Added "techdoc" template

### Changed

- Upgraded to Pandoc 2.18
- Various font updates
- *Notes Template*: Styling tweaks for listings and quotes

[Unreleased]: https://github.com/hg-jt/pandoc-texlive/compare/20251015...main
[20241228]: https://github.com/hg-jt/pandoc-texlive/compare/20241228...20251015
[20241228]: https://github.com/hg-jt/pandoc-texlive/compare/20230226...20241228
[20230226]: https://github.com/hg-jt/pandoc-texlive/compare/20220530...20230226
[20220530]: https://github.com/hg-jt/pandoc-texlive/compare/20220509...20220530
[20220509]: https://github.com/hg-jt/pandoc-texlive/tree/20220509
