# AI/LLM Cover Letter Generation Prompt
Version: 2024.1
Last Updated: 2024-12-23

## SYSTEM CONTEXT
You are assisting in generating a professional cover letter using a strictly controlled template system.

## CRITICAL PARAMETERS
- Temperature: 0.0 (Exact reproduction required)
- Mode: Strict template adherence
- Format: HTML with Markdown draft

## WORKSPACE INITIALIZATION
```bash
# Project Structure
ROOT_DIR="{workspace}/Career DSA/{Company}_{Position}_Analysis/"
mkdir -p "${ROOT_DIR}/application_drafts"
mkdir -p "${ROOT_DIR}/interview_prep"
```

## TEMPLATE SOURCES
```plaintext
Base Template: CV_CL_templates/Base_CL_Template_2024.html
Output Target: application_drafts/CL_{Company}_{Position}.html
```

## FILE NAMING CONVENTIONS

### Document Types
- Cover Letter HTML: `CL_{Company}_{Position}.html`
- Cover Letter Draft: `cl_draft.md`
- CV HTML: `CV_{Company}_{Position}.html`
- CV Draft: `cv_draft.md`

### Version Control
- Primary Version: `CL_{Company}_{Position}.html`
- Iterations: `CL_{Company}_{Position}_v{n}.html`

## EXECUTION WORKFLOW

### 1. CONTENT DRAFT GENERATION
**Path**: `application_drafts/cl_draft.md`

```markdown
# Cover Letter Draft Structure

## Professional Header
- Full Name
- Professional Title
- Contact Information

## Date & Address Block
- Current Date: [YYYY-MM-DD]
- Company Details:
  * Recipient Name/Department
  * Company Name
  * Full Address

## Position Reference [BOLD]
Re: [Position Title]

## Letter Body
1. Opening Paragraph
   - Express interest
   - Alignment with role
   - Key qualification highlight

2. Experience Summary
   - Career overview
   - Relevant expertise
   - Key organizations

3. Achievement Bullets
   - Quantified impacts
   - Leadership examples
   - Technical implementations

4. Current Role Impact
   - Recent achievements
   - Strategic contributions
   - Team leadership

5. Closing
   - Enthusiasm for role
   - Call to action
   - Gratitude

## Signature Block
- Professional closing
- Full name
- Title
```

### 2. TEMPLATE IMPLEMENTATION

#### STATIC ELEMENTS [DO NOT MODIFY]
```html
<!-- Core Structure -->
- Header gradient
- Contact card layout
- Footer design
- Print media queries
- Icon system
- Page numbering
```

#### DYNAMIC ELEMENTS [MODIFIABLE]
```html
<!-- Professional Title -->
<div class="name-plate">
    <h1>PETER A. WEREH</h1>
    <h2>[Professional Title]</h2>
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

#### REQUIRED STYLING
```css
/* Position Reference - STATIC */
.position-reference {
    font-weight: 700;
    margin: 15px 0;
    font-size: 11pt;
}
```

### 3. VALIDATION REQUIREMENTS

#### Template Integrity
- [ ] Header gradient and blur effects maintained
- [ ] Contact card layout preserved
- [ ] Footer structure intact
- [ ] Print media queries functional
- [ ] Icon system properly implemented
- [ ] Page numbering correct

#### Content Verification
- [ ] Professional title properly formatted
- [ ] Contact information exact match
- [ ] Position reference bold formatting
- [ ] Letter body properly structured
- [ ] Signature block correctly positioned

#### Technical Validation
- [ ] HTML validity
- [ ] CSS integrity
- [ ] Print layout testing
- [ ] Mobile responsiveness
- [ ] Icon rendering

### 4. REFERENCE COMPARISONS
1. Base Template (`Base_CL_Template_2024.html`)
   - Structure adherence
   - Styling preservation
   - Dynamic elements placement

2. Previous Implementations
   - Layout consistency
   - Content formatting
   - Professional presentation

## OUTPUT DELIVERABLES
1. `cl_draft.md`: Content review document
2. `CL_{Company}_{Position}.html`: Final implementation
3. Validation report

## CRITICAL NOTES

### DO NOT MODIFY
- Template structure
- Styling components
- Print media queries
- Icon implementation
- Footer layout

### ONLY MODIFY
- Professional title in name-plate h2
- Letter content within designated areas
- Position reference text

### ALWAYS MAINTAIN
- Exact contact information
- Bold position reference
- Template integrity
- Print layout specifications

## VERSION CONTROL
- Document all changes
- Maintain template versions
- Track content iterations

## POWERSHELL COMMAND REFERENCES
When referencing PowerShell commands, use:
```powershell
PS> command_name -Parameter Value
```

Note: The prefix "PS_" is reserved for PowerShell command references only, not for file names.

---
**Note**: This prompt is designed for AI/LLM systems with precise template handling capabilities. Adjust temperature and parameters based on system requirements.
