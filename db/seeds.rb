Weapon.create(name: "Dagger", damage: 10)
Weapon.create(name: "Arming Sword", damage: 16)
Weapon.create(name: "Battle Axe", damage: 20)
Weapon.create(name: "War Hammer", damage: 15)
Weapon.create(name: "Crossbow", damage: 14 )
Weapon.create(name: "Musket", damage: 22 )
Weapon.create(name: "Javelin", damage: 30 )
Weapon.create(name: "Battering Club", damage: 26)
Weapon.create(name: "Long Bow", damage: 18 )
Weapon.create(name: "Hand Cannon", damage: 24 )

#Code is dynamic to new spells that simply do damage or heal, but special cases will need new code
Spell.create(name: "Heal", health: 10, damage: 0)
Spell.create(name: "Fireball", health: 0, damage: 30)
Spell.create(name: "Expelliarmus", health: 0, damage: 0)
Spell.create(name: "Meteor Shower", health: 0, damage: 25)
Spell.create(name: "Hugs and Kisses", health: 25, damage: 0)