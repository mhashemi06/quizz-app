import 'package:quizzz/data/questions.dart';

List<Questions> getQuestions(){
  var firstQuestion = Questions();
  firstQuestion.questionTitle = 'مشهور ترین شعبده‌باز جهان کیست؟';
  firstQuestion.imageNameNumber = '1';
  firstQuestion.correctAnswer = 2;
  firstQuestion.answerList = [
    'امیراحمدادیبی',
    'دیوید کاپرفیلد',
    'هری هودینی',
    'دیوید بلین'
  ];

  var secondQuestion = Questions();
  secondQuestion.questionTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد؟';
  secondQuestion.imageNameNumber = '2';
  secondQuestion.correctAnswer = 0;
  secondQuestion.answerList = ['(شوروی سابق)روسیه', 'آمریکا', 'چین', 'هند'];

  Questions thirdQuestion = Questions();
  thirdQuestion.questionTitle = 'در یک تیم چه چیزی مهم ترین نقش را ایفا می کند؟';
  thirdQuestion.imageNameNumber = '3';
  thirdQuestion.correctAnswer =0;
  thirdQuestion.answerList = ['هدف گذاری واضح',
  'ارتباطات موثر',
    'تخصص های فنی بالا',
    'روحیه تیمی قوی',
  ];

  Questions fourthQuestion = Questions();
  fourthQuestion.questionTitle = 'کدام یک از موارد زیر از اصلی ترین دلایل قرار گرفتن انسان در معرض خطر حمله کوسه است؟';
  fourthQuestion.correctAnswer = 3;
  fourthQuestion.imageNameNumber = '4';
  fourthQuestion.answerList = ['پوشیدن لباس روشن',
    'شنا کردن به همراه گروه',
    'ایجاد صدا و پاشیدن آب',
    'ورود به آب در زمان غروب یا شب',
  ];
  Questions fifthQuestion = Questions();
  fifthQuestion.questionTitle = 'در آب های کم عمق و جریان تند کدام تکنیک ماهیگیری بهترین نتایج را می دهد؟';
  fifthQuestion.correctAnswer = 0;
  fifthQuestion.imageNameNumber = '5';
  fifthQuestion.answerList = ['استفاه از قلاب سنگین و طعمه بزرگ',
    'استفاده از نخ نازک و سبک',
    'پرتاب قلاب به سمت خلاف جریان آب',
    'ثابت نگه داشتن قلاب در بستر آب',
  ];
  Questions sixthQuestion = Questions();
  sixthQuestion.questionTitle = 'نوع بلور کدامیک شبکه ای است؟';
  sixthQuestion.correctAnswer = 1;
  sixthQuestion.imageNameNumber = '6';
  sixthQuestion.answerList = ['نیترات سدیم',
    'کوارتز',
    'آمونیاک',
    'کلرید سدیم',
  ];

  Questions seventhQuestion = Questions();
  seventhQuestion.questionTitle = 'کدام یک از رشته‌های زیر در دوومیدانی به عنوان رشته‌ای استقامتی شناخته می‌شود؟';
  seventhQuestion.correctAnswer = 2;
  seventhQuestion.imageNameNumber = '7';
  seventhQuestion.answerList = ['پرش با ارتفاع',
    ' پرتاب وزنه',
    'دو ماراتن',
    ' پرش طول',
  ];

  Questions eighthQuestion = Questions();
  eighthQuestion.questionTitle = 'کدام یک از موارد زیر، کاربرد اصلی موشک‌های کروز است؟';
  eighthQuestion.correctAnswer = 2;
  eighthQuestion.imageNameNumber = '8';
  eighthQuestion.answerList = ['پرتاب ماهواره',
    'حمل محموله به فضا',
    'حملات دقیق به اهداف زمینی',
    'کتشافات فضایی',
  ];
  Questions ninthQuestion = Questions();
  ninthQuestion.questionTitle = 'کدام یک از موارد زیر، نخستین انسانی بود که بر روی ماه قدم گذاشت؟';
  ninthQuestion.correctAnswer = 2;
  ninthQuestion.imageNameNumber = '9';
  ninthQuestion.answerList = ['یوری گاگارین',
    'نیل آرمسترانگ',
    'آلن شپارد',
    'باز آلدرین',
  ];

  return [firstQuestion, secondQuestion,thirdQuestion,fourthQuestion,fifthQuestion,sixthQuestion,seventhQuestion,eighthQuestion,ninthQuestion];
}