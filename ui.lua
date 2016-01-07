ret, input_1, input_2 = showUI( "{\"style\":\"default\",\"views\":[{\"type\":\"Label\",\"text\":\"选项\",\"size\":25,\"align\":\"center\",\"color\":\"0,0,200\"},{\"type\":\"RadioGroup\",\"list\":\"吃龙神器,投龙助手\",\"select\":\"1\"},{\"type\":\"CheckBoxGroup\",\"list\":\"点掉广告\",\"select\":\"1\"}]}" )

dialog( string.format(input_1.."    "..input_2), 5 )