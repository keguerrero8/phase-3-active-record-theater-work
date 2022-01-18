role1 = Role.create(character_name: "Jon Stark")
role2 = Role.create(character_name: "Tyrion Lannister")
role3 = Role.create(character_name: "Steve Rogers")

a1 = Audition.create(actor: "kit harrington", location: "UK", phone: 555, hired: true)
a2 = Audition.create(actor: "mark barnes", location: "NY", phone: 623, hired: false)

role1.auditions.create(actor: "kit harrington", location: "UK", phone: 555, hired: true)