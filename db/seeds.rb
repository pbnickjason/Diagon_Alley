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

Admin.create(email: 'admin@explorio.us', password: 'supersecretpassword')

Standard.create(
    name: 'NGSS', description: 'Next Generation Science Standards', :children_attributes => { 
        1 => { name: "SEP", description: "Scientific and Engineering Practices", :children_attributes => {  
            1 => { name: "1", description: "Asking questions and defining problems" },
            2 => { name: "2", description: "Developing and using models" },
            3 => { name: "3", description: "Planning and carrying out investigations"},
            4 => { name: "4", description: "Analyzing and interpreting data"},
            5 => { name: "5", description: "Using mathematics and computational thinking"},
            6 => { name: "6", description: "Constructing explanations and designing solutions"},
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

#PerfExp.create(
#    [
#        {   code: "",
#            name: "",
#            description: "",
#            grade_level: [""],
#            standard_ids: [""] 
#        },
#    ]
#)

PerfExp.create(
    [
        
#        K-2
        
        {   code: "K-2-ETS1-1",
            name: "Engineering Design",
            description: "Ask questions, make observations, and gather information about a situation people want to change to define a simple problem that can be solved through the development of a new or improved object or tool",
            grade_level: "K-2",
            standard_ids: ["3","75"]
        },
        
        {   code: "K-2-ETS1-2",
            name: "Engineering Design",
            description: "Develop a simple sketch, drawing, or physical model to illustrate how the shape of an object helps it function as needed to solve a given problem.",
            grade_level: "K-2",
            standard_ids: ["4","76","17"] 
        },
        
        {   code: "K-2-ETS1-3",
            name: "Engineering Design",
            description: "Analyze data from tests of two objects designed to solve the same problem to compare the strengths and weaknesses of how each performs.",
            grade_level: "K-2",
            standard_ids: ["6","77"] 
        },
        
#       K
        
        {   code: "K-PS2-1",
            name: "Motion and Stability: Forces and Interactions",
            description: "Plan and conduct an investigation to compare the effects of different strengths or different directions of pushes and pulls on the motion of an object.",
            grade_level: "K",
            standard_ids: ["5","13","26","27","32"] 
        },
        
        {   code: "K-PS2-2",
            name: "Motion and Stability: Forces and Interactions",
            description: "Analyze data to determine if a design solution works as intended to change the speed or direction of an object with a push or a pull.*",
            grade_level: "K",
            standard_ids: ["6","13","26","75"] 
        },
        
        {   code: "K-LS1-1",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Use observations to describe patterns of what plants and animals (including humans) need to survive.",
            grade_level: "K",
            standard_ids: ["6", "42", "12"] 
        },
        
        {   code: "K-ESS2-1",
            name: "Earth's Systems",
            description: "Use and share observations of local weather conditions to describe patterns over time.",
            grade_level: "K",
            standard_ids: ["6", "66", "12"] 
        },
        
        {   code: "K-ESS2-2",
            name: "Earth's Systems",
            description: "Construct an argument supported by evidence for how plants and animals (including humans) can change the environment to meet their needs.",
            grade_level: "K",
            standard_ids: ["9","67","71", "15"] 
        },
        
        {   code: "K-ESS3-1",
            name: "Earth and Human Activity",
            description: "Use a model to represent the relationship between the needs of different plants and animals (including humans) and the places they live.",
            grade_level: "K",
            standard_ids: ["4", "69", "15"] 
        },

        {   code: "K-ESS3-2",
            name: "Earth and Human Activity",
            description: "Ask questions to obtain information about the purpose of weather forecasting to prepare for, and respond to, severe weather.",
            grade_level: "K",
            standard_ids: ["3","10","70","75","13"] 
        },
        
        {   code: "K-ESS3-3",
            name: "Earth and Human Activity",
            description: "Communicate solutions that will reduce the impact of humans on the land, water, air, and/or other living things in the local environment.",
            grade_level: "K",
            standard_ids: ["10","71","76","13"] 
        },
        
        {   code: "K-PS3-1",
            name: "Energy",
            description: "Make observations to determine the effect of sunlight on Earth's surface.",
            grade_level: "K",
            standard_ids: ["5","31","13"] 
        },
        
        {   code: "K-PS3-2",
            name: "Energy",
            description: "Use tools and materials provided to design and build a structure that will reduce the warming effect of sunlight on Earth's surface.*",
            grade_level: "K",
            standard_ids: ["8","31","13"] 
        },
        
#        1
        
        {   code: "1-PS4-1",
            name: "Waves and Their Applications in Technologies for Information Transfer",
            description: "Plan and conduct investigations to provide evidence that vibrating materials can make sound and that sound can make materials vibrate.",
            grade_level: "1",
            standard_ids: ["5","35","13"] 
        },
        
        {   code: "1-PS4-2",
            name: "Waves and Their Applications in Technologies for Information Transfer",
            description: "Make observations to construct an evidence-based account that objects in darkness can be seen only when illuminated.",
            grade_level: "1",
            standard_ids: ["8","36","13"] 
        },
        
        {   code: "1-PS4-3",
            name: "Waves and Their Applications in Technologies for Information Transfer",
            description: "Plan and conduct investigations to determine the effect of placing ojects made with different materials in the path of beams of light.",
            grade_level: "1",
            standard_ids: ["5","36","13"] 
        },
        
        {   code: "1-PS4-4",
            name: "Waves and Their Applications in Technologies for Information Transfer",
            description: "Use tools and materials to design and build a device that uses light or sound to solve the problem of communicating over distance.*",
            grade_level: "1",
            standard_ids: ["8","37"] 
        },
        
        {   code: "1-LS1-1",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Use materials to design a solution to a human problem by mimicking how plants and/or animals use their external parts to help them survive, grow, and meet their needs.*",
            grade_level: "1",
            standard_ids: ["8","40","43","17"] 
        },
        
        {   code: "1-LS1-2",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Read texts and use media to determine patterns in behavior of parents and offspring that help offspring survive.",
            grade_level: "1",
            standard_ids: ["10","41","12"] 
        },
        
        {   code: "1-LS3-1",
            name: "Heredity: Inheritance and Variation of Traits",
            description: "Make observations to construct an evidence-based account that young plants and animals are like, but not exactly like, their parents.",
            grade_level: "1",
            standard_ids: ["8","50","51","12"] 
        },
        
        {   code: "1-ESS1-1",
            name: "Earth's Place in the Universe",
            description: "Use observations of the sun, moon, and stars to describe patterns that can be predicted.",
            grade_level: "1",
            standard_ids: ["6","59","12"] 
        },
        
        {   code: "1-ESS1-2",
            name: "Earth's Place in the Universe",
            description: "Make observations at different times of year to relate the amount of daylight to the time of year.",
            grade_level: "1",
            standard_ids: ["5","60","12"] 
        },
        
#        2
        
        {   code: "2-PS1-1",
            name: "Matter and Its Interactions",
            description: "Plan and conduct an investigation to describe and classify different kinds of materials by their observable properties.",
            grade_level: "2",
            standard_ids: ["5","22","12"] 
        },
        
        {   code: "2-PS1-2",
            name: "Matter and Its Interactions",
            description: "Analyze data obtained from testing different materials to determine which materials have the properties that are best suited for an intended purpose.*",
            grade_level: "2",
            standard_ids: ["6","22","13"] 
        },
        
        {   code: "2-PS2-3",
            name: "Matter and Its Interactions",
            description: "Make observations to construct an evidence-based account of how an object made of a small set of pieces can be disassembled and made into a new object.",
            grade_level: "2",
            standard_ids: ["8","22","16"] 
        },
        
        {   code: "2-PS1-4",
            name: "Matter and Its Interactions",
            description: "Construct an argument with evidence that some changes caused by heating or cooling can be reversed and some cannot.",
            grade_level: "2",
            standard_ids: ["9","23","13"] 
        },
        
        {   code: "2-LS2-1",
            name: "Ecosystems: Interactions, Energy, and Dynamics",
            description: "Plan and conduct an investigation to determine if plants need sunlight and water to grow.",
            grade_level: "2",
            standard_ids: ["5","45","13"] 
        },
        
        {   code: "2-LS2-2",
            name: "Ecosystems: Interactions, Energy, and Dynamics",
            description: "Develop a simple model that mimics the function of an animal in dispersing seeds or pollinating plants.*",
            grade_level: "2",
            standard_ids: ["4","45","76"] 
        },
        
        {   code: "2-LS4-1",
            name: "Biological Evolution: Unity and Diversity",
            description: "Make observations of plants and animals to compare the diversity of life in different habitats.",
            grade_level: "2",
            standard_ids: ["5","56"] 
        },
        
        {   code: "2-ESS1-1",
            name: "Earth's Place in the Universe",
            description: "Use information from several sources to provide evidence that Earth events can occur quickly or slowly.",
            grade_level: "2",
            standard_ids: ["8","61","18"] 
        },
        
        {   code: "2-ESS2-1",
            name: "Earth's Systems",
            description: "Compare multiple solutions designed to slow or prevent wind or water from changing the shape of the land.*",
            grade_level: "2",
            standard_ids: ["8","63","77","18"] 
        },
        
        {   code: "2-ESS2-2",
            name: "Earth's Systems",
            description: "Develop a model to represent the shapes and kinds of land and bodies of water in an area.",
            grade_level: "2",
            standard_ids: ["4","64","12"] 
        },
        
        {   code: "2-ESS2-3",
            name: "Earth's Systems",
            description: "Obtain information to identify where water is found on Earth and that it can be solid or liquid.",
            grade_level: "2",
            standard_ids: ["10","65","12"] 
        },
        
#        3-5
        
        {   code: "3-5-ETS1-1",
            name: "Engineering Design",
            description: "Define a simple design problem reflecting a need or a want that includes specified criteria for success and constraints on materials, time, or cost.",
            grade_level: "3-5",
            standard_ids: ["3","75","80"] 
        },
        
        {   code: "3-5-ETS1-2",
            name: "Engineering Design",
            description: "Generate and compare multiple possible solutions to a problem based on how well each is likely to meet the criteria and constraints of the problem.",
            grade_level: "3-5",
            standard_ids: ["8","76","80"] 
        },
        
        {   code: "3-5-ETS1-3",
            name: "Engineering Design",
            description: "Plan and carry out fair tests in which variables are controlled and failure points are considered to identify aspects of a model or prototype that can be improved.",
            grade_level: "3-5",
            standard_ids: ["5","76","77"] 
        },
        
#        3
        
        {   code: "3-PS2-1",
            name: "Motion and Stability: Forces and Interactions",
            description: "Plan and conduct an investigation to provide evidence of the effects of balanced and unbalanced forces on the motion of an oject.",
            grade_level: "3",
            standard_ids: ["5","26","27","13"] 
        },
        
        {   code: "3-PS2-2",
            name: "Motion and Stability: Forces and Interactions",
            description: "Make observations and/or measurements of an object's motion to provide evidence that a pattern can be used to predict future motion.",
            grade_level: "3",
            standard_ids: ["5","26","12"] 
        },
        
        {   code: "3-PS2-3",
            name: "Motion and Stability: Forces and Interactions",
            description: "Ask questions to determine cause and effect relationships of electric or magnetic interactions between two objects not in contact with each other.",
            grade_level: "3",
            standard_ids: ["3","27","13"] 
        },
        
        {   code: "3-PS2-4",
            name: "Motion and Stability: Forces and Interactions",
            description: "Define a simple design problem that can be solved by applying scientific ideas about magnets.*",
            grade_level: "3",
            standard_ids: ["3","27"] 
        },
        
        {   code: "3-LS1-1",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Develop models to describe that organisms have unique and diverse life cycles but all have in common birth, growth, reproduction, and death.",
            grade_level: "3",
            standard_ids: ["4","41","12"] 
        },
        
        {   code: "3-LS2-1",
            name: "Ecosystems: Interactions, Energy, and Dynamics",
            description: "Construct an argument that some animals form groups that help members survive.",
            grade_level: "3",
            standard_ids: ["9","48","13"] 
        },
        
        {   code: "3-LS3-1",
            name: "Heredity: Inheritance and Variation of Traits",
            description: "Analyze and interpret data to provide evidence that plants and animals have traits inherited from parents and that variation of these traits exists in a group of similar organisms.",
            grade_level: "3",
            standard_ids: ["6","50","51","12"] 
        },
        
        {   code: "3-LS3-2",
            name: "Heredity: Inheritance and Variation of Traits",
            description: "Use evidence to support the explanation that traits can be influenced by the environment.",
            grade_level: "3",
            standard_ids: ["8","50","51","13"] 
        },
        
        {   code: "3-LS4-1",
            name: "Biological Evolution: Unity and Diversity",
            description: "Analyze and interpret data from fossils to provide evidence of the organisms and the environments in which they lived long ago.",
            grade_level: "3",
            standard_ids: ["6","53","14"] 
        },
        
        {   code: "3-LS4-2",
            name: "Biological Evolution: Unity and Diversity",
            description: "Use evidence to construct an explanation for how the variations in characteristics among individuals of the same species may provide advantages in surviving, finding mates, and reproducing.",
            grade_level: "3",
            standard_ids: ["8","54","13"] 
        },
        
        {   code: "3-LS4-3",
            name: "Biological Evolution: Unity and Diversity",
            description: "Construct an argument with evidence that in a particular habitat some organisms can survive well, some survive less well, and some cannot survive at all.",
            grade_level: "3",
            standard_ids: ["9", "55","13"] 
        },
        
        {   code: "3-LS4-4",
            name: "Biological Evolution: Unity and Diversity",
            description: "Make a claim about the merit of a solution to a problem caused when the environment changes and the types of plants and animals that live there may change.*",
            grade_level: "3",
            standard_ids: ["9","47","56","15"] 
        },
        
        {   code: "3-ESS2-1",
            name: "Earth's Systems",
            description: "Represent data in tables and graphical displays to describe typical weather conditions expected during a particular season.",
            grade_level: "3",
            standard_ids: ["6","66","12"] 
        },
        
        {   code: "3-ESS2-2",
            name: "Earth's Systems",
            description: "Obtain and combine information to describe different climates in different regions of the world.",
            grade_level: "3",
            standard_ids: ["10","66","12"] 
        },
        
        {   code: "3-ESS3-1",
            name: "Earth and Human Activity",
            description: "Make a claim about the merit of a design solution that reduces the impacts of a weather-related hazard.*",
            grade_level: "3",
            standard_ids: ["9","70","13"] 
        },
        
#        4
        
        {   code: "4-PS3-1",
            name: "Energy",
            description: "Use evidence to construct an explanation relating the speed of an object to the energy of that object.",
            grade_level: "4",
            standard_ids: ["8", "30", "16"] 
        },
        
        {   code: "4-PS3-2",
            name: "Energy",
            description: "Make observations to provide evidence that energy can be transferred from place to place by sound, light, heat, and electric currents.",
            grade_level: "4",
            standard_ids: ["5","30","31","16"] 
        },
        
        {   code: "4-PS3-3",
            name: "Energy",
            description: "Ask questions and predict outcomes about the changes in energy that occur when objects collide.",
            grade_level: "4",
            standard_ids: ["3","30","31","32","16"] 
        },
        
        {   code: "4-PS3-4",
            name: "Energy",
            description: "Apply scientific ideas to design, test, and refine a device that converts energy from one form to another.*",
            grade_level: "4",
            standard_ids: ["8","31","33","75","16"] 
        },
        
        {   code: "4-PS4-1",
            name: "Waves and Their Applications in Technologies for Information Transfer",
            description: "Develop a model of waves to describe patterns in terms of amplitude and wavelength and that waves can cause objects to move.",
            grade_level: "4",
            standard_ids: ["4","35","12"] 
        },
        
        {   code: "4-PS4-2",
            name: "Waves and Their Applications in Technologies for Information Transfer",
            description: "Develop a model to describe that light reflecting from objects and entering the eye allows objects to be seen.",
            grade_level: "4",
            standard_ids: ["4","36","13"] 
        },
        
        {   code: "4-PS4-3",
            name: "Waves and Their Applications in Technologies for Information Transfer",
            description: "Generate and compare multiple solutions that use patterns to transfer information.*",
            grade_level: "4",
            standard_ids: ["8","37","77"] 
        },
        
        {   code: "4-LS1-1",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Construct an argument that plants and animals have internal and external structures that function to support survival, growth, behavior, and reproduction.",
            grade_level: "4",
            standard_ids: ["9","40","15"] 
        },
        
        {   code: "4-LS1-2",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Use a model to describe that animals receive different types of information through their senses, process the information in their brain, and respond to the information in different ways.",
            grade_level: "4",
            standard_ids: ["4","43","15"] 
        },
        
        {   code: "4-ESS1-1",
            name: "Earth's Place in the Universe",
            description: "Identify evidence from patterns in rock formations and fossils in rock layers to support an explanation for changes in a landscape over time.",
            grade_level: "4",
            standard_ids: ["8","61","12"] 
        },
        
        {   code: "4-ESS2-1",
            name: "Earth's Systems",
            description: "Make observations and/or measurements to provide evidence of the effects of weathering or the rate of erosion by water, ice, wind, or vegetation.",
            grade_level: "4",
            standard_ids: ["5","63","67","13"] 
        },
        
        {   code: "4-ESS2-2",
            name: "Earth's Systems",
            description: "Analyze and interpret data from maps to describe patters of Earth's features.",
            grade_level: "4",
            standard_ids: ["6","64","12"] 
        },
        
        {   code: "4-ESS3-1",
            name: "Earth and Human Activity",
            description: "Obtain and combine information to descibe that energy and fuels are derived from natural resources and their uses affect the environment.",
            grade_level: "4",
            standard_ids: ["10","69","13"] 
        },
        
        {   code: "4-ESS3-2",
            name: "Earth and Human Activity",
            description: "Generate and compare multiple solutions to reduce the impacts of natural Earth processes on humans.*",
            grade_level: "4",
            standard_ids: ["8","70","76","13"] 
        },
        
#        5
        
        {   code: "5-PS1-1",
            name: "Matter and Its Interactions",
            description: "Develop a model to describe that matter is made of particles too small to be seen.",
            grade_level: "5",
            standard_ids: ["4","22","14"] 
        },
        
        {   code: "5-PS1-2",
            name: "Matter and Its Interactions",
            description: "Measure and graph quantities to provide evidence that regardless of the type of change that occurs when heating, cooling, or mixing substances, the total weight of matter is conserved.",
            grade_level: "5",
            standard_ids: ["7","22","23","14"] 
        },
        
        {   code: "5-PS1-3",
            name: "Matter and Its Interactions",
            description: "Make observations and measurements to identify materials based on their properties.",
            grade_level: "5",
            standard_ids: ["5","22","14"] 
        },
        
        {   code: "5-PS1-4",
            name: "Matter and Its Interactions",
            description: "Conduct an investigation to determine whether the mixing of two or more substances results in new substances.",
            grade_level: "5",
            standard_ids: ["5","23","13"] 
        },
        
        {   code: "5-PS2-1",
            name: "Motion and Stability: Forces and Interactions",
            description: "Support an argument that the gravitational force exerted by Earth on objects is directed down.",
            grade_level: "5",
            standard_ids: ["9","27","13"] 
        },
        
        {   code: "5-PS3-1",
            name: "Energy",
            description: "Use models to describe that energy in animals' food (used for body repair, growth, motion, and to maintain body warmth) was once energy from the sun.",
            grade_level: "5",
            standard_ids: ["4","33","42","16"] 
        },
        
        {   code: "5-LS1-1",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Support an argument that plants get the materials they need for growth chiefly from air and water.",
            grade_level: "5",
            standard_ids: ["9","42","16"] 
        },
        
        {   code: "5-LS2-1",
            name: "Ecosystems: Interactions, Energy, and Dynamics",
            description: "Develop a model to describe the movement of matter among plants, animals, decomposers, and the environment.",
            grade_level: "5",
            standard_ids: ["4","45","46","15"] 
        },
        
        {   code: "5-ESS1-1",
            name: "Earth's Place in the Universe",
            description: "Support an argument that the apparent brightness of the sun and stars is due to their relative distances from Earth.",
            grade_level: "5",
            standard_ids: ["9","59","14"] 
        },
        
        {   code: "5-ESS1-2",
            name: "Earth's Place in the Universe",
            description: "Represent data in graphical displays to reveal patterns of daily changes in length and direction of shadows, day and night, and the seasonal appearance of some stars in the night sky.",
            grade_level: "5",
            standard_ids: ["6","60","12"] 
        },
        
        {   code: "5-ESS2-1",
            name: "Earth's Systems",
            description: "Develop a model using an example to describe ways the geosphere, biosphere, hydrosphere, and/or atmosphere interact.",
            grade_level: "5",
            standard_ids: ["4","63","15"] 
        },
        
        {   code: "5-ESS2-2",
            name: "Earth's Systems",
            description: "Describe and graph the amounts and percentages of water and fresh water in various reservoirs to provide evidence abou the distribution of water on Earth.",
            grade_level: "5",
            standard_ids: ["7","65","14"] 
        },
        
        {   code: "5-ESS3-1",
            name: "Earth and Human Activity",
            description: "Obtain and combine information about ways individual communities use science ideas to protect the Earth's resources and environment.",
            grade_level: "5",
            standard_ids: ["10","71","15"] 
        },
        
#        Middle School
        
        {   code: "MS-PS1-1",
            name: "Matter and Its Interactions",
            description: "Develop models to describe the atomic composition of simple molecules and extended structures.",
            grade_level: "MS",
            standard_ids: ["4","22","14"] 
        },
        
        {   code: "MS-PS1-2",
            name: "Matter and Its Interactions",
            description: "Analyze and interpret data on the properties of substances before and after the substances interact to determine if a chemical reaction has occured.",
            grade_level: "MS",
            standard_ids: ["6","22","23","12"] 
        },
        
        {   code: "MS-PS1-3",
            name: "Matter and Its Interactions",
            description: "Gather and make sense of information to describe that synthetic materials come from natural resources and impact society.",
            grade_level: "MS",
            standard_ids: ["10","22","23","17"] 
        },
        
        {   code: "MS-PS1-4",
            name: "Matter and Its Interactions",
            description: "Develop a model that predicts and describes in particle motion, temperature, and state of a pure substance when thermal energy is added or removed.",
            grade_level: "MS",
            standard_ids: ["4","22","30","13"] 
        },
        
        {   code: "MS-PS1-5",
            name: "Matter and Its Interactions",
            description: "Develop and use a model to describe how the total number of atoms does not change in a chemical reaction and thus mass is conserved.",
            grade_level: "MS",
            standard_ids: ["4","23","16"] 
        },
        
        {   code: "MS-PS1-6",
            name: "Matter and Its Interactions",
            description: "Undertake a design project to construct, test, and modify a device that either releases or absorbs thermal energy by chemical processes.*",
            grade_level: "MS",
            standard_ids: ["8","23","76","77","16"] 
        },
        
        {   code: "MS-PS2-1",
            name: "Motion and Stability: Forces and Interactions",
            description: "Apply Newton's Third Law to design a solution to a problem involving the motion of two colliding objects.*",
            grade_level: "MS",
            standard_ids: ["8","26","15"] 
        },
        
        {   code: "MS-PS2-2",
            name: "Motion and Stability: Forces and Interactions",
            description: "Plan an investigation to provide evidence that the change in an object's motion depends on the sum of the forces on the object and the mass of the object.",
            grade_level: "MS",
            standard_ids: ["5","26","18"] 
        },
        
        {   code: "MS-PS2-3",
            name: "Motion and Stability: Forces and Interactions",
            description: "Ask questons about data to determine the factors that affect the strength of electric and magnetic forces.",
            grade_level: "MS",
            standard_ids: ["3","27","13"] 
        },
        
        {   code: "MS-PS2-4",
            name: "Motion and Stability: Forces and Interactions",
            description: "Construct and present arguments using evidence to support the claim that gravitational interactions are attractive and depend on the masses of interacting objects.",
            grade_level: "MS",
            standard_ids: ["9","27","15"] 
        },
        
        {   code: "MS-PS2-5",
            name: "Motion and Stability: Forces and Interactions",
            description: "Conduct an investigation and evaluate the experimental design to provide evidence that fields exist between objects exerting forces on each other even though the objects are not in contact.",
            grade_level: "MS",
            standard_ids: ["5","27","13"] 
        },
        
        {   code: "MS-PS3-1",
            name: "Energy",
            description: "Construct and interpret graphical displays of data to describe the relationships of kinetic energy to the mass of an object and to the speed of an object.",
            grade_level: "MS",
            standard_ids: ["6","30","14"] 
        },
        
        {   code: "MS-PS3-2",
            name: "Energy",
            description: "Develop a model to describe that when the arrangement of objects interacting at a distance changes, different amounts of potential energy are stored in the system.",
            grade_level: "MS",
            standard_ids: ["4","30","32","15"] 
        },
        
        {   code: "MS-PS3-3",
            name: "Energy",
            description: "Apply scientific principles to design, contruct, and test a device that either minimizes or maximizes thermal energy transfer.*",
            grade_level: "MS",
            standard_ids: ["8","30","31","75","76","16"] 
        },
        
        {   code: "MS-PS3-4",
            name: "Energy",
            description: "Plan an investigation to determine the relationships among the energy transferred, the type of matter, the mass, and the change in the average kinetic energy of the particles as measured by the temperature of the sample.",
            grade_level: "MS",
            standard_ids: ["5","30","31","14"] 
        },
        
        {   code: "MS-PS3-5",
            name: "Energy",
            description: "Construct, use, and present arguments to support the claim that when kinetic energy of an object changes, energy is transferred to or from the object.",
            grade_level: "MS",
            standard_ids: ["9","31","16"] 
        },
        
        {   code: "MS-PS4-1",
            name: "Waves and Their Applications in Technologies for Information Transfer",
            description: "use mathematical representation to describe a simple model for waves that includes how the amplitude of a wave is related to the energy in a wave.",
            grade_level: "MS",
            standard_ids: ["7","35","12"] 
        },
        
        {   code: "MS-PS4-2",
            name: "Waves and Their Applications in Technologies for Information Transfer",
            description: "Develop and use a model to describe that waves are reflected, absorbed, or transmitted through various materials.",
            grade_level: "MS",
            standard_ids: ["4","35","36","17"] 
        },
        
        {   code: "MS-PS4-3",
            name: "Waves and Their Applications in Technologies for Information Transfer",
            description: "Integrate qualitative scientific and technical information to support the claim that digitized signals are a more reliable way to encode and transmit information than analog signals.",
            grade_level: "MS",
            standard_ids: ["10","37","17"] 
        },
        
        {   code: "MS-LS1-1",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Conduct an investigation to provide evidence that living things are made of cells; either one cell or many different numbers and types of cells.",
            grade_level: "MS",
            standard_ids: ["7","40","14"] 
        },
        
        {   code: "MS-LS1-2",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Develop and use a model to describe the function of a cell as a whole and ways parts of cells contribute to the function.",
            grade_level: "MS",
            standard_ids: ["4","40","17"] 
        },
        
        {   code: "MS-LS1-3",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Use argument supported by evidence for how the body is a system of interacting subsystems composed of groups of cells.",
            grade_level: "MS",
            standard_ids: ["9","40","17"] 
        },
        
        {   code: "MS-LS1-4",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Use argument based on empirical evidence and scientific reasoning to support an explanation for how characteristic animal behaviors and specialized plant structures affect the probability of successful reproduction of animals and plants respectively.",
            grade_level: "MS",
            standard_ids: ["9","41","13"] 
        },
        
        {   code: "MS-LS1-5",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Construct a scientific explanation based on evidence for how environmental and genetic factors influence the growth of organisms.",
            grade_level: "MS",
            standard_ids: ["8","41","13"] 
        },
        
        {   code: "MS-LS1-6",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Construct a scientific explanation based on evidence for the role of photosynthesis in the cycling of matter and flow of energy into and out of organisms.",
            grade_level: "MS",
            standard_ids: ["8","42","33","16"] 
        },
        
        {   code: "MS-LS1-7",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Develop a model to describe how food is rearranged through chemical reactions forming new molecules that support growth and/or release energy as this matter moves through an organism.",
            grade_level: "MS",
            standard_ids: ["4","42","33","16"] 
        },
        
        {   code: "MS-LS1-8",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Gather and synthesize information that sensory receptors respond to stimuli by sending messages to the brain for immediate behavior or storage as memories.",
            grade_level: "MS",
            standard_ids: ["10","43","13"] 
        },
        
        {   code: "MS-LS2-1",
            name: "Ecosystems: Interactions, Energy, and Dynamics",
            description: "Analyze and interpret data to provide evidence for the effects of resource availability on organisms and populations of organisms in an ecosystem.",
            grade_level: "MS",
            standard_ids: ["6","45","13"] 
        },
        
        {   code: "MS-LS2-2",
            name: "Ecosystems: Interactions, Energy, and Dynamics",
            description: "Construct an explanation that predicts patterns of interactions among organisms across multiple ecosystems.",
            grade_level: "MS",
            standard_ids: ["8","45","12"] 
        },
        
        {   code: "MS-LS2-3",
            name: "Ecosystems: Interactions, Energy, and Dynamics",
            description: "Develop a model to describe the cycling of matter and flow of energy among living and nonliving parts of an ecosystem.",
            grade_level: "MS",
            standard_ids: ["4","46","16"] 
        },
        
        {   code: "MS-LS2-4",
            name: "Ecosystems: Interactions, Energy, and Dynamics",
            description: "Construct an argument supported by empirical evidence that changes to physical or biological components of an ecosystem affect populations.",
            grade_level: "MS",
            standard_ids: ["9","47","18"] 
        },
        
        {   code: "MS-LS2-5",
            name: "Ecosystems: Interactions, Energy, and Dynamics",
            description: "Evaluate competing design solutions for maintaining biodiversity and ecosystem services.*",
            grade_level: "MS",
            standard_ids: ["9","47","56","76","18"] 
        },
        
        {   code: "MS-LS3-1",
            name: "Heredity: Inheritance and Variation of Traits",
            description: "Develop and use a model to describe why structural changes to genes (mutations) located on chromosomes may affect proteins and may result in harmful, beneficial, or neutral effects to the structure and function of the organism.",
            grade_level: "MS",
            standard_ids: ["4","50","51","17"] 
        },
        
        {   code: "MS-LS3-2",
            name: "Heredity: Inheritance and Variation of Traits",
            description: "Develop and use a model to describe why asexual reproduction results in offspring with identical genetic information and sexual reproduction results in offspring with genetic variation.",
            grade_level: "MS",
            standard_ids: ["4","41","50","51","13"] 
        },
        
        {   code: "MS-LS4-1",
            name: "Biological Evolution: Unity and Diversity",
            description: "Analyze and interpret data for patterns in the fossil record that document the existence, diversity, extinction, and change of life forms throughout the history of life on Earth under the assumption that natural laws operate today as in the past.",
            grade_level: "MS",
            standard_ids: ["6","53","12"] 
        },
        
        {   code: "MS-LS4-2",
            name: "Biological Evolution: Unity and Diversity",
            description: "Apply scientific ideas to construct an explanation for the anatomical similarities and differences among modern organisms and between modern and fossil organisms to infer evolutionary relationships.",
            grade_level: "MS",
            standard_ids: ["8","53","12"] 
        },
        
        {   code: "MS-LS4-3",
            name: "Biological Evolution: Unity and Diversity",
            description: "Analyze displays of pictoral data to compare patterns of similarities in the embryological development across multiple species to indentify relationships not evident in the fully formed anatomy.",
            grade_level: "MS",
            standard_ids: ["6","53","12"] 
        },
        
        {   code: "MS-LS4-4",
            name: "Biological Evolution: Unity and Diversity",
            description: "Construct an explanation based on evidence that describes how genetic variations of traits in a population increase some individuals' probability of surviving and reproducing in a specific environment.",
            grade_level: "MS",
            standard_ids: ["8","54","13"] 
        },
        
        {   code: "MS-LS4-5",
            name: "Biological Evolution: Unity and Diversity",
            description: "Gather and synthesize information about the technologies that have changed the way humans influence the inheritance of desired traits in organisms.",
            grade_level: "MS",
            standard_ids: ["10","54","13"] 
        },
        
        {   code: "MS-LS4-6",
            name: "Biological Evolution: Unity and Diversity",
            description: "Use mathematical representations to support explanations of how natural selection may lead to increases and decreases of specific traits in populations over time.",
            grade_level: "MS",
            standard_ids: ["7","55","13"] 
        },
        
        {   code: "MS-ESS1-1",
            name: "Earth's Place in the Universe",
            description: "Develop and use a model of the Earth-sun-moon system to describe the cyclic patterns of lunar phases, eclipses of the sun and moon, and seasons.",
            grade_level: "MS",
            standard_ids: ["4","59","60","12"] 
        },
        
        {   code: "MS-ESS1-2",
            name: "Earth's Place in the Universe",
            description: "Develop and use a model to describe the role of gravity in the motions within galaxies and the solar system.",
            grade_level: "MS",
            standard_ids: ["4","59","60","15"] 
        },
        
        {   code: "MS-ESS1-3",
            name: "Earth's Place in the Universe",
            description: "Analyze and interpret data to determine scale properties of objects in the solar system.",
            grade_level: "MS",
            standard_ids: ["6","60","14"] 
        },
        
        {   code: "MS-ESS1-4",
            name: "Earth's Place in the Universe",
            description: "Construct a scientific explanation based on evidence from rock strata for how the geologic time scale is used to organize Earth's 4.6-billion-year-old history.",
            grade_level: "MS",
            standard_ids: ["8","61","14"] 
        },
        
        {   code: "MS-ESS2-1",
            name: "Earth's Systems",
            description: "Develop a model to describe the cycling of Earth's materials and the flow of energy that drives this process.",
            grade_level: "MS",
            standard_ids: ["4","63","18"] 
        },
        
        {   code: "MS-ESS2-2",
            name: "Earth's Systems",
            description: "Construct an explanation based on evidence for how geoscience processes have changed Earth's surface at varying time and spatial scales.",
            grade_level: "MS",
            standard_ids: ["8","63","65","14"] 
        },
        
        {   code: "MS-ESS2-3",
            name: "Earth's Systems",
            description: "Analyze and interpret data on the distribution of fossils and rocks, continental shapes, and seafloor structures to provide evidence of the past plate motions.",
            grade_level: "MS",
            standard_ids: ["6","61","64","12"] 
        },
        
        {   code: "MS-ESS2-4",
            name: "Earth's Systems",
            description: "Develop a model to describe the cycling of water through Earth's systems driven by energy from the sun and the force of gravity.",
            grade_level: "MS",
            standard_ids: ["4","65","16"] 
        },
        
        {   code: "MS-ESS2-5",
            name: "Earth's Systems",
            description: "Collect data to provide evidence for how the motions and complex interactions of air masses results in changes in weather conditions.",
            grade_level: "MS",
            standard_ids: ["5","65","66","13"] 
        },
        
        {   code: "MS-ESS2-6",
            name: "Earth's Systems",
            description: "Develop and use a model to describe how unequal heating and rotation of the Earth cause patterns of atmospheric and oceanic circulation that determine regional climates.",
            grade_level: "MS",
            standard_ids: ["4","65","66","15"] 
        },
        
        {   code: "MS-ESS3-1",
            name: "Earth and Human Activity",
            description: "Construct a scientific explanation based on evidence for how the uneven distributions of Earth's mineral, energy, and groundwater resources are the result of past and current geoscience processes.",
            grade_level: "MS",
            standard_ids: ["8","69","13"] 
        },
        
        {   code: "MS-ESS3-2",
            name: "Earth and Human Activity",
            description: "Analyze and interpret data on natural hazards to forecast future catastrophic events and inform the development of technologies to mitigate their effects.",
            grade_level: "MS",
            standard_ids: ["6","70","12"] 
        },
        
        {   code: "MS-ESS3-3",
            name: "Earth and Human Activity",
            description: "Apply scientific principles to design a method for minotoring and minimizing a human impact on the environment.*",
            grade_level: "MS",
            standard_ids: ["8","71","13"] 
        },
        
        {   code: "MS-ESS3-4",
            name: "Earth and Human Activity",
            description: "Construct an argument supported by evidence for how increases in human population and per-capita consumption of natural resources impact Earth's systems.",
            grade_level: "MS",
            standard_ids: ["9","71","13"] 
        },
        
        {   code: "MS-ESS3-5",
            name: "Earth and Human Activity",
            description: "Ask qestons to clarify evidence of the factors that have caused the rise in global temperatures over the past century.",
            grade_level: "MS",
            standard_ids: ["3","72","18"] 
        },
        
        {   code: "MS-ETS1-1",
            name: "Engineering Design",
            description: "Define the criteria and constraints of a design problem with sufficient precision to ensure a successful solution, taking into account relevant scientific principles and potential impacts on people and the natural environent that may limit possible solutions.",
            grade_level: "MS",
            standard_ids: ["3","75","80"] 
        },
        
        {   code: "MS-ETS1-2",
            name: "Engineering Design",
            description: "Evaluate competing design solutions using a systematic process to determine how well they meet the criteria and constraints of the problem.",
            grade_level: "MS",
            standard_ids: ["9","76"] 
        },
        
        {   code: "MS-ETS1-3",
            name: "Engineering Design",
            description: "Analyze data from tests to determine similarities and differences among several design solutions to identify the best characteristics of each that can be combined into a new solution to better meet the criteria for success.",
            grade_level: "MS",
            standard_ids: ["6","76","77"] 
        },
        
        {   code: "MS-ETS1-4",
            name: "Engineering Design",
            description: "Develop a model to generate data for iterative testing and modification of a proposed object, tool, or process such that an optimal design can be achieved.",
            grade_level: "MS",
            standard_ids: ["4","76","77"] 
        },
        
#        High School
        
        {   code: "HS-PS1-1",
            name: "Matter and Its Interactions",
            description: "Use the periodic table as a model to predict the relative properties of elements based on the patterns of electrons in the outermost energy level of atoms.",
            grade_level: "HS",
            standard_ids: ["4","22","12"] 
        },
        
        {   code: "HS-PS1-2",
            name: "Matter and Its Interactions",
            description: "Construct and revise an explanation for the outcome of a simple chemical reaction based on the outermost electron states of atoms, trends in the period table, and knowledge of the patterns of chemical properties.",
            grade_level: "HS",
            standard_ids: ["8","22","23","12"] 
        },
        
        {   code: "HS-PS1-3",
            name: "Matter and Its Interactions",
            description: "Plan and conduct an investigation to gather evidence to compare the structure of substances at the bulk scale to infer the strenth of electrical forces between particles.",
            grade_level: "HS",
            standard_ids: ["5","21","22","12"] 
        },
        
        {   code: "HS-PS1-4",
            name: "Matter and Its Interactions",
            description: "Develop a model to illustrate that the release or absorption of energy from a chemical reaction system depends upon the changes in total bond energy.",
            grade_level: "HS",
            standard_ids: ["4","21","22","16"] 
        },
        
        {   code: "HS-PS1-5",
            name: "Matter and Its Interactions",
            description: "Apply scientific principles and evidence to provide an explanation about the effects of changing the temperature or concentration of the reacting particles on the rate at which a reaction occurs.",
            grade_level: "HS",
            standard_ids: ["8","22","12"] 
        },
        
        {   code: "HS-PS1-6",
            name: "Matter and Its Interactions",
            description: "Refine the design of a chemical system by specifying a change in conditions that would produce increased amounts of products at equilibrium.*",
            grade_level: "HS",
            standard_ids: ["8","22","77","18"] 
        },
        
        {   code: "HS-PS1-7",
            name: "Matter and Its Interactions",
            description: "Use mathematical representations to support the claim that atoms, and therefore mass, are conserved during a chemical reaction.",
            grade_level: "HS",
            standard_ids: ["7","22","16"] 
        },
        
        {   code: "HS-PS1-8",
            name: "Matter and Its Interactions",
            description: "Develop models to illustrate the changes in the composition of the nucleus of the atom and the energy released during the processes of fission, fusion, and radioactive decay.",
            grade_level: "HS",
            standard_ids: ["4","23","16"] 
        },
        
        {   code: "HS-PS2-1",
            name: "Motion and Stability: Forces and Interactions",
            description: "Analyze data to support the claim that Newton's second law of motion describes the mathematical relationship among the net force on a macroscopic object, its mass, and its acceleration.",
            grade_level: "HS",
            standard_ids: ["6","26","13"] 
        },
        
        {   code: "HS-PS2-1",
            name: "Motion and Stability: Forces and Interactions",
            description: "use mathematical representations to support the claim that the total momentum of a system of objects is conserved when there is no net force on the system.",
            grade_level: "HS",
            standard_ids: ["7","26","16"] 
        },
        
        {   code: "HS-PS2-3",
            name: "Motion and Stability: Forces and Interactions",
            description: "Apply scientific and engineering ideas to design, evaluate, and refine a device that minimizes the force on a macroscopic object during a collision.*",
            grade_level: "HS",
            standard_ids: ["8","26","75","77","13"] 
        },
        
        {   code: "HS-PS2-4",
            name: "Motion and Stability: Forces and Interactions",
            description: "Use mathematical representations of Newton's Law of Gravitation and Coulomb's Law to describe and predict the gravitational and electrostatic forces between objects.",
            grade_level: "HS",
            standard_ids: ["7","27","12"] 
        },
        
        {   code: "HS-PS2-5",
            name: "Motion and Stability: Forces and Interactions",
            description: "Plan and conduct an investigation to provide evidence that an electric current can produce a magnetic field and that a changing magnetic field can produce an electric current.",
            grade_level: "HS",
            standard_ids: ["5","27","30","13"] 
        },
        
        {   code: "HS-PS2-6",
            name: "Motion and Stability: Forces and Interactions",
            description: "Communicate scientific and technical information about why the molecular-level structure is important in teh functioning of designed materials.*",
            grade_level: "HS",
            standard_ids: ["10","27","17"] 
        },
        
        {   code: "HS-PS3-1",
            name: "Energy",
            description: "Create a computational model to calculate the change in the energy of one component in a system when the change in energy of the other component(s) and energy flows in and out of the system are known.",
            grade_level: "HS",
            standard_ids: ["7","30","31","15"] 
        },
        
        {   code: "HS-PS3-2",
            name: "Energy",
            description: "Develop and use models to illustrate that energy at the macroscopic scale can be accounted for as a combination of energy associated with the motions of particles (objects) and energy associated with the relative positions of particles (objects).",
            grade_level: "HS",
            standard_ids: ["4","30","16"] 
        },
        
        {   code: "HS-PS3-3",
            name: "Energy",
            description: "Design, build, and refine a device that works within given constraints to convert one form of energy into another form of energy.*",
            grade_level: "HS",
            standard_ids: ["8","30","33","75","16"] 
        },
        
        {   code: "HS-PS3-4",
            name: "Energy",
            description: "Plan and conduct an investigation to provide evidence that the transfer of thermal energy when two components of different temperature are combined within a closed system results in a more uniform energy distribution among the components in the system (second law of thermodynamics).",
            grade_level: "HS",
            standard_ids: ["5","31","33","15"] 
        },
        
        {   code: "HS-PS3-5",
            name: "Energy",
            description: "Develop and use a model of two objects interacting through electric or magnetic fields to illustrate the forces between objects and the changes in energy of the objects due to the interaction.",
            grade_level: "HS",
            standard_ids: ["4","32","13"] 
        },
        
        {   code: "HS-PS4-1",
            name: "Waves and Their Applications in Technologies for Information Transfer",
            description: "Use mathematical representations to support a claim regarding relationships among the frequency, wavelength, and speed of waves traveling in various media. ",
            grade_level: "HS",
            standard_ids: ["7","35","13"] 
        },
        
        {   code: "HS-PS4-2",
            name: "Waves and Their Applications in Technologies for Information Transfer",
            description: "Evaluate questions about the advantages of using a digital transmission and storage of information.",
            grade_level: "HS",
            standard_ids: ["3","35","18"] 
        },
        
        {   code: "HS-PS4-3",
            name: "Waves and Their Applications in Technologies for Information Transfer",
            description: "Evaluate the claims, evidence, and reasoning behind the idea that electromagnetic radiation can be described either by a wave model or a particle model, and that for some situations one model is more useful than the other.",
            grade_level: "HS",
            standard_ids: ["9","35","36","15"] 
        },
        
        {   code: "HS-PS4-4",
            name: "Waves and Their Applications in Technologies for Information Transfer",
            description: "Evaluate the validity and reliability of claims in published materials of the effects that different frequencies of electromagnetic radiation have when absorbed by matter.",
            grade_level: "HS",
            standard_ids: ["10","36","13"] 
        },
        
        {   code: "HS-PS4-5",
            name: "Waves and Their Applications in Technologies for Information Transfer",
            description: "Communicate technical information about how some technological devices use the principles of wave behavior and wave interactions with matter to transmit and capture information and energy.*",
            grade_level: "HS",
            standard_ids: ["10","33","35","36","37","13"] 
        },
        
        {   code: "HS-LS1-1",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Construct an explanation based on evidence for how the structure of DNA determines the structure of proteins which carry out the essential functions of life through systems of specialized cells.",
            grade_level: "HS",
            standard_ids: ["8","40","17"] 
        },
        
        {   code: "HS-LS1-2",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Develop and use a model to illustrate the hierarchical organization of interacting systems that provide specific functions within multicellular organisms.",
            grade_level: "HS",
            standard_ids: ["4","40","15"] 
        },
        
        {   code: "HS-LS1-3",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Plan and conduct an investigation to provide evidence that feedback mechanisms maintain homeostatis.",
            grade_level: "HS",
            standard_ids: ["5","40","18"] 
        },
        
        {   code: "HS-LS1-4",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Use a model to illustrate the role of cellular division (mitosis) and differentiation in producing and maintaining complex organisms.",
            grade_level: "HS",
            standard_ids: ["4","41","15"] 
        },
        
        {   code: "HS-LS1-5",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Use a model to illustrate how photosynthesis transforms light energy into stored chemical energy.",
            grade_level: "HS",
            standard_ids: ["4","42","16"] 
        },
        
        {   code: "HS-LS1-6",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Construct and revise an explanation based on evidence for how carbon, hydrogen, and oxygen from sugar molecules may combine with other elements to form amino acids and/or other large carbon-based molecules.",
            grade_level: "HS",
            standard_ids: ["8","42","16"] 
        },
        
        {   code: "HS-LS1-7",
            name: "From Molecules to Organisms: Structures and Processes",
            description: "Use a model to illustrate that cellular respiration is a chemical process whereby the bonds of food molecules and oxygen molecules are broken and the bonds in new compounds are formed reuslting in a net transfer of energy.",
            grade_level: "HS",
            standard_ids: ["4","42","16"] 
        },
        
        {   code: "HS-LS2-1",
            name: "Ecosystems: Interactions, Energy, and Dynamics",
            description: "Use mathematical and/or computational representations to support explanations of factors that affect carrying capacity of ecosystems at different scales.",
            grade_level: "HS",
            standard_ids: ["7","45","14"] 
        },
        
        {   code: "HS-LS2-2",
            name: "Ecosystems: Interactions, Energy, and Dynamics",
            description: "Use mathematical representations to support and revise explanations based on evidence about factors affecting biodiversity and populations in ecosystems of different scales.",
            grade_level: "HS",
            standard_ids: ["7","45","47","14"] 
        },
        
        {   code: "HS-LS2-3",
            name: "Ecosystems: Interactions, Energy, and Dynamics",
            description: "Construct and revise an explanation based on evidence for the cycling of matter and flow of energy in aerobic and anaerobic conditions.",
            grade_level: "HS",
            standard_ids: ["8","46","16"] 
        },
        
        {   code: "HS-LS2-4",
            name: "Ecosystems: Interactions, Energy, and Dynamics",
            description: "Use mathematical representations to support claims for the cycling of matter and flow of energy among organisms in an ecosystem.",
            grade_level: "HS",
            standard_ids: ["7","46","16"] 
        },
        
        {   code: "HS-LS2-5",
            name: "Ecosystems: Interactions, Energy, and Dynamics",
            description: "Develop a model to illustrate the role of photosynthesis and cellular respiration in the cycling of carbon among the biosphere, atmosphere, hydrosphere, and geosphere.",
            grade_level: "HS",
            standard_ids: ["4","46","33","15"] 
        },
        
        {   code: "HS-LS2-6",
            name: "Ecosystems: Interactions, Energy, and Dynamics",
            description: "Evaluate the claims, evidence, and reasoning that the complex interactions in ecosystems maintain relatively consistent numbers and types of organisms in stable conditions, but changing conditions may result in a new ecosystem.",
            grade_level: "HS",
            standard_ids: ["9","47","18"] 
        },
        
        {   code: "HS-LS2-7",
            name: "Ecosystems: Interactions, Energy, and Dynamics",
            description: "Design, evaluate, and refine a solution for reducing the impacts of human activities on the environment and biodiversity.*",
            grade_level: "HS",
            standard_ids: ["8","47","56","76","18"] 
        },
        
        {   code: "HS-LS2-8",
            name: "Ecosystems: Interactions, Energy, and Dynamics",
            description: "Evaluate the evidence for the role of group behavior on individual and species' chances to survive and reproduce.",
            grade_level: "HS",
            standard_ids: ["9","48","13"] 
        },
        
        {   code: "HS-LS3-1",
            name: "Heredity: Inheritance and Variation of Traits",
            description: "Ask questions to clarify relationships about the role of DNA and chromosomes in coding the instructions for characteristics traits passed from parents to offspring.",
            grade_level: "HS",
            standard_ids: ["3","40","50","13"] 
        },
        
        {   code: "HS-LS3-2",
            name: "Heredity: Inheritance and Variation of Traits",
            description: "Make and defend a claim based on evidence that inheritable genetic variations may result from: (1) new genetic combinations through meiosis, (2) viable errors occurring during replication, and/or (3) mutations caused by environmental factors.",
            grade_level: "HS",
            standard_ids: ["9","51","13"] 
        },
        
        {   code: "HS-LS3-3",
            name: "Heredity: Inheritance and Variation of Traits",
            description: "Apply concepts of statistics and probability to explain the variation and distribution of expressed traits in a population.",
            grade_level: "HS",
            standard_ids: ["6","51","14"] 
        },
        
        {   code: "HS-LS4-1",
            name: "Biological Evolution: Unity and Diversity",
            description: "Communicate scientific information that common ancestry and biological evolution are supported by multiple lines of empirical evidence.",
            grade_level: "HS",
            standard_ids: ["10","53","12"] 
        },
        
        {   code: "HS-LS4-2",
            name: "Biological Evolution: Unity and Diversity",
            description: "Construct an explanation based on evidence that the process of evolution primarily results from four factors: (1) the potential for a species to increase in number, (2) the heritable genetic variation of individuals in a species due to mutation and sexual reproduction, (3) competition for limited resources, and (4) the proliferation of those organisms that are better able to survive and reproduce in the environment.",
            grade_level: "HS",
            standard_ids: ["8","54","55","13"] 
        },
        
        {   code: "HS-LS4-3",
            name: "Biological Evolution: Unity and Diversity",
            description: "Apply concepts of statistics and probability to support explanations that organisms with an advantageous heritable trait tend to increase in proportion to organisms lacking this trait.",
            grade_level: "HS",
            standard_ids: ["6","54","55","12"] 
        },
        
        {   code: "HS-LS4-4",
            name: "Biological Evolution: Unity and Diversity",
            description: "Construct an explanation based on evidence for how natural selection leads to adaptation of populations.",
            grade_level: "HS",
            standard_ids: ["8","55","13"] 
        },
        
        {   code: "HS-LS4-5",
            name: "Biological Evolution: Unity and Diversity",
            description: "Evaluate the evidence supporting claims that changes in the environmental conditions may result in: (1) increases in the number of individuals of some species, (2) the emergence of new species over time, and (3) the extinction of other species.",
            grade_level: "HS",
            standard_ids: ["9","55","13"] 
        },
        
        {   code: "HS-LS4-6",
            name: "Biological Evolution: Unity and Diversity",
            description: "Create or revise a simulation to test a solution to mitigate adverse impacts of human activity on biodiversity.*",
            grade_level: "HS",
            standard_ids: ["7","55","56","76","13"] 
        },
        
        {   code: "HS-ESS1-1",
            name: "Earth's Place in the Universe",
            description: "Develop a model based on evidence to illustrate the life span of the sun and the role of nuclear fusion in the sun's core to release energy that eventually reaches Earth in the form of radiation.",
            grade_level: "HS",
            standard_ids: ["4","59","33","14"] 
        },
        
        {   code: "HS-ESS1-2",
            name: "Earth's Place in the Universe",
            description: "Construct an explanation of the Big Bang theory based on astronomical evidence of light spectra, motion of distant galaxies, and composition of matter in the universe.",
            grade_level: "HS",
            standard_ids: ["8","59", "36","16"] 
        },
        
        {   code: "HS-ESS1-3",
            name: "Earth's Place in the Universe",
            description: "Communicate scientific ideas about the way stars, over their life cycle, produce elements.",
            grade_level: "HS",
            standard_ids: ["10","59","16"] 
        },
        
        {   code: "HS-ESS1-4",
            name: "Earth's Place in the Universe",
            description: "Use mathematical or computational representations to predict the motion of orbiting objects in the solar system.",
            grade_level: "HS",
            standard_ids: ["7","60","14"] 
        },
        
        {   code: "HS-ESS1-5",
            name: "Earth's Place in the Universe",
            description: "Evaluate evidence of the past and current movements of continental and oceanic crust and the theory of plate tectonics to explain the ages of crustal rocks.",
            grade_level: "HS",
            standard_ids: ["9","61","24","64","12"] 
        },
        
        {   code: "HS-ESS1-6",
            name: "Earth's Place in the Universe",
            description: "Apply scientific reasoning and evidence from ancient Earth's materials, meteorites, and other planetary surfaces to construct an account of Earth's formation and early history.",
            grade_level: "HS",
            standard_ids: ["8","61","24","18"] 
        },
        
        {   code: "HS-ESS2-1",
            name: "Earth's Systems",
            description: "Develop a model to illustrate how Earth's internal and surface processes operate at different spatial and temporal scales to form continental and ocean-floor texture.",
            grade_level: "HS",
            standard_ids: ["4","63","64","18"] 
        },
        
        {   code: "HS-ESS2-2",
            name: "Earth's Systems",
            description: "Analyze geoscience data to make the claim that one change to Earth's surface can create feedbacks that cause changes to other Earth systems.",
            grade_level: "HS",
            standard_ids: ["6","63","66","18"] 
        },
        
        {   code: "HS-ESS2-3",
            name: "Earth's Systems",
            description: "Develop a model based on evidence of Earth's interior to describe the cycling of matter by thermal convection.",
            grade_level: "HS",
            standard_ids: ["4","63","64","35","16"] 
        },
        
        {   code: "HS-ESS2-4",
            name: "Earth's Systems",
            description: "Use a model to describe how variations in the flow of energy into and out of Earth's systems result in changes in climate.",
            grade_level: "HS",
            standard_ids: ["4","63","66","60","13"] 
        },
        
        {   code: "HS-ESS2-5",
            name: "Earth's Systems",
            description: "Plan and conduct an investigation of the properties of water and its effects on Earth materials and surface processes.",
            grade_level: "HS",
            standard_ids: ["5","65","17"] 
        },
        
        {   code: "HS-ESS2-6",
            name: "Earth's Systems",
            description: "Develop a quantitative model to describe the cycling of carbon among the hydrosphere, atmosphere, geosphere, and biosphere.",
            grade_level: "HS",
            standard_ids: ["4","66","16"] 
        },
        
        {   code: "HS-ESS2-7",
            name: "Earth's Systems",
            description: "Construct an argument based on evidence about the simultaneous coevolution of Earth's systems and life on Earth.",
            grade_level: "HS",
            standard_ids: ["9","66","67","18"] 
        },
        
        {   code: "HS-ESS3-1",
            name: "Earth and Human Activity",
            description: "Construct an explanation based on evidence for how the availability of natural resources, occurrence of natural hazards, and changes in climate have influenced human activity.",
            grade_level: "HS",
            standard_ids: ["8","69","70","13","80"] 
        },
        
        {   code: "HS-ESS3-2",
            name: "Earth and Human Activity",
            description: "Evaluate competing design solutions for developing, managing, and utilizing energy and mineral resources based on cost-benefit ratios.*",
            grade_level: "HS",
            standard_ids: ["9","69","76","80"] 
        },
        
        {   code: "HS-ESS3-3",
            name: "Earth and Human Activity",
            description: "Create a computational simulation to illustrate the relationships among management of natural resources, the sustainability of human populations, and biodiversity.",
            grade_level: "HS",
            standard_ids: ["7","71","18","80"] 
        },
        
        {   code: "HS-ESS3-4",
            name: "Earth and Human Activity",
            description: "Evaluate or refine a technological solution that reduces impacts of human activities on natural systems.*",
            grade_level: "HS",
            standard_ids: ["8","71","76","18","80"] 
        },
        
        {   code: "HS-ESS3-5",
            name: "Earth and Human Activity",
            description: "Analyze geoscience data and the results from global climate models to make an evidence-based forecast of the current rate of global or regional climate change and associated future impacts to Earth systems.",
            grade_level: "HS",
            standard_ids: ["6","72","18"] 
        },
        
        {   code: "HS-ESS3-6",
            name: "Earth and Human Activity",
            description: "Use a computational representation to illustrate the relationships among Earth systems and how those relationships are being modified due to human activity.",
            grade_level: "HS",
            standard_ids: ["7","72","66","15"] 
        },
        
        {   code: "HS-ETS1-1",
            name: "Engineering Design",
            description: "Analyze a major global climate challenge to specify qualitative and quantitative criteria and constraints for solutions that account for needs and wants.",
            grade_level: "HS",
            standard_ids: ["3","75","80"] 
        },
        
        {   code: "HS-ETS1-2",
            name: "Engineering Design",
            description: "Design a solution to a complex real-world problem by breaking it down into smaller, more manageable problems that can be solved through engineering.",
            grade_level: "HS",
            standard_ids: ["8","77"] 
        },
        
        {   code: "HS-ETS1-3",
            name: "Engineering Design",
            description: "Evaluate a solution to a complex real-world problem based on prioritized criteria and trade-offs that account for a range of constraints, including cost, safety, reliability, and aesthetics as well as possible social, cultural, and environmental impacts.",
            grade_level: "HS",
            standard_ids: ["8","76","80"] 
        },
        
        {   code: "HS-ETS1-4",
            name: "Engineering Design",
            description: "Use a computer simulation to model the impact of proposed solutions to a complex real-world problem with numerous criteria and constraints on interactions within and between systems relevant to the problem.",
            grade_level: "HS",
            standard_ids: ["7","76","15"] 
        }
        
    ]
    
)

Project.create(
    title: 'Slayer Exciter Circuit', 
    
    description: 'The problem that tesla coils typically present is that they are incredibly dangerous. The dangers that arcing electricity presents is self evident. Additionally a tesla coil will energize any conductive surface near it causing arcs which burn upon contact. But what is great about the Slayer Exciter Circuit is that it is low power. This means the coil can not produce arcing electricity (though a ground wire brought near will produce a small jet of plasma) but is still able to light bulbs. Regardless of how high the voltage can get it cannot become dangerous because it can\'t put out more power than the 9V battery can provide. If a person were to touch the high voltage toroid then the voltage would drop to low levels as the driver will fail to supply enough power to maintain high voltage and as a result only tiny amounts of current will pass through the body (comparable to touching both contacts of the battery with your finger). In addition, the high frequency of the device adds an additional layer of safety. There is a phenomena called the skin effect which describes how deeply electromagnetic energy can penetrate a lossy object (ie electricity and the human body). The higher the frequency is the shorter the skin depth. At frequencies that the coil runs at the skin depth is in tens of micrometers. Meaning that no meaningful amount of energy can get past the skin and cause shock. It is basically impossible for the coil to shock a person regardless of circumstance. It is important to note however that high enough voltages could be reached to create small arcs that can burn the skin. I hope to design a kit which provides a maximum wow factor (aka the best ability to wirelessly transmit power) without being strong enough to cause burns.', 
    
    contents: 'Primary Thicker is better, 22 awg max Coil runs at high frequencies, magnifies skin effect 5-10 turns I saw some claims that slayer exciter can have power coupling that allows for 1 turn, worth testing Secondary Magnet wire: copper wire with very thin insulation designed for transformers Awg 27-28 doesn\'t break so easily but 32 gives way more turns Coil size 5:1 height:diameter From what I read this is a good dimension for power coupling 750 turns @ awg 28 this example was a big coil though, a different was very small and had 275 turns @ awg 42 It can be calculated how many turns a base can hold (based upon the diameter of the wire) Some kind of base, pvc pipe seems like a favorite CANNOT double back when winding Voltage increases with each successive winding, doubling back brings two wires of significantly different voltages close together. This causes dielectric breakdown of the insulation (aka arc) that ruins the coil Magnetic core maybe? Will improve performance, but is it nessicary? Also cost Teflon tape can insulate core Insulating varnish to glue the coil into place, preventing uncoiling. Extra insulation also good Driver Transistor candidates 2n2222/2n5550 NPN (from og video) 2n3055 (claimed to produce higher voltage) Diode candidates 1n4148 1n400x >=22k Ohm resistor 9V battery Could use two 9V in series to achieve much higher voltage, transistor will need a heatsink for this Simple switch Toroid Toroid is a conductive doughnut-shaped structure that goes on the top of the coil to encourage a greater electrical field Need to find some great material that student can use to make whatever toroid he/she wants', 
    
    price: '1000000.00', 
    
    summary: 'Kit for designing and constructing a Solid State Driver for a Tesla Coil', 
    
    instructions: 'Here are instruction to guild you through designing and constructing the Tesla coil and driver', 
    
    tags: ["3"],
    
    grade_level: "7-12",
    
    image: 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/project_images/SlayerCircuit.jpg',
    
    perf_exp_ids: ["156"]
    )

Project.create(
    title: 'Create a City',
    
    description: 'Joke project created to populate projects list for testing.', 
    
    contents: 'Stuff involved with building a city',
        
    price: '1000000000000.00',
    
    summary: 'Design and construct your city!', 
    
    instructions: 'How to build a city',
    
    tags: ["4", "3"],
    
    grade_level: "9-12",
    
    image: 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/project_images/SlayerCircuit.jpg'
    )

Project.create(
    title: 'Messin with Sasquatch', 
    
    description: 'Joke project created to populate projects list for testing.', 
    
    contents: 'Beef jerky', 
    
    price: '10.00', 
    
    summary: 'Let\'s get that hairy bastard!',
    
    instructions: 'How to mess with sasquatch',
    
    tags:["5"],
    
    grade_level: "4",
    
    image: 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/project_images/SlayerCircuit.jpg'
    )

Project.create(
    title: 'Space Project', 
    
    description: 'Joke entry created to populate projects list for testing.', 
    
    contents: 'Something something space.', 
    
    price: '123.45',
    
    summary: 'Something something space', 
    
    instructions: 'How to space.',
    
    tags:["1"],
    
    grade_level: "5-6",
    
    image: 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/project_images/SlayerCircuit.jpg'
    )

Project.create(
    title: 'Get to Space', 
    
    description: 'Joke entry created to populate projects list for testing.', 
    
    contents: 'rocket stuff', 
    
    price: '543.21',
    
    summary: 'Design a rocket capable of reaching space',
    
    instructions: 'How to build a rocket',
    
    tags:["1", "3"],
    
    grade_level: "0-3",
    
    image: 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/project_images/SlayerCircuit.jpg'
    )

Project.create(
    title: 'Drone Project', 
    
    description: 'Joke entry created to populate projects list for testing.', 
    
    contents: 'Drone parts', 
    
    price: '23.00',
        
    summary: 'Project for building your own drone', 
    
    instructions: 'How to build a drone.',
    
    tags:["2"],
    
    grade_level: "9-12",
    
    image: 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/project_images/SlayerCircuit.jpg'
    )

Project.create(
    title: 'Chemistry Project', 
    
    description: 'Joke project created to populate projects list for testing.', 
    
    contents: 'melt-your-face-off acid', 
    
    price: '3.00,',
    
    summary: 'Something something chemistry.', 
    
    instructions: 'How to chemistry.',
    
    tags:["6"],
    
    grade_level: "9-12",
    
    image: 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/project_images/SlayerCircuit.jpg'
    )

