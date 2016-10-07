# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Subject.create(name: 'Space & Physics', image: 'img/portfolio/thumbnails/Saturn.jpg')
Subject.create(name: 'Robotics & Computer Science', image: 'img/portfolio/thumbnails/Mindstorm.jpg')
Subject.create(name: 'Engineering & Design', image: 'img/portfolio/thumbnails/Wind_Farm.jpg')
Subject.create(name: 'Earth Science', image: 'img/portfolio/thumbnails/Volcano.jpg')
Subject.create(name: 'Life Science', image: 'img/portfolio/thumbnails/Turtle.jpg')
Subject.create(name: 'Chemistry', image: 'img/portfolio/thumbnails/Luminol.jpg')

Project.create(
    title: 'Slayer Exciter Circuit', 
    
    description: 'The problem that tesla coils typically present is that they are incredibly dangerous. The dangers that arcing electricity presents is self evident. Additionally a tesla coil will energize any conductive surface near it causing arcs which burn upon contact. But what is great about the Slayer Exciter Circuit is that it is low power. This means the coil can not produce arcing electricity (though a ground wire brought near will produce a small jet of plasma) but is still able to light bulbs. Regardless of how high the voltage can get it cannot become dangerous because it can\'t put out more power than the 9V battery can provide. If a person were to touch the high voltage toroid then the voltage would drop to low levels as the driver will fail to supply enough power to maintain high voltage and as a result only tiny amounts of current will pass through the body (comparable to touching both contacts of the battery with your finger). In addition, the high frequency of the device adds an additional layer of safety. There is a phenomena called the skin effect which describes how deeply electromagnetic energy can penetrate a lossy object (ie electricity and the human body). The higher the frequency is the shorter the skin depth. At frequencies that the coil runs at the skin depth is in tens of micrometers. Meaning that no meaningful amount of energy can get past the skin and cause shock. It is basically impossible for the coil to shock a person regardless of circumstance. It is important to note however that high enough voltages could be reached to create small arcs that can burn the skin. I hope to design a kit which provides a maximum wow factor (aka the best ability to wirelessly transmit power) without being strong enough to cause burns.', 
    
    contents: 'Primary Thicker is better, 22 awg max Coil runs at high frequencies, magnifies skin effect 5-10 turns I saw some claims that slayer exciter can have power coupling that allows for 1 turn, worth testing Secondary Magnet wire: copper wire with very thin insulation designed for transformers Awg 27-28 doesn\'t break so easily but 32 gives way more turns Coil size 5:1 height:diameter From what I read this is a good dimension for power coupling 750 turns @ awg 28 this example was a big coil though, a different was very small and had 275 turns @ awg 42 It can be calculated how many turns a base can hold (based upon the diameter of the wire) Some kind of base, pvc pipe seems like a favorite CANNOT double back when winding Voltage increases with each successive winding, doubling back brings two wires of significantly different voltages close together. This causes dielectric breakdown of the insulation (aka arc) that ruins the coil Magnetic core maybe? Will improve performance, but is it nessicary? Also cost Teflon tape can insulate core Insulating varnish to glue the coil into place, preventing uncoiling. Extra insulation also good Driver Transistor candidates 2n2222/2n5550 NPN (from og video) 2n3055 (claimed to produce higher voltage) Diode candidates 1n4148 1n400x >=22k Ohm resistor 9V battery Could use two 9V in series to achieve much higher voltage, transistor will need a heatsink for this Simple switch Toroid Toroid is a conductive doughnut-shaped structure that goes on the top of the coil to encourage a greater electrical field Need to find some great material that student can use to make whatever toroid he/she wants', 
    
    price: '1000000.00', 
    
    summary: 'Kit for designing and constructing a Solid State Driver for a Tesla Coil', 
    
    instructions: 'Here are instruction to guild you through designing and constructing the Tesla coil and driver', 
    
    tags: ['Engineering & Design']
    )

Project.create(
    title: 'Create a City', description: 'Joke entry created to populate projects list for testing.', 
    
    description: 'Joke project created to populate projects list for testing.', 
    
    contents: 'Stuff involved with building a city',
        
    price: '1000000000000.00',
    
    summary: 'Design and construct your city!', 
    
    instructions: 'How to build a city',
    
    tags: ['Earth Science', 'Engineering & Design']
    )

Project.create(
    title: 'Messin with Sasquatch', 
    
    description: 'Joke project created to populate projects list for testing.', 
    
    contents: 'Beef jerky', 
    
    price: '10.00', 
    
    summary: 'Let\'s get that hairy bastard!',
    
    instructions: 'How to mess with sasquatch',
    
    tags:['Life Science']
    )

Project.create(
    title: 'Space Project', 
    
    description: 'Joke entry created to populate projects list for testing.', 
    
    contents: 'Something something space.', 
    
    price: '123.45',
    
    summary: 'Something something space', 
    
    instructions: 'How to space.',
    
    tags:['Space & Physics']
    )

Project.create(
    title: 'Get to Space', 
    
    description: 'Joke entry created to populate projects list for testing.', 
    
    contents: 'rocket stuff', 
    
    price: '543.21',
    
    summary: 'Design a rocket capable of reaching space',
    
    instructions: 'How to build a rocket',
    
    tags:['Space & Physics', 'Engineering & Design']
    )

Project.create(
    title: 'Drone Project', 
    
    description: 'Joke entry created to populate projects list for testing.', 
    
    contents: 'Drone parts', 
    
    price: '23.00',
        
    summary: 'Project for building your own drone', 
    
    instructions: 'How to build a drone.',
    
    tags:['Robotics & Computer Science']
    )

Project.create(
    title: 'Chemistry Project', 
    
    description: 'Joke project created to populate projects list for testing.', 
    
    contents: 'melt-your-face-off acid', 
    
    price: '3.00,',
    
    summary: 'Something something chemistry.', 
    
    instructions: 'How to chemistry.',
    
    tags:['Chemistry']
    )

