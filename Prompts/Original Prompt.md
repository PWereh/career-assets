Task 0. Project Set Up and Data Collection
### Create the folliwing Directory Structure using win-cli or filesystem tools
```bash
C:/Users/Wereh/Documents/Obsidian Vault/Career/Scope/
├── $ {
  Organization
}/
│   ├── orgData/
│   │   ├── $ {
  Organization
}-background.md
│   │   └── $ {
  Organization
}-HiringTrends.md
│   │   └── $ {
  Organization
}-HiringMethods.md
│   │   └── $ {
  Organization
}-Interviews.md
│   └── $ {
  Role_Location
}/
│       └── $ {
  Role_Title
}/
│           ├── roleData/
│           │   ├── $ {
  Role_Title
}-$ {
  Organization
}(Acronym)-Location-Role Fitness Analyis.md.md
│           │   └── $ {
  Organization
}-HiringTrends.md
│           │   └── $ {
  Organization
}-HiringMethods.md
│           │   └── $ {
  Organization
}-Interviews.md
│           ├── roleAnalysis/
│           │   ├── $ {
  Role_Title
}-$ {
  Organization
}-Role Fitness Analysis.md
│           │   └── $ {
  Role_Title
}-$ {
  Organization
}(Acronym)-Role Dimension..md
│           ├── CL_CV/
│           │   ├── $ {
  Role_Title
}-$ {
  Organization
}(Acronym)-Location-CV.md
│           │   └── $ {
  Role_Title
}-$ {
  Organization
}(Acronym)-Location-CL.md
│           └── Final_Documents/
│               ├── $ {
  Role_Title
}-$ {
  Organization
}-CV.html
│               └── $ {
  Role_Title
}-$ {
  Organization
}-CoverLetter.html
```
// Model parameters for various scopes
{
"models": {
"perplexity": {
"model": "llama-3.1-sonar-large-128k-online",
"role": "user",
"parameter_sets": {
"research": {
"max_tokens": 100000,
"temperature": 0.2,
"top_p": 0.7,
"top_k": 500,
"presence_penalty": 0.1,
"frequency_penalty": 0.7
},
"analysis": {
"max_tokens": 50000,
"temperature": 0.2,
"top_p": 0.4,
"top_k": 375,
"presence_penalty": 0,
"frequency_penalty": 0.5
},

"return_citations": true,
"return_images": false,
"return_related_questions": false,
"stream": false
}
},
"openai": {
"model": "o1-preview",
"parameter_sets": {
"analysis": {
"reasoning_effort": "high",
"max_completion_tokens": 75000,
"max_concurrent_requests": 1,
"messages": [
{
"role": "system",
"content": "You are an expert job market analyst specializing in requirement analysis and candidate evaluation. Focus on extracting, categorizing, and analyzing job requirements with attention to both explicit and implicit qualifications."
}
]
},
"processing": {
"reasoning_effort": "high",
"max_completion_tokens": 75000,
"max_concurrent_requests": 1,
"messages": [
{
"role": "user",
"content": "You are an expert recruiter specializing in candidate-role fit analysis and qualification assessment. Focus on detailed comparison of candidate qualifications against job requirements, identifying strengths and potential areas for emphasis."
}
]
},
"cover_letter": {
"reasoning_effort": "high",
"max_completion_tokens": 50000,
"max_concurrent_requests": 1,
"messages": [
{
"role": "user",
"content": "You are an expert cover letter writer with deep understanding of professional writing and job market dynamics. Focus on creating compelling, tailored narratives that demonstrate clear role alignment and value proposition."
}
]
},
"candidate_evaluation": {
"reasoning_effort": "high",
"max_completion_tokens": 75000,
"max_concurrent_requests": 1,
"messages": [
{
"role": "system",
"content": "You are an expert recruiter specializing in candidate-role fit analysis and qualification assessment. Focus on detailed comparison of candidate qualifications against job requirements, identifying strengths and potential areas for emphasis."
}
]
},
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
}
}
}
}

