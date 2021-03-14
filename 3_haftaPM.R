
# Karenin alanini ve cevresini hesaplayan bir program yazalim.
a <- 12
# Alan = a * a
alan <- a * a
print(alan)
#1 Cevre = (a+a+a+a) = 4 * a
cevre <- 4 * a
print(cevre)

# Daire cevre ve alan
r <- 56.63
# Cevre c = 2 * pi * r
daire_cevre <- 2 * pi * r
print(paste("Daire'nin cevresi:", daire_cevre))
# Alan alan = pi * r * r 
daire_alani <- pi * r * r
paste("Girilen yaricap'a gore daire alani:", daire_alani)

r <- 56.63
pi_degeri <- 3.14
# Cevre
daire_cevre2 <- 2 * pi_degeri * r
print(daire_cevre2)
paste("Girilen yaricap'a gore daire alani:", daire_cevre2)
daire_alani2 <- pi_degeri * r * r
print(daire_alani2)
paste("Girilen yaricap'a gore daire alani:", daire_alani2)

# Calisma dizini ile ilgili ayarlar
getwd()
setwd("C:/Users/Kerem/Desktop/")
setwd("D:/")
setwd("D:/Derslerim/Programlama/R/")
# Bir calisma dizininde bulunan dosya ve klasorleri gormek istersek
dir()
list.files()
# Konsol kullanilarak yeni bir klasor ya da dosya olusturmak mumkundur.
# Klasor olusturmadan once o isimde baska klasor var mi kontrol etmek gerekir.
file.exists("ucuncuHafta")
dir.create("ucuncuHafta")
list.files()
# Programdan cikmak icin
quit()
q()

# Bircok farkli veri turu vardir.
# Ancak biz en yaygin temel veri tiplerini inceleyecegiz.
# Karsimiza diger veri tipleri ciktikca ogrenecegiz.
# Veri tipleri;
# 1- Vektorler (Vectors)
# 2- Matrisler (Matrices)
# 3- Listseler (Lists)
# 4- Diziler (Arrays)
# 5- Veri Cerceveleri (Data Frames)
# 6- Faktorler (Factors)
# 7- Karakterler (Characters)

# 1- Vektorler (Vectors)

# Bir vektor veri, tek boyutlu basit bir dizidir.
# Bir vektor bilinen en basit yapidaki veri turudur.
# Vektor olusturmak icin c() komutu kullanilir.
# Combined kelimesinin kisaltilmis halidir.
?c()
x <- vector()
x
x <- vector(mode = "numeric", length = 10)
x
x <- vector(mode = "character", length = 5)
x
x <- c(3.14, 2.78)
x
x <- c(F, TRUE, T, FALSE)
x
x <- c(3, 12, 5)
x
ogrenciler <- c("Hasan","Ebru","Ahmet","Burcin","Zeynep",24, 45L, 17L, 36.7, TRUE, F, F)
print(ogrenciler)
# Vektorumuzu olusturan elemanlarin turunu ogrenmek icin
print(class(ogrenciler))
print(class(x))
# Cesitli turde veri ile vektor olusturabiliriz.
v1 <- c(80, 13, 5.3, -43, 6909) # Sayisal veriler
v1
print(class(v1))
v2 <- c(TRUE, FALSE, FALSE, FALSE, TRUE, T, F, F, T, T) # Mantiksal veriler
v2
print(class(v2))
v3 <- c("Adana","Hatay","Izmir","Istanbul","Ankara") # Karakter veriler
v3
print(class(v3))
# Olusturdugumuz bu vektor degiskenlerin elemanlarina nasil erisirim?
# Bu secime indisleme denir.
# Indisleme yaparken ilk eleman 1.siradadir.
# Digerleri ona gore dizilir.
print(v1[1])
v1[1]
v1[c(1,3)]
v2[5]
v2[c(3, 4)]
v3[3]
v3[c(1,4,5)]
# Sirali eleman olusurmak istersem ":" operatorunu kullanabilirim.
v4 <- 1:10;
v4
v5 <- 3:-3;
v5
v6 <- 2:14;
v6
v6[c(3:8)]
# Daha fazla kompleks bir sirali dizi olusturmak istersem seq() fonksiyonunu kullanabilirim.
# "seq" ingilizcede sequence yani dizi anlamina gelir.
# Burada dizi sirali anlaminda kullanilmaktadýr.
# Array anlaminda degil.
v6 <- seq(from = 1, to = 5, by=0.4)
v6
?seq
v7 <- seq(from=7, to=-5, by=-1.3)
v7
# Peki ben bu vektor icerisindeki elemanin degerini degistirmek istersem
# Yeniden atama yapabilirim.
x <- c(1:5)
x
x[3] <- 0;
x
# Biraz daha karmasiklastiralim.
# Elemanlarin icerisinde 4'den kucuk olanlari 2 yapalim.
x[x<4] <- 2;
x
x[x>1] <- 34
x
# NULL diye bir deger vardir.
# Simdi de bu degeri vektorumuze atayalim.
x <- NULL
x
# Tekrarlayan sayilar iceren bir vektor olusturmak icin rep() fonksiyonu kullanilir.
# rep() ingilizcede repeat yani tekrarla kelimesinden gelir.
rep(12, 4)
rep(c(3,5,7), 4)
rep(c(3,5,7), each=3)
# Vektor elemanlarini sectirmek icin iki ozel fonksiyon vardir.
# subset(): Alt küme secer
# subset fonksiyonu istenen sarti saglayan elemanin degerini verir.
# which(): Hangisi
# subset ile secilen elemanlarin sira degerini verir.
w <- c(74, 87, 96, 56, 14, 52, 80, 114, 13, 2)
w
subset(w, w>70)
which(w>70)
which(w<20)
subset(w, w<20)

# Basit Vektor Islemleri

# R icerisindeki bircok islem vektor aritmetigi ile gerceklestirilir.
# Kullanimi kolay
# Hesaplamasi kolay
# Ýslemciyi cok yormaz
x <- 2:5
y <- 10:13
x
y
x + y
x - y
x * y
y / x 
# Bir vektorun uzunlugunu bulmak icin length() fonksiyonu kullanilir.
t <- c(3, 6, 12, 2, 76, "a", "Adana", "16", 4.789, 3+5i, T, F, F)
length(t)
# Bir vektore veri ekleme ve silme
# Veri eklemek icin c() kullanilir.
x1 <- 1:5
x1
x2 <- c(x1, 6:10)
x2
# Vektorun 4. elemanini cikarmak istersek
x2[-4]
# Birden fazla oge cikarmak istersek
x2[-c(3, 7)]
# Vektoru tersine cevirmek istersek
x <- c(3:8)
x
rev(x)