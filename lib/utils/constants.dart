String HOME_SCREEN='/MyApp', DASHBOARD_SCREEN='/DashboardScreen';

String studentsListUrl = "https://getstudentslist.free.beeceptor.com/map/GetStudentDetails";

String json = "{\"username\":\"abc\",\"password\":\"pqr\"}";

String responseJson=""+
    '{'+
    '  \"results\": ['+
    '    {'+
    '      \"gender\": \"female\",'+
    '      \"fav\": false,'+
    '      \"name\": {'+
    '        \"title\": \"Ms\",'+
    '        \"first\": \"Sarah\",'+
    '        \"last\": \"Carter\"'+
    '      },'+
    '      \"location\": {'+
    '        \"street\": {'+
    '          \"number\": 7819,'+
    '          \"name\": \"Mockingbird Hill\"'+
    '        },'+
    '        \"city\": \"Traralgon\",'+
    '        \"state\": \"South Australia\",'+
    '        \"country\": \"Australia\",'+
    '        \"postcode\": 541'+
    '      },'+
    '      \"email\": \"sarah.carter@example.com\",'+
    '      \"dob\": {'+
    '        \"date\": \"1966-10-28T05:51:46.916Z\",'+
    '        \"age\": 54'+
    '      },'+
    '      \"phone\": \"08-2859-8032\",'+
    '      \"cell\": \"0498-533-668\",'+
    '      \"picture\": {'+
    '        \"large\": \"https://randomuser.me/api/portraits/women/34.jpg\",'+
    '        \"medium\": \"https://randomuser.me/api/portraits/med/women/34.jpg\",'+
    '        \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/women/34.jpg\"'+
    '      },'+
    '      \"nat\": \"AU\"'+
    '    },'+
    '    {'+
    '      \"gender\": \"male\",'+
    '      \"fav\": false,'+
    '      \"name\": {'+
    '        \"title\": \"Mr\",'+
    '        \"first\": \"Tony\",'+
    '        \"last\": \"Hamm\"'+
    '      },'+
    '      \"location\": {'+
    '        \"street\": {'+
    '          \"number\": 2149,'+
    '          \"name\": \"Römerstraße\"'+
    '        },'+
    '        \"city\": \"Pfullendorf\",'+
    '        \"state\": \"Schleswig-Holstein\",'+
    '        \"country\": \"Germany\",'+
    '        \"postcode\": 59743'+
    '      },'+
    '      \"email\": \"tony.hamm@example.com\",'+
    '      \"dob\": {'+
    '        \"date\": \"1994-12-11T19:57:09.375Z\",'+
    '        \"age\": 26'+
    '      },'+
    '      \"phone\": \"0783-1382219\",'+
    '      \"cell\": \"0175-3134417\",'+
    '      \"picture\": {'+
    '        \"large\": \"https://randomuser.me/api/portraits/men/50.jpg\",'+
    '        \"medium\": \"https://randomuser.me/api/portraits/med/men/50.jpg\",'+
    '        \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/men/50.jpg\"'+
    '      },'+
    '      \"nat\": \"DE\"'+
    '    },'+
    '    {'+
    '      \"gender\": \"female\",'+
    '      \"fav\": false,'+
    '      \"name\": {'+
    '        \"title\": \"Madame\",'+
    '        \"first\": \"Myrtha\",'+
    '        \"last\": \"Caron\"'+
    '      },'+
    '      \"location\": {'+
    '        \"street\": {'+
    '          \"number\": 6315,'+
    '          \"name\": \"Rue Paul-Duvivier\"'+
    '        },'+
    '        \"city\": \"Radelfingen\",'+
    '        \"state\": \"Luzern\",'+
    '        \"country\": \"Switzerland\",'+
    '        \"postcode\": 7446'+
    '      },'+
    '      \"email\": \"myrtha.caron@example.com\",'+
    '      \"dob\": {'+
    '        \"date\": \"1985-07-06T08:38:09.911Z\",'+
    '        \"age\": 35'+
    '      },'+
    '      \"phone\": \"078 966 36 36\",'+
    '      \"cell\": \"078 129 74 42\",'+
    '      \"picture\": {'+
    '        \"large\": \"https://randomuser.me/api/portraits/women/43.jpg\",'+
    '        \"medium\": \"https://randomuser.me/api/portraits/med/women/43.jpg\",'+
    '        \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/women/43.jpg\"'+
    '      },'+
    '      \"nat\": \"CH\"'+
    '    },'+
    '    {'+
    '      \"gender\": \"female\",'+
    '      \"fav\": false,'+
    '      \"name\": {'+
    '        \"title\": \"Mrs\",'+
    '        \"first\": \"Dora\",'+
    '        \"last\": \"Wood\"'+
    '      },'+
    '      \"location\": {'+
    '        \"street\": {'+
    '          \"number\": 1055,'+
    '          \"name\": \"Harrison Ct\"'+
    '        },'+
    '        \"city\": \"Phoenix\",'+
    '        \"state\": \"Florida\",'+
    '        \"country\": \"United States\",'+
    '        \"postcode\": 60092'+
    '      },'+
    '      \"email\": \"dora.wood@example.com\",'+
    '      \"dob\": {'+
    '        \"date\": \"1996-11-20T22:23:08.378Z\",'+
    '        \"age\": 24'+
    '      },'+
    '      \"phone\": \"(929)-811-9155\",'+
    '      \"cell\": \"(179)-907-0241\",'+
    '      \"picture\": {'+
    '        \"large\": \"https://randomuser.me/api/portraits/women/24.jpg\",'+
    '        \"medium\": \"https://randomuser.me/api/portraits/med/women/24.jpg\",'+
    '        \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/women/24.jpg\"'+
    '      },'+
    '      \"nat\": \"US\"'+
    '    },'+
    '    {'+
    '      \"gender\": \"male\",'+
    '      \"fav\": false,'+
    '      \"name\": {'+
    '        \"title\": \"Mr\",'+
    '        \"first\": \"Hunter\",'+
    '        \"last\": \"Margaret\"'+
    '      },'+
    '      \"location\": {'+
    '        \"street\": {'+
    '          \"number\": 2592,'+
    '          \"name\": \"Grand Marais Ave\"'+
    '        },'+
    '        \"city\": \"Greenwood\",'+
    '        \"state\": \"Nunavut\",'+
    '        \"country\": \"Canada\",'+
    '        \"postcode\": 12458'+
    '      },'+
    '      \"email\": \"hunter.margaret@example.com\",'+
    '      \"dob\": {'+
    '        \"date\": \"1961-05-03T13:08:48.399Z\",'+
    '        \"age\": 59'+
    '      },'+
    '      \"phone\": \"752-508-8540\",'+
    '      \"cell\": \"231-874-2715\",'+
    '      \"picture\": {'+
    '        \"large\": \"https://randomuser.me/api/portraits/men/85.jpg\",'+
    '        \"medium\": \"https://randomuser.me/api/portraits/med/men/85.jpg\",'+
    '        \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/men/85.jpg\"'+
    '      },'+
    '      \"nat\": \"CA\"'+
    '    },'+
    '    {'+
    '      \"gender\": \"male\",'+
    '      \"fav\": false,'+
    '      \"name\": {'+
    '        \"title\": \"Mr\",'+
    '        \"first\": \"Rasmus\",'+
    '        \"last\": \"Christiansen\"'+
    '      },'+
    '      \"location\": {'+
    '        \"street\": {'+
    '          \"number\": 678,'+
    '          \"name\": \"Vibevej\"'+
    '        },'+
    '        \"city\": \"Gjern\",'+
    '        \"state\": \"Midtjylland\",'+
    '        \"country\": \"Denmark\",'+
    '        \"postcode\": 33878'+
    '      },'+
    '      \"email\": \"rasmus.christiansen@example.com\",'+
    '      \"dob\": {'+
    '        \"date\": \"1959-12-01T10:39:40.301Z\",'+
    '        \"age\": 61'+
    '      },'+
    '      \"phone\": \"34190207\",'+
    '      \"cell\": \"09130572\",'+
    '      \"picture\": {'+
    '        \"large\": \"https://randomuser.me/api/portraits/men/0.jpg\",'+
    '        \"medium\": \"https://randomuser.me/api/portraits/med/men/0.jpg\",'+
    '        \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/men/0.jpg\"'+
    '      },'+
    '      \"nat\": \"DK\"'+
    '    },'+
    '    {'+
    '      \"gender\": \"female\",'+
    '      \"fav\": false,'+
    '      \"name\": {'+
    '        \"title\": \"Mrs\",'+
    '        \"first\": \"Nivalda\",'+
    '        \"last\": \"Aragão\"'+
    '      },'+
    '      \"location\": {'+
    '        \"street\": {'+
    '          \"number\": 5179,'+
    '          \"name\": \"Rua Vinte E Um\"'+
    '        },'+
    '        \"city\": \"Maricá\",'+
    '        \"state\": \"Rio de Janeiro\",'+
    '        \"country\": \"Brazil\",'+
    '        \"postcode\": 49976'+
    '      },'+
    '      \"email\": \"nivalda.aragao@example.com\",'+
    '      \"dob\": {'+
    '        \"date\": \"1970-12-18T17:18:47.202Z\",'+
    '        \"age\": 50'+
    '      },'+
    '      \"phone\": \"(13) 6608-9455\",'+
    '      \"cell\": \"(86) 8710-0785\",'+
    '      \"picture\": {'+
    '        \"large\": \"https://randomuser.me/api/portraits/women/49.jpg\",'+
    '        \"medium\": \"https://randomuser.me/api/portraits/med/women/49.jpg\",'+
    '        \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/women/49.jpg\"'+
    '      },'+
    '      \"nat\": \"BR\"'+
    '    },'+
    '    {'+
    '      \"gender\": \"female\",'+
    '      \"fav\": false,'+
    '      \"name\": {'+
    '        \"title\": \"Ms\",'+
    '        \"first\": \"Valdelaine\",'+
    '        \"last\": \"Caldeira\"'+
    '      },'+
    '      \"location\": {'+
    '        \"street\": {'+
    '          \"number\": 2701,'+
    '          \"name\": \"Travessa dos Martírios\"'+
    '        },'+
    '        \"city\": \"Alvorada\",'+
    '        \"state\": \"Bahia\",'+
    '        \"country\": \"Brazil\",'+
    '        \"postcode\": 28583'+
    '      },'+
    '      \"email\": \"valdelaine.caldeira@example.com\",'+
    '      \"dob\": {'+
    '        \"date\": \"1997-04-14T18:41:00.685Z\",'+
    '        \"age\": 23'+
    '      },'+
    '      \"phone\": \"(84) 3038-4595\",'+
    '      \"cell\": \"(36) 7361-3281\",'+
    '      \"picture\": {'+
    '        \"large\": \"https://randomuser.me/api/portraits/women/41.jpg\",'+
    '        \"medium\": \"https://randomuser.me/api/portraits/med/women/41.jpg\",'+
    '        \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/women/41.jpg\"'+
    '      },'+
    '      \"nat\": \"BR\"'+
    '    },'+
    '    {'+
    '      \"gender\": \"female\",'+
    '      \"fav\": false,'+
    '      \"name\": {'+
    '        \"title\": \"Mrs\",'+
    '        \"first\": \"Aouatif\",'+
    '        \"last\": \"Adolfs\"'+
    '      },'+
    '      \"location\": {'+
    '        \"street\": {'+
    '          \"number\": 4745,'+
    '          \"name\": \"A. Jacobsstraat\"'+
    '        },'+
    '        \"city\": \"Manderveen\",'+
    '        \"state\": \"Overijssel\",'+
    '        \"country\": \"Netherlands\",'+
    '        \"postcode\": 49131'+
    '      },'+
    '      \"email\": \"aouatif.adolfs@example.com\",'+
    '      \"dob\": {'+
    '        \"date\": \"1984-10-15T12:56:27.722Z\",'+
    '        \"age\": 36'+
    '      },'+
    '      \"phone\": \"(936)-156-5866\",'+
    '      \"cell\": \"(196)-664-7620\",'+
    '      \"picture\": {'+
    '        \"large\": \"https://randomuser.me/api/portraits/women/22.jpg\",'+
    '        \"medium\": \"https://randomuser.me/api/portraits/med/women/22.jpg\",'+
    '        \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/women/22.jpg\"'+
    '      },'+
    '      \"nat\": \"NL\"'+
    '    }'+
    '  ],'+
    '  \"status\": \"ok\",'+
    '  \"totalResults\": 9'+
    "}";