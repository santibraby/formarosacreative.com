# HOW THE ARTICLE SYSTEM WORKS

Three parts, all in the HTML folder (so all backed up by PUSH-UPDATES.bat):

1. HTML/Articles/<CATEGORY> - <NAME>.md      = the article (one per project, the ONLY file you edit)
2. HTML/Sections/ARTICLE - TEMPLATE.html     = shared design/chrome for ALL articles (edit only for design changes)
3. HTML/Loaders/LOADER - ARTICLE.html        = generic loader pasted into each WordPress article page

The loader fetches the template, the template reads its data-article
value and fetches the matching .md from GitHub. Pushes go live in
about 5 minutes, same as everything else.

## CREATE A NEW ARTICLE

1. Upload the project images to the WordPress media library
   (clean names, e.g. practice_new-project_01.jpg) and note the URLs.
2. Duplicate any .md in HTML/Articles/, rename it:
   <CATEGORY> - <NAME>.md   e.g.  INSPIRATION - GREENHOUSE.md
3. Edit the front matter and body (syntax below). ASCII only:
   plain hyphens, straight quotes, no em dashes or arrows.
4. Run PUSH-UPDATES.bat.
5. In WordPress: duplicate an existing article page, rename/slug it.
6. Open its HTML widget. Change ONLY this part of the first line:
   data-article="PRACTICE - WAVE EXHIBIT"
   to your new file name WITHOUT .md, e.g.
   data-article="INSPIRATION - GREENHOUSE"
   (If the page was duplicated it already has the loader; otherwise
   paste the full contents of HTML/Loaders/LOADER - ARTICLE.html.)
7. Wait ~5 min, load the page, done.

To update an article later: edit the .md, push. Nothing else.

## MD SYNTAX

Front matter (between the two --- lines):

    kicker: PRACTICE               the article tag - ONLY
                                   PRACTICE / INSPIRATION / CONTEXT
                                   (a locked dropdown in the editor;
                                   name the file with the same
                                   prefix - filters use the name)
    title: New Project             big italic title
    subtitle: One line under it    dek line (optional)
    author: Santiago Braby Brown   byline name
    photo: https://...jpg          byline photo url (round, 44px)
    date: Jul 06, 2026             byline date
    Omit any line to hide that part of the header.

Body - blocks separated by ONE blank line:

    ![alt text](image-url)               image
    ![alt text](image-url "caption")     image with caption (peach mono)
    ## KICKER | Section Title            centered section heading
    ## Section Title                     same, without kicker
    > Question text?                     interview question (peach italic)
    Plain text.                          body paragraph
    [link text](https://...)             link inside a paragraph
    *italic*  **bold**                   emphasis inside a paragraph

Rules the template applies automatically:
- The FIRST plain paragraph = the big centered lead line.
- The FIRST image = the hero (loads eagerly, others lazy).
- Consecutive paragraphs group into one reading column.
- Subscribe forms, CTA, footer, rail: come from the template,
  never written in the .md.

## THE ARTICLE EDITOR (RECOMMENDED WAY TO EDIT)

A visual editor lives at _TECH Articles/ARTICLE EDITOR.html
(next to this project folder). Start it with launch.bat there -
or make a desktop shortcut: right-click launch.bat > Send to >
Desktop. Requires internet + Chrome or Edge.

- It loads the live page design from GitHub, then you OPEN an .md
  from HTML/Articles/ - you edit the article looking exactly like
  the real page, images included.
- Click a text block to select it: switch its style (PARAGRAPH /
  QUESTION / SECTION HEADING), or DELETE it. The first paragraph
  is always the lead, automatically.
- Right-click an image to replace its URL, edit alt text, or
  remove it. Click under an image to add/edit its caption.
- + TEXT / + IMAGE insert after the selected block. Enter starts
  a new paragraph. Ctrl+S saves.
- SAVE writes straight back to the .md. SAVE AS creates a new
  article file (save into HTML/Articles/, name it
  <CATEGORY> - <NAME>.md). Then push and set the loader's
  data-article as described above.
- RECENT > lists the last 5 files; click one to reopen it.
- CREATE NEWSLETTER converts the open (saved) article into an
  email-ready file: NEWSLETTER - <name>.html in HTML/Newsletters.
  First use asks you to pick that folder, then it is remembered.
  The READ ON THE SITE button link comes from the covers index.
- PUSH LIVE (orange) runs PUSH-UPDATES.bat for you. One-time
  setup: double-click _TECH Articles/setup-push-button.reg,
  then allow the frcpush link when the browser asks.
- Saving auto-fixes smart quotes / em dashes to ASCII.

## HOME PAGE COVERS (AUTO-UPDATING)

The home covers grid builds itself from ARTICLES - INDEX.md in
this folder. One line per article:

    FILE NAME | Label on hover | page link | cover image url

- Line order = display order (top line shows first).
- Swap the last field to change an article's cover image.
- The category filter uses the file-name prefix
  (PRACTICE / INSPIRATION / CONTEXT).
- New article checklist: publish the WordPress page, then add
  one line here and push. The home page updates itself.
- Edit it with the ADJUST COVERS button in the article editor
  (plain-text panel), or in Notepad. Do NOT open it as an
  article - it is a list, not an article.

## EDITING IN GOOGLE DOCS - CAUTION

Round-tripping .md through Google Docs can silently break things:
smart quotes (non-ASCII), mangled --- front matter, lost syntax.
If you draft in Docs:
- Tools > Preferences > UNCHECK "Use smart quotes"
- Draft prose only, then paste into the .md in a plain-text
  editor (Notepad works) around the existing syntax.
Editing the .md directly in Notepad/VS Code is the safe path.

## TROUBLESHOOTING

- "COULD NOT LOAD ARTICLE (HTTP 404)": data-article value does not
  exactly match the file name in HTML/Articles/ (minus .md), or you
  have not pushed yet, or GitHub's cache needs ~5 more minutes.
- "NO ARTICLE SET": the loader's mount div lost its data-article
  attribute - re-paste the loader.
- Page loads but article looks wrong: check blank lines between
  blocks and that images sit on their own line.
- Never edit the fetch URLs inside LOADER - ARTICLE.html or the
  template - only the data-article value.
