//dart  ile asal sayıları anlamak

//3. asal sayıyı bulmaya çalışalım

//asal sayı nedir ? 1 ve kendisinden başka böleni olmayan sayılardır
//ayrıca 2 de asal sayıdır
//en küçük asal sayı 2 dir
// neden 1 değildir? çünkü 1 asal sayı olamaz şu nedenle --> bir sayının asal sayı olması için iki adet böleni bulunması gerekir. Bu sayıların hem bir sayısına hem de kendisine bölünmesi gerekir. 1 sayısı yalnızca kendine bölündüğü için asal sayı içerisinde yer almaz

//dart  ile 4. asal sayıyı bulmaya çalışalım

//mesela 2'nin asal sayı olup olmadığını kontrol edelim

//bir sayının asal olup olmadığını kontrol edebilmek için yazmamız gereken kod nedir?

void main(List<String> args) {
  bool asalMi(int num) {
    if (num < 2) {
      return false;
    }
    for (int i = 2; i * i <= num; i++) {
      if (num % i == 0) {
        return false;
      }
    }
    return true;
  }

  int count = 0;
  int firstPrime = 2;

  while (count <= 10001) {
    if (asalMi(firstPrime)) {
      count++;
      if (count == 10001) {
        print('10001. asal sayı : $firstPrime');
      }
    }
    firstPrime++;
  }
}
