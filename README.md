# WCOM Fall 2026 website

A [Jekyll](https://jekyllrb.com/) site deployed on GitHub Pages. Content lives in
markdown and YAML; pushing to `main` rebuilds and publishes the live site
automatically (about a minute).

- **Editing content** (talks, people, abstracts, page text) → edit the files
  directly, see [Editing](#editing).
- **Layout / design / structure changes** → add them to `Requests.md` and
  Aleksandr will implement them.

## Running it locally

You need Ruby (the system Ruby 2.6 on macOS is fine; on Windows use
[RubyInstaller](https://rubyinstaller.org/downloads/) — the "Ruby+Devkit"
build). From the repo root:

```sh
bundle install --path vendor/bundle   # first time only
bundle exec jekyll serve --livereload  # or: make site
```

Then open <http://localhost:4000/>. Leave it running while you edit — pages reload
on save. View it at that URL, not by opening the `.html` files directly (those
load without styling). After editing `_config.yml`, restart the server; every
other file hot-reloads.

An editor with markdown/YAML support (e.g. VS Code) is handy but not required.

## Editing

| To change | File |
|---|---|
| Title, dates, location, organizers, nav menu | `_config.yml` |
| Home page intro and important dates | `index.md` |
| Schedule (talks, breaks, order) | `_data/schedule.yml` |
| Participant list | `_data/participants.yml` |
| Abstracts | `_pages/abstracts.md` |
| Food / coffee / dinner | `_pages/social.md` |
| Travel, venue, hotels | `_pages/travel.md` |
| Registration text and form link | `_pages/registration.md` |
| Contact / organizer emails | `_pages/contact.md` |
| Banner photo | `assets/img/uw-tacoma.jpg` |
| Colors and fonts | top of `assets/css/style.css` |

The schedule and participant tables render from the YAML data files — you never
edit the HTML tables. To add an entry, copy an existing block and change the
values; keep the two-space indentation and the quotes.

**Schedule entry** (`_data/schedule.yml`):

```yaml
- time: "09:00"
  type: talk          # talk | break | meal | admin
  speaker: "Jane Smith"
  affiliation: "University of Washington"
  title: "A talk about optimization"
  abstract_id: "talk-1"   # links to the matching {: #talk-1 } anchor in abstracts.md
```

For `break`, `meal`, and `admin` rows, only `time`, `type`, and `title` are used.

**Participant entry** (`_data/participants.yml`):

```yaml
- name: "Jane Smith"
  affiliation: "University of Washington"
  role: "Invited speaker"   # optional
  url: "https://example.com/jane"   # optional; leave as "" if none
```

Page files (`_pages/*.md`, `index.md`) are plain markdown below the `---` front
matter at the top — leave that block in place. A malformed YAML data file (bad
indentation or a missing quote) will fail the build; `git`/GitHub Desktop can
discard the change if that happens.

## Publishing

Commit and push to `main` (GitHub Desktop or the command line). The live site
rebuilds automatically. For a one-line fix you can also edit the file directly on
github.com and commit there.

## Requests for larger changes

Anything beyond content edits — layout, design, new pages, restyling — goes in
**`Requests.md`** as a plain-English bullet under "Open requests", or just email
Aleksandr. Items move to the "Done" list once implemented.

## Notes for maintainers

- Pinned to **Jekyll 3.9** in the `Gemfile` so it builds on macOS system Ruby
  (2.6) — the same generation GitHub Pages runs, so local matches deployed. On
  Ruby 3.0+ you can switch to the `github-pages` gem.
- `make clean` removes generated files (`_site`, `.jekyll-cache`).
- Layout in `_layouts/` and `_includes/`; styling in `assets/css/style.css`.
- `README.md` and `Requests.md` are excluded from the build via `_config.yml`.
- Collaborators: Julie Eaton (owner), Aleksandr Aravkin.
