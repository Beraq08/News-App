import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'CategoryScreen.dart';
import 'NewsDetailsScreen.dart';
import 'widgets/my_flutter_app_icons.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class NewsItem {
  final String category;
  final String title;
  final String subtitle;
  final String text;
  final String writer;
  final String writerimageUrl;
  final String date;
  final String imageUrl;

  NewsItem({
    required this.category,
    required this.title,
    required this.subtitle,
    required this.text,
    required this.writer,
    required this.writerimageUrl,
    required this.date,
    required this.imageUrl,
  });
}

List<NewsItem> newsItems = [
  NewsItem(
    category: 'Sports',
    title: 'Southgate stands on brink of glorious vindication',
    subtitle:
        "England manager Gareth Southgate stands on the brink of glorious vindication as a Euro 2024 campaign in which he has been pelted with beer cups and criticism offers up the prospect of a place in history.",
    text:
        "England's journey to the Euro 2024 final was marked by dramatic moments and bold decisions by manager Gareth Southgate. The semi-final against the Netherlands saw Ollie Watkins score a last-minute winner, securing a spot in the final against Spain. Southgate's substitutions, including replacing captain Harry Kane with Watkins, paid off despite initial criticism. The match, held in stormy conditions in Dortmund, had England equalizing through a controversial penalty by Kane and surviving Dutch pressure. Southgate's leadership, questioned by some fans, has brought England to their second consecutive Euros final and a chance to end their long wait for a major tournament win since 1966.",
    writer: "Phil McNulty",
    writerimageUrl:
        "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT9rEDTN7e7QKOqAdFBBBRKe-QZEDGnlkmqyz_g1Y9wtBVQlNjo",
    date: '5 Jul 2024',
    imageUrl:
        'https://media.cnn.com/api/v1/images/stellar/prod/ap24192762304566.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp',
  ),
  NewsItem(
    category: 'Technology',
    title: 'Samsung becomes first tech giant to launch a smart ring',
    subtitle:
        "Samsung is hoping to lure fitness and health-tracking technology lovers with its newest wearable device - the Galaxy Ring.",
    text:
        "Samsung introduced the Galaxy Ring at its Galaxy Unpacked event, aiming to attract fitness and health-tracking enthusiasts. This smart ring, which uses tiny sensors to monitor health metrics, is part of Samsung's push to integrate artificial intelligence across its device ecosystem. While smart rings have been niche, Samsung's entry into the market marks a significant move, with the company being the largest tech firm to do so.Analyst Ben Wood from CCS Insight notes that smart rings, projected to reach a global market of four million units by 2025, are still a small segment compared to the 250 million smartwatches expected to sell. However, analyst Francisco Jeronimo from IDC believes Samsung's involvement could mainstream smart rings, making them more familiar to consumers.The Galaxy Ring can track heart rate, sleep, and menstrual cycles, competing with current market leader Oura. James Kitto of Samsung's UK & Ireland division highlights the ring's discreetness and 24/7 health tracking capabilities. While smartwatches generally offer more sensors, smart rings provide a less intrusive and stylish alternative, particularly for sleep tracking.The Galaxy Ring is compatible with Android phones running Android 11 or above, requiring the Samsung Health app, with certain features exclusive to Galaxy devices. Dr. Efpraxia Zamani from Durham University points out the potential appeal of integrating the ring into Samsung's broader health-focused ecosystem but cautions about data privacy concerns, especially with sensitive health data like menstrual cycles.",
    writer: "Liv McMahon & Imran Rahman-Jones",
    writerimageUrl:
        "https://irahmanjones.com/wp-content/uploads/2019/06/cropped-cropped-dsc_0643-7.jpg",
    date: '5 Apr 2024',
    imageUrl:
        'https://ichef.bbci.co.uk/news/1536/cpsprodpb/2917/live/d4e1c950-3ebe-11ef-b8a1-27a1f0efda24.jpg.webp',
  ),
  NewsItem(
    category: 'Fashion',
    title:
        'The rise of the AI beauty pageant and its complicated quest for the ‘perfect’ woman',
    subtitle:
        "Ten women participating in a beauty pageant is nothing new. Some pose candidly, some play to the camera, their beauty forever frozen in this moment in time. Like many other pageants held in countries around the world, the contestants are young, thin and embody many of the standards defining traditional “beauty.”",
    text:
        "The 'Miss AI' beauty pageant features 10 AI-generated contestants, created using programs like OpenAI’s DALL-E 3, Midjourney, or Stable Diffusion. These AI avatars, chosen from over 1,500 entries, are showcased to demonstrate and demystify AI's capabilities. However, the pageant has sparked concerns about perpetuating unrealistic beauty standards, racial, and gender stereotypes.Each AI contestant has a unique personality and promotes various causes, such as LGBTQ rights and environmental issues. Despite this, most avatars resemble traditional beauty norms: White, thin, and symmetrical. Critics argue that AI reflects existing societal biases, while supporters see it as an opportunity to promote diversity and authenticity in beauty standards.The pageant's organizers emphasize that entrants are judged on more than appearance, including their creators’ use of AI tools and social media influence. Some avatars, like Seren Ay and Aitana López, have been used as marketing tools, akin to human influencers, and have amassed significant social media followings.The competition, sponsored by Fanvue, a platform similar to OnlyFans, also highlights the importance of understanding the data used to train AI, especially in contexts like adult entertainment. Advocates hope that AI can challenge and diversify beauty norms more rapidly than traditional media.",
    writer: "Issy Ronald",
    writerimageUrl:
        "https://media.licdn.com/dms/image/C5603AQEbL3Oefi_hEg/profile-displayphoto-shrink_800_800/0/1609509265682?e=1726704000&v=beta&t=XJmsNGq_uZ04AoVi0W2VXNwonxNHic68llu4qF3jEI8",
    date: '27 Jun 2024',
    imageUrl:
        'https://media.cnn.com/api/v1/images/stellar/prod/serenay.jpg?q=w_1160,c_fill/f_webp',
  ),
  NewsItem(
    category: 'Business',
    title: 'China rocked by cooking oil contamination scandal',
    subtitle:
        "The Chinese government says it will investigate allegations that fuel tankers have been used to transport cooking oil after carrying toxic chemicals without being cleaned properly between loads.",
    text:
        "The Chinese government is investigating allegations that fuel tankers have been improperly used to transport cooking oil without proper cleaning between loads. This issue, reported by state-run Beijing News, has ignited concerns about food contamination on social media. Users expressed outrage over the widespread practice, described by some in the industry as an 'open secret'.The controversy has become a top trending topic on Chinese social media, with comparisons made to the 2008 Sanlu milk scandal. Major companies, including Sinograin and Hopefull Grain and Oil Group, are implicated. Sinograin is investigating compliance with food safety regulations and suspending the use of any non-compliant trucks, while Hopefull Grain is conducting a 'thorough self-inspection'.The Chinese government has pledged to punish those involved and publish the investigation's findings. Both Hebei and Tianjin provincial governments are also examining the matter.",
    writer: "João da Silva",
    writerimageUrl:
        "https://pbs.twimg.com/profile_images/1647072860714995712/Ag_CD4FM_400x400.jpg",
    date: '7 Jul 2024',
    imageUrl:
        'https://ichef.bbci.co.uk/news/1536/cpsprodpb/ae58/live/1b53ab70-3e87-11ef-b9bf-355123e5252a.jpg.webp',
  ),
  NewsItem(
    category: 'Travel',
    title: 'The perfect beach that Instagram didn\'t ruin',
    subtitle:
        "When the tide is out and the weather conditions are just right, the shores of Fukutsu transform into a 3km, crystal-clear mirror.",
    text:
        "Fukutsu, a coastal city in Japan's Fukuoka prefecture, is renowned for its 3km 'Sea Mirror' phenomenon, where the beach reflects the sky when tide and weather conditions are ideal. Local Rumi Nakamura, now part of the tourism board, helps promote this natural beauty, which has drawn significant attention on social media.The Sea Mirror gained popularity during the COVID-19 pandemic, offering a spacious outdoor escape. Despite the influx of tourists, Fukutsu's beaches remain pristine due to diligent local efforts. Residents and non-profit organizations regularly clean the beaches, maintaining their cleanliness and preserving the environment.Fukutsu is also a breeding ground for endangered loggerhead sea turtles. To protect these turtles, locals discourage nighttime beach visits and emphasize proper waste disposal. Visitors are encouraged to participate in clean-up activities, supported by the tourism office.The community's commitment to environmental conservation is evident, with numerous local initiatives and eco-certified shops. Nakamura and other residents hope to share Fukutsu's beauty and inspire visitors to contribute to its preservation.",
    writer: "Cassandra Lord",
    writerimageUrl:
        "https://media.licdn.com/dms/image/D5622AQGN6bMWR3bvpw/feedshare-shrink_2048_1536/0/1696553514240?e=1724284800&v=beta&t=PZU1ldnl74A8XD4_CB_hp9GMFmZNYJKryNjdQ1_ANxk",
    date: '11 Jul 2024',
    imageUrl: 'https://ichef.bbci.co.uk/images/ic/1376xn/p0j87ylq.jpg.webp',
  ),
  NewsItem(
    category: 'Culture',
    title:
        'Ida Hammershøi: The identity of art\'s most famous \'faceless woman\'',
    subtitle:
        "Danish artist Vilhelm Hammershøi's paintings had a recurring figure: a mysterious woman with her back turned. Here, through letters and photos, her moving, sadness-tinged story is revealed.",
    text:
        "Vilhelm Hammershøi's paintings often feature a mysterious woman with her back turned, who is revealed to be his wife, Ida Ilsted. His 1901 painting 'Interior in Strandgade, Sunlight on the Floor' exemplifies his focus on light rather than human subjects. Hammershøi's works, admired for their modernity and prefiguring later artistic movements, frequently depict his home in Copenhagen. Ida appears in about 100 of his paintings, often with her back to the viewer, adding to the enigmatic nature of their relationship.Hammershøi's paintings did not fit neatly into any artistic 'isms' contributing to his initial obscurity. He and Ida lived reclusively in Copenhagen, focusing on his art rather than social engagements. His paintings of lone women were inspired by artists like Vermeer and Caspar David Friedrich, and they reflect a minimalist, introspective style.Ida's background reveals a troubled family life, with a mentally ill mother. Hammershøi's engagement to Ida was partly to rescue her from this environment. They traveled together frequently, always returning to their quiet life in Copenhagen. Ida supported Hammershøi's work, and their relationship seemed characterized by mutual devotion, though details are sparse.Hammershøi's dedication to his art, painting slowly and meticulously, likely influenced their decision not to have children. His final portrait of Ida in 1907 reflects the challenges they faced, including a wrongful arrest in Rome and Ida's health issues. After Hammershøi's death, Ida lived quietly until her death in 1949, listed as a suicide, though it is believed she refused treatment for an illness.The exhibition 'Vilhelm Hammershøi Silence' at Hauser & Wirth in Basel and an accompanying book explore Hammershøi's life and work, highlighting the enduring mystery and emotional depth of his paintings, especially those featuring Ida.",
    writer: "Lucy Davies",
    writerimageUrl:
        "https://media.licdn.com/dms/image/D4E03AQGO7z6Bxeicwg/profile-displayphoto-shrink_200_200/0/1706889806813?e=2147483647&v=beta&t=GOW6NAOtJuwgAbaiDJIBFWMPhT-vZGdFljKohXPbaJM",
    date: '11 Jul 2024',
    imageUrl: 'https://ichef.bbci.co.uk/images/ic/1920xn/p0j9m5gc.jpg.webp',
  ),
  NewsItem(
    category: 'Sports',
    title:
        'Amid shelling and blackouts, this is how Ukrainian athletes have been preparing for the Olympics',
    subtitle:
        "The memory of Russia invading Ukraine on February 24, 2022, is lodged in Ukrainian Olympic diver Anna Pysmenska’s mind.“When the invasion happened at 4 a.m., I was so shocked and didn’t know what to do, so at 7 a.m., I went to the swimming pool to train,” the 33-year-old told CNN Sport. “It was very scary.”",
    text:
        "Anna Pysmenska, a Ukrainian Olympic diver, vividly recalls the shock of Russia's invasion of Ukraine in February 2022, which disrupted her training and life. Despite the ongoing war and constant stress from bombings and blackouts, Pysmenska remains determined to compete at her third Olympics in Paris. She and her teammates face challenges such as frequent interruptions during training due to air raid sirens, necessitating shelter breaks. Despite these hardships, their goal remains clear: to represent Ukraine strongly and achieve top-level success in diving at the 2024 Olympics, showcasing their resilience amid adversity.",
    writer: "Daria Tarasova",
    writerimageUrl:
        "https://pbs.twimg.com/profile_images/1506714131151429646/Q1jcoO1z_400x400.jpg",
    date: '17 Jul 2024',
    imageUrl:
        'https://media.cnn.com/api/v1/images/stellar/prod/6-20240712185914122.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp',
  ),
  NewsItem(
    category: 'Technology',
    title: 'Olympic esports will level the playing field, says boss',
    subtitle:
        "The Olympic Esports Games will put gaming 'at the same level as the Winter and Summer Olympics', according to the boss of one of the world's biggest teams.This week the International Olympics Committee announced a 12-year partnership with Saudi Arabia to stage the standalone event",
    text:
        "The International Olympic Committee has announced a 12-year partnership with Saudi Arabia to host a standalone Olympic Esports Games, aiming to elevate gaming to the level of the traditional Summer and Winter Olympics. Alban Dechelotte, CEO of G2 Esports, highlights the event's focus on equal participation of male and female gamers, aiming to attract younger audiences and celebrate esports globally. While specific games haven't been confirmed, past events featured titles like Rocket League and League of Legends, with debates ongoing about including first-person shooters like Call of Duty. Concerns over human rights and gender representation persist, but organizers promise inclusivity and equality in future events.",
    writer: "Andrew Rogers",
    writerimageUrl:
        "https://pbs.twimg.com/profile_images/1663629366335553536/hKbXal1t_400x400.jpg",
    date: '16 Jul 2024',
    imageUrl:
        'https://ichef.bbci.co.uk/news/1536/cpsprodpb/aa15/live/4c81d300-4361-11ef-b362-7fae70c22de6.jpg.webp',
  ),
  NewsItem(
    category: 'Fashion',
    title:
        '‘They just won the Olympics’: Internet goes wild for Mongolia’s Paris 2024 outfits',
    subtitle:
        "Move over Lululemon, Berluti and Ralph Lauren. The internet has chosen its new favorite national uniform at the forthcoming Paris 2024 Olympics: Mongolia’s.Featuring intricately embroidered vests, pleated robes and accessories inspired by traditional attire, the country’s opening and closing ceremony outfits have taken social media by storm since being unveiled last week.",
    text:
        "For the Paris 2024 Olympics, Mongolia's national uniforms, designed by Michel&Amazonka, have captivated social media with their intricate embroidery and traditional-inspired details. The outfits feature vests, robes, and accessories adorned with Mongolian national colors and symbols like the Soyombo. Praised for their cultural expression and craftsmanship, each outfit took around 20 hours to create. Michel&Amazonka, known for blending tradition with contemporary flair, previously designed uniforms for Mongolia in the Beijing 2022 Winter Olympics and Tokyo 2020 Summer Olympics. Mongolia, historically successful in judo and boxing, sends over 30 athletes across nine sports to this year's games.",
    writer: "Oscar Holland",
    writerimageUrl:
        "https://media.licdn.com/dms/image/C4E03AQGi_S3tCZKOGA/profile-displayphoto-shrink_200_200/0/1623919013364?e=2147483647&v=beta&t=J0LNThyS2X46p-96hSPfW8COJmLA9-SKj38UzGMF0xs",
    date: '12 Jul 2024',
    imageUrl:
        'https://media.cnn.com/api/v1/images/stellar/prod/image00012.jpg?q=w_1480,c_fill/f_webp',
  ),
  NewsItem(
    category: 'Business',
    title: 'Musk to move SpaceX and X HQ over gender identity law',
    subtitle:
        "Billionaire Elon Musk has said he will move the headquarters of two of his most high-profile companies, rocket firm SpaceX and social media platform X, from California to Texas.",
    text:
        "Elon Musk has announced plans to relocate the headquarters of SpaceX and X (formerly Twitter) from California to Texas, citing objection to new laws in California, particularly one concerning school policies on disclosing information about children's gender identity. Musk, a resident of Texas, views the law as infringing on family matters. He has criticized California's legislative environment and sees Texas, which offers no income tax, as more favorable for business. This decision follows Musk's prior move of Tesla's headquarters to Texas in 2021. The move has sparked debate over privacy rights and parental involvement in children's issues.",
    writer: "Natalie Sherman",
    writerimageUrl:
        "https://media.licdn.com/dms/image/C4D03AQE7Syq3Wrmuqg/profile-displayphoto-shrink_800_800/0/1516980739167?e=1726704000&v=beta&t=HAyxSdQ_mSF9wDoZgwQpY5A7iWIXYxtqh0TD_aGgDyw",
    date: '7 Jul 2024',
    imageUrl:
        'https://ichef.bbci.co.uk/news/1536/cpsprodpb/742b/live/cf5aaa80-43b2-11ef-99f6-898c378ffefd.jpg.webp',
  ),
  NewsItem(
    category: 'Travel',
    title: "The Erie Canal: The manmade waterway that transformed the US",
    subtitle:
        "Two hundred years ago, it helped spread people, ideas and goods across the US. Now, it's become a paddler's paradise with more than 700 miles of continuous, navigable waterways.",
    text:
        "The Erie Canal, a historic engineering marvel spanning 363 miles across upstate New York, celebrates its bicentennial in 2025. Originally vital for commerce, it connected the Great Lakes to New York City, transforming trade and settlement in the US. Now a recreational hotspot, the canal hosts programs like 'On the Canals', offering kayaking and cultural activities. Paddlers enjoy its scenic waters, historic locks, and interactions with local communities, making it a journey rich in history, natural beauty, and personal discovery.",
    writer: "Robin Catalano",
    writerimageUrl:
        "https://media.muckrack.com/profile/images/11181892/robin-catalano.jpeg.256x256_q100_crop-smart.jpg",
    date: '16 Jul 2024',
    imageUrl: 'https://ichef.bbci.co.uk/images/ic/1920xn/p0jblp92.jpg.webp',
  ),
  NewsItem(
    category: 'Culture',
    title: "Adele says she will take a 'big break' from music",
    subtitle:
        "Adele has revealed she plans to take an extended break from music after her current run of concerts.",
    text:
        "Adele plans to take an extended break from music after her current Las Vegas residency and Munich concert series, citing emotional exhaustion and a desire to explore other creative pursuits. Despite enjoying performing, she admits feeling drained by the emotional intensity of her shows. Recently, she confronted an audience member at a concert, expressing frustration. Adele appreciates the connection with fans but finds fame challenging, expressing a longing for anonymity. Her upcoming Munich residency promises a grand-scale experience, including record-breaking elements, but ticket sales have not fully sold out.",
    writer: "Mark Savage",
    writerimageUrl:
        "data:image/jpeg;base64,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",
    date: '17 Jul 2024',
    imageUrl:
        'https://ichef.bbci.co.uk/news/1536/cpsprodpb/afd8/live/62545d00-4416-11ef-a173-650f2ea14a44.jpg.webp',
  ),
];

