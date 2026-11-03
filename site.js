/**
 * The Relationship Between Screen Time and Sleep Quality Among Students
 * College Research Project - TECH 3745 01
 * Student: Seth Edwards
 *
 * script.js:
 * Lightweight, dependency-free JavaScript managing navigation interactions,
 * drawer state, accessibility, scroll monitoring, and placeholders for future
 * data analysis & visualization scripts.
 */

document.addEventListener("DOMContentLoaded", () => {
  // =========================================================
  // 1. DOM ELEMENT REFERENCES
  // =========================================================
  const menuToggle = document.getElementById("menuToggle");
  const navOverlay = document.getElementById("navOverlay");
  const closeMenuBtn = document.getElementById("closeMenu");
  const navLinks = document.querySelectorAll(".nav-link");
  const siteHeader = document.getElementById("siteHeader");
  const sections = document.querySelectorAll("section[id]");

  // =========================================================
  // 2. NAVIGATION DRAWER STATE MANAGEMENT
  // =========================================================
  
  /**
   * Opens the slide-out navigation menu.
   */
  function openMenu() {
    navOverlay.classList.add("is-active");
    navOverlay.setAttribute("aria-hidden", "false");
    menuToggle.setAttribute("aria-expanded", "true");
    document.body.classList.add("drawer-open");
    
    // Focus close button for keyboard accessibility
    if (closeMenuBtn) {
      closeMenuBtn.focus();
    }
  }

  /**
   * Closes the slide-out navigation menu.
   */
  function closeMenu() {
    navOverlay.classList.remove("is-active");
    navOverlay.setAttribute("aria-hidden", "true");
    menuToggle.setAttribute("aria-expanded", "false");
    document.body.classList.remove("drawer-open");
  }

  // Toggle button click listener
  if (menuToggle) {
    menuToggle.addEventListener("click", () => {
      const isExpanded = menuToggle.getAttribute("aria-expanded") === "true";
      if (isExpanded) {
        closeMenu();
      } else {
        openMenu();
      }
    });
  }

  // Close button inside the drawer
  if (closeMenuBtn) {
    closeMenuBtn.addEventListener("click", closeMenu);
  }

  // Close when clicking outside the drawer (on the backdrop overlay)
  if (navOverlay) {
    navOverlay.addEventListener("click", (e) => {
      if (e.target === navOverlay) {
        closeMenu();
      }
    });
  }

  // Close with Escape key for accessibility
  document.addEventListener("keydown", (e) => {
    if (e.key === "Escape" && navOverlay.classList.contains("is-active")) {
      closeMenu();
      menuToggle.focus();
    }
  });

  // Close menu when any nav link is clicked
  navLinks.forEach((link) => {
    link.addEventListener("click", () => {
      closeMenu();
    });
  });

  // =========================================================
  // 3. HEADER SCROLL EFFECT
  // Adds subtle shadow and opaque background when scrolled
  // =========================================================
  function handleHeaderScroll() {
    if (window.scrollY > 20) {
      siteHeader.classList.add("scrolled");
    } else {
      siteHeader.classList.remove("scrolled");
    }
  }

  window.addEventListener("scroll", handleHeaderScroll, { passive: true });
  handleHeaderScroll(); // Initialize on page load

  // =========================================================
  // 4. ACTIVE SECTION TRACKING (SCROLL-SPY)
  // Highlights the currently visible section in the navigation
  // =========================================================
  const observerOptions = {
    root: null,
    rootMargin: "-20% 0px -60% 0px",
    threshold: 0
  };

  const sectionObserver = new IntersectionObserver((entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        const activeId = entry.target.getAttribute("id");
        navLinks.forEach((link) => {
          const href = link.getAttribute("href");
          if (href === `#${activeId}`) {
            link.classList.add("active");
          } else {
            link.classList.remove("active");
          }
        });
      }
    });
  }, observerOptions);

  sections.forEach((section) => {
    sectionObserver.observe(section);
  });

  // =========================================================
  // 5. FUTURE KAGGLE DATASET INTEGRATION HOOKS
  // =========================================================
  /**
   * DATASET & VISUALIZATION HOOKS FOR FUTURE EXTENSION:
   * 
   * When you are ready to connect a Kaggle CSV dataset:
   * 1. Place your CSV file in a `/data` folder (e.g., `/data/student_sleep_data.csv`).
   * 2. You can use standard fetch() or a library like PapaParse to load the data:
   * 
   *    async function loadDataset() {
   *      try {
   *        const response = await fetch('./data/student_sleep_data.csv');
   *        const csvText = await response.text();
   *        // Parse CSV and render charts here...
   *      } catch (error) {
   *        console.error("Error loading Kaggle dataset:", error);
   *      }
   *    }
   * 
   * 3. For charting, you can include Chart.js via CDN or D3.js:
   *    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
   *    and target the canvas elements inside the #analysis section.
   */
  console.log("Research project website loaded successfully. Ready for dataset integration.");
});
