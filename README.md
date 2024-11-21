StickS 🐾

StickS is a web application designed for dog owners, allowing users to discover and review dog-friendly locations. 

The app combines map functionality with social interaction, enabling users to easily find dog-friendly places and rate them based on available amenities.


Current Features ✨

Database 🗃️

The project consists of three main models:


User 👤

Represents the users of the app.

Fields:

email 📧 - the user's email (for login).

password 🔑 - the user's password (used for authentication).

username 🏷️ - a unique name visible to all users.

Authentication:

Users can log in and create accounts to interact with the app.


Place 📍

Represents dog-friendly locations 🏞️.

Fields:

name - the name of the place. 🏷️

description - a brief description of the place. 📝

photo - an optional photo of the place 📸.

Relationships:

has_one :tick - each place can have one associated set of ratings. ✅


Tick ✅

Stores detailed information about the amenities available for dogs at a given place 🐕.

Fields (all of type boolean):

drinking_water 💧 - availability of drinking water for dogs.

trash_bins 🗑️ - availability of trash bins for waste disposal.

bag_dispensers 🦴 - presence of dog waste bag dispensers.

water_play_areas 💦 - water play areas or splash pads for dogs.

small_large_areas 🔄 - separate areas for small and large dogs.

fenced_areas 🚧 - fenced areas to prevent dogs from wandering off.

shade_rest_areas 🌳 - shaded spots or resting areas with benches.

open_spaces 🌿 - open areas where dogs can run and play.

low_noise 🔇 - quiet locations suitable for noise-sensitive dogs.

safe_paths 🚶 - safe walking paths away from busy roads or hazards.

no_dog_zones 🚫🐕 - locations where dogs are not allowed.

dog_friendly_businesses 🍽️ - nearby cafes, restaurants, or shops that welcome dogs.

toilet_facilities 🚻 - availability of restrooms for dog owners.

playdate_opportunities 🐾 - places where dog owners gather for socializing and playdates.



Getting Started 🚀
To get started with StickS locally, follow these steps:

Clone the repository:

bash
git clone https://github.com/adam-krukowski/StickS.git

Install dependencies:

bash

cd StickS

bundle install


Set up the database:

bash

rails db:create

rails db:migrate


Start the Rails server:

bash

rails server

Visit the app in your browser at http://localhost:3000.


Technologies Used 💻

Ruby on Rails (Backend)

PostgreSQL (Database)

HTML, CSS, JavaScript (Frontend) (soon added)




Feel free to explore and contribute to the project! 

🛠️ If you have any ideas or improvements, open an issue or create a pull request! 🚀
