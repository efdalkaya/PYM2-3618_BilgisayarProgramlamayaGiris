# Basit Matris Islemleri

# R icerisinde matrisler kullanilarak lineer cebir islemleri gerceklestirilebilir.
# Bir matrisin transpozunu almak icin t() fonksiyonu kullanilir.
mat <- matrix(c(3,5,7,9), nrow = 2)
mat
t(mat)
# Matrisler ile bazi hesaplamalar yapalim
x <- matrix(c(2,4,6,8), nrow = 2)
y <- matrix(c(1,3,5,7), nrow = 2)
x
y
x %*% y
x * y
x + y
x - y
x / y
2* x
# Bir matrisle carpildiginda (matris carpim) birim matrisi veren matrise ilk matrisin tersi denir.
# R'da bir matrisin tersini bulmak icin solve() fonksiyonu kullanilir.
x <- matrix(c(1,2,3,4,3,2,1,0,1), nrow = 3)
x
solve(x)
x %*% solve(x)
# Bir matrisin tersi ile carpiminin birim matrisi vermesi gerekmektedir.
# Ornekte ilk bakista birim matris gibi gorunmeyebilir sonuc degerleri
# Ancak kosegen uzerindeki elemanlarin 1'e diger elemanlarin ise 0'a cok yakin olduklari gorulur.

# Matrisin Satir ve Sutun Sayýsýný Degistirme
# Onceden tanimlanmis bir matrisin satir ve sutunlarini degistirmek icin dim() fonksiyonu kullanilir.
m <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12), nrow = 3)
m
dim(m) <- c(4,3)
m

# 3- Listeler (Lists)

# R icerisinde kullanilan diger bir veri tipi listeler.
# Icerisinde bircok farkli veri tipini ayni anda barindirabilir.
# Ama bu elemanlarin birbiri ile iliskili olmasina gerek yok.
# Elemanlar fonksiyon olabilir, vektor olabilir, matris olabilir.
# Liste olusturmak icin list() fonksiyonu kullanilir.
l1 <- list(c(1,2,3), 11.345, sin, NULL, NA, NaN, 40, 40L)
l1
l2 <- list(35,45,8)
l2
# typeof() fonksiyonu ile biz tip ogrenebiliriz.
?typeof
typeof(l1)
# Liste icerisinde ne kadar eleman oldugunu bulmak icin length() fonksiyonunu kullaniriz.
length(l1)
# Elemanlari degistirmek veya yeniden atama yapmak icin yine '[]' operatoru kullanilir.
l1[[6]] <- "Adana"
l1
length(l1)

# Liste Elemanlarini secme

# Eleman secimi icin birden fazla yol vardir.
x <- c(3,5,7)
y <- c("aa", "bb", "cc", "dd")
z <- c(T, F, F, T)
l3 <- list(x, y, z)
l3
# Liste elemanlarina isim verme
names(l3) <- c("x", "y", "z")
l3
l3$x
l3$y
l3$z
l3[["x"]]
l3[["y"]]
l3[1]
l3[2]
l3[3]

# Listeye Eleman Ekleme ve Silme

notlar <- list(ali = c(92, 87, 78),ahmet = c(100, 90, 84),mehmet = c(45, 56, 64))
notlar
class(notlar)
typeof(notlar)
notlar$mehmet
notlar$mehmet <- c(100, 100, 100)
notlar
notlar$mehmet
# Bir elemani silmek icin bu elemanin degerini NULL yapmak gerekir.
notlar$mehmet <- NULL
notlar

# Listeye Fonksiyon Uygulama
# Listeler uzerinde hesaplama yapabilmek icin bazi ozel fonksiyonlari kullanabiliriz.

# lapply()
# R dili icerisinde apply uygula fonksiyon ailesi vardýr.
# Bunlar apply, lapply, sapply, tapply, mapply 
# Bu fonksiyonlar dongu kullanmadan otomatik hesaplama yapabilme kabiliyetine sahiptir.
# lapply fonksiyonu bir listenin tum uyelerine istenen bir fonksiyonu uygular.
# Bastaki l harfi List in kisaltilmis halidir.
# Fonksiyonun lapply ile calistirilmasi ile uretilen sonuc listedir.
liste1 <- list(a=c(3,5,7,12,24,7), b=2:16)
liste1
lapply(liste1, sum)
liste2 <- list(a=20:30,
               b=exp(4:7),
               logic=c(T,T,F,T))
liste2
lapply(liste2, mean)

lapply(8:10, function(x) c(x, x^2, x^3))
lapply(3:5/3, round, digits=1)

# sapply()
# Mumkun olmasi halinde lapply'in sonuclarini basitlestirir.
# Bastaki s harfi "simplify" basitlestir kelimesinin ilk harfidir.
# sapply lapply ile ayni islevi gorsede sonucu daha duzgun bir sekilde gosterir.
liste1 <- list(a = rnorm(20, mean=3, sd=2),
               b = 2:12,
               c = rnorm(10, mean=2, sd=2),
               d = c(3, 4, 1, 12, 3, 7, 8))
lapply(liste1, mean)
sapply(liste1, mean)

# mapply()
# Birden fazla arguman, vektor ya da listeye ayni anda bir fonksiyon uygulamaya yarar.
# m harfi multiple coklu kelimesinin kisaltilmasidir.
l1 <- list(x=c(5:10), y=c(15:20))
l2 <- list(k=c(16:21), l=c(24:29))
mapply(sum, l1$x, l1$y, l2$k, l2$l)
# Ornekte toplama fonksiyonunu kullandik.
# Fonksiyon her bir listedeki elemanin ayni siradaki elemanlarini topluyor.
# Yani 60 i bulmak icin;
# l1$x[1], l1$y[1], l2$k[1], l2$l[1] elemanlarini topluyoruz 5 + 15 + 16 + 24

# Listeyi Vektore Cevirme
# Bir lsteyi atomik vektore cevirmek de mumkundur.
# Bunun icin unlist() fonksiyonu kullanilir.
l3 <- list(x=1:3, y=4:6, z=7:9)
l3
vektor1 <- unlist(l3)
vektor1

# 4- Diziler (Arrays)

# R icerisinde matris formlar 2 boyutlu olmak zorunda 
# Ama diziler icin boyle bir kesin kural yoktur.
# Herhangi bir boyutta kullanilabilir.
# Hemen bir dizi olusturalim.
# array() fonksiyonu kullanilir.
?array
d1 <- array(c("Erkek","Kiz"), dim = c(3,3,2))
d1

# Matrisin Satir ve Sutunlarina Fonksiyon Uygulama

# apply()
# Bir matris ya da dizinin satir, sutun ve yüzeylerine istenen fonksiyonu uygular.
# Matrisin satir toplamlarini almak istersek
?apply
mat1 <- matrix(data=rnorm(12), nrow=3)
mat1
apply(X=mat1, MARGIN = 1, FUN = sum)

dizi <- array(data = rnorm(2*2*3), dim = c(2,2,3))
dizi
apply(dizi, c(1,2), mean)