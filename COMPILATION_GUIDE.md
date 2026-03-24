# Compilation Guide for Quantum Theories Textbook

## Prerequisites

Install Typst compiler:
- **macOS**: `brew install typst`
- **Linux**: Download from https://github.com/typst/typst/releases
- **Windows**: Download from https://github.com/typst/typst/releases
- **Or use web app**: https://typst.app/

## Compiling the Textbook

### Command Line
```bash
typst compile quantum_textbook_complete.typ
```

This generates `quantum_textbook_complete.pdf` in the current directory.

### Watch Mode (Auto-recompile on changes)
```bash
typst watch quantum_textbook_complete.typ
```

### Web Editor
1. Visit https://typst.app/
2. Upload `quantum_textbook_complete.typ`
3. Click "Compile" or enable auto-preview

## Expected Output

- **File**: quantum_textbook_complete.pdf
- **Estimated Pages**: 180-200 pages
- **Paper Size**: US Letter (8.5" × 11")
- **Margins**: Inside 1.5", Outside 1", Top/Bottom 1"

## Troubleshooting

If compilation fails:
1. Ensure you have the latest version of Typst (>= 0.11.0)
2. Check that all fonts are available (New Computer Modern is standard)
3. Review error messages for specific line numbers

## Document Structure

The textbook includes:
- **Front Matter**: Title page, copyright, dedication, preface, TOC
- **9 Chapters** across 6 parts covering the 11-dimensional framework
- **Back Matter**: 3 appendices and bibliography
- **70+ exercises** throughout
- Professional pedagogical features (concept boxes, examples, exercises)

## Customization

Edit the document to customize:
- Line 3: Change paper size
- Line 4: Adjust margins
- Line 5: Modify font and size
- Line 14-60: Custom styling functions

Enjoy studying quantum mechanics through the unified 11-dimensional framework!
