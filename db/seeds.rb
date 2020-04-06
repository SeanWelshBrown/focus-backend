# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MeditationSession.destroy_all
FocusSession.destroy_all


sean = User.find_by(username: "swb258")
sean.update(time_meditated: 4020, time_focused: 13200)

  # meditation sessions

sean.meditation_sessions.create(
  start_time: '2020/3/20 10:23:15',
  end_time: '2020/3/25 10:33:15',
  duration: 600,
  note: ""
)
sean.meditation_sessions.create(
  start_time: '2020/3/21 11:06:11',
  end_time: '2020/3/21 11:16:11',
  duration: 600,
  note: "Vivamus imperdiet nibh in porta tincidunt. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin rutrum ligula id felis convallis cursus. Mauris molestie massa est, quis iaculis justo commodo at. Sed pellentesque turpis eu dolor hendrerit."
)
sean.meditation_sessions.create(
  start_time: '2020/3/22 12:10:45',
  end_time: '2020/3/22 12:30:45',
  duration: 1200,
  note: "Nullam non elit sodales, consectetur ipsum nec, sagittis augue. Praesent euismod tincidunt ligula, id suscipit sem. Aenean malesuada tellus ligula, in vulputate erat faucibus nec. Mauris pellentesque augue vitae eleifend consectetur. Praesent tincidunt tellus ut porta bibendum. Pellentesque eget sodales."
)
sean.meditation_sessions.create(
  start_time: '2020/3/23 12:03:32',
  end_time: '2020/3/23 12:18:32',
  duration: 900,
  note: ""
)
sean.meditation_sessions.create(
  start_time: '2020/3/24 10:22:06',
  end_time: '2020/3/24 10:34:06',
  duration: 720,
  note: "Morbi in iaculis enim. Praesent ac vestibulum neque. Mauris id augue sed turpis pretium varius vitae et odio. Nullam venenatis, augue vitae volutpat blandit, justo ante vehicula turpis, in ultrices tellus enim vitae sem. Nunc accumsan eleifend orci, ut volutpat."
)

  # focus sessions

sean.focus_sessions.create(
  start_time: '2020/3/20 10:23:15',
  end_time: '2020/3/25 12:33:15',
  duration: 7800,
  work_chunks: " 1500 1500 1500 1500",
  break_chunks: " 300 300 300 900",
  focus_type: "Work",
  note: ""
)
sean.focus_sessions.create(
  start_time: '2020/3/20 11:05:22',
  end_time: '2020/3/25 12:35:22',
  duration: 5400,
  work_chunks: " 900 900 900 900",
  break_chunks: " 300 300 300 900",
  focus_type: "Study",
  note: "Vestibulum congue nisl elit, ac euismod neque efficitur eu. Aenean sodales quam quis neque luctus, ac pellentesque odio consectetur. Donec dignissim ex vel augue ultrices, et lobortis enim congue. Etiam ipsum nibh, mollis quis cursus vitae, tristique sed odio. Sed."
)
sean.focus_sessions.create(
  start_time: '2020/3/20 10:41:36',
  end_time: '2020/3/25 11:49:36',
  duration: 4080,
  work_chunks: " 1200 1200 1200",
  break_chunks: " 240 240",
  focus_type: "Work",
  note: "Vestibulum efficitur laoreet arcu ut ullamcorper. Mauris commodo mi leo, nec auctor tellus fermentum tempor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer semper felis ac ante faucibus semper. Mauris vel interdum mi. Sed."
)