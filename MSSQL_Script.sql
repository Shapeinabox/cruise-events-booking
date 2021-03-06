USE [PrenotazioniEventi]
GO
/****** Object:  Table [dbo].[eventi]    Script Date: 27/06/2018 18:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eventi](
	[id_evento] [int] IDENTITY(1,1) NOT NULL,
	[titolo] [varchar](255) NOT NULL,
	[image] [varchar](255) NULL,
	[fk_locale] [int] NOT NULL,
 CONSTRAINT [PK_EVENTI] PRIMARY KEY CLUSTERED 
(
	[id_evento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[locali]    Script Date: 27/06/2018 18:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[locali](
	[id_locale] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](180) NOT NULL,
	[luogo] [varchar](180) NOT NULL,
	[posti] [int] NOT NULL,
 CONSTRAINT [PK_LOCALI] PRIMARY KEY CLUSTERED 
(
	[id_locale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prenotazioni]    Script Date: 27/06/2018 18:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prenotazioni](
	[id_pren] [int] IDENTITY(1,1) NOT NULL,
	[qta] [int] NOT NULL,
	[data] [int] NOT NULL,
	[fk_utente] [int] NOT NULL,
	[fk_replica] [int] NOT NULL,
 CONSTRAINT [PK_PRENOTAZIONI] PRIMARY KEY CLUSTERED 
(
	[id_pren] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[repliche]    Script Date: 27/06/2018 18:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[repliche](
	[id_replica] [int] IDENTITY(1,1) NOT NULL,
	[data] [bigint] NOT NULL,
	[annullato] [bit] NOT NULL,
	[fk_evento] [int] NOT NULL,
 CONSTRAINT [PK_REPLICHE] PRIMARY KEY CLUSTERED 
(
	[id_replica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[utenti]    Script Date: 27/06/2018 18:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[utenti](
	[id_utente] [int] IDENTITY(1,1) NOT NULL,
	[cognome] [varchar](150) NOT NULL,
	[nome] [varchar](150) NOT NULL,
	[telefono] [varchar](15) NOT NULL,
	[email] [varchar](180) NOT NULL,
	[password] [varchar](180) NOT NULL,
 CONSTRAINT [PK_UTENTI] PRIMARY KEY CLUSTERED 
(
	[id_utente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[locali] ON 

INSERT [dbo].[locali] ([id_locale], [nome], [luogo], [posti]) VALUES (2, N'Ristorante Stellato', N'Ristorante 1', 30)
INSERT [dbo].[locali] ([id_locale], [nome], [luogo], [posti]) VALUES (5, N'Discoteca', N'Discoteca', 400)
INSERT [dbo].[locali] ([id_locale], [nome], [luogo], [posti]) VALUES (7, N'Ballo Latino', N'Sala Ballo 1', 150)
INSERT [dbo].[locali] ([id_locale], [nome], [luogo], [posti]) VALUES (9, N'Rock&Roll', N'Sala Ballo 2', 80)
INSERT [dbo].[locali] ([id_locale], [nome], [luogo], [posti]) VALUES (11, N'Piscina Grande', N'Piscina Parco Acquatico', 1000)
INSERT [dbo].[locali] ([id_locale], [nome], [luogo], [posti]) VALUES (12, N'Sala Concerti Piccola', N'Teatro 1', 500)
INSERT [dbo].[locali] ([id_locale], [nome], [luogo], [posti]) VALUES (15, N'Sala Concerti Grande', N'Teatro 2', 2000)
INSERT [dbo].[locali] ([id_locale], [nome], [luogo], [posti]) VALUES (18, N'Spettacoli', N'Teatro 3', 800)
SET IDENTITY_INSERT [dbo].[locali] OFF
SET IDENTITY_INSERT [dbo].[eventi] ON 

INSERT [dbo].[eventi] ([id_evento], [titolo], [image], [fk_locale]) VALUES (2, N'Cena Gourmet', N'https://www.forumroma.it/wp-content/uploads/2018/02/cena-gourmet-.jpg', 2)
INSERT [dbo].[eventi] ([id_evento], [titolo], [image], [fk_locale]) VALUES (4, N'Gigi D''Agostino', N'http://www.torinoggi.it/fileadmin/archivio/torinoggi/gigi_dagostino_01.JPG', 5)
INSERT [dbo].[eventi] ([id_evento], [titolo], [image], [fk_locale]) VALUES (7, N'Balla la Salsa con i campioni del mondo!', N'https://i.ytimg.com/vi/lkerERMXmHA/maxresdefault.jpg', 7)
INSERT [dbo].[eventi] ([id_evento], [titolo], [image], [fk_locale]) VALUES (8, N'Scatenati sulla pista con una serata Rock&Roll!', N'https://radioattivarivoli.files.wordpress.com/2015/07/ferramburger3.jpg', 9)
INSERT [dbo].[eventi] ([id_evento], [titolo], [image], [fk_locale]) VALUES (12, N'Zumba in piscina con il Maestro!', N'https://gdsit.cdn-immedia.net/2016/07/Ginnastica-Piscina.jpg', 11)
INSERT [dbo].[eventi] ([id_evento], [titolo], [image], [fk_locale]) VALUES (13, N'Concerto colonna sonora Start Wars suonata dal vivo', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3qDOi9d639Ho7jjMmchKSecNc3Vwp0OF6oGzZ8HHnBiMWFlBC', 12)
INSERT [dbo].[eventi] ([id_evento], [titolo], [image], [fk_locale]) VALUES (14, N'Concerto Coverband QUEEN', N'https://www.queenie.cz/common/img/og_image_800_420.jpg', 15)
INSERT [dbo].[eventi] ([id_evento], [titolo], [image], [fk_locale]) VALUES (15, N'Spettacolo di magia con Adam Trent', N'https://i0.wp.com/twincitiesgeek.com/wp-content/uploads/2017/11/AdamTrent_Social_Generic.jpg?fit=600%2C600', 18)
SET IDENTITY_INSERT [dbo].[eventi] OFF
SET IDENTITY_INSERT [dbo].[repliche] ON 

INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (2, 1529863200, 0, 2)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (3, 1529604000, 0, 2)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (4, 1530208800, 0, 2)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (6, 1530381600, 0, 2)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (7, 1530813600, 0, 2)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (9, 1532291400, 0, 4)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (10, 1532637000, 0, 4)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (12, 1530217800, 0, 4)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (13, 1529958600, 0, 4)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (14, 1530304200, 0, 4)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (15, 1530649800, 0, 4)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (16, 1530644400, 0, 7)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (17, 1530730800, 0, 7)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (18, 1529780400, 0, 7)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (19, 1530039600, 0, 7)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (22, 1530298800, 0, 7)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (23, 1530385200, 0, 7)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (24, 1530730800, 0, 7)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (26, 1530903600, 0, 7)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (27, 1530903600, 0, 8)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (28, 1530730800, 0, 8)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (29, 1530730800, 0, 8)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (30, 1530471600, 0, 8)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (31, 1529953200, 0, 8)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (32, 1529917200, 0, 12)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (33, 1530090000, 0, 12)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (34, 1530262800, 0, 12)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (35, 1530522000, 0, 12)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (37, 1530559800, 0, 13)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (38, 1530732600, 0, 13)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (39, 1530041400, 0, 13)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (40, 1530214200, 0, 13)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (41, 1529695800, 0, 13)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (42, 1530473400, 0, 13)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (43, 1530646200, 0, 13)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (44, 1530819000, 0, 13)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (45, 1530820800, 0, 14)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (46, 1530561600, 0, 14)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (48, 1529870400, 0, 14)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (49, 1530129600, 0, 14)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (50, 1530302400, 0, 14)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (51, 1530277200, 0, 15)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (52, 1530277200, 0, 15)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (53, 1530622800, 0, 15)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (54, 1530709200, 0, 15)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (55, 1529845200, 0, 15)
INSERT [dbo].[repliche] ([id_replica], [data], [annullato], [fk_evento]) VALUES (56, 1530104400, 0, 15)
SET IDENTITY_INSERT [dbo].[repliche] OFF
SET IDENTITY_INSERT [dbo].[utenti] ON 

INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (1, N'Simmons', N'Leonardo', N'5944806491', N'vqrho.fdxkenwo@rwps.inozb-.org', N'4BVQEDUCIM6V1K6RMO8PZ2PM7TPAU6OESMH37NIT2HC3ALPS8V11YC71M9JLOJHCXR2E23JY6ENHQLBM4W1Z5MFGEGHX4X5I005JIAP5B2VKOQB0XWGRIH6BCL0MMLU894GPFS4U7WO2RVRO4G')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (2, N'Andersen', N'Rolando', N'936-470-1472', N'kauh54@uxfokf.net', N'')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (3, N'Briggs', N'Wallace', N'167483-5310', N'dtpit@dsowhd.com', N'HD0JTU7XA3IP8MAK9ML5SMKLS4JGTCI6LMRW4XVKL7J3DZU4L7EIVUGUSEQPAQ3YKC3LVDFCR0JK2G8TAFULX0AR6W4P769U3LJ1V888R2QVAVSB6XFVVH0K1CFY8Q5LQPHGX7X16MTV')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (4, N'Wright', N'Rolando', N'9651557909', N'kkgkhv.uuvru@hkxifcgq.nzjtje.com', N'FGB4TJ9REZMLYZJT9Z1X54LDBDZZDO9N4BLV4UF7VUBQVVZ7E8WMSY3AVXSFJADQPYGMDOOFKU2BTVIGERK4RMV68BZ620NKGL0WECUQJH2YWRH0EB1RQ9Y32AE2OIDJ6HV7VL')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (5, N'Bird', N'Shaun', N'018-0700021', N'xcavl@pzicfm.org', N'1XUKAJW9HTZSQYVU6MWT3YR214JSEV94S9ZUVOOJ60X8OPMKANPKYRY25SI504VLJUZGZ1YHYDN21IDBHYHR6O61AWO36IJ15BOTQ6L8O7ML3V1ME7O2M3FVOY62CUBFTMXPUJLBC92Z2LXEU2PZUGE1WT5SZJVUV7RHYCSU')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (6, N'Hester', N'Tammi', N'1694875082', N'hmlwcje.xilt@ibtrcm.cbjdmg.org', N'CQD1FT21R7A5CKC7WS0ETBSD83VTFGI9UDIQ10H02Q8CLPIMFA2KSGS1X0TBY9MAO1BZ2L6')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (7, N'Jefferson', N'Gerald', N'583457-1684', N'hnijctb.twcoj@hgj-bm.net', N'BZB23FRJL8E5EYHDKGS0')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (8, N'Sampson', N'Anna', N'0331911320', N'xlji@lspubj.org', N'52T4XNJDJJT368S5PYH8AQPUGWQKXELT6P6WHX5S752OL18PO8UIARWEDZN1XZG4YZXG2VNSSP05O08EN0VPJ2IESRJI93V8OXQL4RNSL2QLRRQCQ8EW3RLVGJOBC4IPUSGR9MAVD34GCXM006')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (9, N'Bean', N'Ricardo', N'998-2646883', N'hdzy27@vewgct.net', N'0PZ4XBV4L3BGGK0RYBZ23YII0N4IJWNB5CH0UNJF')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (10, N'Phillips', N'Dallas', N'802-2685657', N'mqjslvw.vtskxa@ynxtmd.com', N'HPS1NNVC6OP04O26G4A7CLOF0B330WBSKOL8PHDZ96C8XA1OETEI981W0C1BKSBACXGF2THZRAY68GIQAEP7HSJBMP8CF1EGU2VZTLMKBFRY')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (11, N'Eaton', N'Beverly', N'027276-3944', N'pdrae.dtypm@cbeulz.net', N'VNKUA1634SJE4TCL4JQVHB6KIWOS4V21K1R2OH5Z8DQ9BLOS9Z7V12TJGZCDCDY8QIT31AXNEQN3KW9W8WJ4O6ZI87LO4RNUEHJSRLQY1JHBEPYKPG5GUUKKIBUTP8IN3')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (12, N'Flores', N'Eddie', N'307-1013107', N'xejoeg.zmtzvs@lgyo.zk-dfk.net', N'O2DG5M5K34OO3J81ZOL6ZKXZAGRW9T1U7L')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (13, N'Bryant', N'Ernesto', N'5173020377', N'rrqwdf6@jdycsp.kxfjfa.org', N'V69BJAAQFVT7BKO9T1WT35D6OV8BA2UHHIDUPD2WPUI4G8GCKJ8SBSXQS2MN1YGC1CQT7TJFZZ49N9QGFWQQT15PKM1NREVQD523IM4Q0TTBNN3JC5847QIZ708LSWNK4DWH6MYSS0Q08U1XIIAM6QJNM3WHEJY4686AQLCP6FC70IQ')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (14, N'Hatfield', N'Jana', N'313484-0194', N'ytjk.ybhuc@nrjuv.emahhn.com', N'YA2AL1EEU9V3QGE91LU0NR6X5LFQEBN3CJJ3GNI4TSGHQ9YP125EOQP74540LOZILRQ7XASE3P6UAO6WMPOB59FMUBZBIIJ5SXWYIRSQ9RBYJUWFY8DV')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (15, N'Mc Lean', N'Lee', N'179-216-3793', N'yiil.igthgmt@qhqmfxfwp.sbhwka.net', N'ND')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (16, N'English', N'Angelia', N'7231727628', N'vatzjm.gycoiovk@rbdcsltbx.-jiejx.net', N'B4DLBHVK612DS7DUXY2DYH2ZFKCA5N54JJNEE6FSWQSISJMRUIX1LZEU2D6Q4KEIWXT9KZFRI9H7OK7WYLGMQ4IK4SC10ONBCALUQC6U26ICI75H6ASJ4')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (17, N'Richardson', N'Jeanette', N'208347-1532', N'jrydxwq@egwmjjult.hfhpdh.net', N'SSE94RNEQUL5UEYC6LELJJL61XMUUQV47JITGG')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (18, N'Alvarez', N'Nakia', N'691-770-3420', N'wdkqmb.oehllqsyse@zwqm.-akqms.com', N'F6OGOQCCRJU474I8868764TJ0YHYBV4VPCZFV3WGPKVA0MNZOA9N881AD4FP9D1VEYEV53D59SIL9IJEAHA0MHNGAO1RN76BJZW27STKX4DGQF1VL0ER309XAYKH1MH2L72AMG7IO')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (19, N'Singleton', N'Ronnie', N'5982933533', N'sxxrn.thvqd@rojw.dzp-mx.com', N'2H47QUN66MSF8IPYS88CJBMAUJDQ84TW3DYST28PTVFUA5YJKNOY')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (20, N'English', N'Franklin', N'6498504034', N'ailbku.svhfj@raajxdjwh.sivbxj.net', N'B6RVUC7HWX1TVCUKX5P0JIOVSZPKU6LFVNR76WZP18XXD1FS3YNIYXQSIV3UNMMQCMY8KND06ZZBLQHQKWGWJ2GXXZOBT42EL6KR368GKMCZYF6RDC9Q6Q7950ALZ261XLPF5')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (21, N'Arnold', N'Chastity', N'816-2777522', N'iukwtfjq@rqvvxz.com', N'NDO0BWQHYISWXHUC7VZAM2VMGHFA1DPRLNOW16EAJN1SS24O6')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (22, N'Cuevas', N'Darrick', N'2369539818', N'nhqldl.vqvlmcbn@gu-gzk.org', N'DTFV3LH1JTGGGLS1BATYA1HPRY03TEDQ4G0WCQJ2E0MKT27G0RQUV7BBCQ34LE74GPCZLVPKQQ')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (23, N'Reese', N'Bridgette', N'158282-9704', N'ycnzexw0@siny.nchooo.org', N'AEXVORK22NIVW5OKMMFHZSI33Q7V42644N1WEUED0C5GYUFUWB3XB8KHWTRYJPX0HEQ94S5R81GNM1')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (24, N'Santiago', N'Bethany', N'338146-3889', N'cssogifi.pxvlxoh@jtcyga.com', N'9ADYTZ8TV2JZL2GTBF5YK36Q36BP9SXVVOIN6Q319KU6KSJPR848H2K54NUNNIJ35O4XKTMLB4PZ8Z5BMMY0NODS3CJJVGDQ0R1WNM5YLJXDDLX4HJ11KJGGACT793QUQYYHY8NZGZE4R0EIFF1BFB6HAL')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (25, N'Burke', N'Albert', N'358-264-4130', N'ivqjnf.fdrisyruwx@cfth.oxiyuk.com', N'BTXOIT2MEMF58V1KK4COAXBSU1EFFSG6DMC5JAWAPDZV09TGDQLDYWBDH5UGFN7M68SMJ')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (26, N'Sawyer', N'Billie', N'248-603-7885', N'wxmhd9@kpfhl.ibiani.org', N'1A71ZWXGRK8X1O638HAZ')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (27, N'Fitzgerald', N'Arturo', N'403-389-7952', N'ihxhoeks8@msviaumi.whlfps.org', N'DGGV26DPRH6WHPB5XWFF1D97HLIG2ZBBK8OTR5XQKR0311JYVYBKVJMZ68EG')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (28, N'Vargas', N'Cheryl', N'906-894-3133', N'fnujyw31@kqkky.insnnp.net', N'XMR6VC91HDRZOVAD65F1KK3ORF0LONIQG2N48X6OAXEKJK6OBMZ2YF3CJ3FFBNC')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (29, N'Hawkins', N'Darla', N'4783813571', N'kpuio.ujihuo@wqpdpg.org', N'V0JM7559ZRRM6J569C92NFR1ZBL5IQDM')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (30, N'Pitts', N'Alexis', N'641-7235527', N'chtj.qzdphm@-ppapf.org', N'KPI0KG6HQ37OG6ZX86ZEA5F9IMWKZR9E41LTM5OV3LXCKCI5L79JD8AEA9IXKLHYTTJFK6B2I3AP')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (31, N'Yoder', N'Gene', N'145900-1872', N'dinwvxyl16@vicbsi.org', N'2O54RZSHQ0WR6JCNRBI3YJQT3KEV71AXK68KDTTMPH3TMNDNYFQRRL9JYB16KWAOPY60BS9YIVEHFX7F7RXSAI5ZXOM1SM2T6E3NGDC65S9W7R304LZSYHE7S72M586VTLA0TJYTFRMH')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (32, N'Camacho', N'Alfonso', N'3139091337', N'gkcgqaoo.vyek@wsarky.org', N'9S5LLW6M9UP0WU9AQ0WMD2MG27LM5C7UWXJEW1KCZ9JQL0WOPJPQQVV76PIEBKHXNU3YBUDOFKN4JVV2AWXMNG412C87I61ERM3RWYDU50B57QNAUG3ENV96P2WZM669J9DWS35')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (33, N'Walls', N'Jake', N'854-992-6418', N'xzth.nszycct@xxprcv.net', N'J2HM5YTBOYD22MQWCW1U1E7YU1MYDQHQARVKEM1R8KANS37WIGKW2BA4UIS4BVYXGNSAR5IPUALH3J5RTQFX6LOYHQQVUXFDMD75AW5CYU1RQS1AC1ALF0R')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (34, N'Hurst', N'Nancy', N'8403221596', N'lmlf.luhbfjqh@dmdyfi.xgkduv.org', N'YTT0FMVXV7VQC0GXK2YCJW8')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (35, N'George', N'Lena', N'572-646-3897', N'adciulio1@neqppy.com', N'PFJTMTYLMC6H24XCZ3WIXAYCLD0C2EB2K5B022B19940TYUG5MDG0PQEG7')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (36, N'Vega', N'Joy', N'591-623-6241', N'svqct.oeqy@fgny.evxtja.com', N'9SLJ704WXTW9WSU9N6XIMJK6F1U1VEXJVU18NQWZO2WN8DGO5F37IOLQ8F35621JVDD2QMMX9YUKMXY1L6WFAP069B08MRTL0DRVZEXJS5XKT13BG2KZ6L86C7TEMEAI58J952269DM4S')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (37, N'Ho', N'Nicholas', N'396917-3882', N'kbune.miimgb@-eyetc.org', N'C87ORK6TFF5LJSLIXEVFFLHU5EZDQSY3EWUL7XNQBBT44KJALQG89C1RQCJCKT3MG17MY0B0Q433RDQLVPRZCQT1U2UUDB5I76')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (38, N'Mc Guire', N'Virgil', N'4252392300', N'drds.xlpoa@tqlb.kwyarl.org', N'2CWCLFGI59XZCMXHV149Q86SV5GMFYKWKQO8YD6JW7NRX2H8GT9H2XXU64GGYT2')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (39, N'Zhang', N'Krista', N'305-322-4110', N'xolwup680@skxw.-tmgom.org', N'O0FMXOIIULDIKEUTN85LO3UNTU2UWQK24H2XNVARARMHJE9RANSPOHHL6RT3MOM40AD2CX5SYEAXHC4EKAK9YVENZGQW164M5HH816FDHZR96K4UMFJB4C64WP3V69RS9OSZVVDDV7SY45HFCW9')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (40, N'Montgomery', N'Craig', N'841-3750008', N'smabzrk@ttlc.bujwjr.com', N'NTISBCCB3J678YZIR4YR15FXJ80R8OJ9044G6ZOII2AC0LQ55YN7XHKHDK83BL2F0W6')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (41, N'Ellison', N'Patrick', N'5073242937', N'ealnzqzy.wpbqwkts@xdynrs.org', N'UJCRGF9ZV3WYHVLA0BCIJN2LQL7WZUB3EMALMVRH8LLAO9LFZSEPKOK7HR0U8CZ1RSKVKZN4KUAX1RWH0RW7FMJQ134VUW9VMKJVPPVZ4A5PDM5PUJUHFRL49UUHVSANLFBG71RAWW35HTCFXE1A1SFUZFMUVE4C0')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (42, N'Mc Neil', N'Darrick', N'029828-5476', N'dhaaa.zfxh@abipmsm.zcrvjc.org', N'4YBPITSJKIOFMFHEJGRZLSZGGSEXFISR50OE48W8II7X6JS6CGUNK0VBZU8QEU32QXAMQ3AAKJG3L1AWZ8KZN4644CFAZ')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (43, N'Duncan', N'Alicia', N'314332-5915', N'xvgmfvkk.btxewkq@bpze-s.net', N'TNE57996F95J21KRQXJBR5A4ELQ5HEO0BEPSPFU1NSSBT324KDLHQNEOD9QLI3P1K48NCR2A2IOYDZAAJML4S6AN01FFO8IJ2QQPUERSABE7YFAEZG2WHL9EUKNBCMMU05WM8LF4UTTHR2PKQ1F85L1')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (44, N'Mata', N'Everett', N'3388113251', N'dieqwvyi712@sxqs-v.org', N'HCVAQGGOOK7TJN5E0Y2OSSMRV3LA6DOE3F5WP5EEC5S7VV02W187JCOPP3EMV5HBWSQ4I8OUJOCNZFW02IE55HVQQF7MRRJ')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (45, N'Cuevas', N'Damien', N'858055-7955', N'ergxkyq3@aqxexz.net', N'NHB25WJNCENV01QA7DJCRB6EXZD3122S55ZI4TU6YQSQTZPPPWED76FBBW46IGMABVQV176EIDE0JFLX9NE4NPKYPN78OONI3IFY9UOHQ0UUSESVA7WV2IMLAR6D0YPUPWW1ZMOFZWDNVQ6AVB')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (46, N'Mcintosh', N'Mark', N'802158-2962', N'jwoq2@zwiwbaz.xmjju-.net', N'HSSFLVTNHNAGSB')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (47, N'Wheeler', N'Edwin', N'071-015-8872', N'jwcakv@hdql.riwtmi.com', N'4VHQVNIHV54YQJKVHP171XGB55Y6ROFLCUMAS5F9ZBW9HW34WSTRR3Y6F6LQOBP7PIMWWA2C9R8Q06U82U9ZVOU8VGVMJPKNLPKYA67MPGHZU858CCNU2QB1OD0GEGSK7L4BMVYVMM9E7UENAMA72PLVDIAW6Q89NWR93TMHDR7FGXTTZC')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (48, N'Savage', N'Nichole', N'856-2093782', N'qyqzllko.ccvdg@uhkcrv.net', N'S6KIH09Y3K2PWE0QA35JG0SUAI5FGPGXTKF33E98UVIWA2B0G6JQTTPRDQ7ZUUHE35VBYXNWTWOKIWJ865Y95Q30VOPD69E0D3S5701IINWX448G6ZTOV89D1UFA7APJIO6F4E064FQIT5WQF966GP')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (49, N'Yang', N'Vanessa', N'082983-6500', N'usbygi@buvooa.com', N'5UE3CKQB8XDEGXTBRYMKFHQJVYOUX3I2SI1KPAOLD4IKGQGTLXE8U4QN3U7DVWD4FALXW9LHA17BZ534IV90OA8OSDGV3APHQD555IWCCXYSXFOXR2V0MDF42X4ISQDZBQKL0YZZYXOQCFRDPI30EPUDY')
INSERT [dbo].[utenti] ([id_utente], [cognome], [nome], [telefono], [email], [password]) VALUES (50, N'Conway', N'Darrin', N'386-6330733', N'knjxoc.rbzxycq@siqpkx.org', N'27EEJLKYH6U3XT2W1PPOSM6RT9MDKMV6NYVSLKD26EYKIMLAXIN5O99F0MK9Y6DUAOFYXAAGBMIDOL87OCF2YQIEPFRY0340039U6MDN77T1RVRFECLMRBWK518IICG7IHDLBE12ZRURXHMUOCKNIH9O6PP4DU5VQLI9H530BINZH4M')
SET IDENTITY_INSERT [dbo].[utenti] OFF
ALTER TABLE [dbo].[repliche] ADD  CONSTRAINT [DF__repliche__annull__3F466844]  DEFAULT ((0)) FOR [annullato]
GO
ALTER TABLE [dbo].[eventi]  WITH CHECK ADD  CONSTRAINT [eventi_fk0] FOREIGN KEY([fk_locale])
REFERENCES [dbo].[locali] ([id_locale])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[eventi] CHECK CONSTRAINT [eventi_fk0]
GO
ALTER TABLE [dbo].[prenotazioni]  WITH CHECK ADD  CONSTRAINT [prenotazioni_fk0] FOREIGN KEY([fk_utente])
REFERENCES [dbo].[utenti] ([id_utente])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[prenotazioni] CHECK CONSTRAINT [prenotazioni_fk0]
GO
ALTER TABLE [dbo].[prenotazioni]  WITH CHECK ADD  CONSTRAINT [prenotazioni_fk1] FOREIGN KEY([fk_replica])
REFERENCES [dbo].[repliche] ([id_replica])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[prenotazioni] CHECK CONSTRAINT [prenotazioni_fk1]
GO
ALTER TABLE [dbo].[repliche]  WITH CHECK ADD  CONSTRAINT [repliche_fk0] FOREIGN KEY([fk_evento])
REFERENCES [dbo].[eventi] ([id_evento])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[repliche] CHECK CONSTRAINT [repliche_fk0]
GO
