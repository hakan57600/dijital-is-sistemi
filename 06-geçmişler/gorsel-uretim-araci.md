# Devam notu: Gorsel uretim araci arastirmasi

- Son guncelleme: 2026-10-09
- Hedef: Prompt ile gorsel konseptleri uretebilen ucretsiz bir araci tasarim is akisina ekleme olanagini degerlendirmek.
- Calisma alani: `E:\dijital-is-sistemi`; son tasarim ciktisi bu notun kapsami disindadir.
- Durum: Kullanici istegiyle simdilik rafa kaldirildi.

## Kararlastirilanlar

- Kullanici temel modeli degistirmek yerine, dijital islerinde kullanilabilecek ek araclari is akisina kazandirmak istiyor.
- Yerel gorsel uretiminde mevcut bilgisayarin GPU'su uygun gorunmuyor: NVIDIA GeForce GT 420, yaklasik 2 GB ekran bellegi. Sistem 16 GB RAM bildiriyor.
- ComfyUI resmi deposu ve Fooocus resmi deposu incelendi. ComfyUI'nin dusuk donanim hedefi dahi yaklasik 4 GB VRAM olarak belirtiliyor; Fooocus da en az 4 GB NVIDIA VRAM oneriyor.
- ComfyUI'yi kurmak tek basina yeterli degil; gorsel uretim modeli ve modeli calistirabilecek donanim/altyapi gerekiyor.
- Ucretsiz cevrim ici uretim hizmetleri saglayiciya baglidir; bu CLI oturumunda Gemini'ye baglanan veya tarayicida kullanici adina gorsel ureten bir arac yok.
- Kisisel isim/adres/telefon gibi bilgileri ucuncu taraf gorsel hizmetlerine gondermemek; modelle once kisisel veri icermeyen konsept gorseli uretip, dogru metni ayri tasarim aracinda eklemek uygun is akisidir.

## Tamamlananlar

- Bilgisayar donanimi ve disk/RAM durumu kontrol edildi.
- Yerel gorsel uretim icin ComfyUI, Fooocus ve Stable Diffusion WebUI Forge kaynaklari incelendi.
- ComfyUI ve Fooocus'un yerel calisma gereksinimleri mevcut GPU ile karsilastirildi.
- Kullaniciya bu bilgisayarda yerel gorsel uretim kurulumunun uygun olmadigi; cevrim ici uretimin ise ayri hizmet/erisim gerektirdigi aciklandi.
- Kullanici projeyi simdilik rafa kaldirmayi istedi.

## Kalanlar

- Bu oturumda arac kurulumu yapilmadi; gorsel uretim araci veya model sisteme eklenmedi.
- Kullanici talep ederse, guncel donanim/servis kosullarina gore ucretsiz secenekler tekrar degerlendirilecek.

## Siradaki adim

- Yalnizca kullanici bu projeyi yeniden baslatmak istediginde devam et. O zaman yerel donanim secenegini yeniden olc; gerekirse kisisel veri icermeyen prompt ve dogru metni sonradan duzenlenebilir aracda ekleme is akisiyla cevrim ici secenegi karsilastir.

## Dikkat edilecekler

- Tamamen ucretsiz, sinirsiz ve Gemini kalitesinde hizmet garantisi verilmemeli; ucretsiz planlar degisebilir ve kullanim siniri olabilir.
- Yerel kurulum ucretsiz yazilim olsa bile model lisansi, indirme boyutu, donanim uyumu ve calisma hizi ayri kontrol edilmeli.
- Kullanici projeyi duraklatti; yeni bir istek gelmeden kurulum veya ek arastirmayla devam etme.
