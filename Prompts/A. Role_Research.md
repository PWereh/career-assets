// Model parameters for various scopes
{
"models": {
"perplexity": {
"model": "Sonar Pro",
"role": "user",
"parameter_sets": {
"research": {
"max_tokens": 100000,
"temperature": 0.1,
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
"Deepseek": {
"model": "R1",
"parameter_sets": {
"analysis": {
"reasoning_effort": "high",
"max_completion_tokens": 100000,
"max_concurrent_requests": 1,
"messages": [
{
"role": "system",
"content": "You are a top expert job market analyst specializing in requirement analysis and candidate evaluation. Focus on extracting, categorizing, and analyzing job requirements with attention to both explicit and implicit qualifications.

Through out your research and analysis, use authoritative web sources to enhance and supplement the
quality of information in the JD. The results of this comprehensive Role Research is an important
input towards determining the Role Fitness, and Role Approach for applying candidates, by analysing
their profile against the JD and preparing superior Role Application Materials."
}
]
}
}
}
}
}


A) Analyze the provided Job Description. synthesize and provide an **extractive**, comprehensive
"Role Dimension", (Retain
ATS) of the Job Description (Position, Title, organisation, location, Duty Station, date posted and closing, how
to apply, job purpose, reporting lines, Tabulate{ responsibilities, experience, qualifications, education, training,
certifications, memberships, skills, skills(software), competencies, minimum requirements, other
requirements etc.)} for the
role. Salary & Benefits Package(Remuneration, Insurance, leave, allowances, benefits, etc). How to Apply(precise
instructions)
> Write the [Role Dimensions] results into [Role_Title-Organisation(Acronym)-Role Dimension.md]
file, retain ATS.

wait...
Temperature = 0.0

- Run a deep and comprehensive web and local Research (ATS - Ready) on the [Organization
Background]:
-- identify the organization, founded, Contact
Information (detailed mailing address(HQ & hiring office), global
presence.
-- extract the mission, vision, thematic areas, strategic priorities and directon
-- research the operational status, locations, sectors of intervention, funding and partnerships.
-- culture ("work_environment",
"organizational_values", "management_style", "team_structure", "decision_making_process"),

> Write the comprehensive results "Organization Background" into
[Organization_name(Acronym)background.md] file (Retain ATS)

wait...
Temperature = 0.0

- Run a deep and comprehensive web and local Research (ATS - Ready) on the [Organization Background
- Hiring Department] centered about the role:
-- organisational hierarchy, dept. structure,
-- role organigramme, and role key interfaces
-- Departmental strategic direction
-- present Departmental needs, and priorities,
-- current overall Departmental funding portfolio, [Program,	Donor,	Budget,	Key Activities]
-- current Departmental KPIs and challenges
-- strategic tools and frameworks
-- Innovation pipeline

> Write the comprehensive results "Organization Background - Hiring Department" into
[Organization_name(Acronym)background-Hiring Department.md] markdown file (Retain ATS)

wait...
Temperature = 0.0

- Run a deep and comprehensive web and local Research on the organization [Hiring Methods], identify the
current "staffing practices",
latest "hiring trends",
and "hiring priorities".
> Write the comprehensive results [Hiring Methods] into
[Organization_name(Acronym)-Hiring&SelectionMethods.md] file (Retain ATS)

wait...
Temperature = 0.0

- Run a deep and comprehensive web and local Research on the organization's candidate [Selection
Methods], identify the relevant candidate: "recruitment process", "assessment techniques",
"selection criteria", and "Onboarding Process".
> Append the comprehensive [Selection Methods] results as a new section with its subheadings into the
[Organization_name(Acronym)-Hiring&SelectionMethods.md] markdown file
(Retain ATS)

wait for part B...
Temperature = 0.0