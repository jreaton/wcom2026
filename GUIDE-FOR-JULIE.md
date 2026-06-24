# How to edit the WCOM Fall 2026 website — a step-by-step guide

This guide is written for someone who has **never edited a website before**. You
do not need to know any programming. Take it slowly; every step is spelled out.

The website is made of simple **text files**. When you change a file and "publish"
it, the live website updates automatically (it takes about a minute).

There are **two ways** to edit the site:

- **The easy way (Part 1)** — edit text right on the GitHub website in your
  browser. Nothing to install. Best for fixing a typo, updating a time, adding a
  speaker. Changes go live automatically.
- **The full way (Part 2)** — copy the website onto your own computer so you can
  **see your changes before they go public**. This takes a one-time setup.

Most of the time you'll only need **Part 1**. Read Part 3 to learn what each file
controls.

---

## A few words you'll see

- **Repository (or "repo")** — the folder of files that make up the website,
  stored on GitHub.
- **Commit** — saving a change with a short note describing it.
- **Markdown** — a simple way of writing formatted text. `**bold**` shows as
  **bold**, `# Heading` makes a heading, etc. The files end in `.md`.
- **YAML** — a simple list format used for the schedule and participant list.
  The files end in `.yml`. The only rule that matters: **keep the spacing
  (indentation) exactly as it is.**

---

# Part 1 — The easy way: edit on the GitHub website

You only need a free GitHub account (you have one: **jreaton**) and a web browser.

### Step 1. Open the repository

Go to the website's repository page in your browser. It will look like:

> `https://github.com/jreaton/wcom2026`

