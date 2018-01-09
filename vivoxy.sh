#!/bin/bash
clear
echo -e "\033[31m ---------------------------------------------------------------------- \033[0m"
echo -e "\033[32m ########## Vivoxy İnternet Bilişim Hizmetleri | Kalite Bir Tık Ötenizde! ########### \033[32m"
echo -e "\033[31m ---------------------------------------------------------------------- \033[0m"
echo -e "\033[31m ------------------- Oyun Açma Kapatma İşlemleri ---------------------- \033[0m"
echo -e "\033[31m ---------------------------------------------------------------------- \033[0m"
echo " 1) Oyunu Baslat"
echo " 2) Oyunu Durdur"
echo " 3) Reboot At (Sunucuyu Yeniden Başlatır.)"
echo " 4) Navicat Sifresini Sıfırla ( Navicat sifresini Unuttugunuzda Sıfırlar )"
echo -e "\033[31m ------------------- Oyun Yedek Alma İşlemleri ------------------------ \033[0m"
echo " 5) Server Yedeklerini Al"
echo " 6) Son Alınan Server Yedegini Yükle"
echo " 7) Filezilla / MYSQL Loglarını Sil"
echo -e "\033[31m ---------------------------------------------------------------------- \033[0m"
echo -e "\033[32m -------------------------- Sunucu İşlemleri -------------------------- \033[32m"
echo " 8) Sunucuya Benden Baska Kim Bağlı Göster."
echo " 9) Sistem CPU Kullanımını Göster."
echo " 10) Sunucunuza Yapılan En Son Bağlantıyı Göster."
echo " 11) Dizinde Bulunan Tum Dosyalari Göster."
echo " 12) Bulundugum Dizini Göster"
echo " 13) Çalıştırdığım Işlemleri Göster"
echo " 14) Oyunumda Kaç Kişi Var ?"
echo " 15) Işletim Sistemini Öğren"
echo " 16) Putty Şifremi Değiştir"
echo " 17) Hard Disk Istatistiklerini Göster"
echo " 18) Nasıl Dosya Silebilirim ?"
echo " 19) Dizinde Bulunan Bütün Dosyaları Göster"
echo -e "\033[32m ---------------------------------------------------------------------- \033[32m"
echo -e "\033[0;33;40m ----------------- Format ve Server Ayarlamaları ---------------------- \033[40m"
echo " 20) Sunucu Format - Files Kurulum İşlemleri"
echo " 21) Biyolog İşlemleri"
echo " 22) Öğretmen Skill Ayarlamaları"
echo " 23) Efsun Oranlarını Ayarlama"
echo " 24) Serveriniz Hakkında Bilmeniz Gerekenler"
echo " 25) Vivoxy - Son Duyurular"
echo -e "\033[0;33;40m ---------------------------------------------------------------------- \033[40m"
echo -e "\e[95m ------------- Vivoxy Taraflı Güncelleme İşlemleri -------------- \e[95m"
echo " 26) Serverime Son Gelen Güncellemeleri Yükle (30.08.2016 Güncellemeler Var!)"
echo " 27) Site (Blocked) Hatasını Çöz! - Çözülmezse Reboot Atınız!"
echo " 28) Güncel Gameyi Yükle Vivoxy Game Güncelleme"
echo " 29) Güncel Mysqlu Yükle vivoxy Mysql Güncelleme"
echo -e "\033[31m\033[36m ---------------------------------------------------------------------- \033[31m\033[36m"

echo " "
echo Scriptten çıkmak için Ctrl-C tuşuna basınız.
echo ""
echo Seciminizi Giriniz :
read  secenek 

########### Detaylı Ayarlamalar Vivoxy .com ###############

case $secenek in

############# Seçenek 1 CH Açma vivoxy ##########

1)
cd /root
./ac
;;

############# Seçenek 2 CH Kapatma vivoxy ##########
2)
cd /usr/game
sh close.sh
;;

############# Seçenek 3 Reboot Atma vivoxy ##########

3)
echo -e "\033[0;33;40m Servere Reboot Atildi. 2 Dakika Sonra Tekrar Putty'e Baglanip Serverinizi Acabilirsiniz.\033[0;33;40m"
rm -rf guncelleme.sh
rm -rf fw.sh
rm -rf files.sh
rm -rf biyolog.sh
rm -rf bilmenizgerekenler.sh
rm -rf haberler.sh
rm -rf efsunlar.sh
rm -rf skiller.sh
rm -rf hatayapma.sh
rm -rf logsilme.sh
rm -rf yedekalma.sh
rm -rf kacch.sh
rm -rf emek199.sh
rm -rf emek1105.sh
rm -rf kolay99.sh
rm -rf kolay105.sh
rm -rf kolay120.sh
rm -rf orta5599.sh
rm -rf orta55105.sh
rm -rf orta7099.sh
rm -rf orta70105
rm -rf orta70120.sh
reboot
;;

