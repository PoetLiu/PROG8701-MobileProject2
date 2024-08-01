import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_two/watch.dart';

import 'details.dart';

class Products extends StatelessWidget {
  const Products({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {

    List<Watch> watchList = [
      Watch("CITIZEN", "Tsuki-yomi A-T", "Atomic Timekeeping / Super Titanium",
          876.99, "tsuki.jpg", "When breakthrough technology and spectacular design meet, the Tsuki-yomi A-T is reading the moon. It’s the world’s first moonphase watch combined with atomic timekeeping innovation from Citizen, and this 30th Anniversary model is nothing short of impressive. The styling embodies the moon’s surface and a window at 6 o’clock displays the current moon phase. The timepiece measures 43mm in a silver-tone Super Titanium™ case, where sharp faceted edges pair with an elevated design throughout for an eye-catching aesthetic on the wrist. The deep red dial works in tandem with black accents and silver-tone touches for a display that’s as handsome as it is legible. In addition to its running time, the watch features a moon phase display, world time in 24 time zones, a perpetual calendar, and a day-date functionality. Powered by Citizen’s proprietary Eco-Drive technology to provide light-powered vitality without ever needing a battery. Water resistant up to 100 metres. Calibre H874."),
      Watch("CITIZEN", "Forza Mechanical", "Super Titanium", 895.00, "forza.jpg",
          "Pairing classic proportions and innovative technology with a distinctly modern style, we present our new Integrated Super Titanium™ Automatic series. Made with our proprietary material, Super Titanium™, which is five times harder and 40% lighter than stainless steel and is scratch- and rust-resistant, this sporty timepiece features a 40.5mm silver-tone Super Titanium™ case that is elevated with finely brushed and polished finishing while being secured to the wrist with an integrated matching bracelet. On the dial, a textured white colour is accented with an outer minute ring in black, with silver-tone details and luminous hands and markers. A date window at the 3 o'clock position adds daily utility, while an off-centre sub-dial beside it indicates the running time powered by the mechanical movement inside. Water resistant to 100 metres. Automatic calibre 8213."),
      Watch("CITIZEN", "Promaster Aqualand", "200M Depth Meter", 760, "promaster.png",
          "Ready, Set, Dive. An iconic name with a reinvented construction, the ISO compliant CITIZEN® PROMASTER Aqualand with maximum depth memory, rapid ascent alarm, auto start dive mode, power reserve indicator and date is water resistant up to 200 metres. You won't want anything else when headed to the ocean. The stainless steel case compliments the ocean blue polyurethane strap and blue dial with red and blue bezel. Featuring our Eco-Drive technology – powered by light, any light. Never needs a battery."),
      Watch("CITIZEN", "NEW Brycen", "Super Titanium", 695, "brycen.png",
          "Take action and show your inner drive with the sporty styling of the Brycen, the latest addition to the Weekender collection. Featuring a silver-tone Super Titanium™ case with a brushed finish, the 41mm timepiece is durable in form and function with its matching bi-directional rotating bezel and triple-link bracelet. On the dial, a sunray orange texture serves as the eye-catching backdrop to highly legible timekeeping elements, while a 3 o'clock date window provides daily utility. Featuring our proprietary Eco-Drive technology – sustainably powered by light, any light. Never needs a battery. Calibre number J810."),
      Watch("CITIZEN", "Perpetual Chrono A-T", "Atomic Timekeeping", 716, "perpetual.png", 
          "The Perpetual Chrono A-T from CITIZEN® is an updated take on an iconic design, with refreshed features and design aesthetic, while maintaining the classic dial for this iconic collection. Features include a tachymeter bezel, perpetual calendar, power reserve indicator, chronograph, atomic timekeeping with synchronized time adjustment in 43 world cities. It has a gold-tone stainless steel bracelet and a 43mm case, with a black dial for a timeless look that can be dressed up or down. Add in Eco-Drive technology for a functional watch that will always be in style."),
      Watch("CITIZEN", "Donald Duck and Crew", "Disney", 525, "donald.png",
          "Time flies when you’re having fun—not to mention a few feathers. It’s hard to believe that 90 years have gone by since Disney Donald Duck first appeared on the big screen in the animated short, “The Little Red Hen.” Introducing a new timepiece marking this milestone featuring the irascible waterfowl as one of the Disney Mickey & Friends crew, including Mickey Mouse, Minnie Mouse, Pluto, Goofy, and, of course, his sweetheart Daisy Duck, all rendered in playful new portraits by Disney artist Jeff Shelly. This celebratory Disney | Citizen watch has vintage vibes, with a cream-coloured dial, drop-shadow numerals, a pale gold-tone stainless steel case, and a brown leather strap with contrast stitching. Also sensational? It’s sustainably powered by any light with Citizen’s proprietary Eco-Drive technology and never needs a battery. © 2024 DISNEY"),
      Watch("Apple", "Apple Watch Series 9", "GPS + Cellular 41mm", 497, "iwatch9.jpg",
      "Smarter. Brighter. Mightier.Our most powerful chip in Apple Watch ever. A magical way to use your Apple Watch without touching the screen. A display that’s twice as bright. And now you can choose a watch case and band combination that’s carbon‑neutral."),
      Watch("Apple", "Apple Watch SE (2nd Gen)", "GPS + Cellular, 44mm", 330, "iwatchse.jpg",
          "Easy ways to stay connected. Motivating fitness metrics. Innovative health and safety features. And carbon-neutral case and band combinations. Apple Watch SE offers totally lovable features at a feel‑good price."),
      Watch("Apple", "Apple Watch Ultra", "GPS + Cellular 49mm", 735.01, "iwatchultra.jpg",
          "The most rugged and capable Apple Watch pushes the limits again. Featuring the all-new S9 SiP. A magical new way to use your watch without touching the screen. The brightest Apple display ever. And now you can choose a case and band combination that is carbon‑neutral."),
      Watch("Samsung", "Galaxy Watch7 Smartwatch", "40mm, Fitness Tracking, BioActive Sensor, Personalized Sleep Coaching", 320.00, "galaxy.jpg",
          "Galaxy AI-powered health insights: Check your daily condition with Energy Score and discover your body’s potential.Personalized Sleep Coaching: Get sleep coaching for restful nights.dvanced Fitness Tracking: Start your next fitness journey.")
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body:
      ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: watchList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Details(watch: watchList[index])
                      )
                  );
                },
                child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Hero(
                          tag: watchList[index].photo,
                          child:
                          Image(
                              width: 125,
                              height: 125,
                              image: AssetImage(
                                "images/${watchList[index].photo}",
                              )
                          ),
                        ),
                        Text(watchList[index].brand),
                        Text(watchList[index].name, style: const TextStyle(fontWeight: FontWeight.bold)),
                        Text("\$${watchList[index].price}", style: const TextStyle(fontWeight: FontWeight.bold))
                      ],)
                  )
                )
            );
          }
      ),
    );
  }
}