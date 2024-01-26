//userların paralarını tutan bir map oluşturduk ve içine değerler atadık
//mapler swiftteki dictionarylere benzer
//key-value şeklinde çalışırlar
//keyler unique olmalıdır
//value değerleri unique olmak zorunda değildir

void main() {
  final Map<String, int> users = {
    'user1': 10,
    'user2': 20,
    'user3': 30,
    'user4': 40,
    'user5': 50,
    'user6': 60,
    'user7': 70,
    'user8': 80,
    'user9': 90,
    'user10': 100,
  };

//user 4 'ün ne kadar parası var ?
  print(users['user4']);

//user 4 'ün parasını 100 yaptık
  users['user4'] = 100;
  print(users['user4']);

// final bir map olmasına rağmen nasıl içindeki değerleri değiştirdik?
// final diye tanımladığımız map referans tipli bir değişken olduğu için içindeki değerleri değiştirebiliyoruz

  print('user 4\'ün parası : ${users['user4']}');

  //tüm userları ve paralarını yazdıralım for  döngüsü ile

  for (var item in users.keys) {
    print('${item}' + ' ${users[item]}');
  }
}
