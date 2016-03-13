# Need to seed some Locations as well as Rooms

User.delete_all
Company.delete_all

# Users
User.create(
  email: 'admin@escapeworld.us',
  password: 'password',
  role: 'admin'
)

User.create(
  email: 'owner@escapeworld.us',
  password: 'password',
  role: 'owner'
)

# Companies

Company.create(
  name: 'Escape the Room Atlanta',
  city: 'Atlanta',
  state: 'Georgia',
)

Company.create(
  name: 'Global Escape Room',
  city: 'Atlanta',
  state: 'Georgia',
)

Company.create(
  name: 'Locked In',
  city: 'Atlanta',
  state: 'Georgia',
)

Company.create(
  name: 'Mission Escape',
  city: 'Atlanta',
  state: 'Georgia',
)

Company.create(
  name: 'ParanoiaQuest',
  city: 'Atlanta',
  state: 'Georgia',
)

Company.create(
  name: 'Room Escape Atlanta',
  city: 'Atlanta',
  state: 'Georgia',
)

Company.create(
  name: 'Ultimate Escape Game',
  city: 'Atlanta',
  state: 'Georgia',
)

Company.create(
  name: 'Urban Escape Game',
  city: 'Atlanta',
  state: 'Georgia',
)

Company.create(
  name: 'Amazing Escape Room',
  street: '5825 Glenridge Dr Building 2, Suite 217',
  city: 'Atlanta',
  state: 'Georgia',
  description: 'Experience this new and thrilling game with your friends',
  website: 'http://amazingescaperoom.com',
  email: 'support@amazingescaperoom.com',
  phone: '404-480-3852'
)

Company.create(
  name: 'Breakout Atlanta Escape Games',
  city: 'Atlanta',
  state: 'Georgia',
  description: 'Hands on Escape experience this likes of which you have never seen',
  website: 'http://breakoutatlanta.com',
  phone: '404-620-2477'
)

# Locations @TODO

# Rooms @TODO
