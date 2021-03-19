# Bir vektordeki elemanlarin vektor icinde kacinci sirada olduklarini gosteren fonksiyon ise rank() dir.
# Vektorde deger icermeyen bos elemanlarda olabilir.
# Bunlar Not Available (NA) olarak isimlendirilir.
x <- c(5, 2, 8, 12, 1)
# (1, 2, 5, 8, 12)
rank(x)
# Bir vektordeki tum elemanlarin belirli bir sarti saglayip saglamadigini test etmek icin all() fonksiyonu kullanilir.
v <- 8:20
v
all(v < 14)
all(v > 4)
all(v < 100)
# Bir vektordeki en az bir elemanin istenen bir sarti saglayip saglamadigini ogrenmek icin any() fonksiyonu kullanilir.
v <- 8:18
v
any(v > 17)
any(v > 50)
# Bir vektorun icindeki tekrar eden elemanlari temizler ve 
# Vektor elemanlarinin sadece bir defa gosterildigi yeni bir vektor uretir.
x <- c(3,4,6,5,12,3,3,5,8,3,8,10,11,12,14,12,14,3)
unique(x)
length(x)
length(unique(x))
# Bir vektorun elemanlarini artan ya da azalan sekilde siralamak icin sort() fonksiyonunu kullaniriz.
x <- c(5, 8, 7, 3, 6, 9, 2)
sort(x)
sort(x, decreasing = T)
?sort
# Bir vektorde ardisik elemanlar arasindaki farki bulmak icin diff() fonksiyonu kullanilir.
x <- c(3, 5, 47, 9, 10, 13, 12, 10)
diff(x)

# Eksik Veri

# bir vektorde eksik veri olabilir.
# Ornegin gozlem sirasinda gozlenemeyen degerler olabilir.
# Bu tur veriler R icerisinde NA (Not Applicable ya da Not Available) olarak gosterilir.
# Bir vektorde Na degeri var mi yok mu kontrol etmek icin is.na() ya da is.nan() fonksiyonlari kullanilir.
is.na(x)
is.nan(x)

# Temel Istatistik Fonkiyonlari

# R her ne kadar fonksiyonel programlamaya izin verse de temelde istatistik hesaplamaya dayalidir.
# Bazi temel istatistik fonksiyonlari;
# sum(x): Toplam. x vektorunun elemanlarinin toplamini verir.
# mean(x): Ortalama
# median(x): Medyan
# min(x): Minumum deger
# max(x): Maksimum deger
# sd(x): Standart sapma. Inglizce de "Standart Deviation" ifadesinin ilk harflerinden olusur.
# var(x): Varyans
# cor(x, y): x ile y vektorleri arasýndaki korelasyon 
# cov(x, y): x ile y vektorleri arasýndaki kovaryans
# cov2cor(): Bir kovaryans matrisini korelasyon matrisine cevirmek icin kullanilir.
# quantile(x, p): x vektorunun p ile belirtilen yuzdeliklerini bulmak icin kullanilir.
w <- c(38, 54, 80, 45, 75, 64, 72, 90, 88, 68)
sum(w)
mean(w)
median(w)
min(w)
max(w)
sd(w)
var(w)
sqrt(sum(w))

# Vektorleri Karsilastirma

# Iki vektorun birbirine esit olup olmadigini bulmak istedimizi dusunelim.
v1 <- c(10, 11, 12, 13)
v2 <- c(10, 11, 12, 14)
v1 == v2
all(v1 == v2)
any(v1==v2)
# "==" operatoru yerine kullanabilecegimiz bir fonksiyon vardir.
identical(v1, v2)
# Identical fonksiyonunu kullanirken dikkatli olmamýz gerekiyor.
# ":" operatoru ile uretilen sayisal degerler tamsayi iken c() fonksiyonu ile uretilenler reel sayi olmaktadir.
x1 <- 7:10
x1
x2 <- c(7, 8, 9, 10)
x2
identical(x1, x2)
x1 == x2
x2 > 8
# Iki vektorden birinde olup digerinde olmayan elemanlari secmek icin setdiff() fonksiyonu kullanilir.
x <- c(1, 2, 3, 4, 5)
y <- c(2, 3, 4)
setdiff(x, y)

