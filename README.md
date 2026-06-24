# WCOM Fall 2026 — conference website

A [Jekyll](https://jekyllrb.com/) site hosted on GitHub Pages. **Almost everything
you'll want to change lives in plain text files — no coding needed.**

## Where to edit what

| To change… | Edit this file |
|---|---|
| Title, dates, location, organizers, **navigation menu** | `_config.yml` |
| Home page text | `index.md` |
| **The schedule** (add/remove talks) | `_data/schedule.yml` |
| **Participant list** | `_data/participants.yml` |
| Abstracts | `_pages/abstracts.md` |
| Social / food / dinner | `_pages/social.md` |
| Travel, venue, hotels | `_pages/travel.md` |
| Registration info & form link | `_pages/registration.md` |
| Contact info | `_pages/contact.md` |
| Colors / fonts / styling | `assets/css/style.css` (top of file) |

The `.yml` files have instructions in comments at the top. To add a talk or a
person, copy an existing block and change the values — **keep the two-space
indentation**.

> After editing `_config.yml` you must restart the local server (it doesn't
> auto-reload that one file). All other files reload automatically.

## Preview locally

Requires Ruby (the version bundled with macOS works). From this folder:

```sh
make site
```

Then open **http://localhost:4000/** in your browser. Leave it running while you
edit — pages refresh automatically. Press `Ctrl-C` to stop.

First run installs dependencies into `vendor/` (a minute or two). If `make` isn't
available, run the two commands inside the `Makefile` directly.

## Publishing

Pushing to the `main` branch on GitHub automatically rebuilds and publishes the
live site (GitHub Pages). Preview locally first, then commit and push.

## Collaborators

- Julie Eaton (owner)
- Aleksandr Aravkin
