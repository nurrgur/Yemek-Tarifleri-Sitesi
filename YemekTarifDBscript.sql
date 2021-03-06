USE [Dbo_yemektarifi]
GO
/****** Object:  Table [dbo].[Tbl_GununYemegi]    Script Date: 6.09.2021 15:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_GununYemegi](
	[GununYemegiid] [smallint] IDENTITY(1,1) NOT NULL,
	[GununYemegiAd] [varchar](50) NULL,
	[GununYemegiMalzeme] [varchar](500) NULL,
	[GununYemegiTarif] [varchar](max) NULL,
	[GununYemegiResim] [varchar](100) NULL,
	[GununYemegiPuan] [tinyint] NULL,
	[GununYemegiTarih] [smalldatetime] NULL,
 CONSTRAINT [PK_Tbl_GununYemegi] PRIMARY KEY CLUSTERED 
(
	[GununYemegiid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Hakkimizda]    Script Date: 6.09.2021 15:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Hakkimizda](
	[Metin] [varchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Kategoriler]    Script Date: 6.09.2021 15:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Kategoriler](
	[Kategoriid] [smallint] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [varchar](50) NULL,
	[KategoriAdet] [smallint] NULL,
	[Kategoriresim] [varchar](100) NULL,
 CONSTRAINT [PK_Tbl_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[Kategoriid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Mesajlar]    Script Date: 6.09.2021 15:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Mesajlar](
	[Mesajid] [smallint] IDENTITY(1,1) NOT NULL,
	[MesajGonderen] [varchar](50) NULL,
	[MesajBaslik] [varchar](30) NULL,
	[MesajMail] [varchar](50) NULL,
	[Mesajicerik] [varchar](500) NULL,
 CONSTRAINT [PK_Tbl_Mesajlar] PRIMARY KEY CLUSTERED 
(
	[Mesajid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Tarifler]    Script Date: 6.09.2021 15:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Tarifler](
	[Tarifid] [smallint] IDENTITY(1,1) NOT NULL,
	[TarifAd] [varchar](50) NULL,
	[TarifMalzeme] [varchar](500) NULL,
	[TarifYapilis] [varchar](max) NULL,
	[TarifResim] [varchar](50) NULL,
	[TarifSahip] [varchar](50) NULL,
	[TarifSahipMail] [varchar](50) NULL,
	[TarifDurum] [bit] NULL,
	[Kategoriid] [smallint] NULL,
 CONSTRAINT [PK_Tbl_Tarifler] PRIMARY KEY CLUSTERED 
(
	[Tarifid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Yemekler]    Script Date: 6.09.2021 15:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yemekler](
	[Yemekid] [smallint] IDENTITY(1,1) NOT NULL,
	[YemekAd] [varchar](50) NULL,
	[YemekMalzeme] [varchar](500) NULL,
	[YemekTarif] [varchar](max) NULL,
	[YemekResim] [varchar](100) NULL,
	[YemekTarih] [smalldatetime] NULL,
	[YemekPuan] [float] NULL,
	[Kategoriid] [smallint] NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK_Tbl_Yemekler] PRIMARY KEY CLUSTERED 
(
	[Yemekid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Yonetici]    Script Date: 6.09.2021 15:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yonetici](
	[Yoneticiid] [tinyint] IDENTITY(1,1) NOT NULL,
	[YoneticiAd] [varchar](50) NULL,
	[YoneticiSifre] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Yonetici] PRIMARY KEY CLUSTERED 
(
	[Yoneticiid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Yorumlar]    Script Date: 6.09.2021 15:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yorumlar](
	[Yorumid] [smallint] IDENTITY(1,1) NOT NULL,
	[YorumAdSoyad] [varchar](50) NULL,
	[YorumMail] [varchar](50) NULL,
	[YorumTarih] [smalldatetime] NULL,
	[YorumOnay] [bit] NULL,
	[Yorumicerik] [varchar](500) NULL,
	[Yemekid] [smallint] NULL,
 CONSTRAINT [PK_Tbl_Yorumlar] PRIMARY KEY CLUSTERED 
(
	[Yorumid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_GununYemegi] ON 

INSERT [dbo].[Tbl_GununYemegi] ([GununYemegiid], [GununYemegiAd], [GununYemegiMalzeme], [GununYemegiTarif], [GununYemegiResim], [GununYemegiPuan], [GununYemegiTarih]) VALUES (1, N'Karnıyarık', N'6 adet küçük boy patlıcan (büyük ise ikiye bölebilirsiniz)
3 adet sivri biber 2 adet orta boy soğan
2 adet domates
2 adet sivri biber
2 diş sarımsak
Sıvı yağ, tuz, karabiber, kırmızıbiber
200 gr kıyma
1 çay bardağı sıcak su 1 yemek kaşığı salça
1 su bardağı sıcak su', N'Patlıcanları çizgili soyup, yarım saat yağ çekmemesi için tuzlu suda bekletin.
İyice yıkadıktan sonra suyunu havlu ile çektirin ve az yağda kızartın. 3 adet biberi de yağda kızartın.
Daha sonra aynı tavada doğranmış soğanları kavurun, kıymayı ekleyerek bir müddet daha kavurun ve biberleri, sarımsağı ekleyerek 2 dakika daha kavurun.
Küp küp doğramış olduğunuz 2 adet domatesi, tuzu, baharatları ekleyerek karıştırın.
Üzerine bir çay bardağı su ekleyerek 5 dk kaynatın.
Tepsiye patlıcanların ortalarını keserek yerleştirin ve bu kesiklerden patlıcanın içine bastırarak iç malzemesine yer açın ve malzeme ile patlıcanları doldurun.
Doldurduğunuz patlıcanların üzerine ortadan ikiye kestiğiniz çeri domatesi ya da 1 adet domatesi eşit büyüklükte olacak şekilde paylaştırın ve kızarttığımız biberlerden birer tane koyun.
Ayrı bir yerde 1 kaşık salçayı, 1 su bardağı sıcak suda ezerek patlıcanların aralarına dökün. Kıymalar çıkmasın diye üzerine dökmeyin.
Daha sonra 170 derece de ısıttığınız fırına sürerek 20-25 dk pişirin. Dilerseniz bu işlemi pilav tenceresi gibi bir tencerede ocakta yapabilirsiniz. Aynı sürede tencerede de  pişecektir.
Afiyet olsun..', NULL, 7, CAST(N'2021-05-14T20:53:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Tbl_GununYemegi] OFF
GO
INSERT [dbo].[Tbl_Hakkimizda] ([Metin]) VALUES (N'Bu site 2021 de kurulmuştur. Amacı isteyen herkesin kendi yaptığı ve fotoğrafladığı tarifi gönderebileceği bir platform oluşturmaktır.

Ayrıca tariflerde ki yorumlar ilgili tarifin yapıldığında nasıl olacağı konusunda detaylı bir şekilde bilgi vermektedir.

Afiyet olsun :)
')
GO
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] ON 

INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [Kategoriresim]) VALUES (1, N'Et Yemekleri', 2, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [Kategoriresim]) VALUES (2, N'Sebze Yemekleri', 3, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [Kategoriresim]) VALUES (4, N'Makarna Çeşitleri', 1, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [Kategoriresim]) VALUES (5, N'Tavuk Yemekleri', 0, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [Kategoriresim]) VALUES (6, N'Pastalar', 1, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [Kategoriresim]) VALUES (7, N'İçecekler', 1, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [Kategoriresim]) VALUES (8, N'Salatalar', 0, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [Kategoriresim]) VALUES (11, N'Çorbalar', 2, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [Kategoriresim]) VALUES (12, N'Hamur İşi', 2, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Mesajlar] ON 

INSERT [dbo].[Tbl_Mesajlar] ([Mesajid], [MesajGonderen], [MesajBaslik], [MesajMail], [Mesajicerik]) VALUES (1, N'Aleyna Taşçı', N'Teşekkür', N'aleyna@gmail.com', N'Sitenizde istediğim her tarifi bulabiliyorum teşekkürler :)')
INSERT [dbo].[Tbl_Mesajlar] ([Mesajid], [MesajGonderen], [MesajBaslik], [MesajMail], [Mesajicerik]) VALUES (2, N'ela çalık', N'Öneri', N'ela@gmail.com', N'Siteye biraz daha tarif yüklemelisiniz')
SET IDENTITY_INSERT [dbo].[Tbl_Mesajlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Tarifler] ON 

INSERT [dbo].[Tbl_Tarifler] ([Tarifid], [TarifAd], [TarifMalzeme], [TarifYapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum], [Kategoriid]) VALUES (1, N'Ezogelin', N'salça yağ', N'karıştır', N'Coffee-l.jpg', N'nur', N'asds@gmailcom', 1, 11)
INSERT [dbo].[Tbl_Tarifler] ([Tarifid], [TarifAd], [TarifMalzeme], [TarifYapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum], [Kategoriid]) VALUES (2, N'Üzümlü Kek', N'3 adet yumurta
1 su bardağı şeker
1 su bardağı yoğurt
1 su bardağı sıvı yağ
1 su bardağı kuru üzüm
Portakal ve limon kabuğu rendesi (ikisi birlikte harika bir aroma oluyor)
1 paket kabartma tozu
1 paket vanilya
2 su bardağı un', N'Karıştırma kabının içerisine yumurta ve şekeri alıyoruz ve iyice çırpıyoruz.
Üzüm hariç diğer malzemeleri ekleyip tekrar çırpıyoruz, kek hamurunu hazırlıyoruz.
En son hafifçe unladığımız üzümleri ekleyip kaşıkla karıştırıyoruz. (üzümlerin dibe çökmemesi için).
Yağladığımız kek kalıbımıza harcımızı alıp pişiriyoruz..
Kekimiz soğuduktan sonra servis tabağına ters çevirerek çıkartıyoruz. Dilimleyerek servis edebiilirsiniz.', N'uzumlu-kek-tarifi.jpg', N'nur', N'nur@gmail.com', 1, 12)
INSERT [dbo].[Tbl_Tarifler] ([Tarifid], [TarifAd], [TarifMalzeme], [TarifYapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum], [Kategoriid]) VALUES (3, N'Karnabahar', NULL, NULL, NULL, NULL, NULL, 1, 2)
INSERT [dbo].[Tbl_Tarifler] ([Tarifid], [TarifAd], [TarifMalzeme], [TarifYapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum], [Kategoriid]) VALUES (4, N'Taze Fasulye', N'Yarım kg taze fasulye
 2 adet domates
 1 adet kuru soğan
 Kırmızı pul biber
 1,5 yemek kaşığı salça
 Karabiber
 Zeytinyağı
 Tuz', N'Taze fasulyeleri yıkadıktan sonra ayıklayıp doğrayalım.
Düdüklü tencerenin içerisine zeytinyağı gezdirelim. Kuru soğan doğrayalım, soğanlar kavrulduktan sonra salçayı, doğranmış domatesi, taze fasulyeyi ve baharatları ilave edelim. 5-6 dakika kısık ateşte kavuralım.
Yaklaşık 3 su bardağı kadar su ilave edelim ve düdüklü tencerenin kapağını kapatalım.
15 dakika pişirelim. Afiyet olsun.', N'~/Resimler/Tazefasulye.jpg', NULL, NULL, 1, 2)
INSERT [dbo].[Tbl_Tarifler] ([Tarifid], [TarifAd], [TarifMalzeme], [TarifYapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum], [Kategoriid]) VALUES (5, N'Limonata', N'1 adet limon
1 adet portakal
1 su bardağı toz şeker
1 tatlı kaşığı limon tuzu
3 litre su', N'Öncelikle portakal ve limonu buzluğa koyup dondurmamız gerekiyor.
1 gün önceden bırakın dondurucuya iyice donsun. Bu işlem limon ve portakal kabuğunun acı tadının olmaması için. İlk keşfedeni bulup tebrik etmek isterdim:)
Limonatayı hazırlayacağınız zaman portakal ve limonu buzluktan çıkarın. 10 dakika kadar bekleyin. Çokta beklemeyin öyle kendini bırakmasın. 4'' e bölünecek kıvamda olsun yeterli.
Robota portakal ve limonu dilimleyin ve içine koyun.
1 su bardağı şekeri üzerine ilave edin.
Kabuğuyla birlikte olmalı özelliği burada zaten o yüzden dikkat edelim. Robotu çalıştıralım ve iyice ezilene kadar çekelim. Öyle dakikalar sürmüyor 1-2 dakika yeterli. Robotunuz yoksa rendeleyebilirsiniz ve ondan sonra şekerle ovalayabilirsiniz.
3 lt suya çektiğimiz portakal limon şeker karışımını ekleyelim.
1 tatlı kaşığı limon tuzunu da ekleyip renginin iyice geçmesi için 5 dakika kadar bekleyelim.
Ara sıra karıştıralım ki limon tuzu ve şeker iyice erisin.
Benim ailem kalabalık yetmez derseniz 5 lt su ekleyin şekeri ve limon tuzunu da arttırın tabi.
Bir kaba temiz bir tülbent geçirelim ve içeceğimizi süzelim içinde hiç tane kalmasın. Tülbent olması önemli.
Hazır gibi oluyor hatta tadı daha güzel kaliteli markaların bile önüne geçen bir lezzet. Belki onlar da böyle yapıyordur:)
Tülbentte posa kalınca çamaşır sıkar gibi sıkın. En yoğun renk sıkınca çıkıyor. Üzerine az az su ekleyerek sıkabilirsiniz. Renk vermeyi bırakana kadar. Bakmayın böyle uzun uzun yazdığıma tek tek limon sıkıp yaptığımız limonatadan çok daha kolay ve lezzetli. Umarım denersiniz ve beğenirsiniz.', N'Limonata.jpg', N'Dilara Şimşek', N'dilara@gmail.com', 1, 7)
INSERT [dbo].[Tbl_Tarifler] ([Tarifid], [TarifAd], [TarifMalzeme], [TarifYapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum], [Kategoriid]) VALUES (6, N'Brownie Kurabiye', N'125 gram tereyağı (oda sıcaklığında)1 çay bardağı pudra şekeri 1 çay bardağı sıvı yağ 1 paket vanilya 1 paket kabartma tozu 3 yemek kaşığı kakao 3 su bardağı un 1 adet yumurta 1 su bardağı su1 su bardağı toz şeker', N'Brownie kurabiye hazırlamak için ilk önce şerbetini hazırlayalım. Bunun için bir küçük tencereye su ve şekeri alıp karıştırarak ocağa alalım. Kaynamaya başlayınca 6 dakika daha kaynatarak altını kapatalım ve ılınmaya bırakalım.
Kurabiye hamurunu yoğuralım. Yoğurma kabına tereyağını, unu, yumurtayı, kakaoyu, pudra şekerini, sıvı yağı, vanilya ve kabartma tozunu alarak karıştıralım. Ele yapışmayacak bir hamur elde edelim.
Kurabiyeleri şekillendirelim. Bir tepsiye yağlı kağıt serelim ve hamurdan parçalar alıp yuvarlak şekil vererek tepsiye dizelim. Aynı işlemi bütün hamura yapalım.
Sıra geldi kurabiyeleri pişirmeye. Brownie kurabiyelerimizi önceden ısıttığımız 200 derece fırında 10 dakika pişirelim.
Son olarak kurabiyeleri şerbetle buluşturalım. Kurabiyeler piştikten sonra, ilk sıcaklığı gidince ılınmış olan şerbete kurabiyeleri batırıp çıkaralım. Üzerlerine hindistan cevizi ve antep fıstığı serperek servis edelim.', N'~/Resimler/brownie.jpg', N'Ece kılıç', N'ece@gmail.com', 1, 12)
SET IDENTITY_INSERT [dbo].[Tbl_Tarifler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Yemekler] ON 

INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (1, N'Köri Soslu Makarna', N'1/2 paket, makarna, (haşlanmış)1 paket, krema, 1 tatlı kaşığı, köri, 2 çay kaşığı, tuz, 1 çay kaşığı, karabiber, 1 yemek kaşığı, tereyağı, 2 parça, tavuk göğsü, 100 gram, parmesan (rendelenmiş)', N'Makarnayı haşlayın. Tavukları küp küp doğrayın. Tavayı ısıtın ve tereyağını eritin. Eriyen tereyağında tavukları kavurun. Köri, karabiber ve tuzu ilave edin. Kremayı ilave edin ve kısık ateşte pişirmeye ve kremayı yoğunlaştırmaya devam edin. Makarnayı ilave edin ve henüz sıcakken parmesan ekleyip tavada çevirin. Tabağa alın ve parmesan peyniri ilave edin. İşte bu kadar, afiyet olsun!', N'~/Resimler/köri soslu makarna.jpg', CAST(N'2021-05-15T00:45:00' AS SmallDateTime), 8.2, 4, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (2, N'Zeytinyağlı Barbunya', N'1 kilogram taze barbunya, 1/2 çay bardağı zeytinyağı, 1 adet orta boy kuru soğan, 2 diş sarımsak,
1 adet büyük boy patates, 2 adet orta boy havuç, 2 adet orta boy domates, 2 su bardağı sıcak su,
1 tatlı kaşığı domates salçası, 1 tatlı kaşığı toz şeker, 1 çay kaşığı tuz
', N'Kabuklarını ayıklayıp bol suda yıkadığınız barbunyaları üzerini geçecek kadar su ilavesiyle orta ateşte 10 dakika kadar haşlayın. Kuru soğanı rendenin ince tarafıyla rendeleyin. Sarımsakları ayıklayın, lezzet vermesi için bütün olarak bırakın. Kabuğunu soyduğunuz patates ve havuçları küçük küpler halinde doğrayın. Ortadan ikiye kesip uç kısımlarını aldığınız domatesleri rendeleyin. Zeytinyağını derin bir tencerede kızdırın. Rendelenmiş soğan ve sarımsakları katıp hafif bir renk alana kadar soteleyin. Patates ve havuç küplerini katıp kısa süre kavurun. Hafif renk vermesi için domates salçası ve rendelenmiş domatesleri katıp kısık ateşte pişmeye bırakın. Haşlanmış barbunyayı süzüp tencereye alın. Toz şeker, tuz ve sıcak suyu ekledikten sonra kısık ateşte barbunyalar yumuşayana kadar pişirin. Ocaktan aldığınız barbunyayı kapağı kapalı tencerede oda ısısına gelene kadar dinlendirin. Sonrasında derin bir servis kabına aktardığınız barbunyayı; arzuya göre üzerine gezdirdiğiniz sızma zeytinyağı, taze sıkılmış limon suyu, incecik kıyılmış maydanoz eşliğinde ılık ya da soğuk olarak sevdiklerinizle paylaşın.', N'~/Resimler/Barbunya.jpg', CAST(N'2021-05-15T01:20:00' AS SmallDateTime), 8.5, 2, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (3, N'Mercimek Çorbası', N'1 su bardağı kırmızı ya da sarı mercimek, 1 adet kuru soğan, 1 adet patates, 1 adet havuç, 1 yemek kaşığı un, 2 yemek kaşığı ayçiçek yağı, 6 su bardağı sıcak su, (1 adet et su tablet ile hazırlanmış)1 çay kaşığı tuz, 1 çay kaşığı karabiber', N'Kuru soğanı küçük küpler halinde doğrayın. Ayçiçek yağını derin bir tencerede kızdırın. Doğradığınız soğanları 2- 3 dakika kadar kavurun. Kavrulan soğanlara unu ekleyin ve kokusu çıkıp, renk alana kadar kavurma işlemini sürdürün. İri parçalar halinde doğradığınız patates ve havucu tencereye aktarın. Tüm malzemeyi karıştırdıktan sonra arzuya göre et su tablet ile hazırladığınız sıcak suyu ve bol suda yıkadıktan sonra suyunu süzdürdüğünüz mercimeği ilave edin. Tuz ve karabiberi ekleyin. Havuçlar yumuşayana kadar orta ateşte yaklaşık 40 dakika pişirin. Çorbayı, pürüzsüz bir kıvam alması için; el blenderından geçirdikten sonra sıcak olarak sevdiklerinizle paylaşın.', N'~/Resimler/Mercimek.jpg', CAST(N'2021-05-15T01:23:00' AS SmallDateTime), 8.3, 11, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (5, N'Arnavut Ciğeri', N'600 gramciğer
1 çay bardağıun(bulamak için)
1 çay kaşığıtuz
1 çay kaşığıkarbonat
1 su bardağısıvı yağ
1,5 çay kaşığıtoz kırmızı biber
1 çay kaşığıtoz kişniş
2 adetpatates(küp doğranmış)
2 su bardağısıvı yağ(patatesi kızartmak için)
1 adetkırmızı soğan(piyazlık doğranmış)
1 çay kaşığıtuz
1 çay kaşığısumak
1/2 demetdoğranmış maydanoz
', N'Üzerinde bulunan zarı ayıkladığınız kuzu ciğerini, kuşbaşı büyüklüğünde kesin. Derin bir süzgece aldığınız doğranmış kuzu ciğerlerini kanının süzülmesi için bekletin.

Kanını süzdürdüğünüz ciğerleri karbonat ve tuz eklediğiniz una bulayın. Ciğerlerin üzerindeki fazla unu almak için tekrar süzgeçten geçirin.

Ciğerleri tavadaki ısınmış yağın içerisine koyun. Ciğerler pişmeye başladığında kırmızı toz biber ve toz kişniş ekleyin.

Ayrı bir tavada kızdırdığınız yağda küp küp doğradığınız patatesleri kızartın.

Pişen ciğerlerin fazla yağını süzdürerek bir tabağa aktarın.

Patatesler de altın sarısı rengini alınca süzgeç yardımıyla yağını süzerek ocaktan alın. Altına bir peçete koyarak fazla yağından arındırın.
 

Piyazlık doğradığınız kırmızı soğanları, 1 çay kaşığı tuz ile ovarak öldürün.

Üzerine sumak ve doğranmış maydanozu da ekledikten sonra güzelce karıştırın.

Kızarttığınız ciğerleri küp patatesleri ve hazırladığınız sumaklı soğanı bir kapta birleştirerek iyice harmanlayın ve servis edeceğiniz tabağa alıp, sevdiklerinizle afiyetle tüketin!', N'~/Resimler/Arnavutcigeri.jpg', CAST(N'2021-05-17T19:47:00' AS SmallDateTime), 9.5, 1, 1)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (10, N'Çilekli pasta', N'3 yumurta
125 g pudra şekeri
125 g elenmiş un
1 paket kabartma tozu
1 paket vanilya
2.5 su bardağı süt
1 çay bardağı toz şeker
1 çorba kaşığı nişasta (Tepeleme)
1 çorba kaşığı un (Tepeleme)
2 yumurtanın sarısı
1 çorba kaşığı tuzsuz tereyağı veya margarin
100 ml krema
1 paket vanilya
100 g beyaz çikolata', N'Pandispanya için; yumurtaları ve şekeri köpük köpük olana kadar çırpın. Elenmiş unu, kabartma tozunu ve vanilyayı ilave edin.
Spatula ile alttan üste doğru havalandırarak köpüğü söndürmeden karıştırın. Orta boy bir kelepçeli kalıbın tabanını yağlı kağıtla kaplayıp, hamuru kalıbın içine dökün.
Fırının alt rafına ısıya dayanıklı, içi su dolu bir kap koyun. Kelepçeli kalıbı da orta rafa yerleştirin. Önceden ısıtılmış 170 derece fırında 40-45 dakika pişirin.
Pastacı kreması için; tereyağı ve krema dışındaki tüm malzemeyi sos tenceresine alın. Çok kısık ateşte, muhallebi kıvamına gelene kadar pişirin.
İndirmeye birkaç dakika kala tereyağını, kremayı ve beyaz çikolatayı ekleyin. İyice karıştırıp pütürsüz bir kıvam elde edince ocaktan alın. Arada bir çırpıp pütürleşmesini önleyerek soğutun.
Pişen pandispanyayı enine ikiye kesin, arasına önce pastacı kremasını yayın, hemen üzerine doğranmış çilekleri ve krokan parçalarını serpin. Üzerine ikinci pandispanya katı yerleştirin. Kremadan yayın. Yapraklarıyla birlikte bütün çilekleri de yerleştirip soğutun ve dilimleyin.
Özel gün ve kutlamalarda çilekli pastayı, yanına çok yakışan muzlu smoothie ile birlikte servis edebilirsiniz. Şimdiden afiyet olsun.', N'~/Resimler/Çilekli Pasta.jpg', CAST(N'2021-05-17T23:01:00' AS SmallDateTime), 9.7, 6, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (13, N'Üzümlü Kek', N'3 adet yumurta1 su bardağı şeker1 su bardağı yoğurt1 su bardağı sıvı yağ1 su bardağı kuru üzümPortakal ve limon kabuğu rendesi (ikisi birlikte harika bir aroma oluyor)1 paket kabartma tozu1 paket vanilya2 su bardağı un', N'Karıştırma kabının içerisine yumurta ve şekeri alıyoruz ve iyice çırpıyoruz.
Üzüm hariç diğer malzemeleri ekleyip tekrar çırpıyoruz, kek hamurunu hazırlıyoruz.
En son hafifçe unladığımız üzümleri ekleyip kaşıkla karıştırıyoruz. (üzümlerin dibe çökmemesi için).
Yağladığımız kek kalıbımıza harcımızı alıp pişiriyoruz..
Kekimiz soğuduktan sonra servis tabağına ters çevirerek çıkartıyoruz. Dilimleyerek servis edebiilirsiniz.', N'~/Resimler/Uzumlu_kek.jpg', CAST(N'2021-05-18T22:20:00' AS SmallDateTime), 7.7, 12, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (14, N'Ezogelin', N'1 su bardağı kırmızı mercimek
1 tatlı kaşığı pirinç
1 tatlı kaşığı bulgur
2 çay kaşığı pul biber
1 yemek kaşığı nane
2 diş sarımsak
1 orta boy soğan
1 yemek kaşığı biber salçası
1 yemek kaşığı tereyağı
2 litreye yakın sıcak su
Tuz', N'Ezogelin çorbası yapmak için düdüklü tencerede önce rendelemiş olduğumuz soğanı ve ezmiş olduğumuz sarımsağı tereyağında kavuruyoruz. Soğanlar diriliğini kaybetsin yeterli yakmadan orta ateşte kavuralım.
Soğanlar kavrulunca naneyi, kırmızı biberi ve salçayı ilave edip. Kavurmaya devam edelim.
Bir iki karıştırdıktan sonra yıkadığımız mercimeği, pirinci, bulguru ve tuzunu da ilave ederek karıştıralım.
Başka bir tarafta kaynamakta olan 2 litreye yakın suyu üzerine boşaltalım.
Düdüklünün kapağını ve düdüğünü kapattıktan sonra 10 dakika pişiriyoruz. Normal tencerede de yapabilirsiniz ama biraz daha geç pişecektir (yaklaşık 30-40 dakika sürecektir).', N'~/Resimler/Ezogelin.jpg', CAST(N'2021-05-18T22:39:00' AS SmallDateTime), 9.6, 11, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (17, N'Karnabahar', N'1 adet orta boy karnabahar
2 adet patates
2 adet havuç
1 adet kuru soğan
1 yemek kaşığı salça
4 yemek kaşığı sıvı yağ
pul biber
Üzerini geçecek kadar et suyu veya sıcak su', N'Tencereye sıvı yağı alın.
Soğanları doğrayıp tencereye ekleyin ve kavurun, salçayı ve pul biberi ekleyip biraz daha kavurun.
Karnabaharı küçük küçük parçalara ayırın, patatesleri soyup küp küp, havuçları yuvarlak doğrayıp tencereye alın.
Et suyunu da ekleyip karıştırın.
Tuz ve biraz su ekleyin ve kısık ateşte pişmeye bırakın.
Tencerenin kapağını kapatın, patatesler yumuşayana kadar pişirin. Afiyet olsun.', N'~/Resimler/Karnabahar.jpg', CAST(N'2021-05-18T22:55:00' AS SmallDateTime), 9.2, 2, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (18, N'Taze Fasulye', N'Yarım kg taze fasulye
 2 adet domates
 1 adet kuru soğan
 Kırmızı pul biber
 1,5 yemek kaşığı salça
 Karabiber
 Zeytinyağı
 Tuz', N'Taze fasulyeleri yıkadıktan sonra ayıklayıp doğrayalım.
Düdüklü tencerenin içerisine zeytinyağı gezdirelim. Kuru soğan doğrayalım, soğanlar kavrulduktan sonra salçayı, doğranmış domatesi, taze fasulyeyi ve baharatları ilave edelim. 5-6 dakika kısık ateşte kavuralım.
Yaklaşık 3 su bardağı kadar su ilave edelim ve düdüklü tencerenin kapağını kapatalım.
15 dakika pişirelim. Afiyet olsun.', N'~/Resimler/Tazefasulye.jpg', CAST(N'2021-05-18T23:00:00' AS SmallDateTime), 6.7, 2, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (21, N'Brownie Kurabiye', N'125 gram tereyağı (oda sıcaklığında)1 çay bardağı pudra şekeri 1 çay bardağı sıvı yağ 1 paket vanilya 1 paket kabartma tozu 3 yemek kaşığı kakao 3 su bardağı un 1 adet yumurta 1 su bardağı su1 su bardağı toz şeker', N'Brownie kurabiye hazırlamak için ilk önce şerbetini hazırlayalım. Bunun için bir küçük tencereye su ve şekeri alıp karıştırarak ocağa alalım. Kaynamaya başlayınca 6 dakika daha kaynatarak altını kapatalım ve ılınmaya bırakalım.
Kurabiye hamurunu yoğuralım. Yoğurma kabına tereyağını, unu, yumurtayı, kakaoyu, pudra şekerini, sıvı yağı, vanilya ve kabartma tozunu alarak karıştıralım. Ele yapışmayacak bir hamur elde edelim.
Kurabiyeleri şekillendirelim. Bir tepsiye yağlı kağıt serelim ve hamurdan parçalar alıp yuvarlak şekil vererek tepsiye dizelim. Aynı işlemi bütün hamura yapalım.
Sıra geldi kurabiyeleri pişirmeye. Brownie kurabiyelerimizi önceden ısıttığımız 200 derece fırında 10 dakika pişirelim.
Son olarak kurabiyeleri şerbetle buluşturalım. Kurabiyeler piştikten sonra, ilk sıcaklığı gidince ılınmış olan şerbete kurabiyeleri batırıp çıkaralım. Üzerlerine hindistan cevizi ve antep fıstığı serperek servis edelim.', N'~/Resimler/brownie.jpg', CAST(N'2021-05-24T23:40:00' AS SmallDateTime), NULL, 12, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (24, N'Limonata', N'1 adet limon1 adet portakal1 su bardağı toz şeker1 tatlı kaşığı limon tuzu3 litre su', N'Öncelikle portakal ve limonu buzluğa koyup dondurmamız gerekiyor.
1 gün önceden bırakın dondurucuya iyice donsun. Bu işlem limon ve portakal kabuğunun acı tadının olmaması için. İlk keşfedeni bulup tebrik etmek isterdim:)
Limonatayı hazırlayacağınız zaman portakal ve limonu buzluktan çıkarın. 10 dakika kadar bekleyin. Çokta beklemeyin öyle kendini bırakmasın. 4'' e bölünecek kıvamda olsun yeterli.
Robota portakal ve limonu dilimleyin ve içine koyun.
1 su bardağı şekeri üzerine ilave edin.
Kabuğuyla birlikte olmalı özelliği burada zaten o yüzden dikkat edelim. Robotu çalıştıralım ve iyice ezilene kadar çekelim. Öyle dakikalar sürmüyor 1-2 dakika yeterli. Robotunuz yoksa rendeleyebilirsiniz ve ondan sonra şekerle ovalayabilirsiniz.
3 lt suya çektiğimiz portakal limon şeker karışımını ekleyelim.
1 tatlı kaşığı limon tuzunu da ekleyip renginin iyice geçmesi için 5 dakika kadar bekleyelim.
Ara sıra karıştıralım ki limon tuzu ve şeker iyice erisin.
Benim ailem kalabalık yetmez derseniz 5 lt su ekleyin şekeri ve limon tuzunu da arttırın tabi.
Bir kaba temiz bir tülbent geçirelim ve içeceğimizi süzelim içinde hiç tane kalmasın. Tülbent olması önemli.
Hazır gibi oluyor hatta tadı daha güzel kaliteli markaların bile önüne geçen bir lezzet. Belki onlar da böyle yapıyordur:)
Tülbentte posa kalınca çamaşır sıkar gibi sıkın. En yoğun renk sıkınca çıkıyor. Üzerine az az su ekleyerek sıkabilirsiniz. Renk vermeyi bırakana kadar. Bakmayın böyle uzun uzun yazdığıma tek tek limon sıkıp yaptığımız limonatadan çok daha kolay ve lezzetli. Umarım denersiniz ve beğenirsiniz.', NULL, CAST(N'2021-05-24T23:52:00' AS SmallDateTime), NULL, 7, 0)
SET IDENTITY_INSERT [dbo].[Tbl_Yemekler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Yorumlar] ON 

INSERT [dbo].[Tbl_Yorumlar] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumicerik], [Yemekid]) VALUES (1, N'Ayşe yıldız', N'ayse@gmail.com', CAST(N'2021-05-15T02:07:00' AS SmallDateTime), 1, N'Tarif için teşekkür ederim çok güzel oldu.', 3)
INSERT [dbo].[Tbl_Yorumlar] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumicerik], [Yemekid]) VALUES (2, N'Sena uğuz', N'sena@gmail.com', CAST(N'2021-05-15T02:08:00' AS SmallDateTime), 1, N'Tuzu biraz eksik ama yine de lezzetli oldu teşekkürler.', 1)
INSERT [dbo].[Tbl_Yorumlar] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumicerik], [Yemekid]) VALUES (3, N'Yağmur kaya', N'yagmur@gmail.com', CAST(N'2021-05-15T02:12:00' AS SmallDateTime), 1, N'Tarifiniz çok güzel tatlı tarifler', 3)
INSERT [dbo].[Tbl_Yorumlar] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumicerik], [Yemekid]) VALUES (4, N'Aslı şeker', N'aslı@gmail.com', CAST(N'2021-05-15T14:53:00' AS SmallDateTime), 0, N'körisi biraz daha fazla olursa daha güzel tat verebilir bence.', 1)
INSERT [dbo].[Tbl_Yorumlar] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumicerik], [Yemekid]) VALUES (5, N'Aleyna Taşçı', N'aleyna@gmail.com', CAST(N'2021-05-15T17:36:00' AS SmallDateTime), 0, N'Tarifinizi yaptım çok güzel oldu :) Teşekkürler..', 2)
SET IDENTITY_INSERT [dbo].[Tbl_Yorumlar] OFF
GO
ALTER TABLE [dbo].[Tbl_GununYemegi] ADD  CONSTRAINT [DF_Tbl_GununYemegi_GununYemegiTarih]  DEFAULT (getdate()) FOR [GununYemegiTarih]
GO
ALTER TABLE [dbo].[Tbl_Kategoriler] ADD  CONSTRAINT [DF_Tbl_Kategoriler_KategoriAdet]  DEFAULT ((0)) FOR [KategoriAdet]
GO
ALTER TABLE [dbo].[Tbl_Tarifler] ADD  CONSTRAINT [DF_Tbl_Tarifler_TarifDurum]  DEFAULT ((0)) FOR [TarifDurum]
GO
ALTER TABLE [dbo].[Tbl_Yemekler] ADD  CONSTRAINT [DF_Tbl_Yemekler_YemekTarih]  DEFAULT (getdate()) FOR [YemekTarih]
GO
ALTER TABLE [dbo].[Tbl_Yemekler] ADD  CONSTRAINT [DF_Tbl_Yemekler_Durum]  DEFAULT ((0)) FOR [Durum]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] ADD  CONSTRAINT [DF_Tbl_Yorumlar_YorumTarih]  DEFAULT (getdate()) FOR [YorumTarih]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] ADD  CONSTRAINT [DF_Tbl_Yorumlar_YorumOnay]  DEFAULT ((0)) FOR [YorumOnay]
GO
ALTER TABLE [dbo].[Tbl_Yemekler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Yemekler_Tbl_Kategoriler] FOREIGN KEY([Kategoriid])
REFERENCES [dbo].[Tbl_Kategoriler] ([Kategoriid])
GO
ALTER TABLE [dbo].[Tbl_Yemekler] CHECK CONSTRAINT [FK_Tbl_Yemekler_Tbl_Kategoriler]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Yorumlar_Tbl_Yemekler] FOREIGN KEY([Yemekid])
REFERENCES [dbo].[Tbl_Yemekler] ([Yemekid])
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] CHECK CONSTRAINT [FK_Tbl_Yorumlar_Tbl_Yemekler]
GO
