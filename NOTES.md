#INITIAL SETUP:
- rails new rails-race-management
- git init
- git add .
- git commit
- git remote add origin git@github.com:sascott624/rails-race-management.git
- git push -u origin master



#DATABASE:

Runner
=======================================
- name
- location
- email
- password_digest

Race
=======================================
- title
- location
- difficulty

Award
=======================================
- runner_id
- race_id
- type (integer), default: 0 == "participation"


#MODELS:

Runner
=======================================
has_many :races
has_many :awards, through: :races

validates email, and password


Race
=======================================
has_many :awards
has_many :runners, through: :awards

validates title, location, difficulty


Award
=======================================
belongs_to :runner
belongs_to :race
type: integer -> in the form, this will be a checkbox, values: participation, first, second, third


#CONTROLLERS & ACTIONS:

Welcome
- home

Runners
- index
- create
- new (signup)
- show
- update
- destroy
- edit


Sessions
- new (login)
- create 
- destroy (logout)

Awards
- new

Races
- new

#VIEWS:
