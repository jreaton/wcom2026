# How to edit the WCOM Fall 2026 website — a step-by-step guide

This guide is written for someone who has **never edited a website before**. You
do not need to know any programming. Take it slowly; every step is spelled out.

The website is made of simple **text files**. When you change a file and "publish"
it, the live website updates automatically (it takes about a minute).

**The order of this guide:**

1. **Part 1 — Install & view the site on your computer** (one-time setup).
2. **Part 2 — Editing the pages** (what each file controls, with examples).
3. **Part 3 — Publishing your changes** so they go live.
4. **Part 4 — Asking for bigger changes** (layout/design) using `Requests.md`.
5. **Part 5 — If something goes wrong.**

> A few words you'll see:
> **Repository ("repo")** — the folder of files that make up the website.
> **Commit** — saving a change with a short note.
> **Markdown** — simple formatted text (files ending in `.md`); `**bold**` shows
> as **bold**. **YAML** — a simple list format (files ending in `.yml`) used for
> the schedule and participants; the one rule is **keep the spacing exactly as
> it is**.

---

# Part 1 — Install & view the site on your computer

This is a one-time setup of about 20–30 minutes. After that, viewing the site
takes a couple of clicks. It lets you **see your changes before they go public**.

> **Which computer do you have?** Follow the **🍎 macOS** boxes if you're on a
> Mac, or the **🪟 Windows** boxes if you're on a PC. Skip the other one.

## 1.1 Install a text editor — Visual Studio Code

This is the program you'll use to open and edit the files.

1. Go to <https://code.visualstudio.com/>.
2. Click the big **Download** button (it detects your system automatically).
3. Open the downloaded file and follow the installer.

## 1.2 Install GitHub Desktop

This program copies the website to your computer and publishes your changes —
**without needing to type git commands**.

1. Go to <https://desktop.github.com/>.
2. Click **Download**, then run the installer.
3. Open GitHub Desktop and **sign in** with your GitHub account (`jreaton`).

## 1.3 Download ("clone") the website

1. In GitHub Desktop, choose **File ▸ Clone repository**.
2. Find **`wcom2026`** in the list (or paste the repo link Aleksandr sends you).
3. Pick where to save it — e.g. your **Documents** folder — and click **Clone**.

You now have a folder called `wcom2026` on your computer with all the files.

## 1.4 Install Ruby (the engine that builds the site)

### 🍎 macOS

Macs already include a version of Ruby that works for this site. To check:

1. Open the **Terminal** app (press `Cmd + Space`, type `Terminal`, Enter).
2. Type `ruby -v` and press Enter. If you see `ruby 2.6...` (or higher), you're
   set — continue to 1.5.

### 🪟 Windows

1. Go to <https://rubyinstaller.org/downloads/>.
2. Download the recommended version marked **"=> Ruby+Devkit"** (the bold one).
3. Run the installer, accepting the defaults. **At the end, leave the box
   "Run `ridk install`" checked**; a black window appears — press Enter to let it
   finish.

## 1.5 View the site

1. In **GitHub Desktop**, with `wcom2026` open, go to the menu
   **Repository ▸ Open in Terminal** (Mac) or **Open in Command Prompt**
   (Windows). A text window opens, already pointing at the website folder.
2. **The first time only**, type this and press Enter (takes a couple of minutes):

   ```
   bundle install --path vendor/bundle
   ```

3. Then, **every time** you want to view the site, type:

   ```
   bundle exec jekyll serve --livereload
   ```

   (🍎 On a Mac you can use the shortcut `make site` instead — it does both
   commands.)

4. Wait for a line that says **`Server running...`**. Then open your web browser
   and go to:

   > **http://localhost:4000/**

   This is your **private** copy of the website — no one else can see it.

5. **Leave that text window open** while you work. As you edit and save files, the
   browser updates by itself. Press **`Ctrl + C`** in the window to stop it when
   you're done.

> ⚠️ **Important:** always view the site at **http://localhost:4000/**. Do **not**
> double-click the `.html` files to open them directly — they'll look broken
> (unstyled) because the design files won't load that way.

---

# Part 2 — Editing the pages

Open the `wcom2026` folder in **VS Code** (File ▸ Open Folder). The files are
listed on the left. Here's what each one controls:

| To change… | Open this file |
|---|---|
| Conference title, dates, location, organizers, **the menu links** | `_config.yml` |
| The **home page** intro and important dates | `index.md` |
| **The schedule** (add / remove / reorder talks) | `_data/schedule.yml` |
| The **participant list** | `_data/participants.yml` |
| The **abstracts** | `_pages/abstracts.md` |
| Food, coffee, dinner | `_pages/social.md` |
| Travel, venue address, hotels | `_pages/travel.md` |
| Registration text and the **sign-up form link** | `_pages/registration.md` |
| Contact / organizer emails | `_pages/contact.md` |
| The **banner photo** at the top | save your image as `assets/img/uw-tacoma.jpg` |

