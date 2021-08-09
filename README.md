- [1. Introduction](#1-introduction)
- [2. Methods](#2-methods)
  - [2.1. Roadmap](#21-roadmap)
  - [Adding Preview Image for LinkedIn (MANUAL)](#adding-preview-image-for-linkedin-manual)
- [3. Results](#3-results)

# 1. Introduction
This repository holds my personal portfolio at [justinkek.com](justinkek.com).

# 2. Methods
## 2.1. Roadmap
- Creating dashboard for software and mechanical projects
- Add to software projects:
  - DartPad Algorithms
  - T2Diary
  - Slotcar Racing
  - ECM Project
  - learning repository
- Add to mechanical projects:
  - Master's thesis
  - MPT Research Papers
  - Theremin
  - Formula Student Schematic
  - Bachelor's project
- 
## Adding Preview Image for LinkedIn (MANUAL)
The index.html file is overridden every time `flutter build web` is run. Need to find a way to add desired parameters to boilerplate code. 
1. Run `flutter build web`
2. Open build/web/index.html
3. Add prefix attribute: 
   `<html lang=”en” prefix=”og: http://ogp.me/ns#">` 
   in `<html>` between `<!DOCTYPE html>` row and `<head>` row
4. Add meta tags:
   ```
    <meta 
        property="og:title"
        content="Example Title" 
    />
    <meta 
      name="image" 
      property="og:image" 
      content="<link>" 
    />
    <meta 
      name="author" 
      content="Example Author" 
    />
    <meta 
      property="og:description" 
      content="Example Description"
    />
    <meta 
      property="og:url" 
      content="https://example.com" 
    />
   ```
5. Add link to desired preview image (1200x627) to under content.
6. Crawl to update LinkedIn cache at their [post inspector](https://www.linkedin.com/post-inspector/)

# 3. Results

