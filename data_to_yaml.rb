require 'yaml'

data = {
  "isTest": false,
  "isPhidgetWebServer": false,
  "phidgetWebServerIp": "10.3.8.200",
  "phidgetWebServerPort": 5001,
  "analog": [
    "floor_sensors"
  ],
  "digital": [
    "doors_sensors"
  ],
  "development": [
    {
      "sensors": {
        "analog": [
          {
            "type": "floor_sensors",
            "identifier": 116542,
            "positions": [
              0
            ]
          }
        ],
        "digital": [
          {
            "type": "doors_sensors",
            "identifier": 116542,
            "positions": [
              4
            ]
          }
        ]
      },
      "indicators": [
        {
          "type": "LedIndicator",
          "identifier": 116542,
          "positions": [
            3
          ]
        }
      ],
      "doors": {
        "back": [
          {
            "type": "DCMotorizedDoor",
            "identifier": 116542,
            "positions": [
              4
            ]
          }
        ],
        "front": [
          {
            "type": "DCMotorizedDoor",
            "identifier": 116542,
            "positions": [
              0,
              1
            ]
          }
        ]
      }
    },
    {
      "sensors": {
        "analog": [
          {
            "type": "floor_sensors",
            "identifier": 116542,
            "positions": [
              1
            ]
          }
        ],
        "digital": [
          {
            "type": "doors_sensors",
            "identifier": 116542,
            "positions": [
              5
            ]
          }
        ]
      },
      "indicators": [
        {
          "type": "LedIndicator",
          "identifier": 116542,
          "positions": [
            2
          ]
        }
      ],
      "doors": {
        "back": [
          {
            "type": "DCMotorizedDoor",
            "identifier": 116542,
            "positions": [
              4
            ]
          }
        ],
        "front": [
          {
            "type": "DCMotorizedDoor",
            "identifier": 116542,
            "positions": [
              0,
              1
            ]
          }
        ]
      }
    },
    {
      "sensors": {
        "analog": [
          {
            "type": "floor_sensors",
            "identifier": 116542,
            "positions": [
              2
            ]
          }
        ],
        "digital": [
          {
            "type": "doors_sensors",
            "identifier": 116542,
            "positions": [
              6
            ]
          }
        ]
      },
      "indicators": [
        {
          "type": "LedIndicator",
          "identifier": 116542,
          "positions": [
            1
          ]
        }
      ],
      "doors": {
        "back": [
          {
            "type": "LatchedDoor",
            "identifier": "/dev/ttyUSB1",
            "positions": [
              4
            ]
          },
          {
            "type": "DCMotorizedDoor",
            "identifier": 116542,
            "positions": [
              0,
              1
            ]
          }
        ],
        "front": [
          {
            "type": "ApexProtocoledDoor",
            "identifier": "",
            "positions": [
              10
            ]
          }
        ]
      }
    },
    {
      "sensors": {
        "analog": [
          {
            "type": "floor_sensors",
            "identifier": 116542,
            "positions": [
              3
            ]
          }
        ],
        "digital": [
          {
            "type": "doors_sensors",
            "identifier": 116542,
            "positions": [
              7
            ]
          }
        ]
      },
      "indicators": [
        {
          "type": "LedIndicator",
          "identifier": 116542,
          "positions": [
            0
          ]
        }
      ],
      "doors": {
        "back": [
          {
            "type": "DCMotorizedDoor",
            "identifier": 116542,
            "positions": [
              4
            ]
          }
        ],
        "front": [
          {
            "type": "DCMotorizedDoor",
            "identifier": 116542,
            "positions": [
              0,
              1
            ]
          }
        ]
      }
    }
  ]
}

puts data.to_yaml

f = File.open(ARGV.first || 'data', "w")
f.puts data.to_yaml
f.close
