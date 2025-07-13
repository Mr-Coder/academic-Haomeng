+++
# Hero widget.
widget = "hero"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = true  # This file represents a page section.
active = true  # Activate this widget? true/false
weight = 10  # Order that this section will appear.

title = ""

# Hero image (optional). Enter filename of an image in the `static/img/` folder.
hero_media = ""

[design.background]
  # Apply a background color, gradient, or image.
  #   Uncomment (by removing `#`) an option to apply it.
  #   Choose a light or dark text color by setting `text_color_light`.
  #   Any HTML color name or Hex value is valid.

  # Background color.
  color = "#f7fafc"
  
  # Background gradient.
  # gradient_start = "#f7fafc"
  # gradient_end = "#ffffff"
  
  # Background image.
  # image = ""  # Name of image in `static/img/`.
  # image_darken = 0.6  # Darken the image? Range 0-1 where 0 is transparent and 1 is opaque.
  # image_size = "cover"  #  Options are `cover` (default), `contain`, or `actual` size.
  # image_position = "center"  # Options include `left`, `center` (default), or `right`.
  # image_parallax = true  # Use a fun parallax-like fixed background effect? true/false
  
  # Text color (true=light or false=dark).
  text_color_light = false

[cta]
  url = "#about"
  label = "Learn More"
  icon_pack = "fas"
  icon = "arrow-down"
  
[cta_alt]
  url = "#publications"
  label = "View Research"
  icon_pack = "fas"
  icon = "book-open"

# Note. An optional note to show underneath the links.
[cta_note]
  label = ''
+++

<div class="hero-container">
  <div class="hero-content">
    <h1 class="hero-title">Hao Meng</h1>
    <p class="hero-subtitle">Ph.D. Candidate in Education Technology</p>
    <p class="hero-description">
      Exploring the intersection of <strong>Artificial Intelligence</strong> and <strong>Education</strong> to create innovative learning solutions. Specializing in Intelligent Tutoring Systems, automated problem solving, and educational technology research at Central China Normal University.
    </p>
    <div class="hero-cta">
      <a href="#about" class="btn-modern btn-primary-modern">
        <i class="fas fa-user-graduate"></i>
        About Me
      </a>
      <a href="#publications" class="btn-modern btn-secondary-modern">
        <i class="fas fa-book-open"></i>
        Research
      </a>
    </div>
  </div>
  <div class="hero-visual">
    <div class="hero-photo">
      <img src="/authors/admin/avatar.jpg" alt="Hao Meng Profile Photo">
    </div>
  </div>
</div>
