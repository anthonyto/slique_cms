account = Account.create(
  name: 'L&L Hawaiian BBQ - La Jolla',
  client: "#{ Faker::Name.name } - #{ Faker::Internet.email }",
  services: 'Account management, creative development, Yelp',
  instagram: 'Username: @llbbqlajolla Password: password123',
  facebook: 'https://www.facebook.com/hawaiianbarbecue/',
  yelp: 'Username: llhb@example.com Password: password123',
  slique_email: 'llbbq@slique.com',
  pr_partner: 'Some partner',
  ubest: false,
  fivestarboss: true,
  facebook_ad: true,
  facebook_ad_notes: 'Budget is $300/month',
  correspondence: '1/23 Jeanie called client about catering',
  messaging_timeline_q1: 'Catering',
  messaging_timeline_q2: 'Delivery Services',
  messaging_timeline_q3: 'Back to school',
  messaging_timeline_q4: 'Catering/gift card for holidays',
  priorities: 'Hiring more people',
  promotions: "Valentine's day",
  notes: 'This is one of our biggest clients'
)

account.tasks.create(name: 'Research PR firm', requested: Date.today, completed: false)
account.tasks.create(name: 'New promo campaign', requested: Date.yesterday, completed: false)

account.creative_developments.create(design_name: 'Hiring design', requested: Date.yesterday, completed: false)
account.creative_developments.create(design_name: 'Poster designs', requested: Date.today, completed: false)

account = Account.create(
  name: 'Panda Country - Santee',
  client: "#{ Faker::Name.name } - #{ Faker::Internet.email }",
  services: 'Account management, creative development, Yelp',
  instagram: 'Username: @pandacountry Password: password123',
  facebook: 'https://www.facebook.com/pandacountry/',
  yelp: 'Username: pandacountry@example.com Password: password123',
  slique_email: 'pandacountry@slique.com',
  pr_partner: 'Some partner',
  ubest: true,
  fivestarboss: true,
  facebook_ad: true,
  facebook_ad_notes: 'Budget is $300/month',
  correspondence: '1/23 Jeanie called client about catering',
  messaging_timeline_q1: 'Catering',
  messaging_timeline_q2: 'Delivery Services',
  messaging_timeline_q3: 'Back to school',
  messaging_timeline_q4: 'Catering/gift card for holidays',
  priorities: 'Hiring more people',
  promotions: "Valentine's day",
  notes: 'This is one of our biggest clients'
)

account.tasks.create(name: 'Research PR firm', requested: Date.today, completed: false)
account.tasks.create(name: 'New promo campaign', requested: Date.yesterday, completed: false)

account.creative_developments.create(design_name: 'Hiring design', requested: Date.yesterday, completed: false)
account.creative_developments.create(design_name: 'Poster designs', requested: Date.today, completed: false)

account = Account.create(
  name: 'Board and Brew - Scripps',
  client: "#{ Faker::Name.name } - #{ Faker::Internet.email }",
  services: 'Account management, creative development, Yelp',
  instagram: 'Username: @boardandbrew Password: password123',
  facebook: 'https://www.facebook.com/boardandbrew/',
  yelp: 'Username: boardandbrew@example.com Password: password123',
  slique_email: 'boardandbrew@slique.com',
  pr_partner: 'Some partner',
  ubest: true,
  fivestarboss: true,
  facebook_ad: true,
  facebook_ad_notes: 'Budget is $300/month',
  correspondence: '1/23 Jeanie called client about catering',
  messaging_timeline_q1: 'Catering',
  messaging_timeline_q2: 'Delivery Services',
  messaging_timeline_q3: 'Back to school',
  messaging_timeline_q4: 'Catering/gift card for holidays',
  priorities: 'Hiring more people',
  promotions: "Valentine's day",
  notes: 'This is one of our biggest clients'
)

account.tasks.create(name: 'Research PR firm', requested: Date.today, completed: false)
account.tasks.create(name: 'New promo campaign', requested: Date.yesterday, completed: false)

account.creative_developments.create(design_name: 'Hiring design', requested: Date.yesterday, completed: false)
account.creative_developments.create(design_name: 'Poster designs', requested: Date.today, completed: false)

account = Account.create(
  name: 'Board and Brew - Del Mar',
  client: "#{ Faker::Name.name } - #{ Faker::Internet.email }",
  services: 'Account management, creative development, Yelp',
  instagram: 'Username: @boardandbrew Password: password123',
  facebook: 'https://www.facebook.com/boardandbrew/',
  yelp: 'Username: boardandbrew@example.com Password: password123',
  slique_email: 'boardandbrew@slique.com',
  pr_partner: 'Some partner',
  ubest: true,
  fivestarboss: true,
  facebook_ad: true,
  facebook_ad_notes: 'Budget is $300/month',
  correspondence: '1/23 Jeanie called client about catering',
  messaging_timeline_q1: 'Catering',
  messaging_timeline_q2: 'Delivery Services',
  messaging_timeline_q3: 'Back to school',
  messaging_timeline_q4: 'Catering/gift card for holidays',
  priorities: 'Hiring more people',
  promotions: "Valentine's day",
  notes: 'This is one of our biggest clients'
)

account.tasks.create(name: 'Research PR firm', requested: Date.today, completed: false)
account.tasks.create(name: 'New promo campaign', requested: Date.yesterday, completed: false)

account.creative_developments.create(design_name: 'Hiring design', requested: Date.yesterday, completed: false)
account.creative_developments.create(design_name: 'Poster designs', requested: Date.today, completed: false)