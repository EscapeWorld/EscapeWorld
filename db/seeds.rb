# Need to seed some Locations as well as Rooms

User.delete_all
Company.delete_all
Location.delete_all

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
  street: '202 Peachtree St NE',
  city: 'Atlanta',
  state: 'Georgia',
  zip: '30303'
)

Company.create(
  name: 'Global Escape Room',
  street: '2255 Cumberland Pkwy SE',
  city: 'Atlanta',
  state: 'Georgia',
  zip: '30339'
)

Company.create(
  name: 'Locked In',
  street: '265 18th Street Nw Suite 4270',
  city: 'Atlanta',
  state: 'Georgia',
  zip: '30363'
)

Company.create(
  name: 'Mission Escape',
  street: '500 Bishop St NW E3',
  city: 'Atlanta',
  state: 'Georgia',
  zip: '30318'
)

Company.create(
  name: 'ParanoiaQuest',
  street: '72 Broad St SW',
  city: 'Atlanta',
  state: 'Georgia',
  zip: '30303'
)

Company.create(
  name: 'Room Escape Atlanta',
  street: '1751 Montreal Cir',
  city: 'Tucker',
  state: 'Georgia',
  zip: '30084'
)

Company.create(
  name: 'Ultimate Escape Game',
  street: '3200 Cobb Galleria Pkwy #150',
  city: 'Atlanta',
  state: 'Georgia',
  zip: '30339'
)

Company.create(
  name: 'Urban Escape Game',
  street: '20 Mansell Ct E #275',
  city: 'Alpharetta',
  state: 'Georgia',
  zip: '30076'
)

Company.create(
  name: 'Amazing Escape Room',
  street: '5825 Glenridge Dr Building 2, Suite 217',
  city: 'Atlanta',
  state: 'Georgia',
  zip: '30328',
  description: 'Experience this new and thrilling game with your friends',
  website: 'http://amazingescaperoom.com',
  email: 'support@amazingescaperoom.com',
  phone: '404-480-3852'
)

Company.create(
  name: 'Breakout Atlanta Escape Games',
  street: '6375 Spalding Dr, Peachtree Corners, GA',
  city: 'Atlanta',
  state: 'Georgia',
  zip: '30092',
  description: 'Hands on Escape experience this likes of which you have never seen',
  website: 'http://breakoutatlanta.com',
  phone: '404-620-2477'
)

# Locations @TODO
Location.create(
  name: 'Escape the Room Atlanta',
  street: '202 Peachtree St NE',
  city: 'Atlanta',
  state: 'Georgia',
  zip: '30303'
)

Location.create(
  name: 'Global Escape Room',
  street: '2255 Cumberland Pkwy SE',
  city: 'Atlanta',
  state: 'Georgia',
  zip: '30339'
)

Location.create(
  name: 'Locked In',
  street: '265 18th Street Nw Suite 4270',
  city: 'Atlanta',
  state: 'Georgia',
  zip: '30363'
)

Location.create(
  name: 'Mission Escape',
  street: '500 Bishop St NW E3',
  city: 'Atlanta',
  state: 'Georgia',
  zip: '30318'
)

Location.create(
  name: 'ParanoiaQuest',
  street: '72 Broad St SW',
  city: 'Atlanta',
  state: 'Georgia',
  zip: '30303'
)

Location.create(
  name: 'Room Escape Atlanta',
  street: '1751 Montreal Cir',
  city: 'Tucker',
  state: 'Georgia',
  zip: '30084'
)

Location.create(
  name: 'Ultimate Escape Game',
  street: '3200 Cobb Galleria Pkwy #150',
  city: 'Atlanta',
  state: 'Georgia',
  zip: '30339'
)

Location.create(
  name: 'Urban Escape Game',
  street: '20 Mansell Ct E #275',
  city: 'Alpharetta',
  state: 'Georgia',
  zip: '30076'
)

Location.create(
  name: 'Amazing Escape Room',
  street: '5825 Glenridge Dr Building 2, Suite 217',
  city: 'Atlanta',
  state: 'Georgia',
  zip: '30328',
  description: 'Experience this new and thrilling game with your friends',
  email: 'support@amazingescaperoom.com',
  phone: '404-480-3852'
)

Location.create(
  name: 'Breakout Atlanta Escape Games',
  street: '6375 Spalding Dr, Peachtree Corners, GA',
  city: 'Atlanta',
  state: 'Georgia',
  zip: '30092',
  description: 'Hands on Escape experience this likes of which you have never seen',
  phone: '404-620-2477'
)

# Rooms @TODO
