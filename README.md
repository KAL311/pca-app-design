# PCA Image Compressor — app design (Part 3)

Design write-up and mockup for an interactive PCA image-compression app: what it
does, how the interface is laid out, and the reasoning behind where the controls
sit.

Site: https://KAL311.github.io/pca-app-design/

The companion repository
[`pca-image-compression`](https://github.com/KAL311/pca-image-compression) holds
the compression function, the static analysis site, and the Shiny implementation
of this design.

## Contents

| Path | What it is |
|---|---|
| `index.qmd` | The design write-up, source of the site |
| `mockup.png` | The mockup image shown on the page |
| `src/mockup.html` | The HTML and CSS the mockup was rendered from |
| `src/mock_*.png` | The panel images, which are real output of the compression code |
| `src/build_standalone.R` | Inlines the PNGs so the page can be screenshotted |
| `docs/` | Rendered site, which is what GitHub Pages serves |

## Rebuilding the mockup image

```bash
cd src
Rscript build_standalone.R
"/c/Program Files/Google/Chrome/Application/chrome.exe" --headless=new --disable-gpu \
  --hide-scrollbars --force-device-scale-factor=2 --window-size=1230,820 \
  --screenshot=mockup_raw.png "file://$PWD/mockup.standalone.html"
cp mockup_raw.png ../mockup.png
```

## Rebuilding the site

```bash
quarto render
```
