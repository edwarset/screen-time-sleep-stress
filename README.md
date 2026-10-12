# The Relationship Between Screen Time, Sleep,and Stress

> **College Research Project**  
> **Lead Researcher:** Seth Edwards  
> **Course:** TECH 3745 01  

A clean, modern, and professional research website presenting an academic investigation into how college students' daily screen time and bedtime digital technology habits relate to sleep duration and sleep quality.

Built with pure, semantic HTML5, modern responsive CSS3, and lightweight vanilla JavaScript. Zero build steps, zero external frameworks, and completely ready for instant deployment to **GitHub Pages**.

---

## 📋 Table of Contents

- [Project Purpose](#-project-purpose)
- [Project Structure](#-project-structure)
- [How to Run the Website Locally](#-how-to-run-the-website-locally)
- [How to Deploy Using GitHub Pages](#-how-to-deploy-using-github-pages)
- [Where & How to Add the Kaggle Dataset](#-where--how-to-add-the-kaggle-dataset)
- [Research Framework Summary](#-research-framework-summary)
- [License & Academic Integrity](#-license--academic-integrity)

---

## 🎯 Project Purpose

The purpose of this project is to investigate whether students' technology habits are associated with differences in sleep duration and sleep quality using empirical data analysis. 

With smartphones, laptops, tablets, and gaming consoles integrated into nearly every aspect of student life—from academics to entertainment—high screen usage (especially before bedtime) may adversely impact sleep onset, duration, and overall restfulness. Because sleep critically influences concentration, energy levels, mood, attendance, and academic performance, this research explores quantifiable relationships between screen exposure and sleep metrics among students.

---

## 📁 Project Structure

The project uses a minimal, transparent structure designed for easy version control, immediate GitHub Pages hosting, and straightforward maintenance:

```text
screen-time-sleep-quality/
├── index.html        # Main HTML5 document containing all 8 research sections
├── styles.css        # Modern, responsive CSS design system and typography
├── script.js         # Navigation drawer interactions, accessibility, and hooks
├── README.md         # Full project documentation and deployment instructions
└── .gitignore        # Git ignore rules for system artifacts
```

### Document Sections in `index.html`:
1. **Home:** Academic hero section featuring student and course metadata, with an "Explore the Research" call to action.
2. **Research Problem:** Real-world context detailing student screen use across six core areas, bedtime impact, and academic consequences.
3. **Research Questions:** Visually highlighted primary research question alongside five structured sub-questions.
4. **Variables:** Clearly separated Independent Variables (predictors), Dependent Variables (outcomes), and Additional Factors (covariates/confounders).
5. **Hypotheses:** Three formal research hypotheses (H1, H2, H3) displayed in individual academic cards.
6. **Dataset:** Structured placeholder section for Kaggle dataset metadata and field mapping.
7. **Analysis:** Six clean placeholder visualization cards ready for future statistical distributions, scatter plots, and correlation findings.
8. **About:** Project overview, course information, and student details.

---

## 💻 How to Run the Website Locally

Since the project is built with vanilla web technologies, you do not need Node.js, npm, or any build tools.

### Method 1: Direct File Open (Easiest)
1. Clone or download this repository to your local computer.
2. Navigate to the project directory in your file explorer / Finder:
   ```bash
   cd screen-time-sleep-quality
   ```
3. Double-click `index.html` to open it directly in any modern web browser (Chrome, Safari, Firefox, or Edge).

### Method 2: Local Web Server (Python)
If you prefer running a local development server:

```bash
# Navigate to the project folder
cd screen-time-sleep-quality

# Start a local HTTP server on port 8000
python3 -m http.server 8000
```
Then open your web browser and visit: `http://localhost:8000`

---

## 🚀 How to Deploy Using GitHub Pages

This repository is pre-configured to deploy directly to GitHub Pages in just a few clicks:

### Step 1: Push to GitHub
1. Initialize git and commit your files:
   ```bash
   git init
   git add .
   git commit -m "Initial commit: College research project website"
   ```
2. Create a new repository on [GitHub](https://github.com/new) (e.g., `screen-time-sleep-quality`).
3. Link your local repository and push:
   ```bash
   git remote add origin https://github.com/<your-username>/screen-time-sleep-quality.git
   git branch -M main
   git push -u origin main
   ```

### Step 2: Enable GitHub Pages
1. Go to your repository on GitHub.
2. Click on **Settings** (tab on the top right).
3. In the left sidebar, click **Pages** (under the "Code and automation" section).
4. Under **Build and deployment**:
   - **Source:** Select `Deploy from a branch`.
   - **Branch:** Select `main` and folder `/ (root)`.
5. Click **Save**.
6. Within 1–2 minutes, your website will be live at:
   ```
   https://<your-username>.github.io/screen-time-sleep-quality/
   ```

All internal navigation links and anchor scrolling will function seamlessly on GitHub Pages.

---

## 📊 Where & How to Add the Kaggle Dataset

When you select and download your Kaggle dataset, integrate it using the following steps:

### 1. Store the Dataset
Create a `data/` directory inside the project root and place your downloaded Kaggle CSV file there:
```text
screen-time-sleep-quality/
└── data/
    └── student_screen_sleep_data.csv
```

### 2. Update the Dataset Section in `index.html`
Open `index.html` and locate the `<section id="dataset">` section. Update the following placeholders:
- **Dataset Name:** Enter the official Kaggle dataset title.
- **Kaggle Source:** Replace the placeholder with the URL to the Kaggle dataset page.
- **Number of Records:** Enter the exact sample size (e.g., `1,250 student records`).
- **Number of Variables:** Enter the total column count (e.g., `14 attributes`).
- **Dataset Description:** Replace the placeholder text with a short paragraph describing data collection methods and participant demographics.
- **Key Variables From Dataset:** Replace the pending fields with the exact column names from your CSV.

*Note: Look for the `<!-- DATASET INTEGRATION COMMENT -->` markers in `index.html` to find the exact lines.*

### 3. Add Visualizations in `index.html` and `script.js`
In the `<section id="analysis">` section of `index.html`, there are 6 designated analysis cards:
1. **Screen Time Distribution**
2. **Average Sleep Duration**
3. **Screen Time vs. Sleep Duration**
4. **Screen Time vs. Sleep Quality**
5. **Nighttime Screen Usage**
6. **Key Findings**

You can render charts by either:
- **Option A (Interactive Charts via Chart.js):** Include Chart.js via CDN `<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>` and replace `<div class="chart-placeholder">` with `<canvas id="screenTimeChart"></canvas>`.
- **Option B (Static Chart Exports):** Export charts as PNG/SVG images from Python (Matplotlib/Seaborn) or R into an `assets/` folder and display them using standard `<img>` tags inside the placeholder containers.

---

## 🔬 Research Framework Summary

| Component | Details |
| :--- | :--- |
| **Primary Question** | *How does daily screen time relate to sleep quality among college students?* |
| **Sub-Questions** | 5 focused inquiries addressing duration, pre-bed habits, activity types, bedtimes, and academic performance. |
| **Independent Variables** | Daily screen time, Nighttime screen time, Screen time before bed, Social media usage, Gaming time, Streaming time, Educational screen time |
| **Dependent Variables** | Sleep duration, Sleep quality, Bedtime, Wake-up time, Nighttime awakenings, Daytime tiredness |
| **Additional Factors** | Age, Caffeine consumption, Exercise, Stress, Academic workload |
| **Hypotheses** | **H1:** Screen time inversely correlates with sleep quality.<br>**H2:** Pre-bed screen time correlates with shorter sleep duration.<br>**H3:** Nighttime screen use correlates with later bedtimes. |

---

## 📜 License & Academic Integrity

This project was developed by **Seth Edwards** for course **TECH 3745 01**.  
Developed for educational and academic research purposes.
