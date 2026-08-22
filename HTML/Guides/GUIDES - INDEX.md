# ============================================================
# FREE GUIDES INDEX - drives the /guides hub page AND every
# individual guide page.
#
# One line per guide (7 parts separated by | ):
#   guide-id | Title | One-line pitch | page link | cover image url | What's-inside intro | Item one; Item two; Item three
#
# - guide-id MUST match frc_sub_magnets() in the Subscribers
#   snippet - that is the file that gets emailed on signup.
# - Title = the big headline on the guide page + hub card label.
# - Pitch = the italic line under the headline (sell the guide).
# - page link = the WordPress page (child of /guides).
# - What's-inside intro = a sentence above the contents list.
# - Items = the numbered contents list, separated by semicolons.
#   (Leave the last two parts empty to hide the section.)
# - The hub lists guides in this order, top line first.
#
# NEW GUIDE CHECKLIST:
#   1. Upload the zip + a cover image to the media library.
#   2. Add the guide to frc_sub_magnets() in the snippet
#      (WordPress admin -> Snippets -> FRC subscribers).
#   3. Add a line here, push.
#   4. In WordPress: duplicate an existing guide page under the
#      Guides parent, set its slug, and change data-guide in its
#      HTML widget to the new guide-id.
#
# Lines starting with # are ignored. Push to go live (~5 min).
# ============================================================

texture-maps | Right-Click an Image to Generate Texture Maps | EDIT ME - one line on what is inside the zip and why it is useful | /guides/generate-texture-maps/ | https://formarosacreative.com/wp-content/uploads/2026/08/TextureMaps-Poster-1.jpg | EDIT ME - a sentence introducing what the zip contains | EDIT ME item one; EDIT ME item two; EDIT ME item three