############# Seçenek 4 Navicat Şifresi Sıfırlama vivoxy ##########

4)
echo " \033[0;33;40m Kurulum Basliyor Herhangi Bir Islem Yapmayin.... \033[0;33;40m"
mkdir /var/db/mysql/yedek
cd /var/db/mysql/yedek
rm -rf /var/db/mysql/mysql/user.frm
rm -rf /var/db/mysql/mysql/user.MYD
rm -rf /var/db/mysql/mysql/user.MYI
cd /var/db/mysql/mysql
fetch http://aysudagaming.net/sifirla/user.frm
fetch http://aysudagaming.net/sifirla/user.MYD
fetch http://aysudagaming.net/sifirla/user.MYI
cp -R mysql/mysql/user.frm /var/db/mysql/mysql
cp -R mysql/mysql/user.MYD /var/db/mysql/mysql
cp -R mysql/mysql/user.MYI /var/db/mysql/mysql
cd /
rm -rf var/db/mysql/yedek
chmod -R 777 /var/db/mysql
echo -e "\033[0;33;40m Şifreniz Sıfırlandı Yeni şifreniz: vivoxy yapılmıştır.\033[0;33;40m"
echo -e "\033[0;33;40m Navicattan şifrenizi değiştirin. Şifrenizi root bölümünden değiştirmelisiniz. \033[0;33;40m"
echo -e "\033[0;33;40m Başka yer ile oynama yapmayın aksi takdirde oyuna start veremezsiniz.  \033[0;33;40m"
reboot
;;


############# Seçenek 5 Yedek Alma vivoxy ##########

5)
echo "Yedek Alma Islemi Basliyor"
cd /usr/game
sh temizle.sh
cd /usr
rm -rf yedekgame_en_son.tar.gz
tar cvzf yedekgame_en_son.tar.gz game
cd /var/db
rm -rf yedekmysql_son.tar.gz
tar cvzf yedekmysql_son.tar.gz mysql
cd /root
echo -e "\033[0;33;40m Yedekler Alindi. \033[0;33;40m"
echo -e "\033[0;33;40m Yedekleri Bilgisayariniza Almak icin \033[0;33;40m"
echo -e "\033[0;33;40m Filezillada /usr bolumunde yedekgame_en_son.tar.gz dosyasini ve  \033[0;33;40m"
echo -e "\033[0;33;40m var/db bolumunde yedekmysql_son.tar.gz Bilgisayariniza Indiriniz.(Kesinlikle Silmeyiniz!) \033[0;33;40m"
echo -e "\033[0;33;40m islem Tamamlandi..! \033[0;33;40m"
;;

############# Seçenek 6 Yedek Yükleme vivoxy ##########


6)
echo "\033[0;33;40m Yedek Yukleme Islemi Basliyor \033[0;33;40m"
cd /usr
tar zxfv yedekgame_en_son.tar.gz
cd /var/db
tar zxfv yedekmysql_son.tar.gz
cd /var/db
echo -e "\033[0;33;40m Yedekleriniz Yuklendi. \033[0;33;40m"
echo -e "\033[0;33;40m Uyari ! Eski Yedekleriniz Silindi Tekrar Yedek Aliniz.. \033[0;33;40m"
;;

############# Seçenek 7 Yedek Yükleme vivoxy ##########

7)
cd /usr/game
sh temizle.sh
;;

############# Seçenek 8 Sunucuya Benden Başka Kim Bağlı vivoxy ##########

8)
who
;;

############# Seçenek 9 CPU Kullanım Göster vivoxy ##########

9)
top
;;

############# Seçenek 10 Putty Yapılan Son Bağlantıyı Göster vivoxy ##########


10)
last
;;

############# Seçenek 11 Dizinde Bulunan Tum Dosyalari Göster vivoxy ##########


11)
ls -a
;;

############# Seçenek 12 Bulundugum Dizini Göster  vivoxy ##########

12)
pwd
;;

############# Seçenek 13  Çalıştırdığım Işlemleri Göster vivoxy ##########

13)
ps -x 
;;

############# Seçenek 14 Oyunumda Kaç Kişi Var ?  vivoxy ##########

14)
netstat -nat | grep 13001 | grep ESTABLISHED | wc -l
;;

############# Seçenek 15 Işletim Sistemini Öğren   Göster vivoxy ##########

15)
uname
;;

############# Seçenek 16 Putty Şifremi Değiştir vivoxy ##########

16)
passwd
echo " Sifreniz Basariyla Degistirildi. "
;;

############# Seçenek 17 Hard Disk Istatistiklerini Göster  vivoxy ##########

17)
df
;;

############# Seçenek 18 Nasıl Dosya Silebilirim ?  vivoxy ##########

18)
echo " rm -rf dosya adi.tar.gz "
;;

############# Seçenek 19 Dizinde Bulunan Bütün Dosyaları Göster  vivoxy ##########

19)
ls
;;

####################################################################
####################################################################
####################################################################
############# Format İşlemlerine Geçelim .d  vivoxy ##########
####################################################################
####################################################################
####################################################################

20)
cd /root
fetch http://aysudagaming.net/format/format.sh
sh format.sh
;;

####################################################################
####################################################################
####################################################################
############ Biyolog İşlemlerine Geçelim .d  vivoxy ##########
####################################################################
####################################################################
####################################################################

21)
cd /root
fetch http://site_giriniz.com
sh biyolog.sh
;;

####################################################################
####################################################################
####################################################################
############ Başlangıç Leveline Geçelim .d  vivoxy ###########
####################################################################
####################################################################
####################################################################



####################################################################
####################################################################
####################################################################
########### Öğretmen Skillerine Geçelim .d  vivoxy ###########
####################################################################
####################################################################
####################################################################

22)
cd /root
fetch http://vivoxy.com.com/skiller.sh
sh skiller.sh
;;

####################################################################
####################################################################
####################################################################
########### Efsunlara Mı Geçsek Ne? .d  vivoxy ###############
####################################################################
####################################################################
####################################################################

23)
cd /root
fetch http://vivoxy.com.com/efsunlar.sh
sh efsunlar.sh
;;


####################################################################
####################################################################
####################################################################
########## Tamam tamam Level Sınırınıda Ayarlarız .d ###############
####################################################################
####################################################################
####################################################################


24)
cd /root
fetch http://aysudagaming.net/bilmenizgerekenler.sh
sh bilmenizgerekenler.sh
;;



####################################################################
####################################################################
####################################################################
########## Bence Bunu Herkes Okumalı Oku oku kesin.d ###############
####################################################################
####################################################################
####################################################################

25)
cd /root
fetch http://aysudagaming.net/guncelleme/haberler.sh
sh haberler.sh
;;




####################################################################
####################################################################
####################################################################
########## Guncellemeleri Yukle Problem Yaşama .d ##################
####################################################################
####################################################################
####################################################################

26)
cd /root
fetch http://aysudagaming.net/guncelleme/guncelleme.sh
sh guncelleme.sh
;;


27)
/usr/local/etc/rc.d/mysql-server restart
echo -e "\033[0;33;40m İşlem tamamlandı. vivoxy.comi Kontrol ediniz. \033[0;33;40m"
echo -e "\033[0;33;40m Erişim gelmezse reboot atıp tekrar test edebilirsiniz.. \033[0;33;40m"
;;

28)
cd /usr/
echo -e "\033[0;33;40m İşlem Başlıyor. \033[0;33;40m"
fetch http://aysudagaming.net/guncelleme/dragonlifegame.tar.gz
echo -e "\033[0;33;40m İşlem tamamlandı. usr kalsörünü kontrol ediniz. \033[0;33;40m"
echo -e "\033[0;33;40m Test dosyası gelmezse reboot atıp tekrar test edebilirsiniz.. \033[0;33;40m"
;;

29)
echo -e "\033[0;33;40m İşlem Başlıyor. \033[0;33;40m"
cd /var/db
fetch http://aysudagaming.net/guncelleme/dragonlifemysql.tar.gz
echo -e "\033[0;33;40m İşlem tamamlandı. var/d kalsörünü kontrol ediniz. \033[0;33;40m"
echo -e "\033[0;33;40m Test dosyası gelmezse reboot atıp tekrar test edebilirsiniz.. \033[0;33;40m"
;;


*)
echo "Hatali Bir Secenek Sectiniz."
esac