---
Step 0: Project set up and Data Collection
Step 0.1 use the visi_page tool to Fetch and analyse the following Job Description https://reliefweb.int/job/4117642/environmental-healthwash-coordinator.
Step 0.2 Project structure
Step 0.2.1 make and cd into a new directory in C:\\Users\\Wereh\\Documents\\Obsidian Vault\\Career\\Scope\\[Organisation_name]\\[Role_Location("Multiple", if various countries)]\\[Role_Title], open the folder
Step 0.2.2 make a new directory in C:\\Users\\Wereh\\Documents\\Obsidian Vault\\Career\\Scope\\[Organisation_name]\\[orgData]
Step 0.2.2 make a new directory in C:\\Users\\Wereh\\Documents\\Obsidian Vault\\Career\\Scope\\[Organisation_name]\\[Role_Location("Multiple"if various countries)]\\[Role_Title]\\[roleData]

Step 0.2.3 make a new directory in C:\\Users\\Wereh\\Documents\\Obsidian Vault\\Career\\Scope\\[Organisation_name]\\[Role_Location("Multiple"if various countries)]\\[Role_Title]\\[CL_CV]

Step 0.3 Data Preprocessing
Step 0.3.1 strip the fetched Job Description of all unnecessary characters and spaces, and save it in plaintext format as [Role_Title-Organisation(Acronym).md] in [roleData], clean extraneous and irrelevant data found after "How to Apply" section

Step 0.3.2 use perplexity(model llama-3.1-sonar-large-128k-online) to research the organization background, identify the organization, address(HQ), address(hiring office) location and global presence, founded, mission, vision, thematic areas, Sectors of intervention, strategic directon, operational status, culture ("work_environment", "organizational_values","management_style","team_structure","decision_making_process"), and most importantly the organizational current needs, priorities, challenges.
Step 0.3.2.1 Dump the raw search results of perplexity search into the folder [orgData] [Organization_name-background.md].
Step 0.3.2.2 Repeat the same research with gemini_search tool. Append the raw search results from the gemini-search to [Organization_name-background.md]
Step 0.3.3 use add_entity tool to add the organization in the memory "type":"Organisation", "properties": ("id": [assign UUID], "name":[Organisation_name], "addressHQ":[physical,po], "addressHO": [physical,po],"location":[])
Step 0.3.3.1 use o1-mini to SUMMARIZE (extractive, json friendly) the [Organization_name(Acronym)background.md]. Then, use add_observations tool to add a new "observation" to [Organisation_name] {"entity":[[Organisation_name]UUID], "entityName": [Organisation_name], "id":[observation_UUID], "type": "About", "properties": ("globalPresence":[],"founded":[], "mission":[], "vision"::[], "thematicAreas":[], "Sectors":[], "operationalStatus":[], "culture":[], "priorities":[], "needs":[], "challenges":[])}. Retain ATS.

Step 0.3.4 use perplexity(model llama-3.1-sonar-large-128k-online) to research the organization current hiring trends, hiring practices, and hiring priorities,
Step 0.3.4.1 Dump the raw results of perplexity search into the folder [orgData] [Organization_name(Acronym)-HiringTrends.md]
Step 0.3.4.2 Repeat the research with gemini_search tool. Append the raw results of gemini-search into [Organization_name(Acronym)-HiringTrends.md].
Step 0.3.4.3 use o1-mini to to SUMMARIZE (extractive, json friendly) the [Organization_name(Acronym)-HiringTrends.md].Then, use add_observations tool to add a new "observation" to [Organisation_name]:  {"entity":[[Organisation_name]UUID], "id":[observation_UUID], "entityName": [Organisation_name], "type":"Hiring Trends", "properties":("Trends":list[], "Practices": list[], "priorities": list[])}.

Step 0.3.5 use perplexity(model llama-3.1-sonar-large-128k-online) to research the organization candidate assessment methods, and candidate selection methods,
Step 0.3.5.1 Append the raw results of perplexity search into the folder [orgData]
[Organization_name(Acronym)-SelectionMethods.md],
Step 0.3.5.2 repeat the research with gemini_search tool. Append the gemini-search results inside
[Organization_name(Acronym)-SelectionMethods.md],
Step 0.3.5.3 use o1-mini to to SUMMARIZE (extractive, json friendly) the
[Organization_name(Acronym)-HiringMethods.md]. Then, use add_observations tool to add a new
"observation" to [Organisation_name]:  {"entity":[[Organisation_name]UUID], "id":[observation_UUID],
"type":"Selection Methods", "properties":("assessments":list[], "selection": list[], "remarks": list[])}.

