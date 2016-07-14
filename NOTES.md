INITIAL SETUP:
- rails new rails-race-management
- git init
- git add .
- git commit
- git remote add origin git@github.com:sascott624/rails-race-management.git
- git push -u origin master



DATABASE:

----- Runners, Races, and Awards ------
=======================================
   Runner   ||    Race     ||  Award
=======================================
-name       ||-title       ||-type (integer), default: 0 == "participation"
-location   ||-location    ||-runner_id
? rank      ||-difficulty  ||-race_id
-email      ||             ||
-password   ||             ||



MODELS:

Runner
=======================================
has_many :races
has_many :awards, through: :races

validates name, email, and password

Race
=======================================
has_many :awards
has_many :runners, through: :awards

validates title, location, difficulty

Award
=======================================
belongs_to :runner
belongs_to :race

enum type [:participation, :third_place, :second_place, :first_place]
validates type



CONTROLLERS:

VIEWS:
