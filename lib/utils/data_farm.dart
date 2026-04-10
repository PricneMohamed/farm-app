import 'package:flutter/material.dart';


final Map<String, Map<String, dynamic>> myFarm = {
  "pepper": {
    "pressed": () {},
    "color": Colors.green,
    "name": "فلفل",
    "toast": "فلفل أخضر طازة!",
    "state": 1,
    "image": "images/data_image/pepper.png",

    "sensors": {
      "water_liter": {
        "icon": Icon(Icons.water_drop,color: Colors.blue,),
        "name": "كمية المياه",
        "value": "1.5 لتر"
      },
      "water_every_days": {
        "icon": Icon(Icons.calendar_today,color: Colors.white,),
        "name": "الري كل",
        "value": "2 يوم"
      },
      "temperature_min": {
        "icon": Icon(Icons.thermostat,color: Colors.orange,),
        "name": "أقل درجة حرارة",
        "value": "18°C"
      },
      "temperature_max": {
        "icon": Icon(Icons.thermostat_auto,color: Colors.red,),
        "name": "أقصى درجة حرارة",
        "value": "30°C"
      },
      "soil_moisture": {
        "icon": Icon(Icons.water,color: Colors.blue,),
        "name": "رطوبة التربة",
        "value": "40% - 70%"
      },
      "light": {
        "icon": Icon(Icons.wb_sunny,color: Colors.amber,),
        "name": "الإضاءة",
        "value": "متوسطة"
      }
    }
  },

  "lettuce": {
    "pressed": () {},
    "color": Colors.lightGreen,
    "name": "خس",
    "toast": "خس أخضر جميل!",
    "state": 2,
    "image": "images/data_image/lettuce.png",

    "sensors": {
      "water_liter": {
        "icon": Icon(Icons.water_drop,color: Colors.blue,),
        "name": "كمية المياه",
        "value": "1 لتر"
      },
      "water_every_days": {
        "icon": Icon(Icons.calendar_today,color: Colors.white,),
        "name": "الري كل",
        "value": "1 يوم"
      },
      "temperature_min": {
        "icon": Icon(Icons.thermostat,color: Colors.orange,),
        "name": "أقل درجة حرارة",
        "value": "10°C"
      },
      "temperature_max": {
        "icon": Icon(Icons.thermostat_auto,color: Colors.red,),
        "name": "أقصى درجة حرارة",
        "value": "22°C"
      },
      "soil_moisture": {
        "icon": Icon(Icons.water,color: Colors.blue,),
        "name": "رطوبة التربة",
        "value": "60% - 80%"
      },
      "light": {
        "icon": Icon(Icons.wb_sunny,color: Colors.amber,),
        "name": "الإضاءة",
        "value": "منخفضة"
      }
    }
  },

  "red_onion": {
    "pressed": () {},
    "color": Colors.redAccent,
    "name": "بصل أحمر",
    "toast": "بصل أحمر جاهز!",
    "state": 3,
    "image": "images/data_image/red_onion.png",

    "sensors": {
      "water_liter": {
        "icon": Icon(Icons.water_drop,color: Colors.blue,),
        "name": "كمية المياه",
        "value": "0.8 لتر"
      },
      "water_every_days": {
        "icon": Icon(Icons.calendar_today,color: Colors.white,),
        "name": "الري كل",
        "value": "3 أيام"
      },
      "temperature_min": {
        "icon": Icon(Icons.thermostat,color: Colors.orange,),
        "name": "أقل درجة حرارة",
        "value": "13°C"
      },
      "temperature_max": {
        "icon": Icon(Icons.thermostat_auto,color: Colors.red,),
        "name": "أقصى درجة حرارة",
        "value": "24°C"
      },
      "soil_moisture": {
        "icon": Icon(Icons.water,color: Colors.blue,),
        "name": "رطوبة التربة",
        "value": "30% - 50%"
      },
      "light": {
        "icon": Icon(Icons.wb_sunny,color: Colors.amber,),
        "name": "الإضاءة",
        "value": "عالية"
      }
    }
  },

  "tomato": {
    "pressed": () {},
    "color": Colors.red,
    "name": "طماطم",
    "toast": "طماطم حمراء معسلة!",
    "state": 4,
    "image": "images/data_image/tomato.png",

    "sensors": {
      "water_liter": {
        "icon": Icon(Icons.water_drop,color: Colors.blue,),
        "name": "كمية المياه",
        "value": "2 لتر"
      },
      "water_every_days": {
        "icon": Icon(Icons.calendar_today,color: Colors.white,),
        "name": "الري كل",
        "value": "2 يوم"
      },
      "temperature_min": {
        "icon": Icon(Icons.thermostat,color: Colors.orange,),
        "name": "أقل درجة حرارة",
        "value": "20°C"
      },
      "temperature_max": {
        "icon": Icon(Icons.thermostat_auto,color: Colors.red,),
        "name": "أقصى درجة حرارة",
        "value": "30°C"
      },
      "soil_moisture": {
        "icon": Icon(Icons.water,color: Colors.blue,),
        "name": "رطوبة التربة",
        "value": "50% - 70%"
      },
      "light": {
        "icon": Icon(Icons.wb_sunny,color: Colors.amber,),
        "name": "الإضاءة",
        "value": "عالية"
      }
    }
  },

  "okra": {
    "pressed": () {},
    "color": Colors.greenAccent,
    "name": "بامية",
    "toast": "بامية خضرا طازة!",
    "state": 5,
    "image": "images/data_image/okra.png",

    "sensors": {
      "water_liter": {
        "icon": Icon(Icons.water_drop,color: Colors.blue,),
        "name": "كمية المياه",
        "value": "1.2 لتر"
      },
      "water_every_days": {
        "icon": Icon(Icons.calendar_today,color: Colors.white,),
        "name": "الري كل",
        "value": "2 يوم"
      },
      "temperature_min": {
        "icon": Icon(Icons.thermostat,color: Colors.orange,),
        "name": "أقل درجة حرارة",
        "value": "22°C"
      },
      "temperature_max": {
        "icon": Icon(Icons.thermostat_auto,color: Colors.red,),
        "name": "أقصى درجة حرارة",
        "value": "35°C"
      },
      "soil_moisture": {
        "icon": Icon(Icons.water,color: Colors.blue,),
        "name": "رطوبة التربة",
        "value": "45% - 65%"
      },
      "light": {
        "icon": Icon(Icons.wb_sunny,color: Colors.amber,),
        "name": "الإضاءة",
        "value": "عالية"
      }
    }
  },
};