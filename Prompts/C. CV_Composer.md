C. Role Application Materials: CV

{
"models": deepseek R1{
"cv_generation": {
"reasoning_effort": "high",
"max_completion_tokens": 75000,
"max_concurrent_requests": 1,
"messages": [
{
"role": "system",
"content": "You are an expert CV writer with deep understanding of professional writing and job market dynamics. Focus on creating compelling, tailored narratives that demonstrate clear role alignment and value proposition."
}
]
}

C) Traverse the provided knowledge graph, read the candidate profile. Using details from the Role Fitness Analysis], [Role Synopsis], and   [Role Attack
Strategy],
- run a competency mapping analysis of the Candidates capabilities vis-a-vis the role dimensions. Score past roles (0-5) against job requirements using:
-- matching_criteria:
technical_skills:
weight: 0.4
scoring: 0-5 scale
project_scope:
weight: 0.3
scoring: Geographic + Budget matrix
leadership:
weight: 0.2
scoring: Team size + Impact metrics
innovation:
weight: 0.1
scoring: Novel solutions + Methods
-- experience_score = (technical_match * 0.4) +
(scope_match * 0.3) +
(leadership_match * 0.2) +
(innovation_match * 0.1)
- Rank these experiences in order of:
-- Priority1: Matching project types
-- Priority2: Geographic scope alignment
-- Priority3: Management and Innovation alignment

- for each role,
--research ReliefWeb, and verified reports to generate [Previous Role KPIs]. Prioritise actual, and
quantifiable figures Matching to the [Role
Dimensions] over the specific Role timeframes.
-- (As a last resort, If specific numbers are missing, provide approximations based on similar
projects or standard SPHERE indicators based on best available source of information.)

- Create Experiences based on experience_score
--"Relevant Experience" Section, include:
-- Role title | Location[Country] | Start - End duration [Mmm-YYYY]
--- Experience context (paragraphs) include: {
* Project name & description
* Specific locations & populations served
* Scope (Water, Sanitation, Hygiene Promotion, Climate resilience, etc.)
* Infrastructure metrics (coverage, numbers, sizes)
* Donors & Total Budget (USD M)
} Format: Project Description | Locations | Population Stats | Scope (brief topline) \n  Donors: X, Y, Z | USD Amount
--- responsibilities & achievements  (cherry pick 4-5 lines) craft each line into a well written
self-explanatory bullet sentences (20±5 words) that capture the selling points and nuances of the
previous role experiences mapped to satiate the required experiences
--- Key metrics: Based on the [Previous Role KPIs] (measured impacts) write a flowing paragrapgh with 2 comprenhensive sentences showcasing
key impacts narrative of the role achievents in the project context. {Technical:
[Quantified outcomes], Management: [Team/Resource metrics], Innovation: [Process improvements]}.
Quote the source.

-- "Other Exprience" Section, include:
--- Role title | Location[Country] | Start - End duration [Mmm-YYYY]
--- Experience context (paragraphs) include: {
* Project name & description
* Specific locations & populations served
* Donors & Total Budget (USD M)
} Format: Project Description | Locations | Population Stats\n | Donors: X, Y, Z | USD Amount
--- responsibilities & achievements  (cherry pick 3-4 lines) craft each line into a well written
self-explanatory bullet sentences (10±5 words) that capture the selling points and nuances of the
previous role experiences mapped to satiate the required experiences
--- Key metrics: (measured impacts) write a flowing paragrapgh with 2 comprenhensive sentences
showcasing key impacts narrative of the role achievents in the project context. {Technical:
[Quantified outcomes], Management: [Team/Resource metrics], Innovation: [Process improvements]}

generate a revised CV in chronological order from the latest role, Populate the cv with the
following curated structure:
-- Header: swap a suitable job heading, WASH Expert/ Water Sector Specialist/ Emergency WASH Expert/ WASH amd Climate Change Expert/ Water and Wastewater Expert/ Water Security and Sanitation Expert etc.
-- Professional Summary: begin with an executive summary, [30-word impactful statement]: { [Current
Role] | [Years of Experience] | [Key Specialization]} then develop a compelling professional Summary
based on the role synopsis and the candidate's mapped competencies/strengths < 150 words.

  -- Relevant Experience: Top ranked 4 Roles

  -- Other Experience: Next 6 ranked Roles
  -- Key achievements: Compile 6 top key achievements from the key metrics found under the "Relevant
  Experience" & "Other Experience" into a bulleted list of sentences that narrate the thematic match
  of the candidates strengths to the required role dimensions.
  -- Skills: Select 5 top skills requested in the
  Jod Dimensions measured against the candidates proficiency for those skills in %.
  --- present in a tabular grid with skill and representative progress bar
  -- Education: Include all education details as provided
  -- Relevant Training: Include the five most relevant training experiences by compiling information
  from the provided list of trainings and scrape data from old Cvs in the knowledge base.
  -- Other Training: Add the five more training experiences from the provided list of trainings.
  select trainings that complement the role dimensions by adding depth and diversity.
  -- Languages: Include as provided, columns: |Speak|Read|Write|
  -- References: Use the three most relvant references from the knowledge data base provided.
  -- Footer: Skype icon span Copyright Name | Job Title span Linkedin icon

  > Write the [Role Resume] into [yymmdd_Role_Title-Organisation(Acronym)-CV.md]

  Layout settings:
  Layout:
  - A4, margins: 20px
  - Font: Corbel 11pt
  - Line spacing: 1.4pts
  - Paragraph gap: 12pts
  - Max pages: 4
  Icons: Lucide pack (Obsidian-compatible)

  Quality Control:
  Validation:
  - ATS optimization
  - Impact verification
  - Reference checks
  - Word count limits
  - Technical accuracy

  Version:
  - Track changes
  - Maintain changelog
  - Document reviews
  ---

  wait for part D (Cover Letter)...

  Temperature = 0.0