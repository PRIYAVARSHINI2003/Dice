//import 'package:dice/homepage.dart';
//import 'package:dice/skip1.dart';
import 'skip1.dart';
import 'package:flutter/material.dart';

class navi extends StatefulWidget {
  const navi({Key? key}) : super(key: key);

  @override
  State<navi> createState() => location();
}

class location extends State<navi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/img_6.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(50, 95, 55, 100),
              child: RichText(
                text: TextSpan(
                  text: "  SET YOUR \n  LOCATION\n",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: " See what's happening in your city",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(60, 250, 60, 80),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (skip1())),
                  );
                },
                icon: Icon(
                  // <-- Icon
                  Icons.location_on,
                  size: 20.0,
                  color: Colors.black,
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: Size(180, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80))),
                label: Text(
                  'USE MY LOCATION',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(60, 328, 60, 50),
              child: ElevatedButton.icon(
                onPressed: () {
                  showSearch(
                      context: context, delegate: CustomSearchDelegate());
                },
                icon: Icon(
                  // <-- Icon
                  Icons.search,
                  size: 20.0,
                  color: Colors.white,
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black26,
                    fixedSize: Size(130, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80))),
                label: Text(
                  'SEARCH',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  // Demo list to show querying
  List<String> searchTerms = [
    "India,Tamil Nadu",
    "India,Banglore",
    "India,Hyderbad",
    "India,Kolkata",
    "India,Mumbai",
    "India,Delhi",
    "India,Karnataka",
    "India,Chennai",
    "India,Kerla",
    "India,Assam",
    "India,Punjab",
    "India,Gujarat",
    "India,Madhya Pradesh",
    "India,Orisha",
    "India,Jaipur",
    "India,Andra Pradesh",
    "India,Goa",
    "India,Arunachal Pradesh",
    "India,Himachal Pradesh",
    "India,Jammu and Kashmir",
    "India,Sikkim",
    "India,Srinagar",
    "India,Andamn",
    "USA,California",
    "USA,New York",
    "USA,Indiana"
        "USA,Alabama",
    "USA,Florida",
    "USA,Hawaii"
        "USA,Mexico",
    "USA,New Jessy",
    "USA,Washington",
    "UK,England",
    "UK,Scotland",
    "UK,Northern,Ireland",
    "UK,Wales",
    "Saudi-Arabia,Dubai",
    "Saudi-Arabia,Kathar",
    "Saudi-Arabia,Omen",
    "Saudi-Arabia,Kuwait",
    "Japan,Tokya",
    "Japan,Osaka",
    "Japan,Hiroshima",
    "Japan,Nagasaki",
    "Japan,Wakayama",
    "Japan,Nara",
    "Japan,Naha",
    "Japan,Kyoto",
    "South-Koreo,Seoul",
    "South-Koreo,Gumi-si",
    "South-Koreo,Wonju-si",
    "South-Koreo,Gunpo-si",
    "Malasia,Malacca",
    "Malasia,Kedah",
    "Malasia,Johor",
    "Pakistan,Islamabad",
    "Singapore",
  ];

  // first overwrite to
  // clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  // second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  // third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  // last overwrite to show the
  // querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
