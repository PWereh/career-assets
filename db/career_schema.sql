-- Career Database Schema

-- Organizations table
CREATE TABLE IF NOT EXISTS organizations (
    org_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    industry TEXT,
    location TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Roles table
CREATE TABLE IF NOT EXISTS roles (
    role_id INTEGER PRIMARY KEY AUTOINCREMENT,
    org_id INTEGER,
    title TEXT NOT NULL,
    start_date DATE,
    end_date DATE,
    location_country TEXT,
    location_city TEXT,
    employment_type TEXT, -- Full-time, Contract, etc.
    context TEXT, -- Project/role context
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (org_id) REFERENCES organizations(org_id)
);

-- Skills table
CREATE TABLE IF NOT EXISTS skills (
    skill_id INTEGER PRIMARY KEY AUTOINCREMENT,
    category TEXT NOT NULL, -- Technical, Soft Skills, etc.
    name TEXT NOT NULL,
    proficiency_level INTEGER, -- 1-5 or percentage
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Role Skills table (many-to-many relationship)
CREATE TABLE IF NOT EXISTS role_skills (
    role_id INTEGER,
    skill_id INTEGER,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (role_id, skill_id),
    FOREIGN KEY (role_id) REFERENCES roles(role_id),
    FOREIGN KEY (skill_id) REFERENCES skills(skill_id)
);

-- Projects table
CREATE TABLE IF NOT EXISTS projects (
    project_id INTEGER PRIMARY KEY AUTOINCREMENT,
    role_id INTEGER,
    name TEXT NOT NULL,
    description TEXT,
    start_date DATE,
    end_date DATE,
    budget DECIMAL(15,2),
    beneficiaries INTEGER,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (role_id) REFERENCES roles(role_id)
);

-- Achievements table
CREATE TABLE IF NOT EXISTS achievements (
    achievement_id INTEGER PRIMARY KEY AUTOINCREMENT,
    role_id INTEGER,
    project_id INTEGER,
    description TEXT NOT NULL,
    impact_metric TEXT,
    date_achieved DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (role_id) REFERENCES roles(role_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

-- Education table
CREATE TABLE IF NOT EXISTS education (
    education_id INTEGER PRIMARY KEY AUTOINCREMENT,
    institution TEXT NOT NULL,
    degree TEXT NOT NULL,
    field TEXT NOT NULL,
    start_date DATE,
    end_date DATE,
    gpa DECIMAL(3,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Certifications table
CREATE TABLE IF NOT EXISTS certifications (
    cert_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    issuing_org TEXT NOT NULL,
    date_earned DATE,
    expiry_date DATE,
    credential_id TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Trainings table
CREATE TABLE IF NOT EXISTS trainings (
    training_id INTEGER PRIMARY KEY AUTOINCREMENT,
    role_id INTEGER,
    name TEXT NOT NULL,
    provider TEXT,
    description TEXT,
    date_completed DATE,
    duration_hours INTEGER,
    type TEXT, -- Online, In-person, Workshop, etc.
    category TEXT, -- Operations Management, Project Planning, Technical, etc.
    subcategory TEXT, -- For grouping related trainings
    certificate_path TEXT, -- Path to certificate file
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (role_id) REFERENCES roles(role_id)
);

-- Job Applications table
CREATE TABLE IF NOT EXISTS job_applications (
    application_id INTEGER PRIMARY KEY AUTOINCREMENT,
    job_title TEXT NOT NULL,
    company TEXT NOT NULL,
    job_description TEXT,
    application_date DATE,
    status TEXT,
    match_score DECIMAL(5,2), -- AI-generated match percentage
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Skills Match Analysis table
CREATE TABLE IF NOT EXISTS skill_matches (
    match_id INTEGER PRIMARY KEY AUTOINCREMENT,
    application_id INTEGER,
    skill_id INTEGER,
    required_level INTEGER,
    candidate_level INTEGER,
    match_score DECIMAL(5,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (application_id) REFERENCES job_applications(application_id),
    FOREIGN KEY (skill_id) REFERENCES skills(skill_id)
);
