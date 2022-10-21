//
//  main.swift
//  StandartProgramlamaYapilari
//
//  Created by Vural Kayra Çetintaş on 21.10.2022.
//

import Foundation

 // if - else

/*
 if koşul
 {
    koşul sağlandığında işlenecek kodlar
 
 }
 */

var yas = 14

if yas < 13
{
    print("Bu bir çocuktur")
}
else if yas <= 20
{
    print("Genç")
}
else
{
    print("Yetişkin")
}

if (yas > 10 && yas < 20) // parantez kullanma zorunlu değil
{
    print("Çoklu koşul")
}

// if - let kullanimi

var opStr : String? // = "value"

if opStr != nil
{
    print(opStr!) // ! koymak risklidir bunu yerine if let kullanımı vardır
}



if let str = opStr
{
    print(str)
}
else {
    print("değer boş bırakılamaz") // yukarıdan value değerini girmezsek burası yazılacak
}


// Bankacılık işlemlerinden eft işlemi yapılmak isteniyor
// İşlem yapılacak gün ve saat bilgsinin mesai günleri ve saatleri içinde olup olmamasına göre kullanıcınınn işlemin yapılabileceği en yakın zamanın bilgilendirmesinin yapılması (if-else)

var kullaniciIslemGunu = 1 // 1. gün pazartesi
var kullaniciIslemSaati = 15

if kullaniciIslemGunu > 0 && kullaniciIslemGunu <= 7
{
    if kullaniciIslemGunu <= 5 { // mesai günü
        if kullaniciIslemSaati >= 9 && kullaniciIslemSaati <= 18{
            print("işlemniz gerçekleştirilmiştir")
        }
        else if kullaniciIslemSaati < 9{
            print("İşleminiz bugün 9:00'da yapılacaktır.")
        }
        else{
            if kullaniciIslemGunu == 5 {
                print("İşleminiz 3 gün sonra saat 9:00'da yapılacaktır")
            }
            else{
                print("İşleminiz yarın 9:00'da yapılacaktır")
            }
        }
    }
    else if kullaniciIslemGunu == 6{
        print("İşleminiz 2 gün sonra saat 9:00'da yapılacaktır.")
    }
    else {
        print("İşleminiz yarın saat 9:00'da yapılacaktır.")
    }
}
else {
    print("Geçersiz gün")
}



var yas2 = 19 // girilen yas değerine göre aşağıdaki durumlardan birisi gerçekleşecek
switch yas2 {
case 10:
    print("yas 10")
case 20 :
    print("yas 20 ")
case 16,17,18 :
    print("16-18")
case let a where a > 18 && a < 25 :
    print("19-24")
    
default:
    print("24 yaşından büyük")
}

// eğer birbiri ile çakışsaydı ilk olarak hangi durum gerçekleştiyse o durum yazılacaktı


// Bankacılık işlemlerinden eft işlemi yapılmak isteniyor
// İşlem yapılacak gün ve saat bilgsinin mesai günleri ve saatleri içinde olup olmamasına göre kullanıcınınn işlemin yapılabileceği en yakın zamanın bilgilendirmesinin yapılması (switch case )


var kullaniciIslemGunu2 = 1 // 1. gün pazartesi
var kullaniciIslemSaati2 = 19

switch kullaniciIslemGunu{
case 1,2,3,4,5:
    switch kullaniciIslemSaati2{
    case let saat where saat < 9:
        print("işlemniniz saat 9:00'da yapılacaktır")
    case let saat where saat >= 9  && saat < 18:
        print("İşleminiz gün içinde yapılacaktır")
    default:
        switch kullaniciIslemGunu2{
        case 5:
            print("İşleminiz 3 gün sonra 9:00'da yapılacaktır.")
        default:
            print("İşleminiz yarın saat 9:00'dan sonra yapılacaktır")
        }
    }
case 6:
    print("İşleminiz 2 gün sonra 9:00'da yapılacaktır.")
case 7:
    print("İşleminiz yarın saat 9:00'da yapılacaktır")
default:
    print("Geçersiz gün")
}



/*
 while döngüsü => koşul sağlandığı sürece içine yazılan kodları tekrar tekrar çalıştırma işlemini yapar.
 
 
 
    while koşul {
    buraya döngü içi yazılacak
 
 }
 
 repeat - while kullanımı vardır => while döngüsünün tersten yazılmış hali gibi koşul sağlanmasa bile bir kez çalışır
 */

var sayac = 0
/*
while sayac < 10 {
    print("döngü içi")
    sayac = sayac + 1
    
}
 
repeat{
    print("döngü içi")
    sayac = sayac + 1
} while sayac < 10
 
 */


/*
 For Döngüleri
    değer ve liste üzerinden özelleştirme yapmak için kullanılır.
    koşul belirtmiyoruz
 

for i in 0..<10 // 10 dahil olsun dersek 0...10 şeklide kullanılıur
{
    print(i)
    if i == 5{
        break
    }
    if i == 3{
        continue
    }
    print(i)
}
 */

// break veya continue kullanmak için herhangi bir döngü yapısı olması yeterli
// break döngüden çıkmak için kullanılır
// continue ifadesinden sonraki kolar çalışmadan bir sonraki dönüşe başlar

for i in 1...10
{
    for j in 10...100
    {
        repeat {
            print(j)
        }
        while (j < 10)

        break
    }
}