Step 0.3.6 use perplexity(model llama-3.1-sonar-large-128k-online) to deep research the organization of preferred interview assessment types, and sample/previous interview questions related to this role,
Step 0.3.6.1 Dump the raw results of perplexity search into the folder [orgData] [Organization_name(Acronym)-Interviews.md],
step 0.3.6.2 repeat with the gemini-search tool. Append the gemini-search results inside [Organization_name(Acronym)-Interviews.md],
Step 0.3.5.3 use o1-mini to to SUMMARIZE (extractive, json friendly) the [Organization_name(Acronym)-Interviews.md]. Then, use add_observations tool to add a new "observation" to [Organisation_name]:  {"entity":[[Organisation_name]UUID], "id":[observation_UUID], "type":"Interviews", "properties":("types":list[], "samples": list[], "remarks": list[])}.


Task 1: Job Profile Analysis

// fallback Model parameters for factual analysis, if o1-preview is not available.
const MODEL_PARAMS = {
temperature: 0.1,         // Very low for high precision
top_p: 0.2,              // Narrow sampling for consistency
top_k: 10,               // Limited token selection
presence_penalty: -0.1,   // Slight penalty for repetition
frequency_penalty: 0.1,   // Small boost for precision
max_tokens: 1000,        // Sufficient for detailed analysis
stop_sequences: [        // Clear boundaries
"speculation:",
"might be:",
"possibly:",
"maybe:"
]
}

Step 1.1 from [Role_Title-Organisation(Acronym).md] use o1-preview to provide an **extractive**, comprehensive summary, (Retain ATS) of the [Role_Title-Organisation(Acronym).md] (Position, Title, organisation, location, date posted and closing, how to apply, job purpose, responsibilities, experience, qualifications, education, training, certifications, memberships, skills, skills(software), competencies, requirements, etc.) for the role: Write the results into [Role_Title-Organisation(Acronym)-Role Dimension.md] in the [roleData] Dir, Retain ATS. Open the file.
Step 1.2 Create an entity named [Role_Title-Organisation(Acronym)] resolved as name with "type":"Role" in memory.
Step 1.2.1 update the entity [Role_Title-Organisation(Acronym)] with the Role "properties": {"Position": string [], "Organisation":string [] , "location": string [], "posted": Date[YYYY-MM-DD], "closing":Date[YYYY-MM-DD], "reports":string[supervisor(s)], "reportees": li[Roles reporting to Position]},
Step 1.2.3 use o1-mini to provide an **extractive**, **JSON-friendly** summary of [Role_Title-Organisation(Acronym)-Role Dimension.md] Retain ATS. Then use the add_obseravation tool to commit the output into the memory into the entity [Role_Title-Organisation(Acronym)], "type":"Role Dimensions", "properties": {"jobPurpose":string [], "responsibilities":string [], "experience":string [], "qualifications":string [], "education":string [], "training":string [], "certifications":string [], "memberships":string [], "skills":string [], "skills(software)":string [], "competencies":string [], "requirements":string [], etc.})

Step 1.3 Query, traverse, and load the following entities [Organisation_name] and [Role_Title-Organisation(Acronym)]. From the [Organisation_name] read the "priorities", "needs", "challenges", join with "Role Dimensions" from [Role_Title-Organisation(Acronym)],
Step 1.3.1 use Openai_chat tool with o1-preview model to Generate a detailed one-paragraph detailed "Role Synopsis" highlighting the job purpose and the most critical needs of the organisation that they are seeking to be fulfilled by the ideal applicant,
SteP 1.3.1.1 append the "Role Synopsis" into [Role_Title-Organisation(Acronym)-Role Dimension.md].
Step 1.3.2.2 use the add_observations tool to copy the "Role Synopsis" 1:1 as observations into [Role_Title-Organisation(Acronym)] entity as {"entity":[[Role_Title-Organisation(Acronym)]UUID], "id":[observation_UUID], "entityName": [Role_Title-Organisation(Acronym)], "type":"Role Synopsis", properties("content": string[])},
Step 1.3.2.3 create a entity relationship in the memory as follows: [Organisation_name] recruiting [Role_Title-Organisation(Acronym)] with Properties (position).