(Aleksandr will send you the exact link once it's set up.) Sign in if asked.

### Step 2. Find the file you want to change

Click the file name in the list (e.g. `_data/schedule.yml` to change the
schedule). See **Part 3** below for which file controls what.

### Step 3. Edit it

1. Click the **pencil icon ✏️** in the top-right of the file (the tooltip says
   "Edit this file").
2. Make your change in the text box. (See Part 3 for examples.)
3. Scroll to the bottom. In the **"Commit changes"** box, type a short note like
   `Update lunch time`.
4. Make sure **"Commit directly to the main branch"** is selected.
5. Click the green **"Commit changes"** button.

That's it. The live website rebuilds automatically in about a minute. Refresh the
public site to see your change.

> 💡 If something looks wrong after publishing, don't panic — every change is
> saved in history and can be undone. Email Aleksandr and he can revert it.

---

# Part 2 — The full way: preview on your own computer

Use this if you want to **see your changes before they go live**. It's a one-time
setup of about 20–30 minutes. After that, previewing takes two clicks.

> **Which operating system are you on?** Follow the **macOS** boxes if you have a
> Mac, or the **Windows** boxes if you have a PC. Skip the other one.

## 2.1 Install a text editor — Visual Studio Code

This is the program you'll use to open and edit the files.

1. Go to <https://code.visualstudio.com/>.
2. Click the big **Download** button (it detects your system automatically).
3. Open the downloaded file and follow the installer.

## 2.2 Install GitHub Desktop

This program copies the website to your computer and publishes your changes —
**without needing to type commands**.

1. Go to <https://desktop.github.com/>.
2. Click **Download**, then run the installer.
3. Open GitHub Desktop and **sign in** with your GitHub account (`jreaton`).

## 2.3 Download ("clone") the website

1. In GitHub Desktop, choose **File ▸ Clone repository**.
2. Find **`wcom2026`** in the list (or paste the repo URL).
3. Pick a folder to save it in — for example your **Documents** folder — and
   click **Clone**.

You now have a folder called `wcom2026` on your computer with all the files.

## 2.4 Install Ruby (needed to preview the site)

Ruby is the engine that turns the text files into web pages on your computer.

### 🍎 macOS

Macs come with a version of Ruby already, which is enough for this site. To check
it's there:

1. Open the **Terminal** app (press `Cmd + Space`, type `Terminal`, press Enter).
2. Type this and press Enter:

   ```
   ruby -v
   ```

   If you see something like `ruby 2.6...`, you're set. Continue to 2.5.

### 🪟 Windows

1. Go to <https://rubyinstaller.org/downloads/>.
2. Download the recommended version marked **"=> Ruby+Devkit"** (the bold one).
3. Run the installer. Accept the defaults. **At the end, leave the box
   "Run `ridk install`" checked** and press Enter when a black window asks you to.

## 2.5 Start the website on your computer

1. In **GitHub Desktop**, with `wcom2026` open, go to the menu
   **Repository ▸ Open in Terminal** (Mac) or
   **Repository ▸ Open in Command Prompt** (Windows). A text window opens, already
   pointed at the website folder.
2. The **first time only**, type this and press Enter (it sets things up — takes a
   couple of minutes):

   ```
   bundle install --path vendor/bundle
   ```

3. Then, **every time** you want to preview, type:

   ```
   bundle exec jekyll serve --livereload
   ```

4. Wait until you see a line like **`Server running...`**. Now open your web
   browser and go to:

   > **http://localhost:4000/**

   This is your private copy of the website. No one else can see it.

5. **Leave that text window open** while you work. As you edit and save files, the
   browser page updates by itself.

6. When you're finished, click in the text window and press **`Ctrl + C`** to stop
   it.

> 🍎 On Mac there's an even shorter way: in the terminal type `make site` instead
> of the two commands above — it does both.

---

# Part 3 — What to change, and where

Here's what each file controls. You edit these the same way whether you're on the
GitHub website (Part 1) or in VS Code on your computer (Part 2).

| If you want to change… | Open this file |
|---|---|
| Conference title, dates, location, organizers, **the menu at the top** | `_config.yml` |
| The **home page** welcome text and important dates | `index.md` |
| **The schedule** (add / remove / reorder talks) | `_data/schedule.yml` |
| The **participant list** | `_data/participants.yml` |
| The **abstracts** | `_pages/abstracts.md` |
| Food, coffee, dinner | `_pages/social.md` |
| Travel, venue address, hotels | `_pages/travel.md` |
| Registration text and the **sign-up form link** | `_pages/registration.md` |
| Contact / organizer emails | `_pages/contact.md` |
| Colors and fonts | `assets/css/style.css` (the very top) |

### Example: add a talk to the schedule

Open `_data/schedule.yml`. Each talk is a block that looks like this:

```yaml
- time: "09:00"
  type: talk
  speaker: "Jane Smith"
  affiliation: "University of Washington"
  title: "A wonderful talk about optimization"
  abstract_id: "talk-1"
```

To add another talk, **copy one of these blocks**, paste it where you want it in
the day, and change the values inside the quotation marks. Important rules:

- Keep the dash `-` and the **two spaces** of indentation exactly as shown.
- Keep the text inside the `"quotes"`.
- `type:` can be `talk`, `break`, `meal`, or `admin` (opening/closing remarks).
  For breaks and meals you only need `time`, `type`, and `title`.

The schedule table on the website updates itself from this file — you never touch
the table directly.

### Example: add a participant

Open `_data/participants.yml`. Copy a block and edit it:

```yaml
- name: "Jane Smith"
  affiliation: "University of Washington"
  role: "Invited speaker"
  url: "https://example.com/jane"
```

`role` and `url` are optional — you can leave the quotes empty: `url: ""`.

### Example: change ordinary page text

Open any file in `_pages/` (or `index.md`). The text is plain Markdown. Just type
over the words. A few handy bits:

```markdown
## A heading

Normal paragraph text. Make a word **bold** or *italic*.

- a bullet
- another bullet

[Text of a link](https://the-web-address.com)
```

Leave the lines at the very top between the two `---` lines alone — those set the
page title.

> ⚠️ **One thing to avoid:** in the `.yml` files (schedule, participants), don't
> change the indentation or remove the quotation marks. If the spacing gets off,
> the page won't build. If that happens, undo your change (or ask Aleksandr).

---

# Part 4 — Publishing your changes (the full way)

If you edited on the GitHub website (Part 1), you're already done — skip this.

If you edited files on your own computer and want them to go live:

1. Open **GitHub Desktop**. It automatically lists the files you changed on the
   left.
2. In the bottom-left box, type a short description, e.g. `Add three new talks`.
3. Click **Commit to main**.
4. Click **Push origin** (top of the window). 

The live website rebuilds in about a minute.

> Before publishing, it's a good idea to preview locally (Part 2.5) and check the
> page at http://localhost:4000/ looks right.

---

# Part 5 — If something goes wrong

- **The local site won't start / errors in the text window.** Usually a spacing or
  quotation-mark slip in a `.yml` file. Undo your last edit and try again. In
  GitHub Desktop you can right-click a changed file and choose **Discard changes**
  to revert it.
- **`bundle: command not found` (Windows).** Ruby didn't finish installing. Re-run
  the RubyInstaller and make sure you completed the `ridk install` step (2.4).
- **The browser page didn't update.** Make sure the text window still shows
  `Server running...`, then refresh the browser. If you edited `_config.yml`, you
  must stop the server (`Ctrl + C`) and start it again — that one file doesn't
  auto-refresh.
- **You published something by mistake.** Nothing is ever truly lost — every
  version is saved. Email Aleksandr and he can roll it back.

---

You've got this. For small text fixes, **Part 1** is all you need. When in doubt,
make a change, preview it, and ask Aleksandr if anything looks off.
