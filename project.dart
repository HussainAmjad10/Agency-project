import 'dart:io';


class TravelPackage {
  String name;
  String description;
  List<String> destinations;
  List<String> highlights;
  String duration;
  List<String> inclusions;
  var Budget;

  TravelPackage({
    required this.name,
    required this.description,
    required this.destinations,
    required this.highlights,
    required this.duration,
    required this.Budget,
    required this.inclusions,
  });
  
}

List<TravelPackage> nationalPackages = [
  TravelPackage(
    name: 'Punjab',
    description: 'Explore the Heart of Punjab',
    destinations: ['Lahore', 'Multan', 'Faisalabad'],
    highlights: ['Badshahi Mosque', 'Lahore Fort', 'Shalimar Gardens', 'Minar-e-Pakistan', 'Faisal Mosque'],
    duration: '7 Days / 6 Nights',
    inclusions: ['Accommodation', 'daily breakfast', 'guided city tours', 'airport transfers'],
    Budget : 850 
  ),
  TravelPackage(
    name: 'Sindh',
    description: 'Discover the Heritage of Sindh',
    destinations: ['Karachi', 'Hyderabad', 'Mohenjo-Daro', 'Thar Desert'],
    highlights: ['Clifton Beach', 'Quaid-e-Azam\'s Mausoleum', 'Makli Necropolis', 'Ranikot Fort'],
    duration: '6 Days / 5 Nights',
    inclusions: ['Accommodation', 'daily breakfast', 'guided city tours', 'airport transfers'],
    Budget: 750
  ),
  TravelPackage(
    name: 'Khyber Pakhtunkhwa',
    description: 'Adventure in Khyber Pakhtunkhwa',
    destinations: ['Peshawar', 'Swat Valley', 'Abbottabad', 'Chitral'],
    highlights: ['Khyber Pass', 'Malam Jabba Ski Resort', 'Saidu Sharif', 'Shandur Polo Festival'],
    duration: '8 Days / 7 Nights',
    inclusions: ['Accommodation', 'daily breakfast', 'guided city tours', 'airport transfers'],
    Budget: 950
  ),
  TravelPackage(
    name: 'Balouchistan',
    description: 'Unveil the Mysteries of Balouchistan',
    destinations: ['Quetta', 'Gwadar', 'Ziarat', 'Hingol National Park'],
    highlights: ['Hanna Lake', 'Quaid-e-Azam Residency', 'Sphinx of Balochistan', 'Princess of Hope'],
    duration: '5 Days / 4 Nights',
    inclusions: ['Accommodation', 'daily breakfast', 'guided city tours', 'airport transfers'],
    Budget: 650
  ),
  TravelPackage(
    name: 'Azad Kashmir',
    description: 'Paradise on Earth - Azad Kashmir',
    destinations: ['Muzaffarabad', 'Neelum Valley', 'Rawalakot', 'Banjosa Lake'],
    highlights: ['Red Fort', 'Shounter Lake', 'Toli Pir', 'Ratti Gali Lake'],
    duration: '7 Days / 6 Nights',
    inclusions: ['Accommodation', 'daily breakfast', 'guided city tours', 'airport transfers'],
    Budget: 800
  ),
  TravelPackage(
    name: 'Gilgit Baltistan',
    description: 'Majestic Gilgit Baltistan',
    destinations: ['Gilgit', 'Skardu', 'Hunza Valley', 'Fairy Meadows'],
    highlights: ['Baltit Fort', 'Rakaposhi', 'Nanga Parbat', 'Khunjerab Pass'],
    duration: '10 Days / 9 Nights',
    inclusions: ['Accommodation', 'daily breakfast', 'guided city tours', 'airport transfers'],
    Budget: 1200 
  ),
];