class HomeScreen extends StatelessWidget {
  final PageController pageController = PageController();
  final String? selectedCategory;

  HomeScreen({this.selectedCategory});

  void clearCategoryFilter(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Filter news items by selected category if any
    List<NewsItem> filteredNewsItems = selectedCategory == null
        ? newsItems
        : newsItems.where((item) => item.category == selectedCategory).toList();
    filteredNewsItems.sort((a, b) {
      DateTime dateA = DateFormat('d MMM yyyy', 'en').parse(a.date);
      DateTime dateB = DateFormat('d MMM yyyy', 'en').parse(b.date);
      return dateB.compareTo(dateA); // Yeniden eskiye doğru sırala
    });

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 38, 0, 46),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffffef00),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Text(
          "NEWS",
          style: TextStyle(
            fontFamily: "Oswald",
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Color(0xff000000),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Color(0xff212435),
            size: 24,
          ),
          onPressed: () async {
            final selectedCategory = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CategoryScreen()),
            );
            if (selectedCategory != null) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(
                    selectedCategory: selectedCategory,
                  ),
                ),
              );
            }
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.zero,
                        child: SizedBox(
                          height: 200,
                          width: 250,
                          child: Stack(
                            children: [
                              PageView.builder(
                                controller: pageController,
                                scrollDirection: Axis.horizontal,
                                itemCount: filteredNewsItems.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  NewsDetailsScreen(
                                                    newsItem: filteredNewsItems[
                                                        index],
                                                  )));
                                    },
                                    child: Image.network(
                                      filteredNewsItems[index].imageUrl,
                                      height: 200,
                                      width: 250,
                                      fit: BoxFit.cover,
                                    ),
                                  );
                                },
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 15),
                                  child: SmoothPageIndicator(
                                    controller: pageController,
                                    count: filteredNewsItems.length,
                                    axisDirection: Axis.horizontal,
                                    effect: SlideEffect(
                                      dotColor: Color.fromARGB(255, 38, 0, 46),
                                      activeDotColor: Color(0xffffef00),
                                      dotHeight: 16,
                                      dotWidth: 16,
                                      radius: 16,
                                      spacing: 8,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Latest News",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontFamily: "Oswald",
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          color: Color(0xffffef00),
                        ),
                      ),
                      if (selectedCategory != null)
                        TextButton(
                            onPressed: () {
                              clearCategoryFilter(context);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  MyFlutterApp.highlight_off,
                                  color: Color(0xffffef00),
                                  size: 18,
                                ),
                                Text(
                                  selectedCategory!,
                                  style: TextStyle(color: Color(0xffffef00)),
                                ),
                              ],
                            )),
                    ],
                  ),
                  ListView.builder(
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: filteredNewsItems.length,
                    itemBuilder: (context, index) {
                      final newsItem = filteredNewsItems[index];
                      return Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    newsItem.category,
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontFamily: "Oswald",
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xffffef00),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 4, 0, 8),
                                    child: Text(
                                      newsItem.title,
                                      textAlign: TextAlign.start,
                                      maxLines: 3,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontFamily: "Oswald",
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xc17cb160),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    newsItem.date,
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontFamily: "Oswald",
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      color: Color(0xffffef00),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => NewsDetailsScreen(
                                              newsItem: newsItem,
                                            )));
                              },
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image(
                                    image: NetworkImage(newsItem.imageUrl),
                                    height: 90,
                                    width: 90,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
