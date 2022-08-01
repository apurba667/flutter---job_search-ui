class UserModel {
  String? company, logoUrl, location, time, title;
  bool? isMark;
  List<String>? reg;
  UserModel(
      {this.location,
      this.company,
      this.reg,
      this.time,
      this.logoUrl,
      this.isMark,
      this.title});
}

List<UserModel> myList = [
  UserModel(
    company: 'Airbnb Inc',
    logoUrl: 'assets/images/airbnb_logo.png',
    isMark: false,
    title: 'Principal Product Design',
    location: '417 Marion , New York\nUnited States',
    time: 'Full Time',
    reg: [
      'Bachelors degree in industrial design, manufacturing, engineering, or a related field',
      'A creative eye, good imagination, and vision',
      'A firm grasp of market trends and consumer preferences',
      'Practical experience using computer-aided design software',
      'Good technical and IT skills'
    ],
  ),
  UserModel(
    company: 'Google LLC',
    logoUrl: 'assets/images/google_logo.png',
    isMark: false,
    title: 'Principal Product Design',
    location: '417 Marion , New York\nUnited States',
    time: 'Full Time',
    reg: [
      'Bachelors degree in industrial design, manufacturing, engineering, or a related field.',
      'A creative eye, good imagination, and vision.',
      'A firm grasp of market trends and consumer preferences.',
      'Practical experience using computer-aided design software.',
      'Good technical and IT skills.'
    ],
  ),
  UserModel(
    company: 'Google LLC',
    logoUrl: 'assets/images/google_logo.png',
    isMark: false,
    title: 'Principal Product Design',
    location: '417 Marion , New York\nUnited States',
    time: 'Full Time',
    reg: [
      'Bachelors degree in industrial design, manufacturing, engineering, or a related field.',
      'A creative eye, good imagination, and vision.',
      'A firm grasp of market trends and consumer preferences.',
      'Practical experience using computer-aided design software.',
      'Good technical and IT skills.'
    ],
  )
];
