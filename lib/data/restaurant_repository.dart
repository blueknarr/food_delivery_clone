import 'model/menu.dart';
import 'model/restaurant.dart';

class RestaurantRepository {
  List<Restaurant> getRestaurant() {
    return [
      Restaurant(
        id: 1,
        name: '맥도날드 영등포점',
        address: '서울 영등포구 영등포동3가',
        category: 'hamburger',
        about:
            '''미국 일리노이주 시카고에서 탄생한 대표적인 다국적 패스트푸드 프랜차이즈. 패스트푸드 햄버거의 대명사 격으로 쓰이며, 코카콜라, iPhone과 함께 미국식 자본주의와 세계화를 상징하는 트레이드마크가 되었다.[4][5] 전세계에 진출한 맥도날드 메뉴 '빅맥'의 가격을 토대로 물가를 산정하는 빅맥 지수라는 개념이 존재할 정도다.''',
        distance: 3.9,
        rate: 4.1,
        imgUrl:
            'https://d12zq4w4guyljn.cloudfront.net/750_750_20230506045455_photo1_7816a4d17c9e.jpg',
        menu: [
          Menu(
            name: 'McCrispy™ Hot & Cheese',
            price: 6.4,
            gram: 233,
            calorie: 662,
            orderCnt: 0,
            category: 'hamburger',
            imgUrl:
                'https://www.mcdonalds.co.kr/upload/product/pcfile/1685519970482.png',
          ),
          Menu(
            name: 'Big Mac® Meal',
            price: 8.2,
            gram: 403,
            calorie: 1022,
            orderCnt: 0,
            category: 'Mac Lunch',
            imgUrl:
                'https://www.mcdonalds.co.kr/upload/product/pcfile/1631113400879.png',
          ),
          Menu(
            name: 'Coca-Cola',
            price: 1.5,
            gram: 23,
            calorie: 173,
            orderCnt: 0,
            category: 'beverage',
            imgUrl:
                'https://www.mcdonalds.co.kr/upload/product/pcfile/1583889967380.png',
          ),
        ],
      ),
      Restaurant(
        id: 2,
        name: '교촌치킨 영등포역점',
        address: '서울 영등포구 영등포역 앞',
        category: 'chicken',
        about:
            '다른 치킨 브랜드와 달리 간장치킨이 간판 메뉴이자, 이 브랜드를 전국적으로 성공시킨 효자 메뉴다. 1978년 창업한 대구통닭이 간장치킨의 원조이고, 거기서 일하던 직원이 나와 차린 것이 교촌치킨이라는 설이 지역에서는 많이 알려져 있다. 양념치킨이 주로 아이들에게 인기가 있는 반면 간장치킨은 연령에 상관 없이 성인들에게도 인기가 있다. 처음 나왔을 때는 식어도 맛이 그다지 떨어지지 않는다는 점에서 인기를 얻었다. 보통 후라이드 치킨이 식으면 엄청 눅눅해지는 걸 감안하면 말이다.',
        distance: 8.4,
        rate: 4.6,
        imgUrl:
            'https://cdn.thescoop.co.kr/news/photo/202001/37918_51221_4648.jpg',
        menu: [
          Menu(
            name: '웨지감자',
            price: 3.1,
            gram: 423,
            calorie: 121,
            orderCnt: 0,
            category: '사이드',
            imgUrl: 'http://www.kyochon.com/uploadFiles/TB_ITEM/웨지감자_list.png',
          ),
          Menu(
            name: '블랙시크릿콤보',
            price: 12.2,
            gram: 1032,
            calorie: 332,
            orderCnt: 0,
            category: '치킨',
            imgUrl:
                'http://www.kyochon.com/uploadFiles/TB_ITEM/블랙시크릿콤보(S)_list.png',
          ),
          Menu(
            name: '1991 벨지안 위트에일',
            price: 4.5,
            gram: 210,
            calorie: 538,
            orderCnt: 0,
            category: '수제 맥주',
            imgUrl: 'http://www.kyochon.com/uploadFiles/TB_ITEM/위트에일_썸네일.png',
          ),
        ],
      ),
      Restaurant(
        id: 3,
        name: '맥도날드 영등포점',
        address: '서울 영등포구 영등포동3가',
        category: 'hamburger',
        about:
            '''미국 일리노이주 시카고에서 탄생한 대표적인 다국적 패스트푸드 프랜차이즈. 패스트푸드 햄버거의 대명사 격으로 쓰이며, 코카콜라, iPhone과 함께 미국식 자본주의와 세계화를 상징하는 트레이드마크가 되었다.[4][5] 전세계에 진출한 맥도날드 메뉴 '빅맥'의 가격을 토대로 물가를 산정하는 빅맥 지수라는 개념이 존재할 정도다.''',
        distance: 3.9,
        rate: 4.1,
        imgUrl:
            'https://d12zq4w4guyljn.cloudfront.net/750_750_20230506045455_photo1_7816a4d17c9e.jpg',
        menu: [
          Menu(
            name: 'McCrispy™ Hot & Cheese',
            price: 6.4,
            gram: 233,
            calorie: 662,
            orderCnt: 0,
            category: 'hamburger',
            imgUrl:
                'https://www.mcdonalds.co.kr/upload/product/pcfile/1685519970482.png',
          ),
          Menu(
            name: 'Big Mac® Meal',
            price: 8.2,
            gram: 403,
            calorie: 1022,
            orderCnt: 0,
            category: 'Mac Lunch',
            imgUrl:
                'https://www.mcdonalds.co.kr/upload/product/pcfile/1631113400879.png',
          ),
          Menu(
            name: 'Coca-Cola',
            price: 1.5,
            gram: 23,
            calorie: 173,
            orderCnt: 0,
            category: 'beverage',
            imgUrl:
                'https://www.mcdonalds.co.kr/upload/product/pcfile/1583889967380.png',
          ),
        ],
      ),
      Restaurant(
        id: 4,
        name: '교촌치킨 영등포역점',
        address: '서울 영등포구 영등포역 앞',
        category: 'chicken',
        about:
            '다른 치킨 브랜드와 달리 간장치킨이 간판 메뉴이자, 이 브랜드를 전국적으로 성공시킨 효자 메뉴다. 1978년 창업한 대구통닭이 간장치킨의 원조이고, 거기서 일하던 직원이 나와 차린 것이 교촌치킨이라는 설이 지역에서는 많이 알려져 있다. 양념치킨이 주로 아이들에게 인기가 있는 반면 간장치킨은 연령에 상관 없이 성인들에게도 인기가 있다. 처음 나왔을 때는 식어도 맛이 그다지 떨어지지 않는다는 점에서 인기를 얻었다. 보통 후라이드 치킨이 식으면 엄청 눅눅해지는 걸 감안하면 말이다.',
        distance: 8.4,
        rate: 4.6,
        imgUrl:
            'https://cdn.thescoop.co.kr/news/photo/202001/37918_51221_4648.jpg',
        menu: [
          Menu(
            name: '웨지감자',
            price: 3.1,
            gram: 423,
            calorie: 121,
            orderCnt: 0,
            category: '사이드',
            imgUrl: 'http://www.kyochon.com/uploadFiles/TB_ITEM/웨지감자_list.png',
          ),
          Menu(
            name: '블랙시크릿콤보',
            price: 12.2,
            gram: 1032,
            calorie: 332,
            orderCnt: 0,
            category: '치킨',
            imgUrl:
                'http://www.kyochon.com/uploadFiles/TB_ITEM/블랙시크릿콤보(S)_list.png',
          ),
          Menu(
            name: '1991 벨지안 위트에일',
            price: 4.5,
            gram: 210,
            calorie: 538,
            orderCnt: 0,
            category: '수제 맥주',
            imgUrl: 'http://www.kyochon.com/uploadFiles/TB_ITEM/위트에일_썸네일.png',
          ),
        ],
      ),
      Restaurant(
        id: 5,
        name: '맥도날드 영등포점',
        address: '서울 영등포구 영등포동3가',
        category: 'hamburger',
        about:
            '''미국 일리노이주 시카고에서 탄생한 대표적인 다국적 패스트푸드 프랜차이즈. 패스트푸드 햄버거의 대명사 격으로 쓰이며, 코카콜라, iPhone과 함께 미국식 자본주의와 세계화를 상징하는 트레이드마크가 되었다.[4][5] 전세계에 진출한 맥도날드 메뉴 '빅맥'의 가격을 토대로 물가를 산정하는 빅맥 지수라는 개념이 존재할 정도다.''',
        distance: 3.9,
        rate: 4.1,
        imgUrl:
            'https://d12zq4w4guyljn.cloudfront.net/750_750_20230506045455_photo1_7816a4d17c9e.jpg',
        menu: [
          Menu(
            name: 'McCrispy™ Hot & Cheese',
            price: 6.4,
            gram: 233,
            calorie: 662,
            orderCnt: 0,
            category: 'hamburger',
            imgUrl:
                'https://www.mcdonalds.co.kr/upload/product/pcfile/1685519970482.png',
          ),
          Menu(
            name: 'Big Mac® Meal',
            price: 8.2,
            gram: 403,
            calorie: 1022,
            orderCnt: 0,
            category: 'Mac Lunch',
            imgUrl:
                'https://www.mcdonalds.co.kr/upload/product/pcfile/1631113400879.png',
          ),
          Menu(
            name: 'Coca-Cola',
            price: 1.5,
            gram: 23,
            calorie: 173,
            orderCnt: 0,
            category: 'beverage',
            imgUrl:
                'https://www.mcdonalds.co.kr/upload/product/pcfile/1583889967380.png',
          ),
        ],
      ),
      Restaurant(
        id: 6,
        name: '교촌치킨 영등포역점',
        address: '서울 영등포구 영등포역 앞',
        category: 'chicken',
        about:
            '다른 치킨 브랜드와 달리 간장치킨이 간판 메뉴이자, 이 브랜드를 전국적으로 성공시킨 효자 메뉴다. 1978년 창업한 대구통닭이 간장치킨의 원조이고, 거기서 일하던 직원이 나와 차린 것이 교촌치킨이라는 설이 지역에서는 많이 알려져 있다. 양념치킨이 주로 아이들에게 인기가 있는 반면 간장치킨은 연령에 상관 없이 성인들에게도 인기가 있다. 처음 나왔을 때는 식어도 맛이 그다지 떨어지지 않는다는 점에서 인기를 얻었다. 보통 후라이드 치킨이 식으면 엄청 눅눅해지는 걸 감안하면 말이다.',
        distance: 8.4,
        rate: 4.6,
        imgUrl:
            'https://cdn.thescoop.co.kr/news/photo/202001/37918_51221_4648.jpg',
        menu: [
          Menu(
            name: '웨지감자',
            price: 3.1,
            gram: 423,
            calorie: 121,
            orderCnt: 0,
            category: '사이드',
            imgUrl: 'http://www.kyochon.com/uploadFiles/TB_ITEM/웨지감자_list.png',
          ),
          Menu(
            name: '블랙시크릿콤보',
            price: 12.2,
            gram: 1032,
            calorie: 332,
            orderCnt: 0,
            category: '치킨',
            imgUrl:
                'http://www.kyochon.com/uploadFiles/TB_ITEM/블랙시크릿콤보(S)_list.png',
          ),
          Menu(
            name: '1991 벨지안 위트에일',
            price: 4.5,
            gram: 210,
            calorie: 538,
            orderCnt: 0,
            category: '수제 맥주',
            imgUrl: 'http://www.kyochon.com/uploadFiles/TB_ITEM/위트에일_썸네일.png',
          ),
        ],
      ),
    ];
  }
}