Task 2. Role Fitness & Approach

Step 2.1 Read the memory, retrieve, and load the Organisation Background, the Role Dimension, and Candidate Profile for {Peter A. Wereh (Person)}, for analysis.
Step 2.2 from the retrieved Role Dimension, and the Candidate Profile, use o1-preview to run a comprehensive analysis to Identify match or gap aspects using the following comparison criteria: Aspect [Experience, qualifications, Education, Technical Skills, Competencies, etc] -required level experience/aspect [From analysis of Role Dimension] -candidate capablity/aspect [insert role from analysis of CV, or "Missing" if none], -% fit/Aspect. Retain ATS
Step 2.4.1 Generate Role Fitness Analysis FORMATTED AS TABLE using the following columns: Area | Required Aspect | Experience | %Fit| Well researched observations. Retain ATS. Then analyse the overall % Role fitness of the candidate. Generate % Fit:
Step 2.4.1.1 Save the o1-preview output into [Role_Title-Organisation(Acronym)-Location-Role Fitness Analyis.md], open the file.
Step 2.4.3 use o1 preview to Synthesise the Organisation background (priorities, needs challenges)
Role Dimension, Role Fitness Analysis, [Organization Hiring Trends.md], and [Candidate Section
Methods.md] and generate the "Role Attack Strategy" to emphasise the candidate fitness over the
hiring threshold, develop a comprehensive guideline for development o custom Cv and Custom CL.
Append this to the [Role_Title-Organisation(Acronym)-Location-Role Fitness and Approach.md]
Step 2.4.3.2 use o1-prevew to provide a precise SUMMARY(extractive, Json-friendly) version of
[Role_Title-Organisation(Acronym)-Location-Role Fitness and Approach.md]. Then, use the add_observations tool
add the "Role Fitness" {"entity":[[Role_Title-Organisation(Acronym)]UUID], "id":[observation_UUID],
"entityName": [Role_Title-Organisation(Acronym)], "type":"Role Fitness and Approach", "properties": {(Role
Fitness Analysis, Role Synopsis, Role Attack Strategy)}} into the [Role_Title-Organisation(Acronym)] entity in the
memory.
Step 2.5.3 create an entity relationship in the memory {Peter A. Wereh (Person)} persuing [Role_Title-Organisation(Acronym)]


Task 3: Custom CV Generation

Based on the Role Attack Strategy, generate a custom cv for the dynamic sections of this template C:\Users\Wereh\GitHub\CL_CV Parser\Base_CV_Template_2024.html

Find the most relevant work experiences that match this job role by:

Look through the candidate work history and gather:
- All past work experiences
- The key responsibilities in each role
- Specific achievements and their measurable impact
- What category each responsibility falls under
* Only show me experiences that match what the job needs:
* Filter to keep experiences where the candidate's responsibility categories match the job's requirements
This ensures we're focusing on relevant experience
Rank these experiences in order of importance:
Put experiences with matching project types at the top (Priority 1)
Then show experiences with matching geographic scope (Priority 2)
Put other relevant experiences last (Priority 3)
Within each priority group, show most recent experiences first
For each matching experience, include:
The full work experience details
responsibilities
achievements
Key metrics (measured impacts)
category of work

use the code comments in cv template C:\Users\Wereh\GitHub\CL_CV Parser\Base_CV_Template_2024.html guidelines to generate the draft CV [${Role_Title}-${Organization}(Acronym)-Location-CV.md] using this format:C:\Users\Wereh\GitHub\CL_CV Parser\Base_CV_Template_2024.md

Key Experience - Top 3 roles (3-5 lines)
Relevant Experience - next Top 5 Roles (2-3 lines)
Other Experince - the rest of the roles (Context only)

Key Achievements - Top 3 roles (3-5 lines)

Skills and Competencies - Top 5

Training and Certifications - Top 5
Other Training and Certifications - the next 5
Tools and Software - most relevant standards and softwared (you can infer for real-world relevance)

Task 4: Cover Letter Generation

