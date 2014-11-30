Club1 = Club.create! name: "Athletic Club", nick_name: "Los Leones", coach: "Ernesto Valverde", year: "1898", stadium: "San Mames", volume: "53332", location: "Bilbao"
Club1.photo = File.open("#{Rails.root}/public/images/clubs/logo/Athletic Club.png")
Club1.host = File.open("#{Rails.root}/public/images/clubs/kit/Athletic Club - home_kit.png")
Club1.away = File.open("#{Rails.root}/public/images/clubs/kit/Athletic Club - away_kit.png")
Club1.save!
History1 = History.create! name: "La Liga", year: "1984, 1983, 1956, 1943, 1936, 1934, 1931, 1930", club: Club1
History2 = History.create! name: "Copa del Rey", year: "1984, 1973, 1969, 1958, 1956, 1955, 1950, 1945, 1944, 1943, 1933, 1932, 1931, 1930, 1923, 1921, 1916, 1915, 1914, 1904, 1903", club: Club1
Player1 = Player.create! name: "Gorka IRAIZOZ", number: "1", position: "Thủ môn", dob: "03-06-1981", nation: "Tây Ban Nha", height: "191", weight: "92", leg: "Phải", level: "88", club: Club1
Player1.photo = File.open("#{Rails.root}/public/images/players/Gorka IRAIZOZ.jpg")
Player1.save!