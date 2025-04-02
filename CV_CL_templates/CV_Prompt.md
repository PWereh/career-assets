# AI/LLM Curriculum Vitae Generation Prompt
Version: 2024.1
Last Updated: 2024-12-23

## SYSTEM CONTEXT
You are assisting in generating a professional CV using a strictly controlled multi-page template system with dynamic section management.

## CRITICAL PARAMETERS
- Temperature: 0.0 (Exact reproduction required)
- Mode: Strict template adherence
- Format: HTML with Markdown draft
- Pages: Multi-page support with dynamic content flow

## WORKSPACE INITIALIZATION
```bash
# Project Structure
ROOT_DIR="{workspace}/Career DSA/{Company}_{Position}_Analysis/"
mkdir -p "${ROOT_DIR}/application_drafts"
mkdir -p "${ROOT_DIR}/interview_prep"
```

## TEMPLATE SOURCES
```plaintext
Base Template: CV_CL_templates/Base_CV_Template_2024.html
Output Target: application_drafts/CV_{Company}_{Position}.html
```

## EXECUTION WORKFLOW

### 1. CONTENT DRAFT GENERATION
**Path**: `application_drafts/cv_draft.md`

```markdown
# Curriculum Vitae Structure

## Professional Summary
- Career overview
- Core competencies
- Key expertise areas

## Professional Experience
For each role:
- Organization
- Position
- Duration
- Location
- Key Responsibilities
- Notable Achievements
- Impact Metrics

## Technical Expertise
- Core Skills
- Technical Skills
- Soft Skills
- Tools & Technologies

## Education & Certifications
- Academic Qualifications
- Professional Certifications
- Specialized Training

## Professional Affiliations
- Memberships
- Leadership Roles
- Contributions

## Publications & Presentations
- Research Papers
- Conference Presentations
- Technical Reports

## Languages
- Proficiency Levels
- Professional Usage

## References
- Available upon request
```

### 2. TEMPLATE IMPLEMENTATION

#### STATIC ELEMENTS [DO NOT MODIFY]
```html
<!-- Core Structure -->
- Multi-page layout
- Section navigation
- Print formatting
- Grid system
- Icon framework
- Page numbering
```

#### DYNAMIC ELEMENTS [MODIFIABLE]
```html
<!-- Professional Title -->
<div class="name-plate">
    <h1>PETER A. WEREH</h1>
    <h2>[Professional Title]</h2>
</div>

<!-- Section Content -->
<div class="cv-section">
    [Dynamic Content]
</div>
```

#### CONTACT INFORMATION [EXACT MATCH]
```html
<div class="contact-info">
    <span><i data-feather="mail"></i>wereh.achieng@gmail.com</span>
    <span><i data-feather="mail"></i>wereh.achieng@outlook.com</span>
    <span><i data-feather="phone"></i>+254 727 358 392</span>
    <span><i data-feather="map-pin"></i>Nairobi, Kenya</span>
</div>
```

### 3. SECTION STYLING

#### Experience Section
```css
.experience-entry {
    margin-bottom: 1.5rem;
}

.role-title {
    font-weight: 600;
    color: var(--primary-color);
}

.achievement-list {
    list-style-type: square;
    padding-left: 1.2rem;
}
```

#### Skills Matrix
```css
.skills-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 1rem;
}
```

### 4. VALIDATION REQUIREMENTS

#### Template Integrity
- [ ] Multi-page layout preserved
- [ ] Section navigation functional
- [ ] Grid system maintained
- [ ] Print layout optimized
- [ ] Icon system intact
- [ ] Page numbering accurate

#### Content Organization
- [ ] Professional title formatting
- [ ] Section hierarchy
- [ ] Experience chronology
- [ ] Skills categorization
- [ ] Achievement formatting
- [ ] Contact details accuracy

#### Technical Validation
- [ ] HTML structure
- [ ] CSS grid system
- [ ] Print media queries
- [ ] Page breaks
- [ ] Mobile responsiveness
- [ ] Cross-browser compatibility

### 5. ATS OPTIMIZATION
- Use industry-standard section headings
- Include relevant keywords
- Maintain clean HTML structure
- Ensure text extractability
- Follow consistent formatting
- Use standard date formats

## OUTPUT DELIVERABLES
1. `cv_draft.md`: Content review document
2. `CV_{Company}_{Position}.html`: Final implementation
3. Validation report
4. ATS compatibility check

## CRITICAL NOTES

### DO NOT MODIFY
- Template structure
- Grid system
- Print layout
- Navigation system
- Icon implementation
- Page break logic

### ONLY MODIFY
- Professional title
- Section content
- Achievement bullets
- Skills matrix

### ALWAYS MAINTAIN
- Chronological order
- Consistent formatting
- ATS compatibility
- Print optimization
- Section hierarchy

## VERSION CONTROL
- Document all changes
- Track content versions
- Maintain template integrity

## INTEGRATION
- Sync with career-supreme-dsa.py
- Update career analytics
- Link with knowledge base
- Maintain SQL schema alignment

---
**Note**: This prompt is designed for AI/LLM systems with advanced CV template handling capabilities. Adjust parameters based on specific requirements and ATS considerations.
