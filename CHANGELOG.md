# Changelog

All notable changes to this project will be documented in this file. The format
is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this
project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).


## [20230226]

### Added

- *Notes Template*: Added highlighted box around block quotes.
- *Better Default Template*: Added a new template to modernize the default latex template.

### Changed

- Revved base image from Debian "Bullseye" to "Bookworm". 
- Upgraded Pandoc to 2.19.2.
- Upgraded IBM Plex from 5.1.3 to 6.1.1
- Cleaned up docker-publish workflow.
- Changed default user to to a unprivileged account
- *Notes Template*: Reformatted headings styles
- *Notes Template*: Changed default font to sans serif (IBM Plex Sans)
- *Notes Template*: Template cleanup.

### Removed

- Removed "report" and "techdoc" templates.


## [20220530]

### Added

- *Notes Template*: Added framed quotes and custom inline code font.


## [20220509]

### Added

- Added Github Workflow configuration.
- Added examples.
- Added Lua Filter support.
- Added "report" template.
- Added "techdoc" template.

### Changed

- Upgraded to Pandoc 2.18.
- Various font updates.
- *Notes Template*: Styling tweaks for listings and quotes. 

[Unreleased]: https://github.com/hg-jt/pandoc-texlive/compare/20220530...main
[20230226]: https://github.com/hg-jt/pandoc-texlive/compare/20220530...20230226
[20220530]: https://github.com/hg-jt/pandoc-texlive/compare/20220509...20220530
[20220509]: https://github.com/hg-jt/pandoc-texlive/tree/20220509
