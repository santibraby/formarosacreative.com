# ============================================================
# FREE GUIDES INDEX - drives the /guides hub page AND every
# individual guide page.
#
# One line per guide (10 parts separated by | ):
# guide-id | Title | One-line pitch | page link | cover image url | What's-inside intro | Item one; Item two; Item three | zip/pdf url | email subject | platforms
#
# - platforms = small line above the pitch, e.g. "+Windows +Mac"
# (optional; leave empty to hide it).
#
# - zip/pdf url = the file behind the DOWNLOAD button on
# /guides/download/ (the delivery email links there, never to
# the zip directly - spam filters) AND the "grab the zip right
# now" link on the thank-you page.
# - email subject = the delivery email's subject line (optional;
# falls back to a generic one).
# - The WordPress snippet reads this file for the delivery email
# (title, intro-as-note, zip, subject) - so a NEW GUIDE needs
# NO snippet update: add the line here and push.
#
# - guide-id is the key everywhere: the hub card, the pages
# (/guides/download-<id>), the delivery email and the traffic
# tags. The snippet reads this file - no snippet change needed.
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
# 3. Same card -> CREATE WP PAGES: the snippet's /make-pages route
# creates (or updates) the guide page and the download page
# under the Guides parent. If the status bar warns a slug
# changed, rename the media attachment that owns the slug in
# the media library and click CREATE WP PAGES again.
# 4. Test the loop: signup -> survey -> email -> download page
# -> the button downloads the zip.
#
# Lines starting with # are ignored. Push to go live (~5 min).
#
# seamless-tile, frames-to-video, pdf-toolkit, site-photo-kit were
# added 2026-10-12 as draft copy - edit as you like. Their cover
# and zip URLs are the media URLs the files get when uploaded in
# October with these names; the UPLOAD buttons replace them with
# the real ones. Zips: _TECH Right Click Tools/_shipping,
# posters: _shipping/posters (made by _shared/posters.py).
# ============================================================

texture-maps | Right-Click an Image to Generate Texture Maps | Generate texturemaps from a single image. Turn an image into all 6 PBR maps in a folder next to it, and save yourself the hours in Photoshop. | /guides/generate-texture-maps/ | https://formarosacreative.com/wp-content/uploads/2026/09/LEADING-TEXTURE-MAPS.jpg | Six maps the generator builds from a single image, in the order it creates them. Each one is saved as its own file in a folder next to your original, so by the end you have a full PBR texture set ready to drop straight into your material. | Normal; Bump / Height; Roughness; Metallic; Ambient Occlusion; Albedo | https://formarosacreative.com/wp-content/uploads/2026/08/TextureMaps.zip | Your texture maps tool. | +Windows +Mac
pdf-to-dxf | Right-Click a PDF Convert to DXF | Convert a vector PDF from Rhino Layout into a DXF with all the text and layers intact. Skip the redraw and keep working. | /guides/pdf-to-dxf/ | https://formarosacreative.com/wp-content/uploads/2026/09/LEADING-PDF-TO-DXF.jpg | Everything the converter carries across from your PDF into the DXF, saved right next to the original file. If it was in your layout, it makes the trip - the drawing opens in CAD ready to edit, not ready to rebuild. | Vector linework as true curves and polylines; Text as editable text, not outlines; The full layer structure, names intact; Line colors and weights; True scale, 1 to 1 with your layout; Each page of a multi-page PDF as its own DXF | https://formarosacreative.com/wp-content/uploads/2026/09/PDF-to-DXF.zip | Your PDF to DXF tool | +Windows +Mac
seamless-tile | Right-Click a Photo to Create a Seamless Tile | Turn a photo of a wall, a floor or a fabric into a tile that repeats without a visible seam. No Photoshop, no clone stamp - right-click the photo and the tile is saved next to it. | /guides/seamless-tile/ | https://formarosacreative.com/wp-content/uploads/2026/10/LEADING-SEAMLESS-TILE.jpg | What the tool does to your photo, in the order it happens. The tile comes out square, saved next to the original, ready to drop into a material - and it pairs with the Texture Maps tool for a full tileable PBR set. | Straightens the shot, so grout lines and courses run true; Evens out the lighting, so the tile does not repeat as light and dark patches; Finds the natural repeat and sizes the tile to whole units; Joins the edges along the path where they differ least - nothing faded or doubled; Saves a square tile at the photo's size, or 1024, 2048 or 4096 px; Optional 2 x 2 preview to check the repeat at a glance | https://formarosacreative.com/wp-content/uploads/2026/10/Seamless-Tile.zip | Your seamless tile tool. | +Windows +Mac
frames-to-video | Right-Click Your Frames to Create a Video | Turn a folder of rendered frames into an MP4, a GIF or a transparent WebM in one step. No After Effects, no command line - right-click the folder and the video is saved beside it. | /guides/frames-to-video/ | https://formarosacreative.com/wp-content/uploads/2026/10/LEADING-FRAMES-TO-VIDEO.jpg | The formats the tool writes from one frame sequence - pick one or several, each becomes its own file next to the folder. Frames are sorted the way people count, so frame 2 comes before frame 10, and the video formats stream one frame at a time, so long 4K sequences are fine. | MP4 (H.264) that plays anywhere; GIF for a quick loop; WebP and APNG, small or lossless loops for the web; WebM with transparency for websites; MOV (ProRes 4444) with transparency for After Effects, Premiere and DaVinci; Frame rate 1 to 60 and scale 100 to 25 percent | https://formarosacreative.com/wp-content/uploads/2026/10/Frames-to-Video.zip | Your frames to video tool. | +Windows +Mac
pdf-toolkit | Right-Click a PDF to Compress, Split or Convert | Three right-click tools for drawing sets, in one download. Shrink a PDF to a size limit, split it into single pages with the layers intact, or render the pages to JPG - all without opening Acrobat. | /guides/pdf-toolkit/ | https://formarosacreative.com/wp-content/uploads/2026/10/LEADING-PDF-TOOLKIT.jpg | The three tools in the kit. Each is its own right-click entry with its own installer, so you can install the ones you need, and every result is saved next to the original - nothing is ever overwritten. | Compress PDF - shrink a PDF under a size limit for email and upload forms, keeping as much quality as the limit allows; Split PDF into Pages - one PDF per page, pages copied, not re-created, so the layer list of a CAD export survives; Convert PDF to JPG - every page as a JPG or PNG at 96 to 600 DPI | https://formarosacreative.com/wp-content/uploads/2026/10/PDF-Toolkit.zip | Your PDF toolkit. | +Windows +Mac
site-photo-kit | Right-Click Site Photos to Convert, Resize, Combine | Three right-click tools for the phone photos you bring back from site, in one download. HEIC to JPG at full quality, lighter copies for the web, and any set of images into one PDF - all saved next to the originals. | /guides/site-photo-kit/ | https://formarosacreative.com/wp-content/uploads/2026/10/LEADING-SITE-PHOTO-KIT.jpg | The three tools in the kit. Each is its own right-click entry with its own installer, so you can install the ones you need. Rotation is baked in and the color profile is kept, so photos never come out sideways or dull. | Convert HEIC to JPG - iPhone photos at full resolution, with or without the camera and GPS info; Resize Images for Web - scaled to a longest edge, WebP or JPG, metadata stripped, originals untouched; Combine Images into PDF - one image per page with no quality loss, at the image size or on A4 / Letter | https://formarosacreative.com/wp-content/uploads/2026/10/Site-Photo-Kit.zip | Your site photo kit. | +Windows +Mac
