player_list = {
    "Jose Altuve" => {
    },
    "Robinson Cano" => {
    },
    "Brian Dozier" => {
    },
    "Daniel Murphy" => {
    },
    "Dustin Pedroia" => {
    },
    "Jonathan Schoop" => {
    },
    "Ian Kinsler" => {
    },
    "Neil Walker" => {
    },
    "Cesar Hernandez" => {
    },
    "Carlos Correa" => {
    },
    "Corey Seager" => {
    },
    "Francisco Lindor" => {
    },
    "Trea Turner"=> {
     },
    "Andrelton Simmons" => {
     },
    "Jean Segura" => {
     },
    "Paul DeJong" => {
     },
    "Elvis Andrus" => {
     },
    "Trevor Story" => {
     },
    "Tim Beckham" => {
     },
     "Kris Bryant" => {
      },
     "Nolan Arenado" => {
      },
     "Josh Donaldson" => {
      },
     "Justin Turner" => {
      },
     "Anthony Rendon" => {
      },
     "Adrian Beltre" => {
      },
     "Jose Ramirez" => {
      },
     "Manny Machado" => {
      },
     "Alex Bregman" => {
      },
     "Kyle Seager" => {
      },
      "Marcell Ozuna" => {
       },
      "Yoenis Cespedes" => {
       },
      "Justin Upton" => {
       },
      "Ryan Braun" => {
       },
      "Trey Mancini" => {
       },
      "Khris Davis" => {
       },
      "Adam Eaton" => {
       },
      "Andrew Benintendi" => {
       },
      "Marwin Gonzalez" => {
       },
      "Brett Gardner" => {
       }
  }

player_list.each do |name, player_hash|
  p = Player.new
  p.name = name
  p.save
end


position_list = {
    "Starting Pitcher" => {
    },
    "Relief Pitcher" => {
    },
    "Firstbase" => {
    },
    "Secondbase" => {
    },
    "Thirdbase" => {
    },
    "Shortstop" => {
    },
    "Outfield" => {
    },
    "Catcher" => {
    },
    "DH" => {
    }
  }

position_list.each do |name, player_hash|
  p = Position.new
  p.name = name
  p.save
end
