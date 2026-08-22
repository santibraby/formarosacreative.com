# ============================================================
# FREE GUIDES INDEX - drives the /guides hub page AND every
# individual guide page.
#
# One line per guide (10 parts separated by | ):
# guide-id | Title | One-line pitch | page link | cover image url | What's-inside intro | Item one; Item two; Item three | zip/pdf url | email subject | platforms
#
# - platforms = small line above the pitch, e.g. "+Windows  +Mac"
# (optional; leave empty to hide it).
#
# - zip/pdf url = the file that gets emailed AND the "grab the
# zip right now" link on the thank-you page.
# - email subject = the delivery email's subject line (optional;
# falls back to a generic one).
# - The WordPress snippet reads this file for the delivery email
# (title, intro-as-note, zip, subject) - so a NEW GUIDE needs
# NO snippet update: add the line here and push.
#
# - guide-id MUST match frc_sub_magnets() in the Subscribers
# snippet - that is the file that gets emailed on signup.
# - Title = the big headline on the guide page + hub card label.
# - Pitch = the italic line under the headline (sell the guide).
# - page link = the WordPress page (child of /guides).
# - What's-inside intro = a sentence above the contents list.
# - Items = the numbered contents list, separated by semicolons.
# (Leave the last two parts empty to hide the section.)
# - The hub lists guides in this order, top line first.
#
# NEW GUIDE CHECKLIST (no snippet changes needed):
# 1. Upload the zip + a cover image to the media library.
# 2. Add a line here (ADJUST GUIDES in the Articles app), push.
# 3. In WordPress: duplicate an existing guide page under the
# Guides parent, set its slug, and change data-guide in its
# HTML widget to the new guide-id.
#
# Lines starting with # are ignored. Push to go live (~5 min).
# ============================================================

texture-maps | Right-Click an Image to Generate Texture Maps | Generate texturemaps from a single image. Turn an image into all 6 PBR maps in a folder next to it, and save yourself the hours in Photoshop. | /guides/generate-texture-maps/ | https://formarosacreative.com/wp-content/uploads/2026/08/TextureMaps-Poster-1.jpg | Six maps the generator builds from a single image, in the order it creates them. Each one is saved as its own file in a folder next to your original, so by the end you have a full PBR texture set ready to drop straight into your material. | Normal; Bump / Height; Roughness; Metallic; Ambient Occlusion; Albedo | https://formarosacreative.com/wp-content/uploads/2026/08/TextureMaps.zip | Your texture maps tool. | +Windows  +Mac
