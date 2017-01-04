# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#


b1 = Board.create(title: 'Semesterprojekt')
Card.create(title: 'Konzept', description: 'Abgabe am 26.Oktober', status: 'backlog', board_id: b1.id)
Card.create(title: 'Wichtigster Use Case', description: 'definiere den wichtigstesn Use Case', status: 'backlog', board_id: b1.id)

b2 = Board.create(title: 'Weihnachten')
Card.create(title: 'Geschenk für Mama', description: 'Recherche notwendig!', status: 'backlog', board_id: b2.id)

User.create( 
  'email'=>'mariam@example.com',
  'encrypted_password'=>'$2a$11$A96YwRAthucAforsbbyeIeTLoNCdm5HJFLKjrvLRWxxXLAhfAtSOu',
  'confirmed_at'=>Date.today,
  'failed_attempts'=>0,
  'unlock_token'=>nil,
  'locked_at'=>nil
)
