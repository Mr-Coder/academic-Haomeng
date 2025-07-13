/* Dark Mode Only Theme Switcher
 * This overrides the default theme switching to only support dark mode
 */

(function() {
  
  // Force dark mode on page load
  function initDarkMode() {
    // Always set dark mode
    localStorage.setItem('dark_mode', '1');
    document.body.classList.add('dark');
    
    // Update any theme-related elements
    const codeHlEnabled = document.querySelector('link[title=hl-light]');
    const codeHlLight = document.querySelector('link[title=hl-light]');
    const codeHlDark = document.querySelector('link[title=hl-dark]');
    
    if (codeHlEnabled && codeHlLight && codeHlDark) {
      codeHlLight.disabled = true;
      codeHlDark.disabled = false;
    }
  }
  
  // Override the theme switch click handler
  function setupDarkModeOnly() {
    // Find the dark mode button and make sure it works
    const darkModeBtn = document.querySelector('.js-set-theme-dark');
    if (darkModeBtn) {
      darkModeBtn.addEventListener('click', function(e) {
        e.preventDefault();
        // Ensure dark mode is always on
        initDarkMode();
      });
    }
  }
  
  // Initialize when DOM is ready
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', function() {
      initDarkMode();
      setupDarkModeOnly();
    });
  } else {
    initDarkMode();
    setupDarkModeOnly();
  }
  
})(); 