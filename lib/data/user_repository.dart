import 'model/user.dart';

class UserRepository {
  User getUsers() {
    return User(
      id: 1,
      name: '아이유',
      address: '서울시 여의도 KBS 본관',
      orderTime: DateTime.now(),
      imgUrl:
          'https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/202305/12/e53dd2d7-5c8f-42c1-bc2a-2a12157191b1.jpg',
    );
  }
}
