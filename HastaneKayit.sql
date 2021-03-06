USE [HastaneKayit]
GO
/****** Object:  Table [dbo].[DoktorBilgileri]    Script Date: 11.06.2021 11:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoktorBilgileri](
	[DoktorID] [int] IDENTITY(1,1) NOT NULL,
	[DoktorAdiSoyadi] [nvarchar](50) NOT NULL,
	[DoktorTC] [nchar](11) NOT NULL,
	[DoktorIseGiris] [date] NOT NULL,
	[DoktorUnvani] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DoktorBilgileri] PRIMARY KEY CLUSTERED 
(
	[DoktorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HastaBilgileri]    Script Date: 11.06.2021 11:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HastaBilgileri](
	[HastaID] [int] IDENTITY(1,1) NOT NULL,
	[HastaAdiSoyadi] [nvarchar](50) NOT NULL,
	[HastaTC] [nchar](11) NOT NULL,
	[HastaCinsiyet] [nchar](10) NOT NULL,
	[HastaKanGrubu] [nchar](10) NOT NULL,
	[HastaBabaAdi] [nvarchar](50) NOT NULL,
	[HastaAnneAdi] [nvarchar](50) NOT NULL,
	[HastaDogumTarihi] [date] NOT NULL,
	[HastaCepTelefonu] [nchar](20) NOT NULL,
	[HastaSabitTelefonu] [nchar](20) NULL,
	[HastaAdresi] [text] NOT NULL,
 CONSTRAINT [PK_HastaBilgileri] PRIMARY KEY CLUSTERED 
(
	[HastaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Randevu]    Script Date: 11.06.2021 11:46:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Randevu](
	[RandevuID] [int] IDENTITY(1,1) NOT NULL,
	[HastaID] [int] NOT NULL,
	[DoktorID] [int] NOT NULL,
	[RandevuTarihSaat] [datetime] NOT NULL,
 CONSTRAINT [PK_Randevu] PRIMARY KEY CLUSTERED 
(
	[RandevuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DoktorBilgileri] ON 

INSERT [dbo].[DoktorBilgileri] ([DoktorID], [DoktorAdiSoyadi], [DoktorTC], [DoktorIseGiris], [DoktorUnvani]) VALUES (6, N'Ahmet Necati ALAÇIK', N'12514526375', CAST(N'2021-02-14' AS Date), N'Profesör')
INSERT [dbo].[DoktorBilgileri] ([DoktorID], [DoktorAdiSoyadi], [DoktorTC], [DoktorIseGiris], [DoktorUnvani]) VALUES (7, N'Cavit NORUZİ', N'25452632515', CAST(N'2021-06-16' AS Date), N'Cerrah')
INSERT [dbo].[DoktorBilgileri] ([DoktorID], [DoktorAdiSoyadi], [DoktorTC], [DoktorIseGiris], [DoktorUnvani]) VALUES (8, N'Bülent OKTAY', N'55456851458', CAST(N'2020-01-08' AS Date), N'Üroloji')
INSERT [dbo].[DoktorBilgileri] ([DoktorID], [DoktorAdiSoyadi], [DoktorTC], [DoktorIseGiris], [DoktorUnvani]) VALUES (9, N'Ahmet ÖZTÜRK', N'25458695852', CAST(N'2020-04-09' AS Date), N'Hematoloji')
INSERT [dbo].[DoktorBilgileri] ([DoktorID], [DoktorAdiSoyadi], [DoktorTC], [DoktorIseGiris], [DoktorUnvani]) VALUES (10, N'Ayşe ÖNER', N'26358956589', CAST(N'2021-05-12' AS Date), N'Göz Hastalıkları')
SET IDENTITY_INSERT [dbo].[DoktorBilgileri] OFF
GO
SET IDENTITY_INSERT [dbo].[HastaBilgileri] ON 

INSERT [dbo].[HastaBilgileri] ([HastaID], [HastaAdiSoyadi], [HastaTC], [HastaCinsiyet], [HastaKanGrubu], [HastaBabaAdi], [HastaAnneAdi], [HastaDogumTarihi], [HastaCepTelefonu], [HastaSabitTelefonu], [HastaAdresi]) VALUES (5, N'Enes Işlak', N'56184484568', N'Erkek     ', N'A+        ', N'Cemil', N'Cemile', CAST(N'2021-06-10' AS Date), N'456474              ', N'45646               ', N'Ankara')
INSERT [dbo].[HastaBilgileri] ([HastaID], [HastaAdiSoyadi], [HastaTC], [HastaCinsiyet], [HastaKanGrubu], [HastaBabaAdi], [HastaAnneAdi], [HastaDogumTarihi], [HastaCepTelefonu], [HastaSabitTelefonu], [HastaAdresi]) VALUES (6, N'Hüseyin Tok', N'213124     ', N'Erkek     ', N'B-        ', N'Kamil', N'Kamile', CAST(N'2021-06-22' AS Date), N'4354234             ', N'46456               ', N'Malatya')
INSERT [dbo].[HastaBilgileri] ([HastaID], [HastaAdiSoyadi], [HastaTC], [HastaCinsiyet], [HastaKanGrubu], [HastaBabaAdi], [HastaAnneAdi], [HastaDogumTarihi], [HastaCepTelefonu], [HastaSabitTelefonu], [HastaAdresi]) VALUES (7, N'Zeynep Büyük', N'13243534   ', N'Kadın     ', N'AB+       ', N'Celalettin', N'Neşe', CAST(N'2021-06-01' AS Date), N'548522154           ', N'4564365             ', N'Muş')
SET IDENTITY_INSERT [dbo].[HastaBilgileri] OFF
GO
SET IDENTITY_INSERT [dbo].[Randevu] ON 

INSERT [dbo].[Randevu] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihSaat]) VALUES (5, 5, 6, CAST(N'2021-06-11T15:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Randevu] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DoktorBilgileri]    Script Date: 11.06.2021 11:46:02 ******/
ALTER TABLE [dbo].[DoktorBilgileri] ADD  CONSTRAINT [IX_DoktorBilgileri] UNIQUE NONCLUSTERED 
(
	[DoktorTC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HastaBilgileri]    Script Date: 11.06.2021 11:46:02 ******/
ALTER TABLE [dbo].[HastaBilgileri] ADD  CONSTRAINT [IX_HastaBilgileri] UNIQUE NONCLUSTERED 
(
	[HastaTC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HastaBilgileri_1]    Script Date: 11.06.2021 11:46:02 ******/
ALTER TABLE [dbo].[HastaBilgileri] ADD  CONSTRAINT [IX_HastaBilgileri_1] UNIQUE NONCLUSTERED 
(
	[HastaCepTelefonu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Randevu]  WITH CHECK ADD  CONSTRAINT [FK_Randevu_DoktorBilgileri] FOREIGN KEY([DoktorID])
REFERENCES [dbo].[DoktorBilgileri] ([DoktorID])
GO
ALTER TABLE [dbo].[Randevu] CHECK CONSTRAINT [FK_Randevu_DoktorBilgileri]
GO
ALTER TABLE [dbo].[Randevu]  WITH CHECK ADD  CONSTRAINT [FK_Randevu_HastaBilgileri] FOREIGN KEY([HastaID])
REFERENCES [dbo].[HastaBilgileri] ([HastaID])
GO
ALTER TABLE [dbo].[Randevu] CHECK CONSTRAINT [FK_Randevu_HastaBilgileri]
GO
