## digital-culture-fa25

Course site for digital media & culture, built with Quartz 5 and themed to match
the [Plastic Labs blog](https://plasticlabs.ai/blog/). Scaffolded from
`~/Obsidian/quartz-template`, which documents the theme itself.

The Quarto project at `/Volumes/Projects/Quarto/digital-culture-fa25` is the
original source of this content and is unchanged.

```
digital-culture-fa25/
  content/     the vault, opened in Obsidian
  .quartz/     the Quartz 5 install
  public/      build output, gitignored
```

`./dev.sh` serves at http://localhost:8080, `./build.sh` writes `public/`. Both work
from any directory. If a port is taken: `PORT=8081 WS_PORT=3004 ./dev.sh`.

## Content

Seven pages converted from `.qmd`:

| Note                  | From                      |
| --------------------- | ------------------------- |
| index                 | index.qmd                 |
| bibliography          | bibliography.qmd          |
| bookish               | bookish.qmd               |
| key-concepts          | key-concepts.qmd          |
| w2-fandom             | w2-fandom.qmd             |
| w6-aesthetics         | w6-aesthetics.qmd         |
| fsu-smt-su25-syllabus | fsu-smt-su25-syllabus.qmd |

Assets live in `content/img`, `content/gif`, `content/pdf` and `content/video`,
copied from the Quarto project.

## How the conversion mapped

- `::: {.callout-note}` became `> [!note]`, with a leading `## Heading` used as
  the callout title. 18 notes and 1 tip.
- `[...]{.aside}` margin notes in `w2-fandom` became footnotes, since Quartz has
  no margin column. The `<br>` runs that spaced them out were dropped.
- `{{< video URL >}}` became a plain link, `{{< fa ... >}}` icons were removed.
- `.column-margin`, `.column-screen`, `layout=`, and `solutionbox` divs were
  unwrapped, keeping their contents. `content-visible when-format="pdf"` blocks
  were dropped.
- Four pages had a blank Quarto title (`"    "`) because the sidebar named them.
  They were given real titles.
- Citations use `@quartz-community/citations` against `content/references.bib`.
  The plugin only resolves bracketed keys, so Quarto's bare in-text `@key` form
  was rewritten to `Author [-@key]`. Two citations sitting inside raw `<small>`
  HTML are plain text, because the processor does not descend into raw HTML.

## Known broken links

These were already broken in the Quarto project and were carried over as-is:

- `img/escher-loop2.gif`
- `pdf/algospeak-chs1-2.pdf`
- `pdf/filterworld-ch1.pdf`
- `pdf/filterworld-intro.pdf`

Every other internal link and asset reference resolves.