# Vektor Aritmetigi

# Esit uzunluktaki iki vektor arasinda temel dort aritmetik islemi uygulayabiliriz.
x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 1, 3, 2)
x + y
x - y
x * y
x / y
x ^ y
y ^ x
x + 3
x - 2
x * 2
x / 3
x ^ 2
y ^ 3
sin(x)
sqrt(x)
log(x) # c(log(1) log(2) log(3) log(4) log(5))

# 2- Matrisler (Matrices)

# Bir matris 2 boyutlu kare form olarak bir veriseti seklinde temsil edilir.
# Sutunlarin tamaminin ayni uzunlukta veri tipi seklinde olmasi gerekir.
# Matrislerin boyutlarini kontrol etmek icin attributes() fonksiyonunu kullanarak kontrol edebiliriz.
# Matris olusturmak icin matrix() fonksiyonu kullanilir.
?matrix
# Matris olusturalim.
m1 <- matrix(c('x',"x","y",'z','y','x'), nrow=2,ncol=3,byrow=T)
m1
m2 <- matrix(1:12, nrow = 4, ncol = 3)
m2
# Matris satir ve sutunlarina isim vermek istersek dimnames() argumanini kullaniriz.
m3 <- matrix(1:12, nrow=4, dimnames = list(c("W","X","Y","Z"),c("A","B","C")))
m3
# Matrisin ozelliklerini gormek icin
attributes(m3)
# Sutun isimlerini ogrenmek icin
colnames(m3)
# Satir isimlerini ogrenmek icin
rownames(m3)
# Matrisin satir ve sutunlarini isimlendirmek istersek
m1 <- matrix(8:11, nrow = 2)
m1
dimnames(m1) <- list(c("x","y"), c("z","t"))
m1
# Ya da rownames() ve colnames() fonksiyonlari kullanilir.
notlar <- matrix(data=c(100, 95, 100, 75, 79, 45, 85, 70, 60), nrow=3)
notlar
rownames(notlar) <- c("Matematik","Fizik","Kimya")
colnames(notlar) <- c("Ahmet","Hasan","Mehmet")
notlar
# Matris olusturmak icin baska bir yol daha vardir.
# cbind() ve rbind() fonksiyonu
cbind(c(1,6,9), c(3,5,8))
rbind(c(1,6,9), c(3,5,8))
# Kosegen bir matris olusturmak icin diag() fonksiyonu kullanilir.
diag(2, nrow = 3)
diag(c(2,3,4), nrow = 3)
diag(3, nrow = 3, ncol = 4)
# Matris elemanlarina erismek icin yine '[]' operatoru kullanilir.
# [satir,sutun]
# Bir vektorden olusan matris degiskeni olusturalim.
m4 <- c(1, 3, 6, 4, 5, 0)
dim(m4) <- c(2,3)
m4
# Simdi matrisin 1. ve 2. satiri ile 2. ve 3. sutunun oldugu parcayi cikaralim.
m4[c(1, 2),c(2, 3)]
# Satirlar ayni kalmak kosulu ile tum sutunlari secmek istersek
m4[c(1, 2), ]
# Matrisin tamami icin
m4[,]
# Birinci satir disinda kalan matrisin tum elemanlari secmek istersek
m4[-1, ]
# Bize sectigimiz matris elemanlarinin hangi sinifta oldugu gerekli
m4[1,]
class(m4[1,])
# Eger ben bu degerler yerine matris seklinde formun kalmasini istersem
class(m4[1,,drop=FALSE])
# Matrisin elemanlarini degistirmek istersem
# Bu durumda degistirmek istedigim elemanin indisini yazarak degistirebilirim.
m4
m4[1,1] <- 80
m4
m4[m4<5] <- 0
m4