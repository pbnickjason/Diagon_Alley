# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# <<<<<<< HEAD
# Subject.create(name: 'Space & Physics', image: 'img/portfolio/thumbnails/Saturn.jpg', color: 'rgba(34,85,170, 0.8)')
# Subject.create(name: 'Robotics & Computer Science', image: 'img/portfolio/thumbnails/Mindstorm.jpg', color: 'rgba(235,56,18,0.8)')
# Subject.create(name: 'Engineering & Design', image: 'img/portfolio/thumbnails/Wind_Farm.jpg',color: 'rgba(34,211,214, 0.8)')
# Subject.create(name: 'Earth Science', image: 'img/portfolio/thumbnails/Volcano.jpg',color: 'rgba(237,140,28,0.8)')
# Subject.create(name: 'Life Science', image: 'img/portfolio/thumbnails/Turtle.jpg',color: 'rgba(23,122,43, 0.8)')
# Subject.create(name: 'Chemistry', image: 'img/portfolio/thumbnails/Luminol.jpg',color: 'rgba(108,18,163, 0.8)')

Subject.create(name: 'Space & Physics', image: 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/subject_images/Saturn.jpg', color: 'rgba(34,85,170, 0.8)')
Subject.create(name: 'Robotics & Computer Science', image: 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/subject_images/Mindstorm.jpg', color: 'rgba(235,56,18,0.8)')
Subject.create(name: 'Engineering & Design', image: 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/subject_images/Wind_Farm.jpg',color: 'rgba(34,211,214, 0.8)')
Subject.create(name: 'Earth Science', image: 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/subject_images/Volcano.jpg',color: 'rgba(237,140,28,0.8)')
Subject.create(name: 'Life Science', image: 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/subject_images/Turtle.jpg',color: 'rgba(23,122,43, 0.8)')
Subject.create(name: 'Chemistry', image: 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/subject_images/Luminol.jpg',color: 'rgba(108,18,163, 0.8)')


Project.create(
    title: 'Slayer Exciter Circuit', 
    
    description: 'The problem that tesla coils typically present is that they are incredibly dangerous. The dangers that arcing electricity presents is self evident. Additionally a tesla coil will energize any conductive surface near it causing arcs which burn upon contact. But what is great about the Slayer Exciter Circuit is that it is low power. This means the coil can not produce arcing electricity (though a ground wire brought near will produce a small jet of plasma) but is still able to light bulbs. Regardless of how high the voltage can get it cannot become dangerous because it can\'t put out more power than the 9V battery can provide. If a person were to touch the high voltage toroid then the voltage would drop to low levels as the driver will fail to supply enough power to maintain high voltage and as a result only tiny amounts of current will pass through the body (comparable to touching both contacts of the battery with your finger). In addition, the high frequency of the device adds an additional layer of safety. There is a phenomena called the skin effect which describes how deeply electromagnetic energy can penetrate a lossy object (ie electricity and the human body). The higher the frequency is the shorter the skin depth. At frequencies that the coil runs at the skin depth is in tens of micrometers. Meaning that no meaningful amount of energy can get past the skin and cause shock. It is basically impossible for the coil to shock a person regardless of circumstance. It is important to note however that high enough voltages could be reached to create small arcs that can burn the skin. I hope to design a kit which provides a maximum wow factor (aka the best ability to wirelessly transmit power) without being strong enough to cause burns.', 
    
    contents: 'Primary Thicker is better, 22 awg max Coil runs at high frequencies, magnifies skin effect 5-10 turns I saw some claims that slayer exciter can have power coupling that allows for 1 turn, worth testing Secondary Magnet wire: copper wire with very thin insulation designed for transformers Awg 27-28 doesn\'t break so easily but 32 gives way more turns Coil size 5:1 height:diameter From what I read this is a good dimension for power coupling 750 turns @ awg 28 this example was a big coil though, a different was very small and had 275 turns @ awg 42 It can be calculated how many turns a base can hold (based upon the diameter of the wire) Some kind of base, pvc pipe seems like a favorite CANNOT double back when winding Voltage increases with each successive winding, doubling back brings two wires of significantly different voltages close together. This causes dielectric breakdown of the insulation (aka arc) that ruins the coil Magnetic core maybe? Will improve performance, but is it nessicary? Also cost Teflon tape can insulate core Insulating varnish to glue the coil into place, preventing uncoiling. Extra insulation also good Driver Transistor candidates 2n2222/2n5550 NPN (from og video) 2n3055 (claimed to produce higher voltage) Diode candidates 1n4148 1n400x >=22k Ohm resistor 9V battery Could use two 9V in series to achieve much higher voltage, transistor will need a heatsink for this Simple switch Toroid Toroid is a conductive doughnut-shaped structure that goes on the top of the coil to encourage a greater electrical field Need to find some great material that student can use to make whatever toroid he/she wants', 
    
    price: '1000000.00', 
    
    summary: 'Kit for designing and constructing a Solid State Driver for a Tesla Coil', 
    
    instructions: 'Here are instruction to guild you through designing and constructing the Tesla coil and driver', 
    
    tags: ['Engineering & Design'],
    
    image: 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/project_images/SlayerCircuit.jpg'
    )

Project.create(
    title: 'Create a City',
    
    description: 'Joke project created to populate projects list for testing.', 
    
    contents: 'Stuff involved with building a city',
        
    price: '1000000000000.00',
    
    summary: 'Design and construct your city!', 
    
    instructions: 'How to build a city',
    
    tags: ['Earth Science', 'Engineering & Design'],
    
    image: 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/project_images/SlayerCircuit.jpg'
    )

Project.create(
    title: 'Messin with Sasquatch', 
    
    description: 'Joke project created to populate projects list for testing.', 
    
    contents: 'Beef jerky', 
    
    price: '10.00', 
    
    summary: 'Let\'s get that hairy bastard!',
    
    instructions: 'How to mess with sasquatch',
    
    tags:['Life Science'],
    
    image: 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/project_images/SlayerCircuit.jpg'
    )

Project.create(
    title: 'Space Project', 
    
    description: 'Joke entry created to populate projects list for testing.', 
    
    contents: 'Something something space.', 
    
    price: '123.45',
    
    summary: 'Something something space', 
    
    instructions: 'How to space.',
    
    tags:['Space & Physics'],
    
    image: 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/project_images/SlayerCircuit.jpg'
    )

Project.create(
    title: 'Get to Space', 
    
    description: 'Joke entry created to populate projects list for testing.', 
    
    contents: 'rocket stuff', 
    
    price: '543.21',
    
    summary: 'Design a rocket capable of reaching space',
    
    instructions: 'How to build a rocket',
    
    tags:['Space & Physics', 'Engineering & Design'],
    
    image: 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/project_images/SlayerCircuit.jpg'
    )

Project.create(
    title: 'Drone Project', 
    
    description: 'Joke entry created to populate projects list for testing.', 
    
    contents: 'Drone parts', 
    
    price: '23.00',
        
    summary: 'Project for building your own drone', 
    
    instructions: 'How to build a drone.',
    
    tags:['Robotics & Computer Science'],
    
    image: 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/project_images/SlayerCircuit.jpg'
    )

Project.create(
    title: 'Chemistry Project', 
    
    description: 'Joke project created to populate projects list for testing.', 
    
    contents: 'melt-your-face-off acid', 
    
    price: '3.00,',
    
    summary: 'Something something chemistry.', 
    
    instructions: 'How to chemistry.',
    
    tags:['Chemistry'],
    
    image: 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/project_images/SlayerCircuit.jpg'
    )

Standard.create(
    name: 'NGSS', description: 'Next Generation Science Standards', :children_attributes => { 
        1 => { name: "SEP", description: "Scientific and Engineering Practices", :children_attributes => {  
            1 => { name: "1", description: "Asking questions and defining problems" },
            2 => { name: "2", description: "Developing and using models" },
            3 => { name: "3", description: "Planning and carrying out investigtions"},
            4 => { name: "4", description: "Analyzing and interpreting data"},
            5 => { name: "5", description: "Using mathematics and computational thinking"},
            6 => { name: "6", description: "Constructing explanations"},
            7 => { name: "7", description: "Engaging in argument from evidence"},
            8 => { name: "8", description: "Obtaining, evaluating, and communicating information"}
        }},
        
        2 => { name: "CC", description: "Crosscutting Concepts", :children_attributes => { 
            1 => { name: "1", description: "Patterns"},
            2 => { name: "2", description: "Cause and effect: Mechanism and explanation"},
            3 => { name: "3", description: "Scale, proportion, and quantity"},
            4 => { name: "4", description: "Systems and system models"},
            5 => { name: "5", description: "Energy and matter: Flows, cycles, and conservation"},
            6 => { name: "6", description: "Structure and function"},
            7 => { name: "7", description: "Stability and change"}
        }},
        
        3 => { name: "DCI", description: "Disciplinary Core Ideas", :children_attributes => { 
            1 => { name: "PS", description: "Physical Sciences", :children_attributes => { 
                1 => { name: "1", description: "Matter and Its Interactions", :children_attributes => { 
                    1 => { name: "A", description: "Structure and Properties of Matter"},
                    2 => { name: "B", description: "Chemical Reactions"},
                    3 => { name: "C", description: "Nuclear Processes"}
                }},
                2 => { name: "2", description: "Motion and Stability: Force and Interactions", :children_attributes => {
                    1 => { name: "A", description: "Forces and Motion"},
                    2 => { name: "B", description: "Types of Interactions"},
                    3 => { name: "C", description: "Stability and Instability in Physical Systems"}
                }},
                3 => { name: "3", description: "Energy", :children_attributes => {
                    1 => { name: "A", description: "Definitions of Energy"},
                    2 => { name: "B", description: "Conservation of Energy and Energy Transfer"},
                    3 => { name: "C", description: "Relationships Between Energy and Forces"},
                    4 => { name: "D", description: "Energy in Chemical Processes and Everyday Life"}
                }},
                4 => { name: "4", description: "Waves and Their Applications in Technologies for Information Transfer", :children_attributes => {
                    1 => { name: "A", description: "Wave Properties"},
                    2 => { name: "B", description: "Electromagnetic Radiation"},
                    3 => { name: "C", description: "Information Technologies and Instrumentation"}
                }}
            }},
            
            2 => { name: "LS", description: "Life Sciences", :children_attributes => {
                1 => { name: "1", description: "From Molecules to Organisms: Structures and Processes", :children_attributes => {
                    1 => { name: "A", description: "Structure and Function"},
                    2 => { name: "B", description: "Growth and Development of Organisms"},
                    3 => { name: "C", description: "Organization for Matter and Energy Flow in Organisms"},
                    4 => { name: "D", description: "Information Processing"}
                }},
                2 => { name: "2", description: "Ecosystems: Interactions, Energy, and Dynamics", :children_attributes => {
                    1 => { name: "A", description: "Interdependent Relationships in Ecosystems"},
                    2 => { name: "B", description: "Cycles of Matter and Energy Transfer in Ecosystems"},
                    3 => { name: "C", description: "Ecosystem Dynamics, Functioning, and Resilience"},
                    4 => { name: "D", description: "Social Interactions and Group Behavior"}
                }},
                3 => { name: "3", description: "Heredity: Inheritance and Variation of Traits", :children_attributes => {
                    1 => { name: "A", description: "Inheritance of Traits"},
                    2 => { name: "B", description: "Variation of Traits"}
                }},
                4 => { name: "4", description: "Biological Evolution: Unity and Diversty", :children_attributes => {
                    1 => { name: "A", description: "Evidence of Common Ancestry and Diversity"},
                    2 => { name: "B", description: "Natural Selection"},
                    3 => { name: "C", description: "Adaptation"},
                    4 => { name: "D", description: "Biodiversity and Humans"}
                }}  
            }},
            
            3 => { name: "ESS", description: "Earth and Space Sciences", :children_attributes => {
                1 => { name: "1", description: "Earth's Place in the Universe", :children_attributes => {
                    1 => { name: "A", description: "The Universe and Its Stars"},
                    2 => { name: "B", description: "Earth and the Solar System"},
                    3 => { name: "C", description: "The History of Planet Earth"}
                }},
                2 => { name: "2", description: "Earth's Systems", :children_attributes => {
                    1 => { name: "A", description: "Earth Materials and Systems"},
                    2 => { name: "B", description: "Plate Tectonics and Large-Scale System Interactions"},
                    3 => { name: "C", description: "The Roles of Water in Earth's Surface Processes"},
                    4 => { name: "D", description: "Weather and Climate"},
                    5 => { name: "E", description: "Biogeology"}
                }},
                3 => { name: "3", description: "Earth and Human Activity", :children_attributes => {
                    1 => { name: "A", description: "Natural Resources"},
                    2 => { name: "B", description: "Natural Hazards"},
                    3 => { name: "C", description: "Human Impacts on Earth Systems"},
                    4 => { name: "D", description: "Global Climate Change"}
                }}
            }},
            
            4 => { name: "ETS", description: "Engineering, Technology, and Applications of Science", :children_attributes => {
                1 => { name: "1", description: "Engineering Design", :children_attributes => {
                    1 => { name: "A", description: "Defining and Delimiting an Engineering Problem"},
                    2 => { name: "B", description: "Developing Possible Solutions"},
                    3 => { name: "C", description: "Optimizing the Design Solution"}
                }},
                2 => { name: "2", description: "Links Among Engineering, Technology, Science, and Society", :children_attributes => {
                    1 => { name: "A", description: "Interdependence of Science, Engineering, and Technology"},
                    2 => { name: "B", description: "Influence of Engineering, Technology, and Science on Society and the Natural World"}
                }}
            }}
            
        }}
        
    }
)