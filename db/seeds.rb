chicago_places = [
  { title: 'Millennium Park', open_time: '09:00', close_time: '21:00' },
  { title: 'Art Institute of Chicago', open_time: '10:30', close_time: '17:00' },
  { title: 'Navy Pier', open_time: '10:00', close_time: '22:00' },
  { title: 'Willis Tower', open_time: '10:00', close_time: '20:00' },
  { title: 'The Field Museum', open_time: '09:00', close_time: '17:00' },
  { title: 'Shedd Aquarium', open_time: '09:00', close_time: '17:00' },
  { title: 'Lincoln Park Zoo', open_time: '10:00', close_time: '17:00' },
  { title: 'Wrigley Field', open_time: '09:00', close_time: '17:00' },
  { title: 'Chicago Riverwalk', open_time: '08:00', close_time: '22:00' },
  { title: 'Buckingham Fountain', open_time: '10:00', close_time: '22:00' }
]

chicago_places.each do |place_data|
  Place.create(title: place_data[:title], open_time: place_data[:open_time], close_time: place_data[:close_time])
end