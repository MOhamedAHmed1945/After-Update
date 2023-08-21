class DataNewsModel {
  String newsImage;
  String newsTitle;
  String newsDescription;
  String newsTime;

  DataNewsModel({
    this.newsImage =
        //'https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?pid=ImgDet&rs=1',
        'assets/images/Business.jpeg',
    this.newsTitle = 'Beyond Big Tech: Alternative ways to invest in A.I., according to two ETF experts',
    this.newsTime = '07 May  07:19',
    this.newsDescription =
        'The idea of establishing Al Ahly came in the first 10 years of the 20th century and was firstly raised by Omar Lotfy who was a student in the Egyptian Law School during his presidency of the High School Students Club, which was established in 1905. The establishment of a club for high school students was for political reasons, and the students needed a sports club to gather them for leisure and exercise.',
  });

/*
  factory DataNewsModel.fromJson(jsonData) {
    return DataNewsModel(
      productId: jsonData['id'],
      productName: jsonData['pro_name'],
      productPrice: jsonData['price'],
      productDescription: jsonData['description'],
      productImage: jsonData['image'],
      productState: jsonData['stock'],
    );
  }
*/
}

List<DataNewsModel> allNews = [
  DataNewsModel(
    newsTitle: 'Beyond Big Tech: Alternative ways to invest in A.I., according to two ETF experts',
    newsTime: '07 May  07:19',
    newsImage:
        // 'https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?pid=ImgDet&rs=1',
        'assets/images/World.jpeg',
    newsDescription:
        'The idea of establishing Al Ahly came in the first 10 years of the 20th century and was firstly raised by Omar Lotfy who was a student in the Egyptian Law School during his presidency of the High School Students Club, which was established in 1905. The establishment of a club for high school students was for political reasons, and the students needed a sports club to gather them for leisure and exercise.',
  ),
  DataNewsModel(
    newsTitle: 'FDA Approves Zurzuvae, First Pill For Postpartum Depression, What You Need To Know',
    newsTime: '07 May  07:19',
    newsImage:
        //'https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?pid=ImgDet&rs=1',
        'assets/images/World.jpeg',
    newsDescription:
        'The idea of establishing Al Ahly came in the first 10 years of the 20th century and was firstly raised by Omar Lotfy who was a student in the Egyptian Law School during his presidency of the High School Students Club, which was established in 1905. The establishment of a club for high school students was for political reasons, and the students needed a sports club to gather them for leisure and exercise.',
  ),
  DataNewsModel(
    newsTitle: 'Billion-Year Data Archive Expands Beyond Moon: Next Stop, Mars',
    newsTime: '07 May  07:19',
    newsImage: 'assets/images/World.jpeg',
    //'https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?pid=ImgDet&rs=1',
    newsDescription:
        'The idea of establishing Al Ahly came in the first 10 years of the 20th century and was firstly raised by Omar Lotfy who was a student in the Egyptian Law School during his presidency of the High School Students Club, which was established in 1905. The establishment of a club for high school students was for political reasons, and the students needed a sports club to gather them for leisure and exercise.',
  ),
  DataNewsModel(
    newsTitle: 'Polestar 2 vs. Tesla Model 3: Which Affordable Premium EV Is Best?',
    newsTime: '07 May  07:19',
    newsImage: 'assets/images/World.jpeg',
    //'https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?pid=ImgDet&rs=1',
    newsDescription:
        'The idea of establishing Al Ahly came in the first 10 years of the 20th century and was firstly raised by Omar Lotfy who was a student in the Egyptian Law School during his presidency of the High School Students Club, which was established in 1905. The establishment of a club for high school students was for political reasons, and the students needed a sports club to gather them for leisure and exercise.',
  ),
  DataNewsModel(
    newsTitle: 'Elon Musk Reacts As Tesla Competitor Nikolas Shares Slump',
    newsTime: '07 May  07:19',
    newsImage: 'assets/images/World.jpeg',
    //'https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?pid=ImgDet&rs=1',
    newsDescription:
        'The idea of establishing Al Ahly came in the first 10 years of the 20th century and was firstly raised by Omar Lotfy who was a student in the Egyptian Law School during his presidency of the High School Students Club, which was established in 1905. The establishment of a club for high school students was for political reasons, and the students needed a sports club to gather them for leisure and exercise.',
  ),
  DataNewsModel(
    newsTitle: 'Elon Musk touts short-term Treasurys as a echoing Warren Buffett and Bill Ackman',
    newsTime: '07 May  07:19',
    newsImage: 'assets/images/World.jpeg',
    //'https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?pid=ImgDet&rs=1',
    newsDescription:
        'The idea of establishing Al Ahly came in the first 10 years of the 20th century and was firstly raised by Omar Lotfy who was a student in the Egyptian Law School during his presidency of the High School Students Club, which was established in 1905. The establishment of a club for high school students was for political reasons, and the students needed a sports club to gather them for leisure and exercise.',
  ),
];
