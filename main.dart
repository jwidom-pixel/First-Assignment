import 'dart:io';

int inputInt = 0;
String input = '0';
var productList = ['A : 인어의 눈물', 'B : 용사의 검', 'C : 연금술사의 저울', 'D : 마녀의 손', 'E : 사신의 모래시계'];
var menu = ['[1] 상품 목록 보기', '[2] 장바구니에 담기', '[3] 장바구니에 담긴 상품의 총 가격 보기','[4] 장바구니 비우기', '[5] 프로그램 종료'];
var productmenu = ['[1] 상품 자세히 보기', '[2] 장바구니에 담기', '[3] 장바구니에 담긴 상품의 총 가격 보기','[4] 장바구니 비우기', '[5] 프로그램 종료'];
List purchase = [0,0,0,0,0];
Map <String,int> sum = {'A':500,'B':5,'C':800,'D':3000,'E':10000};

void main() {
  String bar = '-';
  for (var i = 0; i<60; i++){
    bar +='-';
  }
  print('이세계 상점에 오신 것을 환영합니다.');
  sleep(Duration(seconds: 1));
  print('어떤 것을 도와드릴까요?');
  sleep(Duration(seconds: 1));

  print(bar);
  print(menu[0]); 
  print(menu[1]); 
  print(menu[2]); 
  print(menu[3]); 
  print(menu[4]);
  print(bar);
  sleep(Duration(milliseconds: 300));

  while (inputInt == 0) {
    stdout.write('이용하실 메뉴의 번호를 입력하세요.');
    String? input = stdin.readLineSync()!;
    var inputInt = int.parse(input);

    switch (inputInt) {
      
      case 1:
        sleep(Duration(milliseconds: 500));
          print(productList);
        sleep(Duration(milliseconds: 500));
        for (var i = 0; i<3; i++){
        print('.');
        sleep(Duration(milliseconds: 500));}
       inputInt = 0;
      break;
      
      case 2:
       stdout.write('장바구니에 담을 물품의 알파벳 대문자를 입력하세요.');
       String? buyproduct = stdin.readLineSync()!;
       switch (buyproduct) {
        case 'A':
        print(bar);
        sleep(Duration(milliseconds: 500));
        print('인어의 눈물');
        sleep(Duration(milliseconds: 500));
        print('500G');
        sleep(Duration(milliseconds: 500));
        print('깊은 산 속 호수에 사는 인어가 흘린 눈물입니다.');
        sleep(Duration(milliseconds: 500));
        print('반짝이는 결정체가 햇빛에 반사되어 무지갯빛으로 빛납니다.');
        sleep(Duration(milliseconds: 500));
        print(bar);
        sleep(Duration(milliseconds: 500));

        stdout.write('몇 개를 담으시겠습니까?');
        String? purchasenum = stdin.readLineSync()!;
        var purchasenumInt = int.parse(purchasenum);
        purchase[0] += purchasenumInt;
        purchasenumInt=0;
        inputInt=0;
        break;
        
        case 'B':
        print(bar);
        sleep(Duration(milliseconds: 500));
        print('용사의 검');
        sleep(Duration(milliseconds: 500));
        print('5G');
        sleep(Duration(milliseconds: 500));
        print('마왕에게 도전한 용사들이 남긴 검입니다.');
        sleep(Duration(milliseconds: 500));
        print('낡고 녹슬어 별 쓸모가 없습니다.');
        sleep(Duration(milliseconds: 500));
        print(bar);
        sleep(Duration(milliseconds: 500));

        stdout.write('몇 개를 담으시겠습니까?');
        String? purchasenum = stdin.readLineSync()!;
        var purchasenumInt = int.parse(purchasenum);
        purchase[1] += purchasenumInt;
        purchasenumInt=0;
        inputInt=0;
        break;
        
        case 'C':
        print(bar);
        sleep(Duration(milliseconds: 500));
        print('연금술사의 저울');
        sleep(Duration(milliseconds: 500));
        print('800G');
        sleep(Duration(milliseconds: 500));
        print('대연금술사의 제자들이 사용했다고 하는 저울입니다.');
        sleep(Duration(milliseconds: 500));
        print('어쩌면 이 중에 대연금술사의 저울이 섞여 있을지도 모릅니다.');
        sleep(Duration(milliseconds: 500));
        print(bar);
        sleep(Duration(milliseconds: 500));

        stdout.write('몇 개를 담으시겠습니까?');
        String? purchasenum = stdin.readLineSync()!;
        var purchasenumInt = int.parse(purchasenum);
        purchase[2] += purchasenumInt;
        purchasenumInt=0;
        inputInt=0;
        break;

        case 'D':
        print(bar);
        sleep(Duration(milliseconds: 500));
        print('마녀의 손');
        sleep(Duration(milliseconds: 500));
        print('3,000G');
        sleep(Duration(milliseconds: 500));
        print('마녀들 사이에서 처형당했다고 하는 대마녀의 손입니다.');
        sleep(Duration(milliseconds: 500));
        print(bar);
        sleep(Duration(milliseconds: 500));

        if (purchase[3]==0){
            print('단 한 개밖에 없는 물품이니 지금이 아니면 구매하실 수 없어요.');
            sleep(Duration(milliseconds: 500));

            stdout.write('장바구니에 담으시겠습니까? Y/N');
            String? putintheBasket = stdin.readLineSync()!;
            if (putintheBasket.toUpperCase() == 'Y') {
                int purchasenumInt = 1;
                purchase[3] += purchasenumInt;
                purchasenumInt=0;
                inputInt=0;
               }}
        else {
          print('이미 장바구니에 담으셨네요.');
          sleep(Duration(milliseconds: 500));
          inputInt=0;}
        break;
        
        case 'E':
        print(bar);
        sleep(Duration(milliseconds: 500));
        print('사신의 모래시계');
        sleep(Duration(milliseconds: 500));
        print('10,000G');
        sleep(Duration(milliseconds: 500));
        print('단 한 번 시간을 되돌릴 수 있다고 하는 사신의 모래시계입니다.');
        sleep(Duration(milliseconds: 500));
        print(bar);
        sleep(Duration(milliseconds: 500));

        if (purchase[4]==0){
            print('단 한 개밖에 없는 물품이니 지금이 아니면 구매하실 수 없어요.');
            sleep(Duration(milliseconds: 500));

            stdout.write('장바구니에 담으시겠습니까? Y/N');
            String? putintheBasket = stdin.readLineSync()!;
            if (putintheBasket.toUpperCase() == 'Y') {
                int purchasenumInt = 1;
                purchase[4] += purchasenumInt;
                purchasenumInt=0;
                inputInt=0;
               }}
        else {
          print('이미 장바구니에 담으셨네요.');
          sleep(Duration(milliseconds: 500));
          inputInt=0;}

       }
       
      break;
      
      case 3:
      print(bar);
      sleep(Duration(milliseconds: 500));
      print('장바구니에 담긴 상품들의 가격은요...');
      sleep(Duration(milliseconds: 500));
      int sumAll = ((purchase[0]*sum['A'])+
      (purchase[1]*sum['B'])+
      (purchase[2]*sum['C'])+
      (purchase[3]*sum['D'])+
      (purchase[4]*sum['E']));
      print('총 $sumAll G 입니다.');
      print(bar);
      sleep(Duration(milliseconds: 500));
      break;

      case 4:
      stdout.write('장바구니를 비우시겠습니까? Y/N');
       String? clearBasket = stdin.readLineSync()!;
       if (clearBasket.toUpperCase() == 'Y') {
        purchase = [0,0,0,0,0];
        print('장바구니가 비워졌습니다.');
        }
       else {inputInt = 0;}
      break;

      case 5:
      stdout.write('상점을 나가시겠습니까? Y/N');
       String? exitTheShop = stdin.readLineSync()!;
       if (exitTheShop.toUpperCase() == 'Y') {
        sleep(Duration(milliseconds: 200));
        print('다음에 또 오세요!');
        sleep(Duration(seconds: 1));
        exit(0);}
       else {inputInt = 0;}
      break;

      default:
    }
    }
}