Step 4.1 From memory, retrieve and load the following entities [Organisation_name], [Role_Title-Organisation(Acronym)], and {Peter A. Wereh (Person)}:
Step 4.2 use o1-preview to run a deep Analysis of  About, Role Dimension, Role Synopsis, and Role Fitness (with focus on Role Attack Strategy), and Craft a tailored cover letter for the job application.
Use o1-preview to Generate Cover letter in the [CL_CV] Dir.

INSTRUCTION:
- structure: a brief introduction and conclusion, and 1-2 body paragraphs on the most relevant skills, achievements based on the role attack strategy, and experiences that meet the organization's needs.
- Context: adopt relevant and crucial context from the entities related to this role and express genuine interest and fit.
- Tone: nuance the target organisation culture without using too much corporate jargon.
- Structure: It should be no longer than 370 (+/-) 10% words and written with impeccable grammar and spelling.
-- Create a well-structured response using Markdown formatting.
-- Incorporate headings and subheadings to break up the content into sections.
-- Use lists to present information in an organised and easy-to-read format.
-- Use bold text to emphasize important points.
-- Nest your response under the following callout: "> [!quote] ### Cover Letter.<space><space> > Contents".

- Audience: high level selection panel (including a mix of HR, Role Manager, organization management, and sector experts)
- SEO: - Select and simulate key searchable words from the key entities.
-- SEO strategically for maximum reader influencing.
-- Mimic the nuanced communication style of the organization map the tone and style of the letter to match.

Temperature = 0.1

Task 3. Interview Assessment Strategy
Step 3.1 Retrieve, and synthesize the Role Dimension, Role Fitness, Organization Hiring Trends, and Candidate Section Methods, then use sequentialthinking tool to hypothesise and predict the most probable interview questions for each likely assessment type for this role. loop until the last thought
Step 3.2 parse the thoughts from sequential thinking together with observations from memory to the reasoner tool decompose and prepare the 10 most probable interview questions (ensure above 95% convergence on the most probable set).
Step 3.3 Parse the decomposed probable interview questions to O1-preview to combined Role Fitness Analysis in the memory into an Interview assessment guide with simulated model answers for the corresponding assessment type.

## Important Guidelines

1. **DO NOT**:
- Create existing files/outputs
- Create duplicate entities
- Override existing relationships
- Lose source citations

2. **DO**:
- Maintain consistent ATS throughout the all levels of outputs
- Update different observations
- Format for efficient RAG
- Maintain data integrity
- Document changes


3. **ALWAYS**:
- Validate inputs
- Handle errors
- Maintain atomicity
- Check completeness
- format date as YYYY-MM-DD

Parameters:
Perplexity: {"model": "llama-3.1-sonar-large-128k-online", "role": "user", "return_citations": true}
OpenAI: {"model": "o1-preview", "generationConfig": {"temperature": 0.1, "topK": 64, "topP": 0.95, "maxOutputTokens": 8192, "responseMimeType": "text/plain" }, "model": "o1-mini", "generationConfig": {"temperature": 0.1, "topK": 64, "topP": 0.95, "maxOutputTokens": 8192, "responseMimeType": "text/plain" }}
Reasoner:, sequentialthinking: {"thought": ~, "total_thoughts": max, "needs_more_thoughts": True}
Fetch {"start_index":100000, "max_length": 100000}
Temperature = 0.0

Standard json-memory schema for knowledge graph: (IGNORE VALUES)
{
"knowledgeGraph": {
"entities": [
{
"id": "E001",
"type": "Person",
"properties": {
"name": "John Doe",
"age": 30,
"occupation": "Software Engineer"
}
},
{
"id": "E002",
"type": "Organization",
"properties": {
"name": "Tech Corp",
"industry": "Technology",
"founded": 2010
}
}
],
"relationships": [
{
"id": "R001",
"type": "worksFor",
"source": "E001",
"target": "E002",
"properties": {
"startDate": "2020-01-15",
"position": "Senior Developer"
}
}
],
"observations": [
{
"id": "O001",
"type": "Performance",
"entity": "E001",
"properties": {
"date": "2024-01-09",
"metric": "productivity",
"value": 95
}
}
]
}
}