List<TravelPackage> internationalPackages = [
  TravelPackage(
    name: 'USA',
    description: 'Experience the Best of USA',
    destinations: ['New York', 'Los Angeles', 'San Francisco', 'Las Vegas'],
    highlights: ['Statue of Liberty', 'Hollywood', 'Golden Gate Bridge', 'Grand Canyon'],
    duration: '12 Days / 11 Nights',
    inclusions: ['Accommodation', 'daily breakfast', 'guided city tours', 'airport transfers', 'internal flights'],
    Budget: 3500
    ),
  TravelPackage(
    name: 'United Kingdom',
    description: 'Historic and Modern UK',
    destinations: ['London', 'Edinburgh', 'Manchester', 'Liverpool'],
    highlights: ['Buckingham Palace', 'Edinburgh Castle', 'Manchester United Stadium', 'The Beatles Story'],
    duration: '10 Days / 9 Nights',
    inclusions: ['Accommodation', 'daily breakfast', 'guided city tours', 'airport transfers', 'internal transportation'],
    Budget: 3000
  ),
  TravelPackage(
    name: 'France',
    description: 'Romantic France',
    destinations: ['Paris', 'Nice', 'Lyon', 'Marseille'],
    highlights: ['Eiffel Tower', 'Louvre Museum', 'French Riviera', 'Notre-Dame Cathedral'],
    duration: '10 Days / 9 Nights',
    inclusions: ['Accommodation', 'daily breakfast', 'guided city tours', 'airport transfers', 'internal transportation'],
   Budget: 3000
  ),
  TravelPackage(
    name: 'Sweden',
    description: 'Scenic Sweden',
    destinations: ['Stockholm', 'Gothenburg', 'Malmo', 'Kiruna'],
    highlights: ['Vasa Museum', 'Liseberg Amusement Park', 'Turning Torso', 'Icehotel'],
    duration: '9 Days / 8 Nights',
    inclusions: ['Accommodation', 'daily breakfast', 'guided city tours', 'airport transfers', 'internal transportation'],
  Budget: 2500
  ),
  TravelPackage(
    name: 'Japan',
    description: 'Cultural and Modern Japan',
    destinations: ['Tokyo', 'Kyoto', 'Osaka', 'Hiroshima'],
    highlights: ['Mount Fuji', 'Tokyo Tower', 'Fushimi Inari Shrine', 'Hiroshima Peace Memorial'],
    duration: '10 Days / 9 Nights',
    inclusions: ['Accommodation', 'daily breakfast', 'guided city tours', 'airport transfers', 'internal transportation'],
  Budget: 3200
  ),
];

void main() {
  bool a = false;
  String email = "hussain@gmail.com";
  String password = "1234";

  do {
    print("Enter your email:");
    String? inputEmail = stdin.readLineSync();
    print("Enter your password:");
    String? inputPassword = stdin.readLineSync();

    if (inputEmail == email && inputPassword == password) {
      print("Login successful");
      a = true;
    } else { 
      print("Try again");
    }
  } while (!a);


  
  
  
  
  print("Welcome To Our Agency");
  print("Where do you want to travel: national or international?");
  String input = stdin.readLineSync() ?? 'd';

  if (input.toLowerCase() == 'national') {
    print("National destinations are:");
    for (int i = 0; i < nationalPackages.length; i++) {
      print("${i + 1}. ${nationalPackages[i].name} - ${nationalPackages[i].description}");
    }
  } else if (input.toLowerCase() == 'international') {
    print("International destinations are:");
    for (int i = 0; i < internationalPackages.length; i++) {
      print("${i + 1}. ${internationalPackages[i].name} - ${internationalPackages[i].description}");
    }
  } else {
    print("Not Found");
    return;
  }

  print('Choose the places by entering the corresponding numbers (comma-separated, e.g., 1,3,5):');
  String placesInput = stdin.readLineSync() ?? '';
  List<int> selectedIndices = placesInput
      .split(',')
      .map((e) => int.tryParse(e.trim()) ?? -1)
      .where((index) => index > 0)
      .toList();

  List<TravelPackage> selectedPackages = [];
  if (input.toLowerCase() == 'national') {
    for (int index in selectedIndices) {
      if (index <= nationalPackages.length) {
        selectedPackages.add(nationalPackages[index - 1]);
      }
    }
  } else if (input.toLowerCase() == 'international') {
    for (int index in selectedIndices) {
      if (index <= internationalPackages.length) {
        selectedPackages.add(internationalPackages[index - 1]);
      }
    }
  }

  if (selectedPackages.isEmpty) {
    print('No valid places selected.');
  } else {
    for (var package in selectedPackages) {
      print('You have selected: ${package.name}');
      print('  Description: ${package.description}');
      print('  Destinations: ${package.destinations}');
      print('  Highlights: ${package.highlights}');
      print('  Duration: ${package.duration}');
      print('  Inclusions: ${package.inclusions}');
      print("Your Budget Per Person Is : ${package.Budget}");
     
      
     print("enter your name");
    var name = stdin.readLineSync();
    print("Name : $name");
     print("enter your Contact");
    var Contact = stdin.readLineSync();
    print("Contact : $Contact");
    print("Your Selected package : ${package.name}");
    
     print('when you want to Departure');
     while (true) {
    stdout.write('Enter a date (YYYY-MM-DD): ');
    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      print('Please enter a date.');
      continue;
    }

    try {
      DateTime date = DateTime.parse(input);
      print('Thank you for using our services and Congrates on your journey : ${date.toLocal()}');
      break; // Exit the loop if the date is valid
    } catch (e) {
      print('Invalid date format. Try again.');
    }
  }  
    }
  }
}

  