After you save a file, the page at http://localhost:4000/ refreshes on its own.
(Exception: after editing `_config.yml`, stop the server with `Ctrl + C` and start
it again — that one file doesn't auto-refresh.)

### Example: add a talk to the schedule

Open `_data/schedule.yml`. Each talk is a block like this:

```yaml
- time: "09:00"
  type: talk
  speaker: "Jane Smith"
  affiliation: "University of Washington"
  title: "A wonderful talk about optimization"
  abstract_id: "talk-1"
```

To add a talk, **copy one of these blocks**, paste it where it belongs in the day,
and change the text inside the quotation marks. Rules that matter:

- Keep the dash `-` and the **two spaces** of indentation exactly as shown.
- Keep the text inside the `"quotes"`.
- `type:` can be `talk`, `break`, `meal`, or `admin` (opening/closing remarks).
  For breaks and meals you only need `time`, `type`, and `title`.

The schedule table builds itself from this file — you never edit the table by hand.

### Example: add a participant

Open `_data/participants.yml`, copy a block, and edit it:

```yaml
- name: "Jane Smith"
  affiliation: "University of Washington"
  role: "Invited speaker"
  url: "https://example.com/jane"
```

`role` and `url` are optional — leave the quotes empty if unused: `url: ""`.

### Example: change ordinary page text

Open any file in `_pages/` (or `index.md`) and type over the words. Handy bits:

```markdown
## A heading

Normal paragraph. Make a word **bold** or *italic*.

- a bullet
- another bullet

[Text of a link](https://the-web-address.com)
```

Leave the lines between the two `---` marks at the very top of the file alone —
those set the page's title.

> ⚠️ In the `.yml` files (schedule, participants), don't change the indentation or
> remove the quotation marks. If the spacing gets off, the page won't build. If
> that happens, undo your change (see Part 5).

---

# Part 3 — Publishing your changes

When you're happy with how it looks at http://localhost:4000/:

1. Open **GitHub Desktop**. It lists the files you changed on the left.
2. In the bottom-left box, type a short description, e.g. `Add three new talks`.
3. Click **Commit to main**.
4. Click **Push origin** at the top.

The live website rebuilds in about a minute.

> **Quick typo fixes without any of the setup:** you can also edit a file straight
> on the GitHub website — open the repo in your browser, click a file, click the
> pencil ✏️ icon, edit, and click **Commit changes**. Good for a fast one-line fix;
> use the local preview (Parts 1–2) for anything you want to see first.

---

# Part 4 — Asking for bigger changes (layout & design)

**You do not have to make design or layout changes yourself.** For anything bigger
than editing text — moving things around, changing colors, the banner, adding a
whole new page, or "can this look like that other site?" — there's a file for it:

### 📄 `Requests.md`

Open **`Requests.md`** (in the main folder) and add your request as a bullet point
under **"Open requests"**, in plain English. For example:

```
- Make the banner photo a bit shorter.
- Add a "Sponsors" page with three logos.
- Change the purple accent color to teal.
```

Then either **publish the file** (Part 3) or just **email the request to
Aleksandr** — whichever is easier. He'll make the change and move the item to the
"Done" list so you both have a record.

Think of it this way:

- **Text and content** (talks, names, dates, abstracts, page wording) → **you edit
  directly** (Part 2).
- **Layout, design, structure, new features** → **write it in `Requests.md`** and
  we'll handle it.

When in doubt, just put it in `Requests.md`.

---

# Part 5 — If something goes wrong

- **The local site won't start / errors in the text window.** Usually a spacing or
  quotation-mark slip in a `.yml` file. In GitHub Desktop you can right-click a
  changed file and choose **Discard changes** to undo it, then try again.
- **`bundle: command not found` (Windows).** Ruby didn't finish installing. Re-run
  the RubyInstaller and complete the `ridk install` step (1.4).
- **The page looks plain / unstyled.** You probably opened an `.html` file
  directly. Always view through **http://localhost:4000/** instead.
- **The browser didn't update.** Make sure the text window still shows
  `Server running...`, then refresh. If you edited `_config.yml`, stop the server
  (`Ctrl + C`) and start it again.
- **You published something by mistake.** Nothing is ever truly lost — every
  version is saved. Email Aleksandr and he can roll it back.

---

For small text fixes, Parts 1–3 are all you need. For anything else, use
`Requests.md`. When in doubt, make a change, preview it, and ask Aleksandr if
anything looks off.
