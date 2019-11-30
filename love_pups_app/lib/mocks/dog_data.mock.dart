import '../shared/models/dog_entity.model.dart';

const jsonData = [
  {
    "gender": "male",
    "name": {"title": "Mr", "first": "Ricardo", "last": "King"},
    "location": {
      "street": {"number": 4004, "name": "Bridge Road"},
      "city": "St Albans",
      "state": "Merseyside",
      "country": "United Kingdom",
      "postcode": "KS0 9FY",
      "coordinates": {"latitude": "44.4546", "longitude": "-48.7179"},
      "timezone": {"offset": "-3:30", "description": "Newfoundland"}
    },
    "dob": {"date": "1946-07-10T01:16:15.403Z", "age": 73},
    "image": {
      "imageUrl": "https://images.dog.ceo/breeds/african/n02116738_7026.jpg",
      "breed": "African"
    },
    "bio": {
      "hobbies": [
        "the feeling of slime",
        "Video game collecting",
        "Mannequins",
        "Fishkeeping"
      ],
      "dislikes": ["Yeast"],
      "text":
          "I enjoy the feelin of slime, Video game collectin, Mannequins, and Fishkeepin. I'm really not a fan of Yeast."
    }
  },
  {
    "gender": "female",
    "name": {"title": "Mrs", "first": "Stacey", "last": "Patterson"},
    "location": {
      "street": {"number": 122, "name": "Cackson St"},
      "city": "Topeka",
      "state": "Washington",
      "country": "United States",
      "postcode": 95065,
      "coordinates": {"latitude": "-9.6106", "longitude": "146.1110"},
      "timezone": {
        "offset": "+8:00",
        "description": "Beijing, Perth, Singapore, Hong Kong"
      }
    },
    "dob": {"date": "1966-08-25T18:11:55.397Z", "age": 53},
    "image": {
      "imageUrl":
          "https://images.dog.ceo/breeds/retriever-golden/n02099601_2691.jpg",
      "breed": "Golden Retriever"
    },
    "bio": {
      "hobbies": ["dogs"],
      "dislikes": [
        "Garlic",
        "Persimmon, Peach & Plum Pits",
        "The smell of Peppers",
        "The smell of Vinegar",
        "Strong Fragrances",
        "Lean Meat"
      ],
      "text":
          "I enjoy doggos. I'm really not a fan of Garlic, Persimmon, Peach & Plum Pits, The smell of Peppers, The smell of Vinegar, Strong Fragrances, or Lean Meat."
    }
  },
  {
    "gender": "female",
    "name": {"title": "Miss", "first": "Amber", "last": "Lawrence"},
    "location": {
      "street": {"number": 507, "name": "Oaks Cross"},
      "city": "Chichester",
      "state": "Dumfries and Galloway",
      "country": "United Kingdom",
      "postcode": "BP0V 4BL",
      "coordinates": {"latitude": "24.6567", "longitude": "-21.3193"},
      "timezone": {
        "offset": "+10:00",
        "description": "Eastern Australia, Guam, Vladivostok"
      }
    },
    "dob": {"date": "1951-12-30T17:06:22.573Z", "age": 68},
    "image": {
      "imageUrl": "https://images.dog.ceo/breeds/bluetick/n02088632_1145.jpg",
      "breed": "Bluetick"
    },
    "bio": {
      "hobbies": ["Sports memorabilia"],
      "dislikes": ["Being Upset"],
      "text": "I enjoy Sports memorabilia. I'm really not a fan of Bein Upset."
    }
  },
  {
    "gender": "male",
    "name": {"title": "Mr", "first": "Karl", "last": "Myers"},
    "location": {
      "street": {"number": 7771, "name": "The Drive"},
      "city": "St Davids",
      "state": "Gwent",
      "country": "United Kingdom",
      "postcode": "UL6S 7NY",
      "coordinates": {"latitude": "-58.8703", "longitude": "4.5966"},
      "timezone": {
        "offset": "-1:00",
        "description": "Azores, Cape Verde Islands"
      }
    },
    "dob": {"date": "1975-05-26T00:38:21.322Z", "age": 44},
    "image": {
      "imageUrl": "https://images.dog.ceo/breeds/brabancon/n02112706_2188.jpg",
      "breed": "Brabancon"
    },
    "bio": {
      "hobbies": [
        "England Netball",
        "Certain instruments",
        "The sensation of heavy bass",
        "Cabaret",
        "Writing",
        "Astrology"
      ],
      "dislikes": [
        "Being Left Alone or Ignored",
        "Using words instead of body language",
        "Apple Seeds"
      ],
      "text":
          "I enjoy England Netball, Certain instruments, The sensation of heavy bass, Cabaret, Writin, and Astrology. I'm really not a fan of Bein Left Alone or Ignored, Usin words instead of body language, or Apple Seeds."
    }
  },
  {
    "gender": "male",
    "name": {"title": "Mr", "first": "Malik", "last": "Gill"},
    "location": {
      "street": {"number": 7327, "name": "York St"},
      "city": "Sherbrooke",
      "state": "Saskatchewan",
      "country": "Canada",
      "postcode": "K8L 7S9",
      "coordinates": {"latitude": "-80.8843", "longitude": "20.7935"},
      "timezone": {"offset": "+7:00", "description": "Bangkok, Hanoi, Jakarta"}
    },
    "dob": {"date": "1950-05-28T03:46:49.549Z", "age": 69},
    "image": {
      "imageUrl":
          "https://images.dog.ceo/breeds/schnauzer-miniature/n02097047_1352.jpg",
      "breed": "Miniature Schnauzer"
    },
    "bio": {
      "hobbies": ["Curling", "Parades"],
      "dislikes": [
        "White Rice",
        "Forcing Them Into Uncomfortable Situations",
        "Raw Meat & Fish",
        "Eggs"
      ],
      "text":
          "I enjoy Curlin, and Parades. I'm really not a fan of White Rice, Forcin Them Into Uncomfortable Situations, Raw Meat & Fish, or Eggs."
    }
  },
  {
    "gender": "male",
    "name": {"title": "Mr", "first": "Willard", "last": "Watts"},
    "location": {
      "street": {"number": 1841, "name": "North Road"},
      "city": "Aberdeen",
      "state": "North Yorkshire",
      "country": "United Kingdom",
      "postcode": "DG5J 2DE",
      "coordinates": {"latitude": "30.2963", "longitude": "-12.6689"},
      "timezone": {"offset": "+9:30", "description": "Adelaide, Darwin"}
    },
    "dob": {"date": "1944-09-13T02:11:41.510Z", "age": 75},
    "image": {
      "imageUrl":
          "https://images.dog.ceo/breeds/terrier-american/n02093428_6437.jpg",
      "breed": "American Terrier"
    },
    "bio": {
      "hobbies": ["Collecting Dolls, Collecting keys"],
      "dislikes": ["Not Letting a Dog Sniff and Explore on Walks"],
      "text":
          "I enjoy Collectin Dolls, Collectin keys. I'm really not a fan of Not Lettin a Doggo Sniff and Explore on Walks."
    }
  },
  {
    "gender": "male",
    "name": {"title": "Mr", "first": "Duane", "last": "Hamilton"},
    "location": {
      "street": {"number": 1805, "name": "West Street"},
      "city": "City of London",
      "state": "Clwyd",
      "country": "United Kingdom",
      "postcode": "G70 1GW",
      "coordinates": {"latitude": "40.7900", "longitude": "-132.1697"},
      "timezone": {"offset": "+9:30", "description": "Adelaide, Darwin"}
    },
    "dob": {"date": "1993-12-27T09:24:34.842Z", "age": 26},
    "image": {
      "imageUrl":
          "https://images.dog.ceo/breeds/terrier-silky/n02097658_9136.jpg",
      "breed": "Silky Terrier"
    },
    "bio": {
      "hobbies": [
        "Rubik's Cubing",
        "Reading books to the sick/children/elderly"
      ],
      "dislikes": ["Dressing Them Up", "Alcohol", "Cooked Bones"],
      "text":
          "I enjoy Rubik's Cubin, and Readin books to the sick/children/elderly. I'm really not a fan of Dressin Them Up, Alcohol, or Cooked Bones."
    }
  },
  {
    "gender": "male",
    "name": {"title": "Mr", "first": "Adam", "last": "Grewal"},
    "location": {
      "street": {"number": 1405, "name": "St. Lawrence Ave"},
      "city": "Vanier",
      "state": "British Columbia",
      "country": "Canada",
      "postcode": "P3N 0C4",
      "coordinates": {"latitude": "20.9677", "longitude": "-17.1496"},
      "timezone": {"offset": "+7:00", "description": "Bangkok, Hanoi, Jakarta"}
    },
    "dob": {"date": "1959-05-21T03:04:44.318Z", "age": 60},
    "image": {
      "imageUrl": "https://images.dog.ceo/breeds/papillon/n02086910_1199.jpg",
      "breed": "Papillon"
    },
    "bio": {
      "hobbies": ["Cue sports", "Record collecting", "Couponing", "Karaoke"],
      "dislikes": ["The smell of Privacy Policy", "Onions & Chives"],
      "text":
          "I enjoy Cue sports, Record collectin, Couponin, and Karaoke. I'm really not a fan of The smell of Privacy Policy, or Onions & Chives."
    }
  },
  {
    "gender": "male",
    "name": {"title": "Mr", "first": "Troy", "last": "Burns"},
    "location": {
      "street": {"number": 3303, "name": "Lone Wolf Trail"},
      "city": "Rockford",
      "state": "Georgia",
      "country": "United States",
      "postcode": 46675,
      "coordinates": {"latitude": "49.2762", "longitude": "63.3691"},
      "timezone": {
        "offset": "+10:00",
        "description": "Eastern Australia, Guam, Vladivostok"
      }
    },
    "dob": {"date": "1976-04-02T05:28:08.765Z", "age": 43},
    "image": {
      "imageUrl": "https://images.dog.ceo/breeds/otterhound/n02091635_3661.jpg",
      "breed": "Otterhound"
    },
    "bio": {
      "hobbies": [
        "CSIRO Publishing",
        "Geocaching",
        "Calligraphy & typography",
        "Tour skating"
      ],
      "dislikes": ["Cat Food"],
      "text":
          "I enjoy CSIRO Publishin, Geocachin, Calligraphy & typography, and Tour skatin. I'm really not a fan of Cat Food."
    }
  },
  {
    "gender": "male",
    "name": {"title": "Mr", "first": "Wyatt", "last": "Davis"},
    "location": {
      "street": {"number": 9439, "name": "Timber Wolf Trail"},
      "city": "Garland",
      "state": "Louisiana",
      "country": "United States",
      "postcode": 27161,
      "coordinates": {"latitude": "-52.8208", "longitude": "-45.1511"},
      "timezone": {"offset": "+9:30", "description": "Adelaide, Darwin"}
    },
    "dob": {"date": "1997-06-22T00:40:32.053Z", "age": 22},
    "image": {
      "imageUrl": "https://images.dog.ceo/breeds/whippet/n02091134_2664.jpg",
      "breed": "Whippet"
    },
    "bio": {
      "hobbies": [
        "Incense",
        "hot chocolate",
        "Vegetable farming",
        "Flashing lights",
        "Skateboarding"
      ],
      "dislikes": ["Tobacco", "Marijuana"],
      "text":
          "I enjoy Incense, hot chocolate, Vegetable farmin, Flashin lights, and Skateboardin. I'm really not a fan of Tobacco, or Marijuana."
    }
  },
  {
    "gender": "male",
    "name": {"title": "Mr", "first": "Antonio", "last": "Matthews"},
    "location": {
      "street": {"number": 7867, "name": "Thornridge Cir"},
      "city": "Knoxville",
      "state": "Washington",
      "country": "United States",
      "postcode": 74514,
      "coordinates": {"latitude": "9.9133", "longitude": "-167.4504"},
      "timezone": {
        "offset": "+5:30",
        "description": "Bombay, Calcutta, Madras, New Delhi"
      }
    },
    "dob": {"date": "1975-09-30T06:12:52.980Z", "age": 44},
    "image": {
      "imageUrl":
          "https://images.dog.ceo/breeds/mountain-bernese/n02107683_3655.jpg",
      "breed": "Bernese Mountain"
    },
    "bio": {
      "hobbies": [
        "Apocalypse films/books",
        "Radio-controlled car",
        "Badminton England",
        "Water sports",
        "fixing cars"
      ],
      "dislikes": ["Coffee, Tea & Other Caffeine", "Fruits"],
      "text":
          "I enjoy Apocalypse films/books, Radio-controlled car, Badminton England, Water sports, and fixin cars. I'm really not a fan of Coffee, Tea & Other Caffeine, or Fruits."
    }
  },
  {
    "gender": "male",
    "name": {"title": "Mr", "first": "Philip", "last": "Mackay"},
    "location": {
      "street": {"number": 7471, "name": "Pierre Ave"},
      "city": "Souris",
      "state": "Saskatchewan",
      "country": "Canada",
      "postcode": "H0U 5J5",
      "coordinates": {"latitude": "-27.0046", "longitude": "53.4577"},
      "timezone": {
        "offset": "+11:00",
        "description": "Magadan, Solomon Islands, New Caledonia"
      }
    },
    "dob": {"date": "1949-03-25T02:45:38.721Z", "age": 70},
    "image": {
      "imageUrl": "https://images.dog.ceo/breeds/kelpie/n02105412_7514.jpg",
      "breed": "Kelpie"
    },
    "bio": {
      "hobbies": [
        "Cheesemaking",
        "Model engineering",
        "NBC News",
        "Strategy (in general)"
      ],
      "dislikes": [
        "Grapes & Raisins",
        "Candy, Chewing Gum, Toothpaste & Mouthwash",
        "Onions & Chives",
        "Marijuana",
        "Strong Fragrances"
      ],
      "text":
          "I enjoy Cheesemakin, Model engineerin, NBC News, and Strategy (in general). I'm really not a fan of Grapes & Raisins, Candy, Chewin Gum, Toothpaste & Mouthwash, Onions & Chives, Marijuana, or Strong Fragrances."
    }
  },
  {
    "gender": "male",
    "name": {"title": "Mr", "first": "Jeremy", "last": "Patel"},
    "location": {
      "street": {"number": 8635, "name": "Grand Ave"},
      "city": "Sandy Lake",
      "state": "Saskatchewan",
      "country": "Canada",
      "postcode": "K9Z 7J3",
      "coordinates": {"latitude": "-57.5103", "longitude": "161.7501"},
      "timezone": {
        "offset": "+3:00",
        "description": "Baghdad, Riyadh, Moscow, St. Petersburg"
      }
    },
    "dob": {"date": "1952-10-10T18:49:59.409Z", "age": 67},
    "image": {
      "imageUrl": "https://images.dog.ceo/breeds/maltese/n02085936_20610.jpg",
      "breed": "Maltese"
    },
    "bio": {
      "hobbies": [
        "Lacrosse",
        "Exploring national parks/monuments",
        "Surprises",
        "the smell of a new car",
        "Penton Media"
      ],
      "dislikes": ["Salt"],
      "text":
          "I enjoy Lacrosse, Explorin national parks/monuments, Surprises, the smell of a new car, and Penton Media. I'm really not a fan of Salt."
    }
  },
  {
    "gender": "male",
    "name": {"title": "Mr", "first": "Ricky", "last": "Kelley"},
    "location": {
      "street": {"number": 3324, "name": "Hillcrest Rd"},
      "city": "Broken Arrow",
      "state": "Hawaii",
      "country": "United States",
      "postcode": 14801,
      "coordinates": {"latitude": "68.1287", "longitude": "-2.8242"},
      "timezone": {"offset": "+7:00", "description": "Bangkok, Hanoi, Jakarta"}
    },
    "dob": {"date": "1951-04-21T23:57:17.729Z", "age": 68},
    "image": {
      "imageUrl":
          "https://images.dog.ceo/breeds/spaniel-cocker/n02102318_1691.jpg",
      "breed": "Cocker Spaniel"
    },
    "bio": {
      "hobbies": [
        "Home improvement",
        "Astrology",
        "Keeping journals/diaries",
        "Card games"
      ],
      "dislikes": ["Lack of Routine and Rules", "Marijuana"],
      "text":
          "I enjoy Home improvement, Astrology, Keepin journals/diaries, and Card games. I'm really not a fan of Lack of Routine and Rules, or Marijuana."
    }
  },
  {
    "gender": "male",
    "name": {"title": "Mr", "first": "Clinton", "last": "Elliott"},
    "location": {
      "street": {"number": 9897, "name": "The Grove"},
      "city": "City of London",
      "state": "Surrey",
      "country": "United Kingdom",
      "postcode": "C40 6XP",
      "coordinates": {"latitude": "-46.5816", "longitude": "-144.2580"},
      "timezone": {
        "offset": "+8:00",
        "description": "Beijing, Perth, Singapore, Hong Kong"
      }
    },
    "dob": {"date": "1951-01-20T09:48:35.692Z", "age": 68},
    "image": {
      "imageUrl":
          "https://images.dog.ceo/breeds/setter-gordon/n02101006_2918.jpg",
      "breed": "Gordon Setter"
    },
    "bio": {
      "hobbies": ["Waking late or early", "Pressed flower craft"],
      "dislikes": ["Using words instead of body language"],
      "text":
          "I enjoy Wakin late or early, and Pressed flower craft. I'm really not a fan of Usin words instead of body language."
    }
  },
  {
    "gender": "male",
    "name": {"title": "Mr", "first": "Mario", "last": "Perez"},
    "location": {
      "street": {"number": 5921, "name": "Locust Rd"},
      "city": "Tyler",
      "state": "Alabama",
      "country": "United States",
      "postcode": 79002,
      "coordinates": {"latitude": "-54.8807", "longitude": "97.9400"},
      "timezone": {
        "offset": "+5:00",
        "description": "Ekaterinburg, Islamabad, Karachi, Tashkent"
      }
    },
    "dob": {"date": "1984-07-20T02:58:07.708Z", "age": 35},
    "image": {
      "imageUrl": "https://images.dog.ceo/breeds/shihtzu/n02086240_1927.jpg",
      "breed": "Shihtzu"
    },
    "bio": {
      "hobbies": [
        "Gyotaku ",
        "Keeping old tickets and bookmarks",
        "Rail transport modelling",
        "Pet adoption"
      ],
      "dislikes": ["Strong Fragrances"],
      "text":
          "I enjoy Gyotaku , Keepin old tickets and bookmarks, Rail transport modellin, and Pet adoption. I'm really not a fan of Strong Fragrances."
    }
  },
  {
    "gender": "male",
    "name": {"title": "Mr", "first": "Dylan", "last": "Ambrose"},
    "location": {
      "street": {"number": 2594, "name": "Maple Ave"},
      "city": "Inwood",
      "state": "Ontario",
      "country": "Canada",
      "postcode": "T9K 0R4",
      "coordinates": {"latitude": "21.0851", "longitude": "-3.2745"},
      "timezone": {"offset": "-11:00", "description": "Midway Island, Samoa"}
    },
    "dob": {"date": "1971-01-28T17:54:55.612Z", "age": 48},
    "image": {
      "imageUrl":
          "https://images.dog.ceo/breeds/terrier-lakeland/n02095570_1765.jpg",
      "breed": "Lakeland Terrier"
    },
    "bio": {
      "hobbies": ["Jump rope"],
      "dislikes": ["Fat Trimmings"],
      "text": "I enjoy Jump rope. I'm really not a fan of Fat Trimmings."
    }
  },
  {
    "gender": "male",
    "name": {"title": "Mr", "first": "Benjamin", "last": "Gonzales"},
    "location": {
      "street": {"number": 7102, "name": "Chester Road"},
      "city": "Chester",
      "state": "Cornwall",
      "country": "United Kingdom",
      "postcode": "VV17 3FN",
      "coordinates": {"latitude": "37.3872", "longitude": "-163.3077"},
      "timezone": {"offset": "+6:00", "description": "Almaty, Dhaka, Colombo"}
    },
    "dob": {"date": "1985-10-19T17:41:31.466Z", "age": 34},
    "image": {
      "imageUrl":
          "https://images.dog.ceo/breeds/spaniel-welsh/n02102177_671.jpg",
      "breed": "Welsh Spaniel"
    },
    "bio": {
      "hobbies": ["ocean waves"],
      "dislikes": ["Human Vitamins"],
      "text": "I enjoy ocean waves. I'm really not a fan of Hooman Vitamins."
    }
  },
  {
    "gender": "male",
    "name": {"title": "Mr", "first": "Salvador", "last": "Rivera"},
    "location": {
      "street": {"number": 3946, "name": "The Avenue"},
      "city": "Hereford",
      "state": "Bedfordshire",
      "country": "United Kingdom",
      "postcode": "SK8C 5EZ",
      "coordinates": {"latitude": "14.0185", "longitude": "16.6463"},
      "timezone": {"offset": "-9:00", "description": "Alaska"}
    },
    "dob": {"date": "1984-10-27T12:33:27.837Z", "age": 35},
    "image": {
      "imageUrl":
          "https://images.dog.ceo/breeds/spaniel-cocker/n02102318_3269.jpg",
      "breed": "Cocker Spaniel"
    },
    "bio": {
      "hobbies": [
        "Walking around with bare feet/wearing socks.",
        "Reading books to the sick/children/elderly",
        "PubMed Identifier",
        "jumping on the bed",
        "Streaming/Social media",
        "Crocheting"
      ],
      "dislikes": [
        "The smell of Privacy Policy",
        "Hops",
        "Apple Seeds",
        "Liver"
      ],
      "text":
          "I enjoy Walkin around wit bare feet/wearin socks., Readin books to the sick/children/elderly, PubMed Identifier, jumpin on the bed, Streamin/Social media, and Crochetin. I'm really not a fan of The smell of Privacy Policy, Hops, Apple Seeds, or Liver."
    }
  },
  {
    "gender": "female",
    "name": {"title": "Ms", "first": "Emily", "last": "Vargas"},
    "location": {
      "street": {"number": 7699, "name": "Victoria Street"},
      "city": "Durham",
      "state": "Lincolnshire",
      "country": "United Kingdom",
      "postcode": "Y7 3SN",
      "coordinates": {"latitude": "57.7180", "longitude": "-11.8679"},
      "timezone": {"offset": "+5:45", "description": "Kathmandu"}
    },
    "dob": {"date": "1968-07-28T00:09:02.713Z", "age": 51},
    "image": {
      "imageUrl": "https://images.dog.ceo/breeds/leonberg/n02111129_2620.jpg",
      "breed": "Leonberg"
    },
    "bio": {
      "hobbies": [
        "Distro-hopping",
        "Dog sport",
        "Riddles",
        "Strategy (in general)"
      ],
      "dislikes": ["The smell of Mothballs", "Salt"],
      "text":
          "I enjoy Distro-hoppin, Doggo sport, Riddles, and Strategy (in general). I'm really not a fan of The smell of Mothballs, or Salt."
    }
  }
];

final List<DogEntity> DOG_DATA = jsonData.map((jsonItem) => DogEntity.fromJson(jsonItem)).toList();
