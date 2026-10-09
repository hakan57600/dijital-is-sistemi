# Dijital Is Sistemi

Bu depo, farkli bilgisayarlarda Copilot CLI ile kullanilabilen, tasinabilir bir kisisel dijital calisma profili ve surec hafizasidir.

## Hizli baslangic

1. Depoyu o bilgisayara klonlayin veya indirin.
2. Copilot CLI'i bu klasorun icinden baslatin.
3. Yeni bir is verirken once `AGENTS.md`, `05-notlar\tercihler-notu.txt` ve ilgili is akislarini kullanin.
4. Isin kalici sonucunu, kararlarini ve siradaki adimini `06-gecmisler\` altinda kaydedin.
5. Degisiklikleri GitHub'a gondererek diger bilgisayarlara tasiyin.

Copilot CLI, repo kokundeki `AGENTS.md` talimatlarini okur. Bu dosya sistemi ve kullanici tercihlerini aciklar; sohbetlerin otomatik veya sinirsiz bicimde hatirlandigi anlamina gelmez. Devam bilgileri bu depoya yazilmalidir.

## Klasorler

- `01-amaçlar\` — hedefler ve oncelikler
- `02-referanslar\` — kaynaklar, ornekler ve referanslar
- `03-örnekler\` — tekrar kullanilabilir ciktilar
- `04-iş-akışı\` — genel ve gorev turune ozel surecler
- `05-notlar\` — kalici tercihler ve ogrenimler
- `06-geçmişler\` — is kayitlari ve devam notlari
- `07-ayarlar\` — tasinabilir sistem ayarlari
- `şablonlar\` — yeni is ve devam kaydi sablonlari

## Tasinabilirlik ve gizlilik

Klasor yapisi goreli yollara dayanir; bilgisayara ozel surucu harfi zorunlu degildir. Depo ozel (private) tutulmalidir. Parola, erisim belirteci, ozel anahtar, musteri verisi veya paylasilmasi uygun olmayan dosyalar bu depoya eklenmemelidir. Buyuk medya ve ikili dosyalar yerine gerekirse kucuk onizleme veya kaynak bilgisi ekleyin.

## Guncelleme

Tercihler, is akislarina dair ogrenimler ve yeni sablonlar ihtiyac oldukca eklenebilir. Depoya kaydedilen guvenli ve isle ilgili degisiklikleri dogruladiktan sonra hemen commit edip GitHub'a push edin; uzak dalda dogrulandiklarinda diger cihazlarda da kullanilabilir. Gizli veya hassas bilgi icerebilecek dosyalari yuklemeyin.

## Windows baslatma betigi

Ilk kullanimda GitHub'da oturum acip ozel depodaki `baslat.bat` dosyasini indirin ve calistirin. Betik depoyu `%USERPROFILE%\dijital-is-sistemi` konumuna klonlar. GitHub kimlik dogrulamasi istenirse Git Credential Manager'in tarayici adimlarini tamamlayin; sifre veya token'i betige yazmayin.

Sonraki kullanimlarda yerel `baslat.bat` dosyasini calistirin. Betik GitHub'dan guncellemeleri alir, yerel degisiklik varsa korumak icin durur; temizse `main` dalini hizli-ileri gunceller ve Copilot CLI'i depo klasorunde acar. Git veya Copilot CLI kurulu degilse once ilgili uygulamayi kurun. CLI yoksa betik depo klasorunu acar.

Betik Windows oturum acilisinda kendiliginden calismaz; ihtiyac oldugunda elle baslatilir. Boylece otomatik ag erisimi veya Copilot oturumu baslamaz.
