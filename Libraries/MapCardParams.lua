-- Cardlibrary for GameMap --

  mapCardData = {
      ["Eiswüste"] = {
          Campaign = "Der letzte Ritter",
          name = "Eiswüste",
          guid = nil,
          description = "",
          

          -- location numbers --
          CardID = "201",
          mapID = ({
            {["right"] = "211"}, 
            {["left"] = nil},
            {["down"]= "213"},
            {["up"] = nil}}),
          
          -- location Symbols --
          dream = true,
          menhir = false,
          frindlyVillage = false,
          enemyVillage = false,
          instantEffect = false,
          zuflucht = false,

          -- Resources --
          areaActionCost = 3, 
      },
      ["Zerklüftetes Gebeinfeld"] = {
        Campaign = "Der letzte Ritter",
        name = "Zerklüftetes Gebeinfeld",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "211",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "201"},
          {["down"]= "212"},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = true,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = nil,
      },
      ["Schimmernder Wald"] = {
        Campaign = "Der letzte Ritter",
        name = "Schimmernder Wald",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "213",
        mapID = ({
          {["right"] = "212"}, 
          {["left"] = "214"},
          {["down"]= nil},
          {["up"] = "201"}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,  
      },
      ["Schwarze Dünen"] = {
        Campaign = "Der letzte Ritter",
        name = "Schwarze Dünen",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "212",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "213"},
          {["down"]= nil},
          {["up"] = "211"}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = nil,
      },
      ["Gefährliche Eisklüfte"] = {
        Campaign = "Der letzte Ritter",
        name = "Gefährliche Eisklüfte",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "202",
        mapID = ({
          {["right"] = "201"}, 
          {["left"] = "223"},
          {["down"]= "214"},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = true,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = true,

        -- Resources --
        areaActionCost = nil,
      },
      ["Vergessene Aussichtswarte"] = {
        Campaign = "Der letzte Ritter",
        name = "Vergessene Aussichtswarte",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "203",
        mapID = ({
          {["right"] = "227"}, 
          {["left"] = nil},
          {["down"]= nil},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,
      },
      ["Eiskathedrale"] = {
        Campaign = "Der letzte Ritter",
        name = "Eiskathedrale",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "204",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "236"},
          {["down"]= "227"},
          {["up"] = "238"}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = true,

        -- Resources --
        areaActionCost = nil,
      },
      ["Ruinen von Kamelot"] = {
        Campaign = "Der letzte Ritter",
        name = "Ruinen von Kamelot",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "205",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "227"},
          {["down"]= nil},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,
      },
      ["Haufenkolonie"] = {
        Campaign = "Der letzte Ritter",
        name = "Haufenkolonie",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "206",
        mapID = ({
          {["right"] = "239"}, 
          {["left"] = nil},
          {["down"]= "237"},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = true,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = true,

        -- Resources --
        areaActionCost = 2,
      },
      ["Tal der Wächter"] = {
        Campaign = "Der letzte Ritter",
        name = "Tal der Wächter",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "208",
        mapID = ({
          {["right"] = "243"}, 
          {["left"] = "251"},
          {["down"]= nil},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = 1,
      },
      ["Die letzte Stadt"] = {
        Campaign = "Der letzte Ritter",
        name = "Die letzte Stadt",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "209",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "252"},
          {["down"]= nil},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = nil,
      },
      ["Cuanacht"] = {
        Campaign = "Der letzte Ritter",
        name = "Cuanacht",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "210",
        mapID = ({
          {["right"] = "269"}, 
          {["left"] = "268"},
          {["down"]= nil},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = true,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = nil,
      },
      ["Mangrovenholt"] = {
        Campaign = "Der letzte Ritter",
        name = "Mangrovenholt",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "214",
        mapID = ({
          {["right"] = "213"}, 
          {["left"] = "215"},
          {["down"]= nil},
          {["up"] = "202"}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = true,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = true,

        -- Resources --
        areaActionCost = 2,
      },
      ["Gemiedener Käfig"] = {
        Campaign = "Der letzte Ritter",
        name = "Gemiedener Käfig",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "215",
        mapID = ({
          {["right"] = "214"}, 
          {["left"] = nil},
          {["down"]= nil},
          {["up"] = "223"}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 1,
      },
      ["Schlupfwinkel in der Eiswüst"] = {
        Campaign = "Der letzte Ritter",
        name = "Schlupfwinkel in der Eiswüst",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "221",
        mapID = ({
          {["right"] = "211"}, 
          {["left"] = "202"},
          {["down"]= "213"},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = true,

        -- Resources --
        areaActionCost = 3,
      },
      ["Menhir-Tundrat"] = {
        Campaign = "Der letzte Ritter",
        name = "Menhir-Tundra",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "223",
        mapID = ({
          {["right"] = "202"}, 
          {["left"] = "224"},
          {["down"]= "215"},
          {["up"] = "225"}}),
        
        -- location Symbols --
        dream = false,
        menhir = true,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = nil,
      },
      ["Eiszapfenwald"] = {
        Campaign = "Der letzte Ritter",
        name = "Eiszapfenwald",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "224",
        mapID = ({
          {["right"] = "223"}, 
          {["left"] = nil},
          {["down"]= nil},
          {["up"] = "226"}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 3,
      },
      ["Verschlungene Pfade"] = {
        Campaign = "Der letzte Ritter",
        name = "Verschlungene Pfade",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "225",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "226"},
          {["down"]= "223"},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 3,
      },
      ["Einsamer Turm"] = {
        Campaign = "Der letzte Ritter",
        name = "Einsamer Turm",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "226",
        mapID = ({
          {["right"] = "225"}, 
          {["left"] = nil},
          {["down"]= "224"},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = true,

        -- Resources --
        areaActionCost = 0,
      },
      ["Geisterstadt"] = {
        Campaign = "Der letzte Ritter",
        name = "Geisterstadt",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "227",
        mapID = ({
          {["right"] = "205"}, 
          {["left"] = "203"},
          {["down"]= nil},
          {["up"] = "204"}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = true,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = 1,
      },
      ["Erstarrter Fluss"] = {
        Campaign = "Der letzte Ritter",
        name = "Erstarrter Fluss",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "235",
        mapID = ({
          {["right"] = "236"}, 
          {["left"] = nil},
          {["down"]= nil},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = true,
        menhir = true,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,
      },
      ["Schneeweiser Nebel"] = {
        Campaign = "Der letzte Ritter",
        name = "Schneeweiser Nebel",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "236",
        mapID = ({
          {["right"] = "204"}, 
          {["left"] = "235"},
          {["down"]= nil},
          {["up"] = "237"}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = nil,
      },
      ["Totengrube"] = {
        Campaign = "Der letzte Ritter",
        name = "Totengrube",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "237",
        mapID = ({
          {["right"] = "238"}, 
          {["left"] = nil},
          {["down"]= "236"},
          {["up"] = "206"}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = 3,
      },
      ["Zuflucht am Wald"] = {
        Campaign = "Der letzte Ritter",
        name = "Zuflucht am Wald",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "238",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "237"},
          {["down"]= "204"},
          {["up"] = "239"}}),
        
        -- location Symbols --
        dream = false,
        menhir = true,
        frindlyVillage = true,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = true,

        -- Resources --
        areaActionCost = 2,
      },
      ["Kreidehügel"] = {
        Campaign = "Der letzte Ritter",
        name = "Kreidehügel",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "239",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "206"},
          {["down"]= "238"},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,
      },
      ["Schlummernde Steine"] = {
        Campaign = "Der letzte Ritter",
        name = "Schlummernde Steine",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "241",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "246"},
          {["down"]= nil},
          {["up"] = "242"}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,
      },
      ["Stein der Erinnerung"] = {
        Campaign = "Der letzte Ritter",
        name = "Stein der Erinnerung",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "242",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "243"},
          {["down"]= "241"},
          {["up"] = "244"}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = nil,
      },
      ["Zerborstener Turm"] = {
        Campaign = "Der letzte Ritter",
        name = "Zerborstener Turm",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "243",
        mapID = ({
          {["right"] = "242"}, 
          {["left"] = "208"},
          {["down"]= "246"},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = nil,
      },
      ["Windumtostes Nest"] = {
        Campaign = "Der letzte Ritter",
        name = "Windumtostes Nest",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "244",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = nil},
          {["down"]= "242"},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,
      },
      ["Pfeiler des Himmels"] = {
        Campaign = "Der letzte Ritter",
        name = "Pfeiler des Himmels",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "245",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = nil},
          {["down"]= nil},
          {["up"] = "246"}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,
      },
      ["Weinende Wächterin"] = {
        Campaign = "Der letzte Ritter",
        name = "Weinende Wächterin",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "246",
        mapID = ({
          {["right"] = "241"}, 
          {["left"] = nil},
          {["down"]= "245"},
          {["up"] = "243"}}),
        
        -- location Symbols --
        dream = false,
        menhir = true,
        frindlyVillage = true,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = true,

        -- Resources --
        areaActionCost = 4,
      },
      ["Entsetzlicher Anblick"] = {
        Campaign = "Der letzte Ritter",
        name = "Entsetzlicher Anblick",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "251",
        mapID = ({
          {["right"] = "208"}, 
          {["left"] = nil},
          {["down"]= "252"},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,
      },
      ["Schwertheide"] = {
        Campaign = "Der letzte Ritter",
        name = "Schwertheide",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "252",
        mapID = ({
          {["right"] = "209"}, 
          {["left"] = "253"},
          {["down"]= "254"},
          {["up"] = "251"}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = nil,
      },
      ["Das Herz Tuathans"] = {
        Campaign = "Der letzte Ritter",
        name = "Das Herz Tuathans",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "253",
        mapID = ({
          {["right"] = "252"}, 
          {["left"] = nil},
          {["down"]= nil},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = 3,
      },
      ["Kalte Füsse"] = {
        Campaign = "Der letzte Ritter",
        name = "Das Herz Tuathans",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "254",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = nil},
          {["down"]= nil},
          {["up"] = "252"}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = true,

        -- Resources --
        areaActionCost = 2,
      },
      ["Sturm der Seelen"] = {
        Campaign = "Der letzte Ritter",
        name = "Sturm der Seelen",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "255",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = nil},
          {["down"]= nil},
          {["up"] = "246"}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = nil,
      },
      ["Stiller Wald"] = {
        Campaign = "Der letzte Ritter",
        name = "Stiller Wald",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "258",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "237"},
          {["down"]= "204"},
          {["up"] = "239"}}),
        
        -- location Symbols --
        dream = false,
        menhir = true,
        frindlyVillage = true,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = true,

        -- Resources --
        areaActionCost = 2,
      },
      ["Ausgescharrter Hügel"] = {
        Campaign = "Der letzte Ritter",
        name = "Ausgescharrter Hügel",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "259",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "206"},
          {["down"]= "238"},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,
      },
      ["Kasemattenl"] = {
        Campaign = "Der letzte Ritter",
        name = "Kasematten",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "260",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = nil},
          {["down"]= nil},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,
      },
      ["Mondkreis"] = {
        Campaign = "Der letzte Ritter",
        name = "Mondkreis",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "261",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "246"},
          {["down"]= nil},
          {["up"] = "242"}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = true,

        -- Resources --
        areaActionCost = 2,
      },
      ["Die Münder Tuathans"] = {
        Campaign = "Der letzte Ritter",
        name = "Die Münder Tuathans",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "262",
        mapID = ({
          {["right"] = "263"}, 
          {["left"] = nil},
          {["down"]= nil},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,
      },
      ["Wüstung"] = {
        Campaign = "Der letzte Ritter",
        name = "Wüstung",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "263",
        mapID = ({
          {["right"] = "264"}, 
          {["left"] = "262"},
          {["down"]= "265"},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 3,
      },
      ["Einsame Anhöhe"] = {
        Campaign = "Der letzte Ritter",
        name = "Einsame Anhöhe",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "264",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = nil},
          {["down"]= "266"},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = true,

        -- Resources --
        areaActionCost = 2,
      },
      ["Friedlicher See"] = {
        Campaign = "Der letzte Ritter",
        name = "Friedlicher See",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "265",
        mapID = ({
          {["right"] = "266"}, 
          {["left"] = nil},
          {["down"]= nil},
          {["up"] = "263"}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = true,

        -- Resources --
        areaActionCost = nil,
      },
      ["Laugentuntra"] = {
        Campaign = "Der letzte Ritter",
        name = "Laugentuntra",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "266",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "265"},
          {["down"]= "267"},
          {["up"] = "264"}}),
        
        -- location Symbols --
        dream = true,
        menhir = true,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 1,
      },
      ["Horn des Südens"] = {
        Campaign = "Der letzte Ritter",
        name = "Horn des Südens",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "267",
        mapID = ({
          {["right"] = "268"}, 
          {["left"] = nil},
          {["down"]= nil},
          {["up"] = "266"}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,
      },
      ["Das blutende Land"] = {
        Campaign = "Der letzte Ritter",
        name = "Das blutende Land",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "268",
        mapID = ({
          {["right"] = "210"}, 
          {["left"] = "267"},
          {["down"]= nil},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,
      },
      ["Eisernes Tor"] = {
        Campaign = "Der letzte Ritter",
        name = "Eisernes Tor",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "269",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "210"},
          {["down"]= nil},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,
      },
      ["Heiligtum"] = {
        Campaign = "Der letzte Ritter",
        name = "Heiligtum",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "271",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = nil},
          {["down"]= "274"},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = true,

        -- Resources --
        areaActionCost = 2,
      },
      ["Corbenic"] = {
        Campaign = "Der letzte Ritter",
        name = "Corbenic",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "272",
        mapID = ({
          {["right"] = "274"}, 
          {["left"] = nil},
          {["down"]= nil},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = true,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = true,

        -- Resources --
        areaActionCost = 0,
      },
      ["Das Auge des Nichts"] = {
        Campaign = "Der letzte Ritter",
        name = "Das Auge des Nichts",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "273",
        mapID = ({
          {["right"] = "202"}, 
          {["left"] = "224"},
          {["down"]= "215"},
          {["up"] = "225"}}),
        
        -- location Symbols --
        dream = false,
        menhir = true,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 0,
      },
      ["Parade"] = {
        Campaign = "Der letzte Ritter",
        name = "Parade",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "274",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "272"},
          {["down"]= nil},
          {["up"] = "271"}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = true,

        -- Resources --
        areaActionCost = nil,
      },
      ["Zersprungener Fluss"] = {
        Campaign = "Der letzte Ritter",
        name = "Zersprungener Fluss",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "275",
        mapID = ({
          {["right"] = "236"}, 
          {["left"] = nil},
          {["down"]= nil},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,
      },
      ["Strahlender Baum"] = {
        Campaign = "Der letzte Ritter",
        name = "Strahlender Baum",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "276",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "226"},
          {["down"]= "223"},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,
      },
      ["Verdorrtes Wurzelwerk"] = {
        Campaign = "Der letzte Ritter",
        name = "Verdorrtes Wurzelwerk",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "277",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "226"},
          {["down"]= "223"},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,
      },
      ["Verlorene Schwerter"] = {
        Campaign = "Der letzte Ritter",
        name = "Verlorene Schwerter",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "280",
        mapID = ({
          {["right"] = "269"}, 
          {["left"] = "268"},
          {["down"]= nil},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = nil,
      },
      ["Runde Landfestung"] = {
        Campaign = "Der letzte Ritter",
        name = "Runde Landfestung",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "282",
        mapID = ({
          {["right"] = "201"}, 
          {["left"] = "223"},
          {["down"]= "214"},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = true,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = 0,
      },
      ["Aufgegebener Tempel"] = {
        Campaign = "Der letzte Ritter",
        name = "Aufgegebener Tempel",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "283",
        mapID = ({
          {["right"] = "227"}, 
          {["left"] = nil},
          {["down"]= nil},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = false,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,
      },
      ["Grausige Brochs"] = {
        Campaign = "Der letzte Ritter",
        name = "Grausige Brochs",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "284",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "236"},
          {["down"]= "227"},
          {["up"] = "238"}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = nil,
      },
      ["Kamelot"] = {
        Campaign = "Der letzte Ritter",
        name = "Kamelot",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "285",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "236"},
          {["down"]= nil},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = true,
        frindlyVillage = true,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = true,

        -- Resources --
        areaActionCost = 0,
      },
      ["Kolonie am Fernkap"] = {
        Campaign = "Der letzte Ritter",
        name = "Kolonie am Fernkap",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "286",
        mapID = ({
          {["right"] = "239"}, 
          {["left"] = nil},
          {["down"]= "237"},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = true,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = true,

        -- Resources --
        areaActionCost = 2,
      },
      ["Rotes Tal"] = {
        Campaign = "Der letzte Ritter",
        name = "Rotes Tal",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "288",
        mapID = ({
          {["right"] = "243"}, 
          {["left"] = "251"},
          {["down"]= nil},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,
      },
      ["Die letzte Ruine"] = {
        Campaign = "Der letzte Ritter",
        name = "Die letzte Ruine",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "289",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "252"},
          {["down"]= nil},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = nil,
      },
      ["Aussterbendes Mangrovenholt"] = {
        Campaign = "Der letzte Ritter",
        name = "Aussterbendes Mangrovenholt",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "293",
        mapID = ({
          {["right"] = "213"}, 
          {["left"] = "215"},
          {["down"]= nil},
          {["up"] = "202"}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = true,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = true,

        -- Resources --
        areaActionCost = 0,
      },
      ["Florierendes Mangrovenholt"] = {
        Campaign = "Der letzte Ritter",
        name = "Florierendes Mangrovenholt",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "294",
        mapID = ({
          {["right"] = "213"}, 
          {["left"] = "215"},
          {["down"]= nil},
          {["up"] = "202"}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = true,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = true,

        -- Resources --
        areaActionCost = 1,
      },
      ["Florierendes Mangrovenholt"] = {
        Campaign = "Der letzte Ritter",
        name = "Florierendes Mangrovenholt",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "295",
        mapID = ({
          {["right"] = nil}, 
          {["left"] = "227"},
          {["down"]= nil},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = false,

        -- Resources --
        areaActionCost = 2,
      },
      ["Mauern der Kolonie"] = {
        Campaign = "Der letzte Ritter",
        name = "Mauern der Kolonie",
        guid = nil,
        description = "",

        -- location numbers --
        CardID = "296",
        mapID = ({
          {["right"] = "239"}, 
          {["left"] = nil},
          {["down"]= "237"},
          {["up"] = nil}}),
        
        -- location Symbols --
        dream = true,
        menhir = false,
        frindlyVillage = false,
        enemyVillage = false,
        instantEffect = true,
        zuflucht = true,

        -- Resources --
        areaActionCost = nil,
      },
  }
