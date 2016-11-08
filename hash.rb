hash = {
  "position_number"=>10,
  "sensors" =>[
    {
      "analog" => [
        {
          "type"=>"floor_sensor",
          "identifier"=>116542,
          "positions"=>[
            0
          ]
        }
      ],
      "digital" =>[
        {
          "type"=>"door_sensor",
          "identifier"=>116542,
          "positions"=>[
            4
          ]
        }
      ]
    }
  ],
  "indicators" => [
    {
      "type"=>"led",
      "identifier"=>116542,
      "positions"=>[
        3
      ]
    }
  ],
  "doors"=>[
    {
      "back"=>[
        {
          "type"=>"dc_motorize",
          "identifier"=>116542,
          "positions"=>[
            4
          ]
        }
      ],
      "front"=>[
        {
          "type"=>"garage",
          "identifier"=>116542,
          "positions"=>[
            0,
            1
          ]
        }
      ]
    }
  ]
}

ap hash["position_number"]
