# 2. Hafta: Veri Tipleri --------------------------------------------------

# Ilk is olarak R icerisinde kullanilan veri tiplerini ogrenmeyle ise baslayalim.
# Veri tiplerine girmeden once degisken kavramindan bahsedelim.
# Degisken bilgi depolamada kullanilir.
tc <- 18730696574                               
isim <- "Efdal"
soyisim = "Kaya"
pozisyon <- "Usta Baþý"
maas <- 4000
yas <- 30
boy = 1.73
print(boy)
memleket <- "Adana"
evli = T
evli
print(evli)
cocuk_durumu = TRUE
cocuk_durumu
print(cocuk_durumu)
cocuk_sayisi = 3
print(cocuk_sayisi)

es_is_durumu <- "Mimar"
es_is_durumu
print(es_is_durumu)

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
# Cevre
daire_cevre <- 2 * pi * r
print(daire_cevre)
daire_alani <- pi * r * r
print(daire_alani)

r <- 56.63
pi_degeri <- 3.14
# Cevre
daire_cevre2 <- 2 * pi_degeri * r
print(daire_cevre2)
daire_alani2 <- pi_degeri * r * r
print(daire_alani2)

355.8168 - 355.6364
10074.95 - 10069.84