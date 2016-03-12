--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.4
-- Dumped by pg_dump version 9.5alpha2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: world_airports; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE world_airports (
    gid integer NOT NULL,
    scalerank smallint,
    featurecla character varying(80),
    type character varying(50),
    name character varying(200),
    abbrev character varying(4),
    location character varying(50),
    gps_code character varying(254),
    iata_code character varying(254),
    wikipedia character varying(254),
    natlscale double precision,
    geom geometry(Point)
);


ALTER TABLE world_airports OWNER TO postgres;

--
-- Name: world_airports_gid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE world_airports_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE world_airports_gid_seq OWNER TO postgres;

--
-- Name: world_airports_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE world_airports_gid_seq OWNED BY world_airports.gid;


--
-- Name: gid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY world_airports ALTER COLUMN gid SET DEFAULT nextval('world_airports_gid_seq'::regclass);


--
-- Data for Name: world_airports; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY world_airports (gid, scalerank, featurecla, type, name, abbrev, location, gps_code, iata_code, wikipedia, natlscale, geom) FROM stdin;
1	9	Airport	small	Sahnewal	LUH	terminal	VILD	LUH	http://en.wikipedia.org/wiki/Sahnewal_Airport	8	0101000000C911EDAB40FD52400915FC2EB1D93E40
2	9	Airport	mid	Solapur	SSE	terminal	VASL	SSE	http://en.wikipedia.org/wiki/Solapur_Airport	8	0101000000E17E5440B7FB52405F22A0351BA03140
3	9	Airport	mid	Birsa Munda	IXR	terminal	VERC	IXR	http://en.wikipedia.org/wiki/Birsa_Munda_Airport	8	0101000000F39D58D0B5545540C8D2396656513740
4	9	Airport	mid	Ahwaz	AWZ	terminal	OIAW	AWZ	http://en.wikipedia.org/wiki/Ahwaz_Airport	8	010100000017AEED2FA15F484015B0373DD9573F40
5	9	Airport	mid and military	Gwalior	GWL	terminal	VIGR	GWL	http://en.wikipedia.org/wiki/Gwalior_Airport	8	0101000000376F12E9E68D5340BF0CC6B815493A40
6	9	Airport	mid	Hodeidah Int'l	HOD	terminal	OYHD	HOD	http://en.wikipedia.org/wiki/Hodeida_International_Airport	8	0101000000AB0C35E24C7C4540B9C53D94B0822D40
7	9	Airport	mid	Devi Ahilyabai Holkar Int'l	IDR	terminal	VAID	IDR	http://en.wikipedia.org/wiki/Devi_Ahilyabai_Holkar_International_Airport	8	01010000009CFD936ECBF35240CC4E50C54DBA3640
8	9	Airport	mid	Gandhinagar	ISK	ramp	VANR	ISK	http://en.wikipedia.org/wiki/Gandhinagar_Airport	8	0101000000B0D67956E0735240D1BBB71F4DF73340
9	9	Airport	major and military	Chandigarh Int'l	IXC	terminal	VICG	IXC	http://en.wikipedia.org/wiki/Chandigarh_Airport	8	01010000003D43087B4F335340C07E70A0B4AB3E40
10	9	Airport	mid	Aurangabad	IXU	terminal	VAAU	IXU	http://en.wikipedia.org/wiki/Aurangabad_Airport	8	0101000000E6951A7F55D95240CE2C782C07DE3340
11	9	Airport	mid and military	Faisalabad Int'l	LYP	terminal	OPFA	LYP	http://en.wikipedia.org/wiki/Faisalabad_International_Airport	8	0101000000A4DF916D383F524086DDDBC2DC5C3F40
12	9	Airport	mid	Omsk Tsentralny	OMS	terminal	UNOO	OMS	http://en.wikipedia.org/wiki/Omsk_Tsentralny_Airport	8	01010000005701133C3F545240D69F2238947A4B40
13	9	Airport	mid	Novosibirsk Tolmachev	OVB	terminal	UNNT	OVB	http://en.wikipedia.org/wiki/Tolmachevo_Airport	8	01010000008A5333A0B2AA54408BC867123A814B40
14	9	Airport	mid and military	Zaporozhye Int'l	OZH	runway	UKDE	OZH	http://en.wikipedia.org/wiki/Zaporizhia_International_Airport	8	0101000000ED5011C5A3A641404DFDAA19C7EF4740
15	9	Airport	mid	Simpang Tiga	PKU	terminal	WIBB	PKU	http://en.wikipedia.org/wiki/Sultan_Syarif_Qasim_II_International_Airport	8	0101000000E00C6597945C59402D2FCE4C05BCDD3F
16	9	Airport	mid	Rota Int'l	ROP	terminal	PGRO	ROP	http://en.wikipedia.org/wiki/Rota_International_Airport	8	0101000000E068C5AFCE276240C40E4F68F2572C40
17	9	Airport	mid	Surgut	SGC	terminal	USRR	SGC	http://en.wikipedia.org/wiki/Surgut_Airport	8	010100000022B567CE245A5240B95975998AAB4E40
18	9	Airport	mid	Tiruchirappalli	TRZ	terminal	VOTR	TRZ	http://en.wikipedia.org/wiki/Tiruchirappalli_Airport	8	01010000001692D9905FAD5340E8E3A2874D852540
19	9	Airport	mid	Turbat Int'l	TUK	terminal	OPTU	TUK	http://en.wikipedia.org/wiki/Turbat_International_Airport	8	0101000000607AF05193834F401A8F6AA421FD3940
20	9	Airport	mid	Quetta Int'l	UET	terminal	OPQT	UET	http://en.wikipedia.org/wiki/Quetta_International_Airport	8	0101000000EA70D902B8BC50406EF0534BC13F3E40
21	9	Airport	mid	Zahedan Int'l	ZAH	terminal	OIZH	ZAH	http://en.wikipedia.org/wiki/Zahedan_International_Airport	8	0101000000B6C4126B4A734E40B15362E1AC793D40
22	9	Airport	mid and military	Abdul Rachman Saleh	MLG	ramp	WARA	MLG	http://en.wikipedia.org/wiki/Abdul_Rachman_Saleh_Airport	8	0101000000CEB8F3E1872D5C40F2BD3FAF4CB81FC0
23	9	Airport	mid	Barnaul	BAX	ramp	UNBB	BAX	http://en.wikipedia.org/wiki/Barnaul_Airport	8	010100000026501CA03AE354405E07006783AE4A40
24	9	Airport	military mid	Adampur	VIAX	runway	VIAX	\N	\N	8	0101000000951BA2FB8AF0524023E0784DD56E3F40
25	9	Airport	military	Bareilly	VIBY	runway	VIBY	\N	http://en.wikipedia.org/wiki/Bareilly_Airport	8	01010000003B4CAE9CEDDC534000E1F0A7FB6B3C40
26	9	Airport	small	Dhamial	OPQS	runway	OPQS	\N	http://en.wikipedia.org/wiki/Dhamial_Army_Airbase	8	010100000040CDC41A0D42524020223D6FDCC74040
27	9	Airport	major	Cheongju Int'l	CJJ	terminal	RKTU	CJJ	http://en.wikipedia.org/wiki/Cheongju_International_Airport	8	01010000000D44FC16BDDF5F4062600A3E6B5C4240
28	9	Airport	mid and military	Gwangju	KWJ	terminal	RKJJ	KWJ	http://en.wikipedia.org/wiki/Gwangju_Airport	8	0101000000158B47CBE4B35F4051AE3AB0EB914140
29	9	Airport	mid	Daegu Int'l	TAE	terminal	RKTN	TAE	http://en.wikipedia.org/wiki/Daegu_Airport	8	0101000000C16576B566146040F53D84D530F34140
30	9	Airport	mid	Ulsan	USN	terminal	RKPU	USN	http://en.wikipedia.org/wiki/Ulsan_Airport	8	0101000000C8E91326622B604034EA0D02E4CB4140
31	9	Airport	mid	Radin Inten II	WIIT	terminal	WIAT	TKG	http://en.wikipedia.org/wiki/Radin_Inten_II_Airport	8	0101000000C69AEB92444B5A401D83DB6C63F814C0
32	9	Airport	military	Allahabad	IXD	ramp	VIAL	IXD	http://en.wikipedia.org/wiki/Allahabad_Airport	8	0101000000B5A6189ED46E5440F18BDCA88A713940
33	9	Airport	mid	Chelyabinsk	CEK	terminal	USCC	CEK	http://en.wikipedia.org/wiki/Chelyabinsk_Airport	8	0101000000D93FBAB391C14E40AF48EE0B1EA64B40
34	8	Airport	military mid	Tainan	TNN	ramp	RCNN	TNN	http://en.wikipedia.org/wiki/Tainan_Airport	10	0101000000E5854B456C0D5E4020A802F95EF33640
35	8	Airport	military mid	Taichung	RMQ	ramp	RCMQ	RMQ	http://en.wikipedia.org/wiki/Taichung_Airport	10	0101000000089669725D285E40555FDF8943443840
36	8	Airport	mid	Rotterdam The Hague	RTM	terminal	EHRD	RTM	http://en.wikipedia.org/wiki/Rotterdam_The_Hague_Airport	10	0101000000F9D674B141BC11401FB71A197DF94940
37	8	Airport	mid	Voronezh-Chertovitskoye	VOZ	terminal	UUOO	VOZ	http://en.wikipedia.org/wiki/Voronezh_International_Airport	10	010100000052A6B188DB9C43402EF687D603E84940
38	8	Airport	major	Liverpool John Lennon	LPL	ramp	EGGP	LPL	http://en.wikipedia.org/wiki/Liverpool_John_Lennon_Airport	10	01010000009110E98174DE06C00C88E6560EAB4A40
39	8	Airport	mid	Vishakapatnam	VTZ	terminal	VEVZ	VTZ	http://en.wikipedia.org/wiki/Visakhapatnam_Airport	10	01010000005517B42D4ECE5440587437705BBA3140
40	8	Airport	major	Sultan Hasanuddin Int'l	UPG	terminal	WAAA	UPG	http://en.wikipedia.org/wiki/Sultan_Hasanuddin_International_Airport	10	0101000000D40F619BECE25D402F9D0AF4593C14C0
41	8	Airport	mid	Vava'u Int'l	VAV	terminal	NFTV	VAV	http://en.wikipedia.org/wiki/Vava'u_International_Airport	10	0101000000C3B326A0FABE65C032C5CE7A049632C0
42	8	Airport	major	Newcastle Int'l	NCL	terminal	EGNT	NCL	http://en.wikipedia.org/wiki/Newcastle_Airport	10	0101000000FF0F778A935DFBBF1A295C32BF844B40
43	8	Airport	mid	Goloson Int'l	LCE	terminal	MHLC	LCE	http://en.wikipedia.org/wiki/Golos%C3%B3n_International_Airport	10	0101000000CE6ABE757EB655C01FC95691857D2F40
44	8	Airport	major	Madinah Int'l	MED	terminal	OEMA	MED	http://en.wikipedia.org/wiki/Prince_Mohammad_Bin_Abdulaziz_Airport	10	0101000000175479497DD94340FD00B6EA528B3840
45	8	Airport	mid	Mirabel Int'l	YMX	terminal	CYMX	YMX	http://en.wikipedia.org/wiki/Montr%C3%A9al-Mirabel_International_Airport	10	0101000000B20729D9D68152C068B385EB73D74640
46	8	Airport	mid	Palanga Int'l	PLQ	terminal	EYPA	PLQ	http://en.wikipedia.org/wiki/Palanga_International_Airport	10	01010000003D35473FF218354008A680F454FC4B40
47	8	Airport	mid	Jaipur Int'l	JAI	terminal	VIJP	JAI	http://en.wikipedia.org/wiki/Jaipur_International_Airport	10	010100000066A034C143F352405E580CD738D23A40
48	8	Airport	mid	Sonari	IXW	terminal	VEJS	IXW	http://en.wikipedia.org/wiki/Sonari_Airport	10	0101000000FA39D3AF098B55406D886101BFD03640
49	8	Airport	mid	Yenisehir	YEI	ramp	LTBR	YEI	http://en.wikipedia.org/wiki/Yeni%C5%9Fehir_Airport	10	0101000000B3EF8AE07F8B3D40DE45B384B5204440
50	8	Airport	major	Sakirpasa	ADA	terminal	LTAF	ADA	http://en.wikipedia.org/wiki/Adana_%C5%9Eakirpa%C5%9Fa_Airport	10	01010000005D3600D502A64140D62FA3541B7E4240
51	8	Airport	mid	Kodiak	ADQ	ramp	PADQ	ADQ	http://en.wikipedia.org/wiki/Kodiak_Airport	10	01010000008793C8598A0F63C074E8BCDDD1DF4C40
52	8	Airport	major	Amarillo Int'l	AMA	terminal	KAMA	AMA	http://en.wikipedia.org/wiki/Rick_Husband_Amarillo_International_Airport	10	01010000000AB8F47F246D59C09C5CC3A2F49B4140
53	8	Airport	mid	Alice Springs	ASP	terminal	YBAS	ASP	http://en.wikipedia.org/wiki/Alice_Springs_Airport	10	0101000000081F4AB4E4BC604043705CC64DCD37C0
54	8	Airport	mid and military	Raja Sansi Int'l	ATQ	terminal	VIAR	ATQ	http://en.wikipedia.org/wiki/Raja_Sansi_International_Airport	10	0101000000E29B8571A8B35240FA48CD49F2B43F40
55	8	Airport	mid	Biju Patnaik	BBI	terminal	VEBS	BBI	http://en.wikipedia.org/wiki/Biju_Patnaik_Airport	10	0101000000DAB0CDEC477455406278A5B7AE403440
56	8	Airport	mid	Bethel	BET	runway	PABE	BET	http://en.wikipedia.org/wiki/Bethel_Airport	10	01010000000C122EFBD83A64C06C72ADAFAD634E40
57	8	Airport	mid	Palonegro	BGA	terminal	SKBG	BGA	http://en.wikipedia.org/wiki/Palonegro_International_Airport	10	0101000000684DB834944B52C0D0C73F30C6821C40
58	8	Airport	major	Birmingham Int'l	BHM	terminal	KBHM	BHM	http://en.wikipedia.org/wiki/Birmingham_International_Airport_(US)	10	0101000000E18560F326B055C0ED2B6244EBC74040
59	8	Airport	mid	Broken Hill	BHQ	terminal	YBHI	BHQ	http://en.wikipedia.org/wiki/Broken_Hill_Airport	10	010100000046D39D930DAF6140E0360C40BEFF3FC0
60	8	Airport	major	Logan Int'l	BIL	terminal	KBIL	BIL	http://en.wikipedia.org/wiki/Billings_Logan_International_Airport	10	01010000006B90140D5D225BC054FD362BDFE64640
61	8	Airport	mid	Bismarck Muni.	BIS	terminal	KBIS	BIS	http://en.wikipedia.org/wiki/Bismarck_Municipal_Airport	10	0101000000FF47EB687A3059C09009FBB136634740
62	8	Airport	mid	Del Bajio Int'l	BJX	terminal	MMLO	BJX	http://en.wikipedia.org/wiki/Del_Baj%C3%ADo_International_Airport	10	0101000000DB223AE5A35E59C033132F1963FC3440
63	8	Airport	mid	Benin	BNI	terminal	DNBE	BNI	http://en.wikipedia.org/wiki/Benin_Airport	10	0101000000049DD2C22B6A16402866D365C7441940
64	8	Airport	major	Bourgas	BOJ	ramp	LBBG	BOJ	http://en.wikipedia.org/wiki/Burgas_Airport	10	010100000013967B6733843B40A708983196484540
65	8	Airport	major	Bremen	BRE	terminal	EDDW	BRE	http://en.wikipedia.org/wiki/Bremen_Airport	10	0101000000FE5755795C922140232D0558B1864A40
66	8	Airport	mid	Jacinto Lara Int'l	BRM	terminal	SVBM	BRM	http://en.wikipedia.org/wiki/Jacinto_Lara_International_Airport	10	010100000093020B60CA5651C08104C58F31172440
67	8	Airport	mid	Brownsville-South Padre Island Int'l	BRO	terminal	KBRO	BRO	http://en.wikipedia.org/wiki/Brownsville/South_Padre_Island_International_Airport	10	0101000000F1F5170BA25B58C010EE999801E83940
68	8	Airport	major	Bristol Int'l	BRS	terminal	EGGD	BRS	http://en.wikipedia.org/wiki/Bristol_International_Airport	10	0101000000F398C9D3D9AF05C01B73101072B14940
69	8	Airport	major	Baton Rouge Metro	BTR	terminal	KBTR	BTR	http://en.wikipedia.org/wiki/Baton_Rouge_Metropolitan_Airport	10	01010000008F8AA04308CA56C064D4D56059883E40
70	8	Airport	major	Bratislava-M.R. Stefanik	BTS	terminal	LZIB	BTS	http://en.wikipedia.org/wiki/M._R._%C5%A0tef%C3%A1nik_Airport	10	0101000000913A9437323331406C7D9E3FBD154840
71	8	Airport	mid	Burlington Int'l	BTV	terminal	KBTV	BTV	http://en.wikipedia.org/wiki/Burlington_International_Airport	10	01010000004E198BCFEC4952C0E5C745F60E3C4640
72	8	Airport	major	Columbia Metro	CAE	terminal	KCAE	CAE	http://en.wikipedia.org/wiki/Columbia_Metropolitan_Airport	10	0101000000EF2D3F59FF4654C071D8610B94F74040
73	8	Airport	major	Calicut Int'l	CCJ	terminal	VOCL	CCJ	http://en.wikipedia.org/wiki/Calicut_International_Airport	10	0101000000BC210212DDFC52407D11DC5D73472640
74	8	Airport	mid	Cocos (Keeling) Islands	CCK	terminal	YPCC	CCK	http://en.wikipedia.org/wiki/Cocos_(Keeling)_Islands_Airport	10	0101000000A4A5C1310A3558407C067F1BCD5E28C0
75	8	Airport	mid	Corfu Int'l (Ioannis Kapodistrias)	CFU	terminal	LGKR	CFU	http://en.wikipedia.org/wiki/Corfu_International_Airport	10	010100000086E8C0752DEA3340D356A029AACD4340
76	8	Airport	major	Changchun Longjia Int'l	CGQ	terminal	ZYCC	CGQ	http://en.wikipedia.org/wiki/Changchun_Longjia_International_Airport	10	010100000037C8C571306C5F40F7AA0A001BFF4540
77	8	Airport	major and military	Charleston Int'l	CHS	terminal	KCHS	CHS	http://en.wikipedia.org/wiki/Charleston_International_Airport	10	01010000009076591F5D0254C03ECFBE4838714040
78	8	Airport	mid	Coimbatore	CJB	terminal	VOCB	CJB	http://en.wikipedia.org/wiki/Coimbatore_Airport	10	01010000008CF84D3C7D4253401BB955B56E0F2640
79	8	Airport	mid	Someseni	CLJ	ramp	LRCL	CLJ	http://en.wikipedia.org/wiki/Cluj-Napoca_International_Airport	10	0101000000B13B1F01DEAF3740BE77084A2E644740
80	8	Airport	mid	Ignacio Agramonte	CMW	terminal	MUCM	CMW	http://en.wikipedia.org/wiki/Ignacio_Agramonte_International_Airport	10	0101000000E0770F2F167653C062172F62B96C3540
81	8	Airport	major	Casper/Natrona County Int'l	CPR	terminal	KCPR	CPR	http://en.wikipedia.org/wiki/Casper/Natrona_County_International_Airport	10	0101000000151BB976B99D5AC0B2DF9D1FD7724540
82	8	Airport	major	Clark Int'l	CRK	ramp	RPLC	CRK	http://en.wikipedia.org/wiki/Clark_International_Airport	10	01010000008DD4C0D13F235E40F8D0DCA412602E40
83	8	Airport	major and military	Yeager	CRW	terminal	KCRW	CRW	http://en.wikipedia.org/wiki/Yeager_Airport	10	0101000000E4DFF8AF2B6654C057A94B8A6F2F4340
84	8	Airport	major	Catania Fontanarossa	CTA	terminal	LICC	CTA	http://en.wikipedia.org/wiki/Catania-Fontanarossa_Airport	10	01010000003B9AC82E8A222E40161A74582BBC4240
85	8	Airport	mid	Chetumal Int'l	CTM	terminal	MMCM	CTM	http://en.wikipedia.org/wiki/Chetumal_International_Airport	10	0101000000217330ADC01456C0BEEC85ACA5813240
86	8	Airport	major	Cardiff	CWL	terminal	EGFF	CWL	http://en.wikipedia.org/wiki/Cardiff_Airport	10	010100000068FD0AD46FB70AC0605F760C06B34940
87	8	Airport	mid	Gerrard Smith	CYB	terminal	MWCB	CYB	http://en.wikipedia.org/wiki/Gerrard_Smith_International_Airport	10	0101000000CC53771949F853C0F1AEC3049BB03340
88	8	Airport	mid	Cozumel Int'l	CZM	terminal	MMCZ	CZM	http://en.wikipedia.org/wiki/Cozumel_International_Airport	10	0101000000708F50C78BBB55C0520C483AF5823440
133	8	Airport	mid	Kumasi	KMS	terminal	DGSI	KMS	http://en.wikipedia.org/wiki/Kumasi_Airport	10	01010000004C18B233307BF9BF0A5DDFC6C1DB1A40
89	8	Airport	major	James M. Cox Dayton Int'l	DAY	terminal	KDAY	DAY	http://en.wikipedia.org/wiki/Dayton_International_Airport	10	01010000000AD7D7011C0E55C0CF3A8AC013F34340
90	8	Airport	mid	Dubbo	DBO	approximate	YSDU	DBO	http://en.wikipedia.org/wiki/Dubbo_Airport	10	0101000000355F251F3B926240D7A02FBDFD1B40C0
91	8	Airport	major	Washington Nat'l	DCA	terminal	KDCA	DCA	http://en.wikipedia.org/wiki/Ronald_Reagan_Washington_National_Airport	10	010100000029F0320AC64253C0D2228E92466D4340
92	8	Airport	mid	Durango Int'l	DGO	terminal	MMDO	DGO	http://en.wikipedia.org/wiki/General_Guadalupe_Victoria_International_Airport	10	0101000000709484882A225AC00305F74D4E203840
93	8	Airport	mid	Voloskoye	DNK	terminal	UKDD	DNK	http://en.wikipedia.org/wiki/Dnipropetrovsk_International_Airport	10	010100000015C3CF1C058C41403180C2970C2F4840
94	8	Airport	major	Donetsk	DOK	terminal	UKCC	DOK	http://en.wikipedia.org/wiki/Donetsk_International_Airport	10	0101000000EA7F05E355DF4240CE8EED77DA084840
95	8	Airport	mid	Santa Bernardina Int'l	DZO	runway	SUDU	DZO	http://en.wikipedia.org/wiki/Santa_Bernardina_International_Airport	10	01010000005DF1CEDEE73F4CC0F2F8FE43F7AD40C0
96	8	Airport	major	Edinburgh Int'l	EDI	terminal	EGPH	EDI	http://en.wikipedia.org/wiki/Edinburgh_Airport	10	010100000002BAC8160EEA0AC017A6C4376AF94B40
97	8	Airport	mid	Terrance B. Lettsome Int'l	EIS	terminal	TUPJ	EIS	http://en.wikipedia.org/wiki/Terrance_B._Lettsome_International_Airport	10	0101000000EC466BB0602250C05C3ED6B2C1713240
98	8	Airport	mid	Elko Reg.	EKO	terminal	KEKO	EKO	http://en.wikipedia.org/wiki/Elko_Regional_Airport	10	0101000000905FFDAC55F25CC0E48E51FDEE694440
99	8	Airport	mid	Ensenada	ESE	ramp	MMES	ESE	http://en.wikipedia.org/wiki/Ensenada_Airport	10	0101000000524E3C5920265DC0F3B9AEFB36CC3F40
100	8	Airport	mid	Vagar	FAE	approximate	EKVG	FAE	http://en.wikipedia.org/wiki/V%C3%A1gar_Airport	10	0101000000F7065F984C151DC00000000000084F40
101	8	Airport	mid and military	Hector Int'l	FAR	terminal	KFAR	FAR	http://en.wikipedia.org/wiki/Hector_International_Airport	10	0101000000ED66EF45D43458C09CDEA297BC754740
102	8	Airport	mid	Fresno Yosemite Int'l	FAT	terminal	KFAT	FAT	http://en.wikipedia.org/wiki/Fresno_Yosemite_International_Airport	10	01010000006E756E8014EE5DC00954203A89624240
103	8	Airport	mid	Flagstaff Pulliam	FLG	terminal	KFLG	FLG	http://en.wikipedia.org/wiki/Flagstaff_Pulliam_Airport	10	0101000000E75814912DEB5BC0A64A98DBC7914140
104	8	Airport	mid	Mundo Maya Int'l	FRS	terminal	MGTK	FRS	http://en.wikipedia.org/wiki/Mundo_Maya_International_Airport	10	0101000000189998892E7856C0570530BF3BEA3040
105	8	Airport	mid	Sioux Falls Reg.	FSD	terminal	KFSD	FSD	http://en.wikipedia.org/wiki/Sioux_Falls_Regional_Airport	10	01010000005FB811FBCE2E58C0AB13D0C743CA4540
106	8	Airport	major	Spokane Int'l	GEG	terminal	KGEG	GEG	http://en.wikipedia.org/wiki/Spokane_International_Airport	10	01010000005DC404885B625DC00DB6D3AA0FD04740
107	8	Airport	mid	Exuma Int'l	GGT	terminal	MYEF	GGT	http://en.wikipedia.org/wiki/Exuma_International_Airport	10	01010000004CDC8DE4D8F752C01B0554A15A903740
108	8	Airport	mid	Gibraltar	GIB	runway	LXGB	GIB	http://en.wikipedia.org/wiki/Gibraltar_Airport	10	0101000000AA6F9625186315C064E094F85C134240
109	8	Airport	mid	Gerald R. Ford Int'l	GRR	terminal	KGRR	GRR	http://en.wikipedia.org/wiki/Gerald_R._Ford_International_Airport	10	01010000001A850587E46155C04C9B786440714540
110	8	Airport	major	Triad Int'l	GSO	terminal	KGSO	GSO	http://en.wikipedia.org/wiki/Piedmont_Triad_International_Airport	10	0101000000A46A2766EFFB53C05D2069087D0D4240
111	8	Airport	mid	Great Falls Int'l	GTF	terminal	KGTF	GTF	http://en.wikipedia.org/wiki/Great_Falls_International_Airport	10	01010000008D432EECD3D65BC05C00190CBBBD4740
112	8	Airport	major	Gaziantep Oguzeli Int'l	GZT	terminal	LTAJ	GZT	http://en.wikipedia.org/wiki/O%C4%9Fuzeli_Airport	10	01010000007E72C095A5BC4240942284AA01794240
113	8	Airport	mid	Hubli	HBX	terminal	VAHB	HBX	http://en.wikipedia.org/wiki/Hubli_Airport	10	01010000004174BB3186C552409B4EE9E0E6B72E40
114	8	Airport	mid	Hat Yai Int'l	HDY	terminal	VTSS	HDY	http://en.wikipedia.org/wiki/Hat_Yai_International_Airport	10	01010000002FDE8B383319594066D95E85D0BE1B40
115	8	Airport	mid	Hefei-Luogang	HFE	ramp	ZSOF	HFE	http://en.wikipedia.org/wiki/Hefei_Luogang_International_Airport	10	0101000000D4B1C2F677535D403F52BDC0A4C73F40
116	8	Airport	major	Hurghada Int'l	HRG	terminal	HEGN	HRG	http://en.wikipedia.org/wiki/Hurghada_International_Airport	10	0101000000B2BD360A51E74040B8B48367302E3B40
117	8	Airport	major	Kharkov Int'l	HRK	ramp	UKHH	HRK	http://en.wikipedia.org/wiki/Kharkiv_International_Airport	10	0101000000C70E372A1F244240F5AACAE4F4F54840
118	8	Airport	major	Huntsville Int'l	HSV	terminal	KHSV	HSV	http://en.wikipedia.org/wiki/Huntsville_International_Airport	10	0101000000CBCEC2AA98B155C04649A59FFC524140
119	8	Airport	mid	Ibadan	IBA	ramp	DNIB	IBA	http://en.wikipedia.org/wiki/Ibadan_Airport	10	01010000009FD76FA65ECA0F40E11FA802FE701D40
120	8	Airport	major	Kansas City Int'l	ICT	terminal	KICT	ICT	http://en.wikipedia.org/wiki/Kansas_City_International_Airport	10	0101000000E132BB74705B58C09A42B62493D34240
121	8	Airport	mid	Wilmington Int'l	ILM	terminal	KILM	ILM	http://en.wikipedia.org/wiki/Wilmington_International_Airport	10	0101000000F3724198437A53C0A6DBF5FA25224140
122	8	Airport	mid	Ilorin Int'l	ILR	terminal	DNIL	ILR	http://en.wikipedia.org/wiki/Ilorin_International_Airport	10	01010000007A395070B7FA11403A21D0ABE9DE2040
123	8	Airport	mid	Falls Int'l	INL	terminal	KINL	INL	http://en.wikipedia.org/wiki/Falls_International_Airport	10	010100000025698CE0785957C0FB931E7672484840
124	8	Airport	mid	Inverness	INV	terminal	EGPE	INV	http://en.wikipedia.org/wiki/Inverness_Airport	10	0101000000360D7F321E4110C080E577580EC54C40
125	8	Airport	mid	Imperial Cty.	IPL	terminal	KIPL	IPL	http://en.wikipedia.org/wiki/Imperial_County_Airport	10	0101000000A2FA4A939BE45CC0FAD25B28BF6A4040
126	8	Airport	mid	Jammu	IXJ	terminal	VIJU	IXJ	http://en.wikipedia.org/wiki/Jammu_Airport	10	01010000002DC5D25EE8B552404BE7D2692C574040
127	8	Airport	mid	Madurai	IXM	terminal	VOMD	IXM	http://en.wikipedia.org/wiki/Madurai_Airport	10	01010000008739BE3AD5855340B60010AEA3AC2340
128	8	Airport	major and military	Jodhpur	JDH	terminal	VIJO	JDH	http://en.wikipedia.org/wiki/Jodhpur_Airport	10	0101000000ED01AB323C4352403647D9ED85433A40
129	8	Airport	mid	Jabalpur	JLR	terminal	VAJB	JLR	http://en.wikipedia.org/wiki/Jabalpur_Airport	10	01010000003F04BA75C2035440C2A4E58B3D2F3740
130	8	Airport	mid	Kilimanjaro Int'l	JRO	terminal	HTKJ	JRO	http://en.wikipedia.org/wiki/Kilimanjaro_International_Airport	10	010100000082910E22588842401597306643650BC0
131	8	Airport	mid	Kaduna	KAD	terminal	DNKA	KAD	http://en.wikipedia.org/wiki/Kaduna_Airport	10	01010000001E3D283F0F4D1D40A4229B23A5632540
132	8	Airport	mid	Kananga	KGA	terminal	FZUA	KGA	http://en.wikipedia.org/wiki/Kananga_Airport	10	010100000093E7390C747A3640DA9D6743C59917C0
134	8	Airport	mid	Vina del Mar	KNA	ramp	SCVM	KNA	http://en.wikipedia.org/wiki/Vi%C3%B1a_del_Mar_Airport	10	01010000005E152331C2DE51C00387BFE6647940C0
135	8	Airport	mid	Kanpur	KNU	terminal	VIKA	KNU	http://en.wikipedia.org/wiki/Kanpur_Airport	10	0101000000CFAFCFAC8517544044FC856357703A40
136	8	Airport	mid	Kona Int'l at Keahole	KOA	terminal	PHKO	KOA	http://en.wikipedia.org/wiki/Kona_International_Airport	10	0101000000319E6FF74E8163C060F87B87B2BC3340
137	8	Airport	mid	Kirkwall	KOI	ramp	EGPA	KOI	http://en.wikipedia.org/wiki/Kirkwall_Airport	10	01010000009129B3ED053607C09777BAB92A7A4D40
138	8	Airport	mid	Kota	KTU	terminal	VIKO	KTU	http://en.wikipedia.org/wiki/Kota_Airport	10	010100000052204D8E6EF6524097AB1BCFD5293940
139	8	Airport	major and military	Konya	KYA	terminal	LTAN	KYA	http://en.wikipedia.org/wiki/Konya_Airport	10	0101000000F3675FA9AF4940400DA79488F3FD4240
140	8	Airport	major	Blue Grass	LEX	terminal	KLEX	LEX	http://en.wikipedia.org/wiki/Blue_Grass_Airport	10	0101000000C196AB064A2655C024B0196BCA044340
141	8	Airport	mid	Lihue	LIH	terminal	PHLI	LIH	http://en.wikipedia.org/wiki/Lihu'e_Airport	10	0101000000DE6AD1B22BEB63C00D8AED5A66FA3540
142	8	Airport	major	Little Rock National	LIT	terminal	KLIT	LIT	http://en.wikipedia.org/wiki/Little_Rock_National_Airport	10	01010000004B21AF1D1E0E57C021DF12323D5D4140
143	8	Airport	mid	Los Mochis	LMM	ramp	MMLM	LMM	http://en.wikipedia.org/wiki/Federal_del_Valle_del_Fuerte_International_Airport	10	0101000000D43C7BDE4A455BC0471A4B1D42B03940
144	8	Airport	mid	Venustiano Carranza Int'l	LOV	runway	MMMV	LOV	http://en.wikipedia.org/wiki/Venustiano_Carranza_International_Airport	10	01010000003794B8E7C15D59C0555BF69D94F43A40
145	8	Airport	mid	Laredo Int'l	LRD	terminal	KLRD	LRD	http://en.wikipedia.org/wiki/Laredo_International_Airport	10	0101000000AB7F3A8A29DD58C01CF92CAD2D8B3B40
146	8	Airport	mid	Sumburgh	LSI	runway	EGPB	LSI	http://en.wikipedia.org/wiki/Sumburgh_Airport	10	010100000011343E86E59BF4BF3940696037F04D40
147	8	Airport	major	Bassel Al-Assad Int'l	LTK	terminal	OSLK	LTK	http://en.wikipedia.org/wiki/Bassel_Al-Assad_International_Airport	10	0101000000C7C82BE1DCF841402F4B2BC822B44140
148	8	Airport	major	London Luton	LTN	terminal	EGGW	LTN	http://en.wikipedia.org/wiki/London_Luton_Airport	10	0101000000FE7755881B14D8BF0D07D683ADF04940
149	8	Airport	mid	Svalbard Longyear	LYR	terminal	ENSB	LYR	http://en.wikipedia.org/wiki/Svalbard_Airport%2C_Longyear	10	0101000000C30FCEA78EFD2E4081971936CA8F5340
150	8	Airport	mid	Sangster Int'l	MBJ	runway	MKJS	MBJ	http://en.wikipedia.org/wiki/Sangster_International_Airport	10	01010000003EA00DEAC67A53C0BAD381B04B803240
151	8	Airport	mid	Mandalay Int'l	MDL	terminal	VYMD	MDL	http://en.wikipedia.org/wiki/Mandalay_International_Airport	10	01010000003B9741301FFE5740A7E61CDD9EB43540
152	8	Airport	major	Chicago Midway Int'l	MDW	terminal	KMDW	MDW	http://en.wikipedia.org/wiki/Chicago_Midway_International_Airport	10	0101000000FD36F0007FEF55C0DF34E8A0E8E44440
153	8	Airport	mid and military	Eloy Alfaro Int'l	MEC	runway	SEMT	MEC	http://en.wikipedia.org/wiki/Manta_Air_Base	10	01010000009B71C292BC2B54C08367B85DC562EEBF
154	8	Airport	major	Montgomery Reg.	MGM	terminal	KMGM	MGM	http://en.wikipedia.org/wiki/Montgomery_Regional_Airport	10	0101000000444F24CCFA9855C069F841BDFC264040
155	8	Airport	major	Manchester-Boston Reg.	MHT	terminal	KMHT	MHT	http://en.wikipedia.org/wiki/Manchester-Boston_Regional_Airport	10	0101000000EA4A486400DC51C01821C2E2C5764540
156	8	Airport	mid	Maiduguri Int'l	DNMA	terminal	DNMA	MIU	http://en.wikipedia.org/wiki/Maiduguri_International_Airport	10	010100000029CA5457972B2A40B2175531FAB42740
157	8	Airport	mid	Mbuji Mayi	MJM	terminal	FZWA	MJM	http://en.wikipedia.org/wiki/Mbuji_Mayi_Airport	10	0101000000E9099BBF75923740BDF2DF79D77F18C0
158	8	Airport	mid	Minot Int'l	MOT	terminal	KMOT	MOT	http://en.wikipedia.org/wiki/Minot_International_Airport	10	01010000007ADD7F0FA65259C037CE7CA9B7204840
159	8	Airport	mid	Missoula Int'l	MSO	terminal	KMSO	MSO	http://en.wikipedia.org/wiki/Missoula_International_Airport	10	0101000000ECFAF3415B855CC0FB887CF199754740
160	8	Airport	mid	Gen R.S. Taboada Int'l	MXL	terminal	MMML	MXL	http://en.wikipedia.org/wiki/General_Rodolfo_S%C3%A1nchez_Taboada_International_Airport	10	010100000056401C2BDDCF5CC0E4ACC9CB74504040
161	8	Airport	major	Malpensa	MXP	terminal	LIMC	MXP	http://en.wikipedia.org/wiki/Malpensa_Airport	10	0101000000209A3C08096D214051FD83F84FD04640
162	8	Airport	mid	Norfolk Island	NLK	terminal	YSNF	NLK	http://en.wikipedia.org/wiki/Norfolk_Island_Airport	10	0101000000D28ADB4830FE64406DA46C3200093DC0
163	8	Airport	major	Nurnberg	NUE	terminal	EDDN	NUE	http://en.wikipedia.org/wiki/Nuremberg_Airport	10	0101000000D5202454A3272640A36E6BF24BBF4840
164	8	Airport	major	Odessa Int'l	ODS	terminal	UKOO	ODS	http://en.wikipedia.org/wiki/Odessa_International_Airport	10	01010000006E280CC944AD3E402EE3227666384740
165	8	Airport	mid	Gold Coast	OOL	terminal	YBCG	OOL	http://en.wikipedia.org/wiki/Gold_Coast_Airport	10	010100000079C27B7B69306340D93F3AD9A02A3CC0
166	8	Airport	mid	Oran Es Senia	ORN	terminal	DAOO	ORN	http://en.wikipedia.org/wiki/Oran_Es_S%C3%A9nia_Airport	10	01010000004566B177E16AE3BF65AD922965CF4140
167	8	Airport	mid	Lok Nayak Jaiprakash	PAT	terminal	VEPT	PAT	http://en.wikipedia.org/wiki/Lok_Nayak_Jayaprakash_Airport	10	010100000036722C57D1455540C348D1712D983940
168	8	Airport	mid	Paysandu	PDU	terminal	SUPU	PDU	http://en.wikipedia.org/wiki/Paysand%C3%BA_Airport	10	0101000000790B96BEC5084DC0931B5B24442E40C0
169	8	Airport	major	Paphos Int'l	PFO	ramp	LCPH	PFO	http://en.wikipedia.org/wiki/Paphos_International_Airport	10	010100000042A18D8DDA3D404026FCB2BB505B4140
170	8	Airport	mid	Sultan Mahmud Badaruddin II	PLM	terminal	WIPP	PLM	http://en.wikipedia.org/wiki/Sultan_Mahmud_Badaruddin_II_Airport	10	01010000007FC9BC84BE2C5A4061F914C42F3307C0
171	8	Airport	mid	Polokwane Int'l	PTG	terminal	FAPP	PTG	http://en.wikipedia.org/wiki/Polokwane_International_Airport	10	0101000000B7C2371D0E743D4067133286E6DB37C0
172	8	Airport	mid	Punta Cana	PUJ	terminal	MDPC	PUJ	http://en.wikipedia.org/wiki/Punta_Cana_International_Airport	10	010100000088D4763E3F1751C084587D5323903240
173	8	Airport	mid	Queretaro Int'l	QRO	terminal	MMQT	QRO	http://en.wikipedia.org/wiki/Quer%C3%A9taro_International_Airport	10	0101000000CF2468B2FD0B59C02902BBEF599F3440
174	8	Airport	mid	Rajkot	RAJ	runway	VARK	RAJ	http://en.wikipedia.org/wiki/Rajkot_Airport	10	0101000000290BABC7EAB151408EC0DD152D4F3640
175	8	Airport	major	Richmond Int'l	RIC	terminal	KRIC	RIC	http://en.wikipedia.org/wiki/Richmond_International_Airport	10	010100000073D607D5515553C0C8F259A50FC14240
176	8	Airport	mid	Shah Makhdum	RJH	terminal	VGRJ	RJH	http://en.wikipedia.org/wiki/Shah_Makhdum_Airport	10	01010000000C0CF7924827564044A1CEDCDE713840
177	8	Airport	major	Greater Rochester Int'l	ROC	terminal	KROC	ROC	http://en.wikipedia.org/wiki/Greater_Rochester_International_Airport	10	0101000000A883B15D936A53C0CF01959F53904540
178	8	Airport	mid	Rockhampton	ROK	terminal	YBRK	ROK	http://en.wikipedia.org/wiki/Rockhampton_Airport	10	0101000000E124CD1F53CF62405E4C33DDEB6037C0
179	8	Airport	mid	Rostov-on-Don	ROV	terminal	URRR	ROV	http://en.wikipedia.org/wiki/Rostov-on-Don_Airport	10	01010000005994B28FD9E64340CA462982A7A04740
180	8	Airport	mid	Saratov	RTW	ramp	UWSS	RTW	http://en.wikipedia.org/wiki/Saratov_Tsentralny_Airport	10	0101000000D67050A47B0447409D98973CC3C74940
181	8	Airport	mid	Ramon Villeda Morales Int'l	SAP	terminal	MHLM	SAP	http://en.wikipedia.org/wiki/Ram%C3%B3n_Villeda_Morales_International_Airport	10	01010000004E41D0D757FB55C0A4C8CBE166E92E40
182	8	Airport	mid	Santa Barbara Muni.	SBA	terminal	KSBA	SBA	http://en.wikipedia.org/wiki/Santa_Barbara_Airport	10	01010000004B545BE18AF55DC0B1A2F85C7E364140
183	8	Airport	mid	Deadhorse	SCC	ramp	PASC	SCC	http://en.wikipedia.org/wiki/Deadhorse_Airport	10	0101000000EC6987BFA68E62C082A8FB00A48C5140
184	8	Airport	mid	Kangerlussuaq	SFJ	ramp	BGSF	SFJ	http://en.wikipedia.org/wiki/Kangerlussuaq_Airport	10	01010000003CF54883DB5849C0F7C9518028C15040
185	8	Airport	major	Springfield Reg.	SGF	terminal	KSGF	SGF	http://en.wikipedia.org/wiki/Springfield/Branson_National_Airport	10	010100000062F7AD237D5857C0B5603597FE9E4240
186	8	Airport	major	Shreveport Reg.	SHV	terminal	KSHV	SHV	http://en.wikipedia.org/wiki/Shreveport_Regional_Airport	10	010100000029E51282067557C0154B79AC2F3A4040
187	8	Airport	major	Simferopol Int'l	SIP	ramp	UKFF	SIP	http://en.wikipedia.org/wiki/Simferopol_International_Airport	10	01010000008DCE87A97EFF40404E37D37B96824640
188	8	Airport	mid	Sitka Rocky Gutierrez	SIT	terminal	PASI	SIT	http://en.wikipedia.org/wiki/Sitka_Rocky_Gutierrez_Airport	10	0101000000158DB5BFB3EB60C0DE54A4C2D8864C40
189	8	Airport	major	Los Cabos Int'l	SJD	terminal	MMSD	SJD	http://en.wikipedia.org/wiki/Los_Cabos_International_Airport	10	0101000000CDBB4D64F16D5BC0D02725EBA3293740
190	8	Airport	major	McNary Field	SLE	terminal	KSLE	SLE	http://en.wikipedia.org/wiki/McNary_Field	10	01010000001BA760F780C05EC00DE0B9B78B744640
191	8	Airport	mid	Plan de Guadalupe	SLW	ramp	MMIO	SLW	http://en.wikipedia.org/wiki/Plan_de_Guadalupe_International_Airport	10	010100000031E22528AA3B59C0F3A9CE92498C3940
192	8	Airport	major	Shannon	SNN	terminal	EINN	SNN	http://en.wikipedia.org/wiki/Shannon_Airport	10	0101000000BA2D4F9848D821C0E2695717C3584A40
193	8	Airport	mid	Santo Pekoa Int'l	SON	runway	NVSS	SON	http://en.wikipedia.org/wiki/Santo-Pekoa_International_Airport	10	010100000023D2389211E76440224A2DF9D5022FC0
194	8	Airport	mid	Achmad Yani	SRG	terminal	WARS	SRG	http://en.wikipedia.org/wiki/Achmad_Yani_Airport	10	0101000000F47104443A985B406F6EE97739EA1BC0
195	8	Airport	military mid	Srinagar	SXR	ramp	VISR	SXR	http://en.wikipedia.org/wiki/Srinagar_Airport	10	0101000000DE93838416B252401FF08CECD5FD4040
196	8	Airport	mid	Tapachula Int'l	TAP	ramp	MMTP	TAP	http://en.wikipedia.org/wiki/Tapachula_International_Airport	10	0101000000001B1021AE1757C091E52BBF0E952D40
197	8	Airport	major	Podgorica	TGD	terminal	LYPG	TGD	http://en.wikipedia.org/wiki/Podgorica_Airport	10	01010000009F28C4DE263F3340F1C41072182F4540
198	8	Airport	major	Tallahassee Reg.	TLH	terminal	KTLH	TLH	http://en.wikipedia.org/wiki/Tallahassee_Regional_Airport	10	010100000014719467141655C0B0AD974343653E40
199	8	Airport	major	Turin Int'l	TRN	terminal	LIMF	TRN	http://en.wikipedia.org/wiki/Turin_International_Airport	10	01010000007F7A6D489F931E4021BD395188984640
200	8	Airport	major	Taiyuan Wusu Int'l	TYN	terminal	ZBYN	TYN	http://en.wikipedia.org/wiki/Taiyuan_Wusu_International_Airport	10	0101000000EF0C639B0E285C405CF38BD793E04240
201	8	Airport	mid	Narsarsuaq	UAK	ramp	BGBW	UAK	http://en.wikipedia.org/wiki/Narsarsuaq_Airport	10	01010000000840DB9F4CB546C067A819F9CF944E40
202	8	Airport	military mid	Rayong	UTP	ramp	VTBU	UTP	http://en.wikipedia.org/wiki/U-Tapao_International_Airport	10	01010000002EF1D36D03405940E7536EBCDE5E2940
203	8	Airport	mid	Victoria Falls	VFA	runway	FVFA	VFA	http://en.wikipedia.org/wiki/Victoria_Falls_Airport	10	0101000000C37FF4C4C5D8394008C91416591932C0
204	8	Airport	mid	Vijaywada	VGA	ramp	VOBZ	VGA	http://en.wikipedia.org/wiki/Vijayawada_Airport	10	0101000000434822180733544035C9132255873040
205	8	Airport	mid	Varanasi	VNS	terminal	VIBN	VNS	http://en.wikipedia.org/wiki/Varanasi_Airport	10	01010000008BB0EFDFA5B65440516037272D733940
206	8	Airport	major	Juan Gualberto Gomez	VRA	terminal	MUVR	VRA	http://en.wikipedia.org/wiki/Juan_Gualberto_G%C3%B3mez_Airport	10	0101000000A36A1D10F35B54C0B8AE99701F0A3740
207	8	Airport	mid	Villahermosa	VSA	terminal	MMVA	VSA	http://en.wikipedia.org/wiki/Carlos_Rovirosa_P%C3%A9rez_International_Airport	10	0101000000D838719A6B3457C0A959F99239FE3140
208	8	Airport	mid	Brandon	YBR	terminal	CYBR	YBR	http://en.wikipedia.org/wiki/Brandon_Airport	10	0101000000A03EF58E89FC58C0E53E0B20CEF34840
209	8	Airport	military major	CFB Edmonton	YED	ramp	CYED	YED	http://en.wikipedia.org/wiki/CFB_Edmonton	10	010100000024C78F4CA55E5CC053A3EBA263D64A40
210	8	Airport	mid	Iqaluit	YFB	terminal	CYFB	YFB	http://en.wikipedia.org/wiki/Iqaluit_Airport	10	010100000027A49DC5592251C099E6A4C225E04F40
211	8	Airport	mid	John C. Munro Hamilton Int'l	YHM	terminal	CYHM	YHM	http://en.wikipedia.org/wiki/John_C._Munro_Hamilton_International_Airport	10	010100000029E418844AFB53C07CFF73FFE8944540
212	8	Airport	mid	Fort McMurray	YMM	terminal	CYMM	YMM	http://en.wikipedia.org/wiki/Fort_McMurray_Airport	10	01010000004EF0336553CE5BC0781C343302544C40
213	8	Airport	major and military	Yantai	YNT	terminal	ZSYT	YNT	http://en.wikipedia.org/wiki/Yantai_Laishan_International_Airport	10	010100000065F9F89FCF575E40C95200A92FB44240
214	8	Airport	mid	Peace River	YPE	terminal	CYPE	YPE	http://en.wikipedia.org/wiki/Peace_River_Airport	10	010100000081495EFA645C5DC0EE7CD4AFAF1D4C40
215	8	Airport	mid	Greater Moncton Int'l	YQM	terminal	CYQM	YQM	http://en.wikipedia.org/wiki/Greater_Moncton_International_Airport	10	01010000008A20FF29132C50C0C05447D6DF0E4740
216	8	Airport	mid	Sydney/J.A. Douglas McCurdy	YQY	terminal	CYQY	YQY	http://en.wikipedia.org/wiki/Sydney_Airport_(Nova_Scotia)	10	0101000000389DDE0902064EC0E1A19A6A6B154740
217	8	Airport	mid	Resolute Bay	YRB	runway	CYRB	YRB	http://en.wikipedia.org/wiki/Resolute_Bay_Airport	10	01010000009C8B12A021BE57C044A7D3C2F6AD5240
218	8	Airport	mid	Fort Smith	YSM	runway	CYSM	YSM	http://en.wikipedia.org/wiki/Fort_Smith_Airport	10	010100000087F88A0182FD5BC0132140438B024E40
219	8	Airport	mid	Thompson	YTH	ramp	CYTH	YTH	http://en.wikipedia.org/wiki/Thompson_Airport	10	0101000000A165DD3F167758C00893E2E313E64B40
220	8	Airport	mid	Timmins	YTS	ramp	CYTS	YTS	http://en.wikipedia.org/wiki/Timmins_Airport	10	0101000000CB64389ECF5754C0342F87DD77484840
221	8	Airport	mid	Repulse Bay	YUT	approximate	CYUT	YUT	http://en.wikipedia.org/wiki/Repulse_Bay_Airport	10	010100000000000000009055C00D39B69E21A25040
222	8	Airport	mid	Kuujjuaq	YVP	approximate	CYVP	YVP	http://en.wikipedia.org/wiki/Kuujjuaq_Airport	10	0101000000ED7E15E0BB1B51C0354415FE0C0D4D40
223	8	Airport	mid	Wabush	YWK	ramp	CYWK	YWK	http://en.wikipedia.org/wiki/Wabush_Airport	10	010100000046072461DFB750C01363997E89764A40
224	8	Airport	mid	Edmonton City Centre	YXD	terminal	CYXD	YXD	http://en.wikipedia.org/wiki/Edmonton_City_Centre_(Blatchford_Field)_Airport	10	0101000000DF47A26678615CC08D168AAE14C94A40
225	8	Airport	mid	Fort St. John (N. Peace)	YXJ	approximate	CYXJ	YXJ	http://en.wikipedia.org/wiki/Fort_St._John_Airport	10	0101000000EF1F0BD1212F5EC0EF552B137E1F4C40
226	8	Airport	mid	North Bay/Jack Garland	YYB	approximate	CYYB	YYB	http://en.wikipedia.org/wiki/North_Bay/Jack_Garland_Airport	10	0101000000936FB6B931DB53C094DBF63DEA2D4740
227	8	Airport	mid	Zaria	ZAR	ramp	DNZA	ZAR	http://en.wikipedia.org/wiki/Zaria_Airport	10	0101000000FFF3CA16C3BF1E4062E3BC7F45452640
228	8	Airport	mid	Skopje	SKP	terminal	LWSK	SKP	http://en.wikipedia.org/wiki/Skopje_Airport	10	0101000000738CE087D1A03540DE10C71A6DFA4440
229	8	Airport	mid	Burnpur	VE23	runway	VE23	\N	http://en.wikipedia.org/wiki/Burnpur_Airport	10	0101000000687371F95EBE55402C6F3B7F97A13740
230	8	Airport	mid	Hindon Air Force Station	VIDX	runway	VIDX	\N	http://en.wikipedia.org/wiki/Hindon_Air_Force_Station	10	01010000009C9B315373565340145FCE2C32B53C40
231	8	Airport	major	Sunchon	\N	runway	\N	\N	http://en.wikipedia.org/wiki/Sunchon_Airport	10	0101000000EA161A4703795F405A600A4DBBB44340
232	8	Airport	mid	Lodz Wladyslaw Reymont	EPLL	terminal	EPLL	LCJ	http://en.wikipedia.org/wiki/%C5%81%C3%B3d%C5%BA_W%C5%82adys%C5%82aw_Reymont_Airport	10	01010000001AD30A17396733407F36D61E15DD4940
233	8	Airport	mid and military	Alma Ata N.W.	BXJ	ramp	UAAR	BXJ	\N	10	0101000000E5B03F7A3538534053A15E5F7EAD4540
234	8	Airport	mid	Jiamusi Dongjiao	JMU	ramp	ZYJM	JMU	http://en.wikipedia.org/wiki/Jiamusi_Dongjiao_Airport	10	0101000000ACB69B3A994E6040357D8FEAE76B4740
235	8	Airport	major	Mudanjiang Hailang	MDG	ramp	ZYMD	MDG	http://en.wikipedia.org/wiki/Mudanjiang_Hailang_Airport	10	01010000008933F2999032604043A4D1BB63444640
236	8	Airport	military major	Severomorsk-3 (Murmansk N.E.)	ULMM	runway	ULMM	\N	http://en.wikipedia.org/wiki/Severomorsk-3	10	0101000000B9BF7F472AA54040DC76DE6A14415140
237	8	Airport	mid	Mosul Int'l	OSB	runway	ORBM	OSB	http://en.wikipedia.org/wiki/Mosul_International_Airport	10	010100000080D8D2A3A9924540A741D13C80274240
238	8	Airport	military mid	Rostov N.	\N	runway	\N	\N	\N	10	010100000046BF74C654D14340C5ED598782A34740
239	8	Airport	mid	Rostov S.W.	\N	runway	\N	\N	\N	10	01010000004434F15A0BE643405F2F0B6DD48E4740
240	8	Airport	mid	Oulu	OUL	terminal	EFOU	OUL	http://en.wikipedia.org/wiki/Oulu_Airport	10	01010000002439C646725F394039AB5972713B5040
241	8	Airport	major	Bordeaux	BOD	terminal	LFBD	BOD	http://en.wikipedia.org/wiki/Bordeaux_-_M%C3%A9rignac_Airport	10	010100000020680A891775E6BFE0A1DE9B826A4640
242	8	Airport	mid	Mandelieu	CEQ	terminal	LFMD	CEQ	http://en.wikipedia.org/wiki/Cannes_%E2%80%93_Mandelieu_Airport	10	0101000000FBC0BA3E38D11B408262F189E6C54540
243	8	Airport	mid	St Gatien	DOL	ramp	LFRG	DOL	http://en.wikipedia.org/wiki/Deauville_-_Saint-Gatien_Airport	10	010100000002689241C24EC43F61BE58E84AAE4840
244	8	Airport	mid	Lille-Lesquin	LIL	terminal	LFQQ	LIL	http://en.wikipedia.org/wiki/Lille_Airport	10	0101000000AD61472D04D908408B61F3932B494940
245	8	Airport	major	Toulouse-Blagnac	TLS	terminal	LFBO	TLS	http://en.wikipedia.org/wiki/Toulouse-Blagnac_Airport	10	0101000000117188C4E4F9F53F428153FFB2D04540
246	8	Airport	major	Fukuoka	FUK	terminal	RJFF	FUK	http://en.wikipedia.org/wiki/Fukuoka_Airport	10	0101000000B573FCCC364E60407780CF43DBCA4040
247	8	Airport	mid	Hiroshima-Nishi	HIW	terminal	RJBH	HIW	http://en.wikipedia.org/wiki/Hiroshima-Nishi_Airport	10	0101000000524B62806B8D6040AE75596E892F4140
248	8	Airport	mid	Nagoya	NKM	terminal	RJNA	NKM	http://en.wikipedia.org/wiki/Nagoya_Airfield	10	0101000000564B81986D1D61403E13C0D084A04140
249	8	Airport	mid	Sendai	SDJ	terminal	RJSS	SDJ	http://en.wikipedia.org/wiki/Sendai_Airport	10	01010000006F052896C49D6140AC690EC9B0114340
250	8	Airport	mid	Kirkenes Hoybuktmoen	KKN	terminal	ENKR	KKN	http://en.wikipedia.org/wiki/Kirkenes_Airport%2C_H%C3%B8ybuktmoen	10	010100000096BFDD712FE43D40A568A942536E5140
251	8	Airport	mid	Marechal Rondon Int'l	CGB	terminal	SBCY	CGB	http://en.wikipedia.org/wiki/Marechal_Rondon_International_Airport	10	0101000000596FBBF9610F4CC042AA6024634D2FC0
252	8	Airport	major	Hercilio Luz Int'l	FLN	terminal	SBFL	FLN	http://en.wikipedia.org/wiki/Herc%C3%ADlio_Luz_International_Airport	10	0101000000D9610568BC4548C01673620A25AA3BC0
253	8	Airport	mid	Joinville-Lauro C. de Loyola	JOI	terminal	SBJV	JOI	http://en.wikipedia.org/wiki/Joinville-Lauro_Carneiro_de_Loyola_Airport	10	0101000000FE7C10769C6648C08D2731576B393AC0
254	8	Airport	mid	Presidente Castro Pinto Int'l	JPA	terminal	SBJP	JPA	http://en.wikipedia.org/wiki/Presidente_Castro_Pinto_International_Airport	10	0101000000581FFB4F757941C02FB1F6CCAE951CC0
255	8	Airport	major	Augusto Severo Int'l	NAT	terminal	SJJQ	NAT	http://en.wikipedia.org/wiki/Augusto_Severo_International_Airport	10	010100000012F8BD05DA9F41C0BDD05B0EB39817C0
256	8	Airport	major	Francisco Sa Carneiro	OPO	terminal	LPPR	OPO	http://en.wikipedia.org/wiki/Francisco_S%C3%A1_Carneiro_Airport	10	01010000006A3B5704B15721C0B55A0FC9519E4440
257	8	Airport	mid	Marechal Cunha Machado Int'l	SLZ	terminal	SBSL	SLZ	http://en.wikipedia.org/wiki/Marechal_Cunha_Machado_International_Airport	10	01010000004D865DEE3C1E46C00CB37DE006AB04C0
258	8	Airport	military mid	Santos Air Force Base	SSZ	ramp	SBST	SSZ	http://en.wikipedia.org/wiki/Santos_Air_Force_Base	10	01010000005726801A132747C0BFC0F6787BEC37C0
259	8	Airport	mid	Teresina-Senador Petronio Portella	THE	terminal	SBTE	THE	http://en.wikipedia.org/wiki/Teresina_Airport	10	01010000003ED660661E6945C0DEF24671FC4014C0
260	8	Airport	mid	Viracopos-Campinas Int'l	VCP	terminal	SBKP	VCP	http://en.wikipedia.org/wiki/Viracopos-Campinas_International_Airport	10	0101000000A0F607E20E9247C0B06964B6760237C0
261	8	Airport	mid	Eurico de Aguiar Salles	VIX	ramp	SBVT	VIX	http://en.wikipedia.org/wiki/Eurico_de_Aguiar_Salles_Airport	10	01010000005109BFC6EE2444C0DCA07608E64134C0
262	8	Airport	major	Alicante	ALC	terminal	LEAL	ALC	http://en.wikipedia.org/wiki/Alicante_Airport	10	01010000003050B6EED4D4E1BF534B24A6B0244340
263	8	Airport	mid	Almeria	LEI	terminal	LEAM	LEI	http://en.wikipedia.org/wiki/Almer%C3%ADa_Airport	10	0101000000BDE2132D0AF902C099B44FA3836C4240
264	8	Airport	mid	Valencia	VLC	terminal	LEVC	VLC	http://en.wikipedia.org/wiki/Valencia_Airport	10	01010000003FF9C8CB694DDEBFF2578327E8BE4340
265	8	Airport	mid	Kiruna_Airport	KRN	terminal	ESNQ	KRN	http://en.wikipedia.org/wiki/Kiruna_Airport	10	0101000000DB4E748ACC55344058A616BDD6F45040
266	8	Airport	major	Norrkoping Airport	NRK	terminal	ESSP	NRK	http://en.wikipedia.org/wiki/Norrk%C3%B6ping_Airport	10	0101000000A98DD28AE33B304032145836AC4A4D40
477	6	Airport	mid	La Plata	LPG	terminal	SADL	LPG	http://en.wikipedia.org/wiki/La_Plata_Airport	20	01010000002E6724E19BF24CC079446EF3967B41C0
267	8	Airport	mid	Husein Sastranegara Int'l	BDO	runway	WICC	BDO	http://en.wikipedia.org/wiki/Husein_Sastranegara_International_Airport	10	0101000000591B18D3D6E45A401D3D5DC5089A1BC0
268	8	Airport	mid	Rosario – Islas Malvinas Int'l	ROS	terminal	SAAR	ROS	http://en.wikipedia.org/wiki/Rosario_%E2%80%93_Islas_Malvinas_International_Airport	10	010100000027EA9A9ED9634EC01257EDEC467540C0
269	8	Airport	mid	Maceio/Zumbi dos Palmares Int'l	MCZ	terminal	SBMO	MCZ	http://en.wikipedia.org/wiki/Zumbi_dos_Palmares_International_Airport	10	01010000004BB8EA7A70E541C0AD52FD5EA60723C0
270	8	Airport	mid	Sharm el-Sheikh Int'l	SSH	ramp	HESH	SSH	http://en.wikipedia.org/wiki/Sharm_el-Sheikh_International_Airport	10	0101000000E1ECBF6AEF3141408E65B8C8FBFA3B40
271	8	Airport	mid	Taba Int'l	TCP	terminal	HETB	TCP	http://en.wikipedia.org/wiki/Taba_International_Airport	10	0101000000940E03A84E6341408C77161731983D40
272	8	Airport	major and military	Agra	AGR	runway	VIAG	AGR	http://en.wikipedia.org/wiki/Agra_Airport	10	010100000016E233897F7D53405D6C46D860283B40
273	8	Airport	mid	Vadodara	BDQ	runway	VABO	BDQ	http://en.wikipedia.org/wiki/Vadodara_Airport	10	0101000000397EA9847B4E5240722F13D80E563640
274	8	Airport	mid	Shahid Ashrafi Esfahani	KSH	runway	OICC	KSH	http://en.wikipedia.org/wiki/Shahid_Ashrafi_Esfahani_Airport	10	0101000000025EBDED0A944740CB5D8562572C4140
275	8	Airport	mid	Benina Int'l	BEN	ramp	HLLB	BEN	http://en.wikipedia.org/wiki/Benina_International_Airport	10	010100000093FAA6419E443440A39867E82B0B4040
276	8	Airport	military major	King Abdulaziz Ab	DHA	ramp	OEDR	DHA	http://en.wikipedia.org/wiki/Dhahran_International_Airport	10	0101000000587688A3E81249403F01C5D736453A40
277	8	Airport	mid	Nueva Hesperides Int'l	STY	runway	SUSO	STY	http://en.wikipedia.org/wiki/Nueva_Hesperides_International_Airport	10	0101000000E2F01F67F6FD4CC004B6A2AEF86F3FC0
278	8	Airport	spaceport	Baikonur Cosmodrome	BAIK	approximate	\N	\N	http://en.wikipedia.org/wiki/Baikonur_Cosmodrome	10	01010000008169C76357A74F40B175106456FB4640
279	8	Airport	spaceport	Kennedy Space Center	KSC	approximate	\N	\N	http://en.wikipedia.org/wiki/John_F._Kennedy_Space_Center	10	01010000003410D015C42854C09E3408DB30843C40
280	8	Airport	spaceport	Centre Spatial Guyanais	CSG	terminal	\N	\N	http://en.wikipedia.org/wiki/Guiana_Space_Centre	10	0101000000B28170E75B624AC06278F9E527F51440
281	7	Airport	mid	Queen Beatrix Int'l	AUA	terminal	TNCA	AUA	http://en.wikipedia.org/wiki/Queen_Beatrix_International_Airport	15	010100000053AE93E47C8051C008D4BB14C6012940
282	7	Airport	mid	Djibouti-Ambouli Int'l	JIB	terminal	HDAM	JIB	http://en.wikipedia.org/wiki/Djibouti-Ambouli_International_Airport	15	010100000070D2DFC92993454083D71317AD1A2740
283	7	Airport	mid and military	Diego Aracena Int'l	IQQ	terminal	SCDA	IQQ	http://en.wikipedia.org/wiki/Diego_Aracena_International_Airport	15	0101000000386E27C36E8B51C0DDAB7C3F3F8C34C0
284	7	Airport	major	Sabiha Gokcen Havaalani	SAW	terminal	LTFJ	SAW	http://en.wikipedia.org/wiki/Sabiha_G%C3%B6k%C3%A7en_International_Airport	15	01010000001F6EAFE3414F3D40CA17321DC0734440
285	7	Airport	mid	Kosrae Island	KSA	ramp	PTSA	KSA	http://en.wikipedia.org/wiki/Kosrae_International_Airport	15	01010000000654EB14A05E644006E1A14575681540
286	7	Airport	mid	Funafuti Int'l	FUN	ramp	NGFU	FUN	http://en.wikipedia.org/wiki/Funafuti_International_Airport	15	01010000005224A10F41666640BAF1E7AEB90C21C0
287	7	Airport	mid	Dr. Babasaheb Ambedkar Int'l	NAG	terminal	VANP	NAG	http://en.wikipedia.org/wiki/Dr._Babasaheb_Ambedkar_International_Airport	15	01010000001376AA6B71C3534083FE9CC405173540
288	7	Airport	mid	Phuket Int'l	HKT	terminal	VTSP	HKT	http://en.wikipedia.org/wiki/Phuket_International_Airport	15	0101000000DF8676229693584029E5F07422372040
289	7	Airport	mid	Nadi Int'l	NAN	terminal	NFFN	NAN	http://en.wikipedia.org/wiki/Nadi_International_Airport	15	0101000000EF26A3D46F2E6640434E28E7BEC031C0
290	7	Airport	mid	Lic. Jesus Teran Peredo Int'l	AGU	terminal	MMAS	AGU	http://en.wikipedia.org/wiki/Lic._Jes%C3%BAs_Ter%C3%A1n_Peredo_International_Airport	15	0101000000545BA11C1A9459C089CD71F48AB33540
291	7	Airport	mid	Albenga	ALL	ramp	LIMG	ALL	http://en.wikipedia.org/wiki/Villanova_d'Albenga_International_Airport	15	0101000000D34B6BE80C3F20409704304FDF054640
292	7	Airport	major	Queen Alia Int'l	AMM	terminal	OJAI	AMM	http://en.wikipedia.org/wiki/Queen_Alia_International_Airport	15	0101000000301E6BB9AEFE41403C71276300B93F40
293	7	Airport	mid	Chacalluta Int'l	ARI	terminal	SCAR	ARI	http://en.wikipedia.org/wiki/Chacalluta_Airport	15	01010000007412469A7C9551C0C7C23D93655932C0
294	7	Airport	mid	Atar Int'l	ATR	terminal	GQPA	ATR	http://en.wikipedia.org/wiki/Atar_International_Airport	15	0101000000B5C5CA02331A2AC0132EA7A98E7F3440
295	7	Airport	mid	Ernesto Cortissoz Int'l	BAQ	terminal	SKBQ	BAQ	http://en.wikipedia.org/wiki/Ernesto_Cortissoz_International_Airport	15	0101000000528AD817B3B152C00154199BFAC52540
296	7	Airport	mid	Teniente Luis Candelaria Int'l	BRC	terminal	SAZS	BRC	http://en.wikipedia.org/wiki/San_Carlos_de_Bariloche_Airport	15	0101000000D709DCDE54CA51C01466700DB09244C0
297	7	Airport	mid	Bouake	BYK	terminal	DIBK	BYK	http://en.wikipedia.org/wiki/Bouak%C3%A9_Airport	15	0101000000172740CA984614C0710C5A7FC5F11E40
298	7	Airport	major	Philip S. W. Goldson Int'l	BZE	terminal	MZBZ	BZE	http://en.wikipedia.org/wiki/Philip_S._W._Goldson_International_Airport	15	0101000000E5A759A7B91356C0CC98A8CB3B893140
299	7	Airport	major	Corpus Christi Int'l	CRP	terminal	KCRP	CRP	http://en.wikipedia.org/wiki/Corpus_Christi_International_Airport	15	0101000000E1F92328256058C02631C5C042C63B40
300	7	Airport	mid	Hato Int'l	CUR	terminal	TNCC	CUR	http://en.wikipedia.org/wiki/Hato_International_Airport	15	010100000021DF9B803D3D51C0CC0531A4A25E2840
301	7	Airport	major	Velazco Astete Int'l	CUZ	terminal	SPZO	CUZ	http://en.wikipedia.org/wiki/Alejandro_Velasco_Astete_International_Airport	15	01010000000C444CFE64FC51C04ADEBE6691132BC0
302	7	Airport	mid	Julius Nyerere Int'l	DAR	terminal	HTDA	DAR	http://en.wikipedia.org/wiki/Julius_Nyerere_International_Airport	15	01010000002A161E6D8E9A43404526757585771BC0
303	7	Airport	mid	Detroit City	DET	terminal	KDET	DET	http://en.wikipedia.org/wiki/Coleman_A._Young_International_Airport	15	01010000001DC9970341C054C0DDBFE22F5D344540
304	7	Airport	mid	Presidente Nicolau Lobato Int'l	DIL	terminal	WPDL	DIL	http://en.wikipedia.org/wiki/Presidente_Nicolau_Lobato_International_Airport	15	0101000000B8E61B3697615F40268ADC5D3F1921C0
305	7	Airport	major	Moscow Domodedovo Int'l	DME	terminal	UUDD	DME	http://en.wikipedia.org/wiki/Domodedovo_International_Airport	15	01010000007878997E3BF34240CFAAADF502B54B40
306	7	Airport	mid	Dunedin Int'l	DUD	terminal	NZDN	DUD	http://en.wikipedia.org/wiki/Dunedin_International_Airport	15	010100000025EA059F66466540698EACFC32F646C0
307	7	Airport	mid	Dzaoudzi Pamanzi Int'l	DZA	terminal	FMCZ	DZA	http://en.wikipedia.org/wiki/Dzaoudzi_Pamandzi_International_Airport	15	01010000002BBAD09311A4464058D41312229C29C0
308	7	Airport	mid	El Paso Int'l	ELP	terminal	KELP	ELP	http://en.wikipedia.org/wiki/El_Paso_International_Airport	15	01010000000D9BA96353995AC088C4E1E690CC3F40
309	7	Airport	major	Zvartnots Int'l	EVN	terminal	UDYZ	EVN	http://en.wikipedia.org/wiki/Zvartnots_International_Airport	15	0101000000FAF921443533464083C5F6CA80134440
310	7	Airport	major	Fort Worth Meacham Field	FTW	terminal	KFTW	FTW	http://en.wikipedia.org/wiki/Fort_Worth_Meacham_International_Airport	15	0101000000C0378C87BA5658C0BE19626E0E694040
311	7	Airport	mid	JAGS McCartney Int'l	GDT	terminal	MBGT	GDT	http://en.wikipedia.org/wiki/JAGS_McCartney_International_Airport	15	010100000095C859415AC951C0D1DC8C052F713540
312	7	Airport	mid	Scholes Int'l	GLS	terminal	KGLS	GLS	http://en.wikipedia.org/wiki/Scholes_International_Airport_at_Galveston	15	0101000000BC3376E5BEB657C01393B93B62443D40
313	7	Airport	mid	Goma Int'l	GOM	terminal	FZNA	GOM	http://en.wikipedia.org/wiki/Goma_International_Airport	15	0101000000C9455725743D3D409D561B677888FABF
314	7	Airport	mid	Garoua Int'l	GOU	terminal	FKKR	GOU	http://en.wikipedia.org/wiki/Garoua_International_Airport	15	010100000056A29344AFBE2A40B8EDB70650A92240
315	7	Airport	major	Antonio B. Won Pat Int'l	GUM	terminal	PGUM	GUM	http://en.wikipedia.org/wiki/Antonio_B._Won_Pat_International_Airport	15	0101000000D825B086C91962408AC69F203CFC2A40
316	7	Airport	mid	Gary/Chicago Int'l	GYY	terminal	KGYY	GYY	http://en.wikipedia.org/wiki/Gary/Chicago_International_Airport	15	01010000001F51689022DA55C0119B50D713CF4440
317	7	Airport	mid	Prince Said Ibrahim Int'l	HAH	terminal	FMCH	HAH	http://en.wikipedia.org/wiki/Prince_Said_Ibrahim_International_Airport	15	01010000008CF26DD224A3454011B6AE65C21227C0
318	7	Airport	mid	Hobart Int'l	HBA	terminal	YMHB	HBA	http://en.wikipedia.org/wiki/Hobart_International_Airport	15	01010000007A36EC1E3170624018E444C0366B45C0
319	7	Airport	mid	Honiara Int'l	HIR	terminal	AGGH	HIR	http://en.wikipedia.org/wiki/Honiara_International_Airport	15	0101000000266C2DA5770164404BE78A32EBDA22C0
320	7	Airport	mid	Kiev Zhuliany Int'l	IEV	terminal	UKKK	IEV	http://en.wikipedia.org/wiki/Kiev_International_Airport	15	0101000000402ADA12F4713E40AC36E2E5D6344940
321	7	Airport	mid and military	Irkutsk S.E.	IKT	terminal	UIII	IKT	http://en.wikipedia.org/wiki/Irkutsk_Airport	15	010100000086E8F667C6165A40B6EC1A0AEE224A40
322	7	Airport	major	Indianapolis Int'l	IND	terminal	KIND	IND	http://en.wikipedia.org/wiki/Indianapolis_International_Airport	15	010100000044B13E647F9155C02020395677DD4340
323	7	Airport	mid	Nauru Int'l	INU	runway	ANYN	INU	http://en.wikipedia.org/wiki/Nauru_International_Airport	15	010100000068261E0451DD6440246C0EE9F170E1BF
324	7	Airport	mid	Mataveri Int'l	IPC	terminal	SCIP	IPC	http://en.wikipedia.org/wiki/Mataveri_International_Airport	15	01010000008C0AE02C865B5BC06156FD66A5283BC0
325	7	Airport	mid	Gob. Horacio Guzman Int'l	JUJ	terminal	SASJ	JUJ	http://en.wikipedia.org/wiki/Gobernador_Horacio_Guzm%C3%A1n_International_Airport	15	010100000033016645004650C0262D2D85D76238C0
326	7	Airport	mid	Nanchang Changbei Int'l	KHN	terminal	ZSCN	KHN	http://en.wikipedia.org/wiki/Nanchang_Changbei_International_Airport	15	0101000000564005E15DFA5C4077D74316CCDC3C40
327	7	Airport	major	Kunming Wujiaba Int'l	KMG	terminal	ZPPP	KMG	http://en.wikipedia.org/wiki/Kunming_Wujiaba_International_Airport	15	010100000058B5BADA7EAF5940DAECBCBEFFFF3840
328	7	Airport	major	Leeds Bradford	LBA	terminal	EGNM	LBA	http://en.wikipedia.org/wiki/Leeds_Bradford_International_Airport	15	010100000017467205AB8EFABF22E8C6133EEF4A40
329	7	Airport	mid	Libreville Leon M'ba Int'l	LBV	terminal	FOOL	LBV	http://en.wikipedia.org/wiki/Libreville_International_Airport	15	010100000091E872CC08D2224076FC1BE6C441DD3F
330	7	Airport	mid	Lome Tokoin	LFW	terminal	DXXX	LFW	http://en.wikipedia.org/wiki/Lom%C3%A9-Tokoin_Airport	15	0101000000271BFC54D103F43F41F38DEBE0AA1840
331	7	Airport	mid and military	Lviv Danylo Halytskyi Int'l	LWO	runway	UKLL	LWO	http://en.wikipedia.org/wiki/Lviv_International_Airport	15	01010000004D9C5E6035F23740D3BE2054AFE84840
332	7	Airport	mid	Marshall Islands Int'l	MAJ	terminal	PKMJ	MAJ	http://en.wikipedia.org/wiki/Marshall_Islands_International_Airport	15	010100000057A1C57B05696540D71E2FDAC0451C40
333	7	Airport	major	Macau Int'l	MFM	terminal	VMMC	MFM	http://en.wikipedia.org/wiki/Macau_International_Airport	15	0101000000C25CF5D1C4645C407074C9395C283640
334	7	Airport	mid	Aden Adde Int'l	MGQ	runway	HCMM	MGQ	http://en.wikipedia.org/wiki/Aden_Adde_International_Airport	15	010100000063684797DDA64640EDF88EBD7D210040
335	7	Airport	mid	Maputo Int'l	MPM	terminal	FQMA	MPM	http://en.wikipedia.org/wiki/Maputo_International_Airport	15	010100000059E6921B7F494040699409669DEC39C0
336	7	Airport	mid	Sir Seewoosagur Ramgoolam Int'l	MRU	terminal	FIMP	MRU	http://en.wikipedia.org/wiki/Sir_Seewoosagur_Ramgoolam_International_Airport	15	0101000000DD613D7AA7D64C402D03BF9C876E34C0
337	7	Airport	major	Naples Int'l	NAP	terminal	LIRN	NAP	http://en.wikipedia.org/wiki/Naples_International_Airport	15	010100000025F253FCD0902C4074EC38B164704440
338	7	Airport	mid	Nouadhibou Int'l	NDB	ramp	GQPP	NDB	http://en.wikipedia.org/wiki/Nouadhibou_International_Airport	15	0101000000F465E8838F0831C07F6D385FD6ED3440
339	7	Airport	major	Ningbo Lishe Int'l	NGB	terminal	ZSNB	NGB	http://en.wikipedia.org/wiki/Ningbo_Lishe_International_Airport	15	01010000008C8CE8728E5D5E4084CBF77721D23D40
340	7	Airport	mid	Nouakchott Int'l	NKC	terminal	GQNN	NKC	http://en.wikipedia.org/wiki/Nouakchott_International_Airport	15	0101000000F111BAD562E72FC0FE79347E11193240
341	7	Airport	mid	La Tontouta Int'l	NOU	terminal	NWWW	NOU	http://en.wikipedia.org/wiki/La_Tontouta_International_Airport	15	010100000075AEC590F3C6644058E627D27D0336C0
342	7	Airport	major	Oakland Int'l	OAK	terminal	KOAK	OAK	http://en.wikipedia.org/wiki/Oakland_International_Airport	15	0101000000B7018C12A68D5EC021C979C42CDB4240
343	7	Airport	major	Ontario Int'l	ONT	parking	KONT	ONT	http://en.wikipedia.org/wiki/LA/Ontario_International_Airport	15	0101000000C6163DB2E8655DC016718F57B4074140
344	7	Airport	major	Cork	ORK	terminal	EICK	ORK	http://en.wikipedia.org/wiki/Cork_Airport	15	0101000000E86667E4F3FA20C0F897FAF99CEC4940
345	7	Airport	mid	Minangkabau Int'l	PDG	terminal	WIMG	PDG	http://en.wikipedia.org/wiki/Minangkabau_International_Airport	15	010100000051F99EE84412594008EC5C574927E9BF
346	7	Airport	mid	Joao Paulo II	PDL	ramp	LPPD	PDL	http://en.wikipedia.org/wiki/Jo%C3%A3o_Paulo_II_Airport	15	0101000000300BEAD16DB239C06C9ACD7D25DF4240
347	7	Airport	mid	Bacha Khan Int'l	PEW	ramp	OPPS	PEW	http://en.wikipedia.org/wiki/Peshawar_International_Airport	15	01010000008E0ACB4334E1514057DF5D49E6FE4040
348	7	Airport	mid	Glasgow Prestwick	PIK	terminal	EGPK	PIK	http://en.wikipedia.org/wiki/Glasgow_Prestwick_International_Airport	15	01010000006C56A18CA27112C02DAEE95D23C14B40
349	7	Airport	mid	Ponta Pora Int'l	PMG	terminal	SBPP	PMG	http://en.wikipedia.org/wiki/Ponta_Por%C3%A3_International_Airport	15	010100000032B217CF60DA4BC0B55551E2418D36C0
350	7	Airport	mid	Palmerston N. Int'l	PMR	terminal	NZPM	PMR	http://en.wikipedia.org/wiki/Palmerston_North_International_Airport	15	010100000036327A8DE1F36540B095FF7A622944C0
351	7	Airport	mid	Pohnpei Int'l	PNI	terminal	PTPN	PNI	http://en.wikipedia.org/wiki/Pohnpei_International_Airport	15	01010000004E7A6B7881C6634031283EAEDBEC1B40
352	7	Airport	mid	Tahiti Faa'a Int'l	PPT	terminal	NTAA	PPT	http://en.wikipedia.org/wiki/Faa'a_International_Airport	15	01010000004148112383B362C04370C89F388F31C0
353	7	Airport	major and military	Pisa Galileo Galilei Int'l	PSA	terminal	LIRP	PSA	http://en.wikipedia.org/wiki/Galileo_Galilei_International_Airport	15	010100000036D29169DECC2440E6E300A162D94540
354	7	Airport	mid and military	Port Sudan	PZU	runway	HSSP	PZU	\N	15	0101000000D136F10AA89B4240FAE456E878933340
355	7	Airport	mid	Praia Int'l	RAI	terminal	GVNP	RAI	http://en.wikipedia.org/wiki/Praia_International_Airport	15	01010000002F40C7BB777C37C02D3FF896D5E32D40
356	7	Airport	mid	Marrakech-Menara	RAK	terminal	GMMX	RAK	http://en.wikipedia.org/wiki/Menara_International_Airport	15	0101000000E11BD912990C20C0934B9AFB2F9A3F40
357	7	Airport	mid	Rarotonga Int'l	RAR	ramp	NCRG	RAR	http://en.wikipedia.org/wiki/Rarotonga_International_Airport	15	0101000000D333197F8AF963C0EDCE5191733335C0
358	7	Airport	major	Siem Reap Int'l	REP	terminal	VDSR	REP	http://en.wikipedia.org/wiki/Angkor_International_Airport	15	0101000000F93C88BF35F4594030281CD64DD12A40
359	7	Airport	mid	Hermes Quijada Int'l	RGA	terminal	SAWE	RGA	http://en.wikipedia.org/wiki/Hermes_Quijada_Airport	15	0101000000A96E839731F050C0C159215C07E44AC0
360	7	Airport	mid	Piloto Civil Norberto Fernandez Int'l	RGL	terminal	SAWG	RGL	http://en.wikipedia.org/wiki/Piloto_Civil_Norberto_Fern%C3%A1ndez_International_Airport	15	0101000000715149399D5351C0E135741F4CCE49C0
361	7	Airport	major	Reno-Tahoe Int'l	RNO	terminal	KRNO	RNO	http://en.wikipedia.org/wiki/Reno-Tahoe_International_Airport	15	01010000007C5CE13D9EF15DC0FDBF87B0BFC04340
362	7	Airport	mid	Roman Tmetuchl Int'l	ROR	terminal	PTRO	ROR	http://en.wikipedia.org/wiki/Palau_International_Airport	15	0101000000206E6DF40DD1604007DA5C513E751D40
363	7	Airport	mid	Amilcar Cabral Int'l	SID	terminal	GVAC	SID	http://en.wikipedia.org/wiki/Am%C3%ADlcar_Cabral_International_Airport	15	01010000005EC10CBFADF136C03D2165691BBC3040
364	7	Airport	major	Sarajevo	SJJ	terminal	LQSA	SJJ	http://en.wikipedia.org/wiki/Sarajevo_International_Airport	15	010100000030100DA22C56324081172EACB6E94540
365	7	Airport	mid	Robert L. Bradshaw Int'l	SKB	terminal	TKPK	SKB	http://en.wikipedia.org/wiki/Robert_L._Bradshaw_International_Airport	15	0101000000B31BBB506B5B4FC09BA36DF1A54F3140
366	7	Airport	mid	Martín Miguel de Güemes Int	SLA	terminal	SASA	SLA	http://en.wikipedia.org/wiki/Mart%C3%ADn_Miguel_de_G%C3%BCemes_Airport	15	0101000000FAFCFB599F5E50C0EAF388E928D838C0
367	7	Airport	mid	Saipan Int'l	SPN	terminal	PGSN	SPN	http://en.wikipedia.org/wiki/Saipan_International_Airport	15	01010000006E64B38128376240BDA08270373E2E40
368	7	Airport	mid	Juana Azurduy de Padilla Int'l	SRE	terminal	SLSU	SRE	http://en.wikipedia.org/wiki/Juana_Azurduy_de_Padilla_International_Airport	15	01010000002DD20845BE5250C0CC8941FC8F0333C0
369	7	Airport	major	Princess Juliana Int'l	SXM	terminal	TNCM	SXM	http://en.wikipedia.org/wiki/Princess_Juliana_International_Airport	15	01010000003C7212105F8E4FC0B8AE1281D00A3240
370	7	Airport	mid	Ta'izz Int'l	TAI	terminal	OYTZ	TAI	http://en.wikipedia.org/wiki/Ta'izz_International_Airport	15	010100000010FD7E8F40114640F0FA8E76F95E2B40
371	7	Airport	mid	Qingdao Liuting Int'l	TAO	terminal	ZSQD	TAO	http://en.wikipedia.org/wiki/Qingdao_Liuting_International_Airport	15	0101000000BE5099285D185E4002874AE345224240
372	7	Airport	mid	Chuuk Int'l	TKK	terminal	PTKK	TKK	http://en.wikipedia.org/wiki/Chuuk_International_Airport	15	0101000000F30B880AF2FA6240F1D2E5C299D41D40
373	7	Airport	mid	Tangier Ibn Battouta	TNG	terminal	GMTT	TNG	http://en.wikipedia.org/wiki/Tangier_Ibn_Battouta_Airport	15	010100000079DC973ECAA617C0FB2B76E3E5DC4140
374	7	Airport	mid	Bonriki Int'l	TRW	ramp	NGTA	TRW	http://en.wikipedia.org/wiki/Bonriki_International_Airport	15	0101000000C46AE3F4ABA46540609B680F3817F63F
375	7	Airport	major	Astana Int'l	TSE	terminal	UACC	TSE	http://en.wikipedia.org/wiki/Astana_International_Airport	15	010100000089A3D91B80DD51403B7C989D72834940
376	7	Airport	major	Tianjin Binhai Int'l	TSN	terminal	ZBTJ	TSN	http://en.wikipedia.org/wiki/Tianjin_Binhai_International_Airport	15	01010000001419290493565D406403812D92904340
377	7	Airport	major and military	Townsville	TSV	terminal	YBTL	TSV	http://en.wikipedia.org/wiki/Townsville_Airport	15	01010000008A76CE66A9586240EE6C501B954133C0
378	7	Airport	mid	Teniente Gen. Benjamin Matienzo Int'l	TUC	terminal	SANT	TUC	http://en.wikipedia.org/wiki/Benjam%C3%ADn_Matienzo_International_Airport	15	010100000019978A83EB4650C0F4089777F2D53AC0
379	7	Airport	major	Aeroport Tunis	TUN	terminal	DTTA	TUN	http://en.wikipedia.org/wiki/Tunis-Carthage_International_Airport	15	0101000000DCCB8046766F2440A815E62E796C4240
380	7	Airport	major	Tucson Int'l	TUS	terminal	KTUS	TUS	http://en.wikipedia.org/wiki/Tucson_International_Airport	15	010100000020425C7E03BC5BC06325A3B4670F4040
381	7	Airport	mid	Chinggis Khaan Int'l	ULN	terminal	ZMUB	ULN	http://en.wikipedia.org/wiki/Chinggis_Khaan_International_Airport	15	0101000000FACB72EDD2B05A40B7163C931FED4740
382	7	Airport	major	Urumqi Diwopu Int'l	URC	terminal	ZWWW	URC	http://en.wikipedia.org/wiki/%C3%9Cr%C3%BCmqi_Diwopu_International_Airport	15	0101000000F2DF9774E5DD5540DC752CBFFCF24540
383	7	Airport	mid	Bauerfield Int'l	VLI	terminal	NVVV	VLI	http://en.wikipedia.org/wiki/Bauerfield_International_Airport	15	0101000000F2BC77593A0A65406675D58CA2B331C0
384	7	Airport	mid	Wewak Int'l	WWK	terminal	AYWK	WWK	http://en.wikipedia.org/wiki/Wewak_International_Airport	15	010100000025DC394969F56140954A7FFF4DA40CC0
385	7	Airport	military mid	Chalons Vatry	XCR	terminal	LFOK	XCR	http://en.wikipedia.org/wiki/Ch%C3%A2lons_Vatry_Airport	15	010100000052BB64EAB4C31040923E80F8E3634840
386	7	Airport	major	Xiamen Gaoqi Int'l	XMN	terminal	ZSAM	XMN	http://en.wikipedia.org/wiki/Xiamen_Gaoqi_International_Airport	15	01010000008F11F14120885D404E32CA7385893840
387	7	Airport	mid	Yap Int'l	YAP	terminal	PTYA	YAP	http://en.wikipedia.org/wiki/Yap_International_Airport	15	0101000000E8307109C44261407DF64F05EFFE2240
388	7	Airport	mid	Playa de Oro Int'l	ZLO	terminal	MMZO	ZLO	http://en.wikipedia.org/wiki/Playa_de_Oro_International_Airport	15	01010000002DC48999D8235AC0C4C449F7E8253340
389	7	Airport	mid	Cayenne – Rochambeau	CAY	terminal	SOCA	CAY	http://en.wikipedia.org/wiki/Cayenne-Rochambeau_Airport	15	0101000000A5F11C39912E4AC0F8630341FA481340
390	7	Airport	mid	Irkutsk N.W.	UIII	ramp	UIIR	UIIR	http://en.wikipedia.org/wiki/Irkutsk_Northwest_Airport	15	0101000000B01DD688A10C5A40C7B089784A2E4A40
391	7	Airport	major	Shijiazhuang Zhengding Int'l	SJW	terminal	ZBSJ	SJW	http://en.wikipedia.org/wiki/Shijiazhuang_Zhengding_International_Airport	15	0101000000509990184EAC5C4073BF161F9A234340
392	7	Airport	major	Heydar Aliyev Int'l	GYD	terminal	UBBB	GYD	http://en.wikipedia.org/wiki/Heydar_Aliyev_International_Airport	15	0101000000CACCEA2361064940FF5A364A3B3B4440
393	7	Airport	military mid	Lakatamia Airbase	LAK	ramp	LCRO	LAK	http://en.wikipedia.org/wiki/List_of_airports_in_Cyprus	15	01010000002D0FB2E43DA940400484E5B49C8D4140
394	7	Airport	mid	Cabo Frio Int'l	CFB	terminal	SBCB	CFB	http://en.wikipedia.org/wiki/Cabo_Frio_International_Airport	15	0101000000EF88E1EB240A45C0A8DD1E33F6EC36C0
395	7	Airport	mid	Helsinki-Malmi	HEM	terminal	EFHF	HEM	http://en.wikipedia.org/wiki/Helsinki-Malmi_Airport	15	0101000000C43CBC34A80B3940ACF5069DEB1F4E40
396	7	Airport	major	Luxembourg-Findel	LUX	terminal	ELLX	LUX	http://en.wikipedia.org/wiki/Luxembourg-Findel_International_Airport	15	010100000050A309869DDD18406A8662E030D14840
397	7	Airport	major	Venice Marco Polo	VCE	terminal	LIPZ	VCE	http://en.wikipedia.org/wiki/Marco_Polo_International_Airport	15	01010000001D398A5FA0AE2840A2D9F2D99EC04640
398	7	Airport	mid	Yangyang Int'l	YNY	terminal	RKNY	YNY	http://en.wikipedia.org/wiki/Yangyang_International_Airport	15	01010000001B4903343715604085B4A52E86074340
399	7	Airport	mid	Tabatinga Int'l	TBT	terminal	SBTT	TBT	http://en.wikipedia.org/wiki/Tabatinga_International_Airport	15	010100000059654757207C51C0BE7CE81D550011C0
400	7	Airport	mid	Boa Vista Int'l	BVB	terminal	SBBV	BVB	http://en.wikipedia.org/wiki/Boa_Vista_International_Airport	15	01010000004C0A8CAF9A584EC0F868809FC4BA0640
401	7	Airport	major	Gran Canaria	LPA	terminal	GCLP	LPA	http://en.wikipedia.org/wiki/Gran_Canaria_Airport	15	010100000075EFA62FA4C72EC00C386C05D8EF3B40
402	7	Airport	mid	Com. Armando Tola Int'l	ING	terminal	SAWA	ING	http://en.wikipedia.org/wiki/Comandante_Armando_Tola_International_Airport	15	0101000000E7EA4064720352C0ADD619DD562449C0
403	7	Airport	mid	Stockholm-Skavsta	NYO	terminal	ESKN	NYO	http://en.wikipedia.org/wiki/Stockholm-Skavsta_Airport	15	0101000000BE3F8557EEEB304087E4C94A7E644D40
404	7	Airport	mid	Polonia Int'l	MES	terminal	WIMM	MES	http://en.wikipedia.org/wiki/Polonia_International_Airport	15	0101000000200F35BD46AB58404D53164861880C40
405	7	Airport	mid	Bangui M'Poko Int'l	BGF	terminal	FEFF	BGF	http://en.wikipedia.org/wiki/Bangui_M'Poko_International_Airport	15	0101000000E4CD5AF72C86324084CD8C896C981140
406	7	Airport	major	Hangzhou Xiaoshan Int'l	HGH	terminal	ZSHC	HGH	http://en.wikipedia.org/wiki/Hangzhou_Xiaoshan_International_Airport	15	0101000000E5FCC07BA71B5E406EF3002B353C3E40
407	7	Airport	mid	Cassidy Int'l	CXI	runway	PLCH	CXI	http://en.wikipedia.org/wiki/Cassidy_International_Airport	15	0101000000B6A4686131AB63C089AFDAF650C7FF3F
408	7	Airport	mid	Siauliai Int'l	SQQ	runway	EYSA	SQQ	http://en.wikipedia.org/wiki/%C5%A0iauliai_International_Airport	15	0101000000FEF778A518623740DE1CACB7AEF34B40
409	7	Airport	mid	Niue Int'l	IUE	terminal	NIUE	IUE	http://en.wikipedia.org/wiki/Niue_International_Airport	15	01010000009B83E8DAA23D65C044F17C75A31333C0
410	7	Airport	mid	Guarani Int'l	AGT	terminal	SGES	AGT	http://en.wikipedia.org/wiki/Guarani_International_Airport	15	0101000000DEF79B71716B4BC04663C595F47439C0
411	7	Airport	mid	Rodriguez Ballon Int'l	AQP	terminal	SPQU	AQP	http://en.wikipedia.org/wiki/Rodriguez_Ballon_International_Airport	15	01010000000592E90559E451C0C2746C90345830C0
412	7	Airport	mid and military	Vladivostok Int'l	VVO	terminal	UHWW	VVO	http://en.wikipedia.org/wiki/Vladivostok_International_Airport	15	0101000000C022589579846040CB548CCF56B04540
413	7	Airport	major	Pristina	PRN	ramp	BKPR	PRN	http://en.wikipedia.org/wiki/Pristina_International_Airport_Adem_Jashari	15	01010000001CA9C2B5BF073540D4BD785DE24A4540
414	6	Airport	mid	Deurne	ANR	terminal	EBAW	ANR	http://en.wikipedia.org/wiki/Antwerp_International_Airport	20	010100000007641DB3BECD1140B6D2E65C35984940
415	6	Airport	mid	Gen. Marquez de Leon Int'l	LAP	terminal	MMLP	LAP	http://en.wikipedia.org/wiki/Manuel_M%C3%A1rquez_de_Le%C3%B3n_International_Airport	20	0101000000BEC2732B80975BC0D92746A87A133840
416	6	Airport	major	Harbin Taiping	HRB	terminal	ZYHB	HRB	http://en.wikipedia.org/wiki/Harbin_Taiping_International_Airport	20	0101000000C9D0DFBA2A8F5F401D7FF5DB6FCF4640
417	6	Airport	mid	Trivandrum Int'l	TRV	terminal	VOTV	TRV	http://en.wikipedia.org/wiki/Trivandrum_International_Airport	20	01010000003D3DB04CCF3A534009FA571CF9F32040
418	6	Airport	major	Adnan Menderes	ADB	terminal	LTBJ	ADB	http://en.wikipedia.org/wiki/Adnan_Menderes_Airport	20	0101000000690A015E38263B40C787462E47254340
419	6	Airport	major	Nanjing Lukou Int'l	NKG	terminal	ZSNJ	NKG	http://en.wikipedia.org/wiki/Nanjing_Lukou_International_Airport	20	010100000034FDB2376EB75D4030A42C413EBC3F40
420	6	Airport	mid	Freeport Int'l	FPO	terminal	MYGF	FPO	http://en.wikipedia.org/wiki/Grand_Bahama_International_Airport	20	01010000005A8D7F420DAD53C0A85019E6598C3A40
421	6	Airport	major	Tripoli Int'l	TIP	terminal	HLLT	TIP	http://en.wikipedia.org/wiki/Tripoli_International_Airport	20	0101000000F1B52B50DC492A40D46F0B59A7554040
422	6	Airport	mid	Gander Int'l	YQX	terminal	CYQX	YQX	http://en.wikipedia.org/wiki/Gander_International_Airport	20	010100000013981F57AC494BC0BB459B1F2A794840
423	6	Airport	major and military	Doha Int'l	DOH	terminal	OTBD	DOH	http://en.wikipedia.org/wiki/Doha_International_Airport	20	01010000004619D4867EC749401C2448C7AB443940
424	6	Airport	major	Albuquerque Int'l	ABQ	terminal	KABQ	ABQ	http://en.wikipedia.org/wiki/Albuquerque_International_Sunport	20	010100000016400AC577A75AC0B49887CD4A864140
425	6	Airport	mid	V.C. Bird Int'l	ANU	terminal	TAPA	ANU	http://en.wikipedia.org/wiki/VC_Bird_International_Airport	20	0101000000222DC64D6CE54EC02EC7FBA0EE233140
426	6	Airport	mid	Faleolo	APW	terminal	NSFA	APW	http://en.wikipedia.org/wiki/Faleolo_International_Airport	20	010100000000EB4810EA7F65C0F507599D3DAA2BC0
427	6	Airport	mid	Asyut	ATZ	terminal	HEAT	ATZ	http://en.wikipedia.org/wiki/Assiut_Airport	20	01010000008FB7B7E528043F4074EA5544020D3B40
428	6	Airport	major	Bahrain Int'l	BAH	terminal	OBBI	BAH	http://en.wikipedia.org/wiki/Bahrain_International_Airport	20	01010000000448BBDC20504940C2DB56DF0A453A40
429	6	Airport	major	Bradley Int'l	BDL	terminal	KBDL	BDL	http://en.wikipedia.org/wiki/Bradley_International_Airport	20	010100000074DFE981DD2B52C0F4004A9814F74440
430	6	Airport	mid	Grantley Adams Int'l	BGI	terminal	TBPB	BGI	http://en.wikipedia.org/wiki/Grantley_Adams_International_Airport	20	0101000000C16A0BBE63BE4DC014A31D57C9282A40
431	6	Airport	mid	Yundum Int'l	BJL	terminal	GBYD	BJL	http://en.wikipedia.org/wiki/Banjul_International_Airport	20	0101000000E691A000FEA630C090790E7B0EB02A40
432	6	Airport	mid	Bujumbura Int'l	BJM	terminal	HBBA	BJM	http://en.wikipedia.org/wiki/Bujumbura_International_Airport	20	010100000002872F022C523D40DC09DBFC8B930AC0
433	6	Airport	mid	Chileka Int'l	BLZ	terminal	FWCL	BLZ	http://en.wikipedia.org/wiki/Chileka_International_Airport	20	0101000000FB76C1AA687C4140D06C2D6DDE5C2FC0
434	6	Airport	mid	Broome Int'l	BME	terminal	YBRM	BME	http://en.wikipedia.org/wiki/Broome_International_Airport	20	0101000000FB8A2668F78E5E4008287A07DCF331C0
435	6	Airport	mid	Bandar Abbass Int'l	BND	terminal	OIKB	BND	http://en.wikipedia.org/wiki/Bandar_Abbas_International_Airport	20	01010000007D1CE1AB372F4C400FFD23EAD7353B40
436	6	Airport	major	Basrah Int'l	BSR	terminal	ORMM	BSR	http://en.wikipedia.org/wiki/Basra_International_Airport	20	0101000000BC40D35D8DD54740BA6F7F3C848D3E40
437	6	Airport	mid	Ciudad Juarez Int'l	CJS	terminal	MMCS	CJS	http://en.wikipedia.org/wiki/Abraham_Gonz%C3%A1lez_International_Airport	20	01010000001A9D44E9E49B5AC022F423F2C0A23F40
438	6	Airport	major	Katunayake Int'l	CMB	terminal	VCBI	CMB	http://en.wikipedia.org/wiki/Bandaranaike_International_Airport	20	01010000002C45690EA8F853409E2940D859B61C40
439	6	Airport	mid	Cairns Int'l	CNS	terminal	YBCS	CNS	http://en.wikipedia.org/wiki/Cairns_International_Airport	20	0101000000AAAEF65D1D3862407C7E842C72E030C0
440	6	Airport	major	Chiang Mai Int'l	CNX	terminal	VTCC	CNX	http://en.wikipedia.org/wiki/Chiang_Mai_International_Airport	20	0101000000787BB8A5F5BD58408C1DC42ED3C43240
441	6	Airport	major	City of Colorado Springs	COS	terminal	KCOS	COS	http://en.wikipedia.org/wiki/Colorado_Springs_Airport	20	010100000010EEEF38DB2C5AC056D3B50412664340
442	6	Airport	mid	Ign. Alberto Ongay Int'l	CPE	terminal	MMCP	CPE	http://en.wikipedia.org/wiki/Ing._Alberto_Acu%C3%B1a_Ongay_International_Airport	20	0101000000DC4680723BA056C02930540971D03340
443	6	Airport	major	Changsha Huanghua Int'l	CSX	terminal	ZGHA	CSX	http://en.wikipedia.org/wiki/Changsha_airport	20	01010000007DA26610B34D5C4078D919B89E303C40
444	6	Airport	major	Greater Cincinnati Int'l	CVG	terminal	KCVG	CVG	http://en.wikipedia.org/wiki/Cincinnati/Northern_Kentucky_International_Airport	20	01010000000FC019B0FE2955C0C8CF77F717874340
445	6	Airport	major	Da Nang	DAD	terminal	VVDN	DAD	http://en.wikipedia.org/wiki/Da_Nang_International_Airport	20	0101000000D021AB23F90C5B404A77CDDA9A0D3040
446	6	Airport	major	Dallas Love Field	DAL	terminal	KDAL	DAL	http://en.wikipedia.org/wiki/Dallas_Love_Field	20	0101000000819A032B643658C0D70F7121166C4040
447	6	Airport	major	Damascus Int'l	DAM	terminal	OSDI	DAM	http://en.wikipedia.org/wiki/Damascus_International_Airport	20	0101000000CAD90E8FA64142406899F1F4A9B44040
448	6	Airport	mid	Enrique Malek Int'l	DAV	terminal	MPDA	DAV	http://en.wikipedia.org/wiki/Enrique_Malek_International_Airport	20	0101000000523BB8EDA19B54C0F8D6AB5E53C82040
449	6	Airport	mid	Aba Tenna D. Yilma Int'l	DIR	terminal	HADR	DIR	http://en.wikipedia.org/wiki/Aba_Tenna_Dejazmach_Yilma_International_Airport	20	01010000001A00E7F8CAED4440864C2CE9B0392340
450	6	Airport	major	Bali Int'l	DPS	terminal	WADD	DPS	http://en.wikipedia.org/wiki/Ngurah_Rai_Airport	20	0101000000F055D87F63CA5C40DFFAB6D4507D21C0
451	6	Airport	major	Des Moines Int'l	DSM	terminal	KDSM	DSM	http://en.wikipedia.org/wiki/Des_Moines_International_Airport	20	01010000004236A463806957C004CE037A32C44440
452	6	Airport	mid	Entebbe Int'l	EBB	terminal	HUEN	EBB	http://en.wikipedia.org/wiki/Entebbe_International_Airport	20	0101000000D2D18A45AC3840407A46C0078002A73F
453	6	Airport	mid	Kisangani Bangoka Int'l	FKI	terminal	FZIC	FKI	http://en.wikipedia.org/wiki/Bangoka_International_Airport	20	01010000005CB91EAC8C5439403B1B55DC9D80DF3F
454	6	Airport	mid	Fuzhou Changle Int'l	FOC	terminal	ZSFZ	FOC	http://en.wikipedia.org/wiki/Fuzhou_Changle_International_Airport	20	010100000022DFDE3AC1EA5D401DC706F98BEE3940
455	6	Airport	mid	Lokpriya G. Bordoloi Int'l	GAU	terminal	VEGT	GAU	http://en.wikipedia.org/wiki/Lokpriya_Gopinath_Bordoloi_International_Airport	20	010100000013DE7D8BA5E5564045739781F11A3A40
456	6	Airport	major	Gdansk Lech Walesa	GDN	terminal	EPGD	GDN	http://en.wikipedia.org/wiki/Gda%C5%84sk_Lech_Wa%C5%82%C4%99sa_Airport	20	01010000001E5340D4EB773240EF4A55DCBA304B40
457	6	Airport	mid	Point Salines Int'l	GND	terminal	TGPY	GND	http://en.wikipedia.org/wiki/Point_Salines_International_Airport	20	010100000036C0AFD496E44EC03939DCABB8032840
458	6	Airport	mid	Nizhny Novgorod Int'l	GOJ	terminal	UWGG	GOJ	http://en.wikipedia.org/wiki/Nizhny_Novgorod_International_Airport	20	0101000000CA2CA0B712E54540948A0388F91B4C40
459	6	Airport	mid	Gen. Jose M. Yanez Int'l	GYM	terminal	MMGM	GYM	http://en.wikipedia.org/wiki/General_Jos%C3%A9_Mar%C3%ADa_Y%C3%A1%C3%B1ez_International_Airport	20	01010000006F2C9C55FCBA5BC03BF7953A2EF83B40
460	6	Airport	mid	Hohhot Baita Int'l	HET	terminal	ZBHH	HET	http://en.wikipedia.org/wiki/Hohhot_Baita_International_Airport	20	0101000000DB2139BF23F45B406B174FD7516D4440
461	6	Airport	mid	Helena Reg.	HLN	terminal	KHLN	HLN	http://en.wikipedia.org/wiki/Helena_Regional_Airport	20	0101000000EEB082785AFF5BC085CA1D2D1B4E4740
462	6	Airport	mid	Gen. Ignacio P. Garcia Int'l	HMO	terminal	MMHO	HMO	http://en.wikipedia.org/wiki/General_Ignacio_Pesqueira_Garcia_International_Airport	20	0101000000A5B78E5B52C35BC0EEEE844D0F173D40
463	6	Airport	major	Dulles Int'l	IAD	terminal	KIAD	IAD	http://en.wikipedia.org/wiki/Washington_Dulles_International_Airport	20	0101000000005132A2A85C53C038BEEA7FF4794340
464	6	Airport	mid	Hilo Int'l	ITO	terminal	PHTO	ITO	http://en.wikipedia.org/wiki/Hilo_International_Airport	20	0101000000AB2193A5446163C0D85830FBFCB63340
465	6	Airport	major	Jackson Int'l	JAN	terminal	KJAN	JAN	http://en.wikipedia.org/wiki/Jackson-Evers_International_Airport	20	0101000000737A796ACE8456C05DA9060CB0274040
466	6	Airport	major	Jacksonville Int'l	JAX	terminal	KJAX	JAX	http://en.wikipedia.org/wiki/Jacksonville_International_Airport	20	0101000000D9959AB8BF6B54C0C838E64AC97D3E40
467	6	Airport	mid	Kuching Int'l	KCH	terminal	WBGG	KCH	http://en.wikipedia.org/wiki/Kuching_International_Airport	20	0101000000183686A8E0955B40A58FF28C9ACBF73F
468	6	Airport	mid	Kigali Int'l	KGL	terminal	HRYR	KGL	http://en.wikipedia.org/wiki/Kigali_International_Airport	20	010100000037AC854987223E400B5220EA206BFFBF
469	6	Airport	major	Balice	KRK	terminal	EPKK	KRK	http://en.wikipedia.org/wiki/John_Paul_II_International_Airport_Krak%C3%B3w-Balice	20	0101000000AB8DE9D80CCD3340621586EA3F094940
470	6	Airport	major	Kurumoch	KUF	terminal	UWWW	KUF	http://en.wikipedia.org/wiki/Kurumoch_International_Airport	20	0101000000784DBA98D912494011E5F5C012C14A40
471	6	Airport	major	Guilin Liangjiang Int'l	KWL	terminal	ZGKL	KWL	http://en.wikipedia.org/wiki/Guilin_Liangjiang_International_Airport	20	010100000053D4954D00835B40F249E6FEB4373940
472	6	Airport	mid	Laoag Int'l	LAO	terminal	RPLI	LAO	http://en.wikipedia.org/wiki/Laoag_International_Airport	20	01010000009E9E10072B225E40FE4EA4F3B22E3240
473	6	Airport	major	LaGuardia	LGA	terminal	KLGA	LGA	http://en.wikipedia.org/wiki/LaGuardia_Airport	20	0101000000C6629D9DCE7752C00E66609524634440
474	6	Airport	major	London Gatwick	LGW	terminal	EGKK	LGW	http://en.wikipedia.org/wiki/London_Gatwick_Airport	20	010100000056A24D4FEDDBC4BF6ED455D6EF934940
475	6	Airport	major	Ljubljana	LJU	terminal	LJLJ	LJU	http://en.wikipedia.org/wiki/Ljubljana_Jo%C5%BEe_Pu%C4%8Dnik_Airport	20	0101000000D9F06833DDE82C401BF6E67B821D4740
476	6	Airport	mid	Amausi Int'l	LKO	terminal	VILK	LKO	http://en.wikipedia.org/wiki/Amausi_Airport	20	0101000000BE480B46963854400B62C51A91C33A40
478	6	Airport	mid	Gen. Sevando Canales	MAM	terminal	MMMA	MAM	http://en.wikipedia.org/wiki/General_Servando_Canales_International_Airport	20	01010000009F63A1FBF86158C0908D63DA55C53940
479	6	Airport	major	Manchester Int'l	MAN	terminal	EGCC	MAN	http://en.wikipedia.org/wiki/Manchester_Airport	20	0101000000CD7FCD71DD2F02C0CFDA360F66AE4A40
480	6	Airport	major	Kansas City Int'l	MCI	terminal	KMCI	MCI	http://en.wikipedia.org/wiki/Kansas_City_International_Airport	20	0101000000E85D8D8CD1AD57C0A6ED4F7321A64340
481	6	Airport	major	Seeb Int'l	MCT	terminal	OOMS	MCT	http://en.wikipedia.org/wiki/Seeb_International_Airport	20	01010000003AE0D6762E254D4062EC068DAC963740
482	6	Airport	mid	Habib Bourguiba Int'l	MIR	terminal	DTMB	MIR	http://en.wikipedia.org/wiki/Habib_Bourguiba_International_Airport	20	0101000000D64E8979B9812540AF70B3F55EE14140
483	6	Airport	major	Marseille Provence Airport	MRS	terminal	LFML	MRS	http://en.wikipedia.org/wiki/Marseille_Provence_Airport	20	01010000005E6A1839B1E21440C65275A774B84540
484	6	Airport	mid	Quetzalcoatl Int'l	NLD	terminal	MMNL	NLD	http://en.wikipedia.org/wiki/Quetzalc%C3%B3atl_International_Airport	20	01010000009E34093F5AE458C0E6AB67DC1E733B40
485	6	Airport	major	Nanning Wuwu Int'l	NNG	terminal	ZGNN	NNG	http://en.wikipedia.org/wiki/Nanning_Wuxu_International_Airport	20	01010000001ED28CB6C00A5B400AA3DB75AE9C3640
486	6	Airport	mid	Xoxocotlan Int'l	OAX	terminal	MMOX	OAX	http://en.wikipedia.org/wiki/Xoxocotl%C3%A1n_International_Airport	20	0101000000E28E97E7312E58C0626AC6A624003140
487	6	Airport	mid	Kahului	OGG	terminal	PHOG	OGG	http://en.wikipedia.org/wiki/Kahului_Airport	20	0101000000E846526CFF8D63C07D4B5E8EAEE43440
488	6	Airport	major	Will Rogers	OKC	terminal	KOKC	OKC	http://en.wikipedia.org/wiki/Will_Rogers_World_Airport	20	010100000030B914CB266658C033B8EC7398B24140
489	6	Airport	major	Norfolk Int'l	ORF	terminal	KORF	ORF	http://en.wikipedia.org/wiki/Norfolk_International_Airport	20	01010000004DBFEC44150D53C0E628C882F9724240
490	6	Airport	major	Palm Beach Int'l	PBI	terminal	KPBI	PBI	http://en.wikipedia.org/wiki/Palm_Beach_International_Airport	20	010100000037A780A9C50554C088888AB63DB03A40
491	6	Airport	mid	Pengel Int'l	PBM	terminal	SMJP	PBM	http://en.wikipedia.org/wiki/Johan_Adolf_Pengel_International_Airport	20	0101000000BC8C47B296994BC0D48B5F94F1D21540
492	6	Airport	mid	Bolshesavino	PEE	terminal	USPP	PEE	http://en.wikipedia.org/wiki/Bolshoye_Savino_Airport	20	01010000001DCF89F380024C4087E8660FBBF54C40
493	6	Airport	mid	Penang Int'l	PEN	terminal	WMKP	PEN	http://en.wikipedia.org/wiki/Penang_International_Airport	20	0101000000117BE1A40211594045485A16AE2B1540
494	6	Airport	mid	Port Harcourt Int'l	PHC	terminal	DNPO	PHC	http://en.wikipedia.org/wiki/Port_Harcourt_International_Airport	20	0101000000F60F42E9B1CC1B4078375EEB2B071440
495	6	Airport	mid	Port Hedland Int'l	PHE	terminal	YPPD	PHE	http://en.wikipedia.org/wiki/Port_Hedland_International_Airport	20	01010000001FF01A606FA85D40085B52F3CC6034C0
496	6	Airport	mid	Pierre Regional	PIR	terminal	KPIR	PIR	http://en.wikipedia.org/wiki/Pierre_Regional_Airport	20	01010000001A376FA5BA1259C0E2D869DEA8304640
497	6	Airport	major	Greater Pittsburgh Int'l	PIT	terminal	KPIT	PIT	http://en.wikipedia.org/wiki/Pittsburgh_International_Airport	20	01010000006C0C216B641054C0EE9DDDA07E3F4440
498	6	Airport	mid	Pago Pago Int'l	PPG	terminal	NSTU	PPG	http://en.wikipedia.org/wiki/Pago_Pago_International_Airport	20	010100000075795069D35665C07BFBD1197BA82CC0
499	6	Airport	major	Birmingham Int'l	BHX	terminal	EGBB	BHX	http://en.wikipedia.org/wiki/Birmingham_International_Airport_(United_Kingdom)	20	01010000004E2BA3745DBDFBBF225D52E8F8394A40
500	6	Airport	mid	Roberts Int'l	ROB	terminal	GLRB	ROB	http://en.wikipedia.org/wiki/Roberts_International_Airport	20	010100000081F5E394C7B424C0A93CF87AA3F71840
501	6	Airport	mid	Raipur	RPR	terminal	VARP	RPR	http://en.wikipedia.org/wiki/Raipur_Airport	20	01010000004C91B158626F544097A0A8D59C2F3540
502	6	Airport	mid	El Salvador Int'l	SAL	terminal	MSLP	SAL	http://en.wikipedia.org/wiki/Cuscatlan_International_Airport	20	0101000000D8CF2839A94356C0C44BA506B6E32A40
503	6	Airport	major	San Diego Int'l	SAN	terminal	KSAN	SAN	http://en.wikipedia.org/wiki/San_Diego_International_Airport	20	01010000004F074905A44C5DC01F3252D8BA5D4040
504	6	Airport	major	San Antonio Int'l	SAT	terminal	KSAT	SAT	http://en.wikipedia.org/wiki/San_Antonio_International_Airport	20	010100000056C4A7C1349E58C06EFA2D97D0863D40
505	6	Airport	major	Savannah Int'l	SAV	terminal	KSAV	SAV	http://en.wikipedia.org/wiki/Savannah/Hilton_Head_International_Airport	20	010100000013951810704D54C05688CFB35C114040
506	6	Airport	mid	Antonio Maceo	SCU	terminal	MUCU	SCU	http://en.wikipedia.org/wiki/Antonio_Maceo_Airport	20	010100000073A69BB8C0F552C0A7E73919F1F83340
507	6	Airport	mid	Ponciano Arriaga Int'l	SLP	terminal	MMSP	SLP	http://en.wikipedia.org/wiki/Ponciano_Arriaga_International_Airport	20	0101000000F492A640EF3B59C0A326116976413640
508	6	Airport	major	Sacramento Int'l	SMF	terminal	KSMF	SMF	http://en.wikipedia.org/wiki/Sacramento_International_Airport	20	01010000008953D611A0655EC075D72F2DAB584340
509	6	Airport	mid	Cibao Int'l	STI	terminal	MDST	STI	http://en.wikipedia.org/wiki/Cibao_International_Airport	20	01010000001020EA6A6DAC51C0BEA79CA846773340
510	6	Airport	major	Koltsovo	SVX	terminal	USSS	SVX	http://en.wikipedia.org/wiki/Koltsovo_Airport	20	010100000024105F9024674E4040306639BA5D4C40
511	6	Airport	major	Syracuse Hancock Int'l	SYR	terminal	KSYR	SYR	http://en.wikipedia.org/wiki/Syracuse_Hancock_International_Airport	20	010100000047C1B2AF3C0753C078BA7650DE904540
512	6	Airport	mid	Tabriz	TBZ	terminal	OITT	TBZ	http://en.wikipedia.org/wiki/Tabriz_International_Airport	20	0101000000743290C4521F4740C11CD83CC8104340
513	6	Airport	mid	Torreon Int'l	TRC	terminal	MMTC	TRC	http://en.wikipedia.org/wiki/Francisco_Sarabia_International_Airport	20	0101000000817262BD85D959C02653DEF32E903940
514	6	Airport	major	Tulsa Int'l	TUL	terminal	KTUL	TUL	http://en.wikipedia.org/wiki/Tulsa_International_Airport	20	01010000000B64C5D4F3F857C0514A9D1956184240
515	6	Airport	major	Mcghee Tyson	TYS	terminal	KTYS	TYS	http://en.wikipedia.org/wiki/McGhee_Tyson_Airport	20	0101000000533136245BFF54C038474CA522E74140
516	6	Airport	major	Ufa Int'l	UFA	terminal	UWUU	UFA	http://en.wikipedia.org/wiki/Ufa_International_Airport	20	010100000066C2417229F14B40358AD14156484B40
517	6	Airport	mid	Hewanorra Int'l	UVF	terminal	TLPL	UVF	http://en.wikipedia.org/wiki/Hewanorra_International_Airport	20	01010000005C2496BD98794EC029D2EEA519792B40
518	6	Airport	mid	Windhoek Hosea Kutako Int'l	WDH	terminal	FYWH	WDH	http://en.wikipedia.org/wiki/Windhoek_Hosea_Kutako_International_Airport	20	0101000000353E07F9957631403BF6ADF5A87C36C0
519	6	Airport	mid	Sault Ste Marie	YAM	terminal	CYAM	YAM	http://en.wikipedia.org/wiki/Sault_Ste._Marie_Airport	20	010100000090BD54FA092055C065973529223E4740
520	6	Airport	mid	Dawson Cr.	YDQ	terminal	CYDQ	YDQ	http://en.wikipedia.org/wiki/Dawson_Creek_Airport	20	0101000000939472CCE00B5EC0A0E6F60AA5DE4B40
521	6	Airport	major	Edmonton Int'l	YEG	terminal	CYEG	YEG	http://en.wikipedia.org/wiki/Edmonton_International_Airport	20	01010000002438805368655CC0EF61BC5552A74A40
522	6	Airport	major	Halifax Int'l	YHZ	terminal	CYHZ	YHZ	http://en.wikipedia.org/wiki/Halifax_International_Airport	20	0101000000C8059E61EAC14FC0F44C41527A714640
523	6	Airport	mid	Kamloops	YKA	terminal	CYKA	YKA	http://en.wikipedia.org/wiki/Kamloops_Airport	20	01010000005D2EE361451C5EC0AB88C4D8435A4940
524	6	Airport	mid	Sudbury	YSB	terminal	CYSB	YSB	http://en.wikipedia.org/wiki/Sudbury_Airport	20	0101000000689B59F9ED3254C086C7834CB64F4740
525	6	Airport	mid	Saint John	YSJ	terminal	CYSJ	YSJ	http://en.wikipedia.org/wiki/Saint_John_Airport	20	01010000007FD154E4FE7850C0D842683A24AA4640
526	6	Airport	mid	Prince George	YXS	terminal	CYXS	YXS	http://en.wikipedia.org/wiki/Prince_George_Airport	20	0101000000509CBC0E23AB5EC0F9D2AB0E2FF14A40
527	6	Airport	major	Victoria Int'l	YYJ	terminal	CYYJ	YYJ	http://en.wikipedia.org/wiki/Victoria_International_Airport	20	01010000001C883A5A8FDB5EC0960ABDDEFC514840
528	6	Airport	mid	Zamboanga Int'l	ZAM	terminal	RPMZ	ZAM	http://en.wikipedia.org/wiki/Zamboanga_International_Airport	20	010100000052E922E4FE835E40B19CA0F9D4AD1B40
529	6	Airport	mid	Lanzhou Zhongchuan	ZGC	terminal	ZLLL	ZGC	http://en.wikipedia.org/wiki/Lanzhou_Zhongchuan_Airport	20	0101000000876E1EF762E759409DA0D95902414240
530	6	Airport	mid	Albany Int'l	ALB	terminal	KALB	ALB	http://en.wikipedia.org/wiki/Albany_International_Airport	20	01010000004F86D86BCC7352C04B5B0DDA715F4540
531	6	Airport	major	General Mitchell Int'l	MKE	terminal	KMKE	MKE	http://en.wikipedia.org/wiki/General_Mitchell_International_Airport	20	0101000000DB4E3B19BCF955C0F0CA3A7055794540
532	6	Airport	military mid	Wang-Chia Tun Airbase	ZHHH	runway	\N	\N	\N	20	01010000008C195EFCCD8F5C405A86C1EF099A3E40
533	6	Airport	major	Sanya Phoenix Int'l	SYX	terminal	ZJSY	SYX	http://en.wikipedia.org/wiki/Sanya_Phoenix_International_Airport	20	0101000000D6C78798205A5B40C31034EA204F3240
534	6	Airport	mid	Lhasa Gonggar	LXA	terminal	ZULS	LXA	http://en.wikipedia.org/wiki/Lhasa_Gonggar_Airport	20	0101000000C598AFCAA2B95640A4F32B812F4B3D40
535	6	Airport	mid	Hotan	HTN	terminal	ZWTN	HTN	http://en.wikipedia.org/wiki/Hotan_Airport	20	0101000000E1BA90C5D3F75340340C41E91F854240
536	6	Airport	major	Dresden	DRS	terminal	EDDC	DRS	http://en.wikipedia.org/wiki/Dresden_Airport	20	0101000000720704C6A9872B40AB9B66FD02904940
537	6	Airport	military major	Kenitra Air Base	NNA	terminal	GMMY	NNA	http://en.wikipedia.org/wiki/Kenitra_Air_Base	20	0101000000514BEF8619641AC0EDFF6FBB3A264140
538	6	Airport	mid	Annemasse	QNJ	ramp	LFLI	QNJ	http://en.wikipedia.org/wiki/Annemasse_Aerodrome	20	0101000000FBFB72CA440F1940C22C39A00D194740
539	6	Airport	mid	Nogales Int'l	NOG	terminal	MMNG	NOG	http://en.wikipedia.org/wiki/Nogales_International_Airport_(Mexico)	20	01010000004AB4D81041BE5BC033DCE2CDBC393F40
540	6	Airport	mid	Strasbourg	SXB	terminal	LFST	SXB	http://en.wikipedia.org/wiki/Strasbourg_Airport	20	0101000000E7612B01E9821E4043E0AA9AB8454840
541	6	Airport	major	Cologne/Bonn	CGN	terminal	EDDK	CGN	http://en.wikipedia.org/wiki/Cologne_Bonn_Airport	20	010100000082802CE04B7D1C407AE008D06A704940
542	6	Airport	major	Kimhae Int'l	PUS	terminal	RKPK	PUS	http://en.wikipedia.org/wiki/Gimhae_International_Airport	20	0101000000E2ABB5945C1E60402D4642DECB954140
543	6	Airport	major	Jeju Int'l	CJU	terminal	RKPC	CJU	http://en.wikipedia.org/wiki/Jeju_International_Airport	20	01010000004FCE2ADB769F5F40E0DEDDEF29C34040
544	6	Airport	major	Stavanger Sola	SVG	terminal	ENZV	SVG	http://en.wikipedia.org/wiki/Stavanger_Airport,_Sola	20	0101000000385AC3FFEC8416401BD6F080EA704D40
545	6	Airport	major	Trondheim Vaernes	TRD	terminal	ENVA	TRD	http://en.wikipedia.org/wiki/Trondheim_Airport%2C_V%C3%A6rnes	20	01010000005AB9D50E68D52540DF9C72756BBC4F40
546	6	Airport	mid	Corumba Int'l	CMG	terminal	SBCR	CMG	http://en.wikipedia.org/wiki/Corumba_International_Airport	20	0101000000B7F1791AF1D44CC0D70AE266A00333C0
547	6	Airport	mid	Madeira	FNC	terminal	LPMA	FNC	http://en.wikipedia.org/wiki/Madeira_Airport	20	010100000078B5162D90C630C0FC9A2F29C0584040
548	6	Airport	mid	Foz do Iguaçu Int'l	IGU	terminal	SBFI	IGU	http://en.wikipedia.org/wiki/Foz_do_Igua%C3%A7u_International_Airport	20	010100000031040E318A3E4BC0B5FD6AC4019939C0
549	6	Airport	mid	Gov. Jorge Teixeira de Oliveira Int'l	PVH	terminal	SBPV	PVH	http://en.wikipedia.org/wiki/Governador_Jorge_Teixeira_de_Oliveira_International_Airport	20	0101000000FBFEB7D100F34FC080835417C96D21C0
550	6	Airport	mid	Bilbao	BIO	terminal	LEBB	BIO	http://en.wikipedia.org/wiki/Bilbao_Airport	20	0101000000FD02D72CAC3F07C0B63C89F50CA74540
551	6	Airport	major	Palma de Mallorca	PMI	terminal	LEPA	PMI	http://en.wikipedia.org/wiki/Palma_de_Mallorca_Airport	20	010100000041B403F9FDD60540CBD4E4576BC84340
552	6	Airport	major	Tenerife N.	TFN	terminal	GCXO	TFN	http://en.wikipedia.org/wiki/Los_Rodeos_Airport	20	01010000002146A444A85830C0864518D9D17C3C40
553	6	Airport	major	Gothenburg	GOT	terminal	ESGG	GOT	http://en.wikipedia.org/wiki/Gothenburg-Landvetter_Airport	20	0101000000CBE30B7B70962840E43D83A2C6D74C40
554	6	Airport	major	Lulea	LLA	terminal	ESPA	LLA	http://en.wikipedia.org/wiki/Lule%C3%A5_Airport	20	0101000000A5CBA3B47E1F36401B1DEE6823635040
555	6	Airport	major	Abu Dhabi Int'l	AUH	terminal	OMAA	AUH	http://en.wikipedia.org/wiki/Abu_Dhabi_International_Airport	20	0101000000566953EBBA524B4036FF39C25E6D3840
556	6	Airport	mid	Mohamed Boudiaf Int'l	CZL	terminal	DABC	CZL	http://en.wikipedia.org/wiki/Mohamed_Boudiaf_International_Airport	20	0101000000688F4595DF7C1A40E7C1F8CA47244240
557	6	Airport	mid	Aswan Int'l	ASW	terminal	HESN	ASW	http://en.wikipedia.org/wiki/Aswan_International_Airport	20	0101000000C539E1288769404040BABAF8E0F73740
558	6	Airport	mid	Rovaniemi	RVN	terminal	EFRO	RVN	http://en.wikipedia.org/wiki/Rovaniemi_Airport	20	010100000091136A3E56D4394012A9B7C5CFA35040
559	6	Airport	mid	Cheddi Jagan Int'l	GEO	terminal	SYCJ	GEO	http://en.wikipedia.org/wiki/Cheddi_Jagan_International_Airport	20	010100000040BA4AFA86204DC011134FA784FE1940
560	6	Airport	major	Cochin Int'l	COK	terminal	VOCI	COK	http://en.wikipedia.org/wiki/Cochin_International_Airport	20	0101000000BA43F846FE185340888BFAB96B4F2440
561	6	Airport	mid	Eldoret Int'l	EDL	terminal	HKEL	EDL	http://en.wikipedia.org/wiki/Eldoret_International_Airport	20	01010000008B0A71F9A19C41400243E9E8B0ECD93F
562	6	Airport	major	Incheon Int'l	ICN	terminal	RKSI	ICN	http://en.wikipedia.org/wiki/Incheon_International_Airport	20	01010000007C04EE26DB9C5F40739D0EAD7FB94240
563	6	Airport	mid	Federal de Bachigualato Int'l	CUL	terminal	MMCL	CUL	http://en.wikipedia.org/wiki/Federal_de_Bachigualato_International_Airport	20	01010000001204963F12DE5AC0CE24FE444DC43840
564	6	Airport	major and military	Benazir Bhutto Int'l	ISB	terminal	OPRN	ISB	http://en.wikipedia.org/wiki/Islamabad_International_Airport	20	01010000005794326773465240D1C948C8C0CD4040
565	5	Airport	major	Brussels	BRU	terminal	EBBR	BRU	http://en.wikipedia.org/wiki/Brussels_Airport	30	01010000005408998D45F011407BF2B68FDA724940
566	5	Airport	major	Abuja Int'l	ABV	terminal	DNAA	ABV	http://en.wikipedia.org/wiki/Nnamdi_Azikiwe_International_Airport	30	010100000058788A05BF141D4074EE40A63D022240
567	5	Airport	mid	Arcata-Eureka	ACV	terminal	KACV	ACV	http://en.wikipedia.org/wiki/Arcata-Eureka_Airport	30	01010000008EE15629DA065FC02BBAF405687C4440
568	5	Airport	major	Austin-Bergstrom Int'l	AUS	terminal	KAUS	AUS	http://en.wikipedia.org/wiki/Austin-Bergstrom_International_Airport	30	01010000000DF01B74AD6A58C03037CB5CBD333E40
569	5	Airport	major	Antalya	AYT	terminal	LTAI	AYT	http://en.wikipedia.org/wiki/Antalya_Airport	30	0101000000130C0F1774CD3E409C85665029754240
570	5	Airport	major	Belfast Int'l	BFS	terminal	EGAA	BFS	http://en.wikipedia.org/wiki/Belfast_International_Airport	30	0101000000A23E5F855BDD18C0686AEEEAAD544B40
571	5	Airport	major	Orio Al Serio	BGY	terminal	LIME	BGY	http://en.wikipedia.org/wiki/Orio_al_Serio_Airport	30	010100000010A13C8AD8652340582F510A2FD54640
572	5	Airport	mid	Kota Kinabalu Int'l	BKI	terminal	WBKK	BKI	http://en.wikipedia.org/wiki/Kota_Kinabalu_International_Airport	30	0101000000E655120645035D40FB35733E0BB11740
573	5	Airport	major	Bengaluru Int'l	BLR	terminal	VOBL	BLR	http://en.wikipedia.org/wiki/Bengaluru_International_Airport	30	0101000000074CE965696D5340143EAE75B6662A40
574	5	Airport	major	Canberra Int'l	CBR	terminal	YSCB	CBR	http://en.wikipedia.org/wiki/Canberra_International_Airport	30	01010000002EE8D8B51AA662400A0D80DB51A741C0
575	5	Airport	major	Port Columbus Int'l	CMH	terminal	KCMH	CMH	http://en.wikipedia.org/wiki/Port_Columbus_International_Airport	30	0101000000ADB942F593B854C0149D4056C2FF4340
576	5	Airport	major	Mohamed V Int'l	CMN	terminal	GMMN	CMN	http://en.wikipedia.org/wiki/Mohammed_V_International_Airport	30	010100000030DFF83269531EC00310F311F7AF4040
577	5	Airport	major	Dusseldorf Int'l	DUS	terminal	EDDL	DUS	http://en.wikipedia.org/wiki/D%C3%BCsseldorf_International_Airport	30	010100000008FF249A4D0F1B4049871A789BA34940
578	5	Airport	major	Esenboga Int'l	ESB	terminal	LTAC	ESB	http://en.wikipedia.org/wiki/Esenbo%C4%9Fa_International_Airport	30	0101000000DC1647F41A7F4040509B3682BC0E4440
579	5	Airport	mid	Hamilton Int'l	HLZ	terminal	NZHN	HLZ	http://en.wikipedia.org/wiki/Hamilton_International_Airport	30	010100000044367353C2EA6540D321FCE1D3EE42C0
580	5	Airport	major	Rajiv Gandhi Int'l	HYD	terminal	VOHS	HYD	http://en.wikipedia.org/wiki/Rajiv_Gandhi_International_Airport	30	0101000000AB8D20857D9B53409EDD4A64693C3140
581	5	Airport	major	John F Kennedy Int'l	JFK	parking	KJFK	JFK	http://en.wikipedia.org/wiki/John_F._Kennedy_International_Airport	30	010100000029EAE52D537252C067F384CDAE524440
582	5	Airport	major	Boryspil Int'l	KBP	terminal	UKBB	KBP	http://en.wikipedia.org/wiki/Boryspil_International_Airport	30	01010000006A7CF05829E53E40A04D16B0A22B4940
583	5	Airport	major	Khartoum	KRT	terminal	HSSS	KRT	http://en.wikipedia.org/wiki/Khartoum_International_Airport	30	01010000009E69586C6B46404056E8BDCE372F2F40
584	5	Airport	major	Dane Cty. Reg. (Truax Field)	MSN	terminal	KMSN	MSN	http://en.wikipedia.org/wiki/Dane_County_Regional_Airport	30	0101000000B8888656215656C0E673618C72914540
585	5	Airport	major	Minsk Int'l	MSQ	terminal	UMMS	MSQ	http://en.wikipedia.org/wiki/Minsk_International_Airport	30	0101000000A902F6E4C0083C40A357CE2DD7F14A40
586	5	Airport	major	Palermo	PMO	terminal	LICJ	PMO	http://en.wikipedia.org/wiki/Palermo_International_Airport	30	0101000000CBC4632808362A408D872ED4D9174340
587	5	Airport	mid	T.F. Green	PVD	terminal	KPVD	PVD	http://en.wikipedia.org/wiki/T._F._Green_Airport	30	01010000003B452EE3E3DB51C072990EA2EDDC4440
588	5	Airport	major	Southwest Florida Int'l	RSW	terminal	KRSW	RSW	http://en.wikipedia.org/wiki/Southwest_Florida_International_Airport	30	0101000000F8AF02F0537054C024AC9F5726873A40
589	5	Airport	major	Shenyang Taoxian Int'l	SHE	terminal	ZYTX	SHE	http://en.wikipedia.org/wiki/Shenyang_Taoxian_International_Airport	30	0101000000A3E51AF93ADF5E40751A35C540D14440
590	5	Airport	major	Sharjah Int'l	SHJ	terminal	OMSJ	SHJ	http://en.wikipedia.org/wiki/Sharjah_International_Airport	30	0101000000B8AED1FA9FC24B405CC869ED39523940
591	5	Airport	major	San Jose Int'l	SJC	terminal	KSJC	SJC	http://en.wikipedia.org/wiki/San_Jose_International_Airport	30	01010000003D0EB4C37B7B5EC04A0ABA774BAF4240
592	5	Airport	major	John Wayne	SNA	terminal	KSNA	SNA	http://en.wikipedia.org/wiki/John_Wayne_Airport	30	01010000008EDCAEA322775DC0E8917463F9D64040
593	5	Airport	major	Stuttgart	STR	terminal	EDDS	STR	http://en.wikipedia.org/wiki/Stuttgart_Airport	30	0101000000FA77A48E4D63224034BA765D55584840
594	5	Airport	mid	Nacional Tobias Bolanos	SYQ	terminal	MRPV	SYQ	http://en.wikipedia.org/wiki/Tob%C3%ADas_Bola%C3%B1os_International_Airport	30	01010000005E2E1CF9DE0855C071D0687BA3EA2340
595	5	Airport	major	Shenzhen Bao'an Int'l	SZX	terminal	ZGSZ	SZX	http://en.wikipedia.org/wiki/Shenzhen_airport	30	0101000000C81075EE36745C40EC9E938781A53640
596	5	Airport	major	Louisville Int'l	SDF	terminal	KSDF	SDF	http://en.wikipedia.org/wiki/Louisville_International_Airport	30	0101000000051BDA0E786F55C03E3BDC86CF174340
597	5	Airport	major	Geneva	GVA	terminal	LSGG	GVA	http://en.wikipedia.org/wiki/Geneva_Cointrin_International_Airport	30	010100000036574856896E1840C19839B8911D4740
598	5	Airport	mid	Lyon-Saint Exupery	LYS	terminal	LFLL	LYS	http://en.wikipedia.org/wiki/Lyon-Saint_Exup%C3%A9ry_Airport	30	0101000000FDD1EA58C44D1440CEA518574ADC4640
599	5	Airport	major	Kansai Int'l	KIX	terminal	RJBB	KIX	http://en.wikipedia.org/wiki/Kansai_International_Airport	30	010100000028FF4C9DD2E76040A821CB55A7374140
600	5	Airport	major	Lisbon Portela	LIS	terminal	LPPT	LIS	http://en.wikipedia.org/wiki/Lisbon_Portela_Airport	30	0101000000E384AB60EA4222C0888D2757A8624340
601	5	Airport	major	Tancredo Neves Int'l	CNF	terminal	SBCF	CNF	http://en.wikipedia.org/wiki/Tancredo_Neves_International_Airport	30	0101000000FED9A7A356FB45C00CF25602FEA133C0
602	5	Airport	mid	Bromma	BMA	terminal	ESSB	BMA	http://en.wikipedia.org/wiki/Stockholm-Bromma_Airport	30	01010000009776BBFD13F231402EDFD9FA83AD4D40
603	5	Airport	major	Juanda Int'l	SUB	terminal	WARR	SUB	http://en.wikipedia.org/wiki/Juanda_International_Airport	30	010100000041464FEFBA315C40ECC5F4EDC8881DC0
604	5	Airport	mid	Astor Piazzolla Int'l	MDQ	terminal	SAZM	MDQ	http://en.wikipedia.org/wiki/%C3%81stor_Piazzola_International_Airport	30	01010000004529065D72CA4CC061B636A073F742C0
605	5	Airport	major	Owen Roberts Int'l	GCM	terminal	MWCR	GCM	http://en.wikipedia.org/wiki/Owen_Roberts_International_Airport	30	010100000061DC4B13E45654C06EC776CEC04B3340
606	5	Airport	major	Zhengzhou Xinzheng Int'l	CGO	terminal	ZHCC	CGO	http://en.wikipedia.org/wiki/Zhengzhou_Xinzheng_International_Airport	30	0101000000D79D6690E0755C40B6DF34E35D434140
607	5	Airport	major	Dalian Zhoushuizi Int'l	DLC	terminal	ZYTL	DLC	http://en.wikipedia.org/wiki/Dalian_Zhoushuizi_International_Airport	30	01010000007D3939907D625E404E60B9BB147B4340
608	5	Airport	major	Heraklion Int'l	HER	terminal	LGIR	HER	http://en.wikipedia.org/wiki/Heraklion_International_Airport%2C_%22Nikos_Kazantzakis%22	30	0101000000DF2929EC8E2C3940DBAB409E1FAB4140
609	5	Airport	major	Tbilisi Int'l	TBS	terminal	UGTB	TBS	http://en.wikipedia.org/wiki/Tbilisi_International_Airport	30	01010000004A8BDE7D787B4640917FAC46B0D54440
610	5	Airport	mid	Cascais	XXC	runway	LPCS	XXC	http://en.wikipedia.org/wiki/Cascais_Aerodrome	30	010100000045251ED38BB522C0E73C2ECE9C5C4340
611	4	Airport	major	Kaohsiung Int'l	KHH	terminal	RCKH	KHH	http://en.wikipedia.org/wiki/Kaohsiung_International_Airport	50	0101000000D062A00A17165E403ECCD1545B923640
612	4	Airport	mid	Sadiq Abubakar III	SKO	terminal	DNSO	SKO	http://en.wikipedia.org/wiki/Sadiq_Abubakar_III_International_Airport	50	0101000000C59F291608CD1440340F5C41C0D52940
613	4	Airport	mid	Mariscal Sucre Int'l	UIO	terminal	SEQU	UIO	http://en.wikipedia.org/wiki/Mariscal_Sucre_International_Airport	50	01010000005C4ABB095C9F53C0D0111C1976A1C2BF
614	4	Airport	mid	Karachi Civil	KHI	terminal	OPKC	KHI	http://en.wikipedia.org/wiki/Jinnah_International_Airport	50	0101000000BEFD9578BCC950400C576BB105E63840
615	4	Airport	mid	Kishinev S.E.	KIV	terminal	LUKK	KIV	http://en.wikipedia.org/wiki/Chi%C5%9Fin%C4%83u_International_Airport	50	010100000041732BE4A0EF3C403131BE9E92774740
616	4	Airport	major	Jorge Chavez	LIM	terminal	SPIM	LIM	http://en.wikipedia.org/wiki/Jorge_Ch%C3%A1vez_International_Airport	50	0101000000B78B375BE24653C0902EF385240C28C0
617	4	Airport	mid	Thunder Bay Int'l	YQT	terminal	CYQT	YQT	http://en.wikipedia.org/wiki/Thunder_Bay_International_Airport	50	0101000000F15EF522FA5356C0F9032FCD992F4840
618	4	Airport	major	Vilnius	VNO	terminal	EYVI	VNO	http://en.wikipedia.org/wiki/Vilnius_International_Airport	50	010100000070088308DD4739407D8FBC9F4F524B40
619	4	Airport	major	Hsien Yang	XIY	terminal	ZLXY	XIY	http://en.wikipedia.org/wiki/Xi'an_Xianyang_International_Airport	50	0101000000E71E89365F305B4035FF853AB2384140
620	4	Airport	mid	Del Norte Int'l	NTR	terminal	MMAN	NTR	http://en.wikipedia.org/wiki/Del_Norte_International_Airport	50	0101000000D2B9B0D9410F59C0A515EFAF20DC3940
621	4	Airport	mid	Fua'amotu Int'l	TBU	terminal	NFTF	TBU	http://en.wikipedia.org/wiki/Fua'amotu_International_Airport	50	01010000002D26361F57E465C06475ABE7A43F35C0
622	4	Airport	mid	Esfahan Int'l	IFN	terminal	OIFM	IFN	http://en.wikipedia.org/wiki/Isfahan_International_Airport	50	010100000036C4449A2DF04940B8C823917F5F4040
623	4	Airport	mid	Harare Int'l	HRE	terminal	FVHA	HRE	http://en.wikipedia.org/wiki/Harare_International_Airport	50	01010000007DD0B359F5193F40B1BFEC9E3CEC31C0
624	4	Airport	major	Kuwait Int'l	KWI	terminal	OKBK	KWI	http://en.wikipedia.org/wiki/Kuwait_International_Airport	50	01010000005E7B5E8A59FC4740124B1BAC5B3D3D40
625	4	Airport	major	Macdonald-Cartier Int'l	YOW	terminal	CYOW	YOW	http://en.wikipedia.org/wiki/Ottawa_Macdonald-Cartier_International_Airport	50	01010000001C25FE9C8DEA52C0475C822DFAA84640
626	4	Airport	mid	Kabul Int'l	KBL	terminal	OAKB	KBL	http://en.wikipedia.org/wiki/Kabul_International_Airport	50	0101000000EC85A7D8714D5140CF64046C1D484140
627	4	Airport	mid	Abidjan Port Bouet	ABJ	terminal	DIAP	ABJ	http://en.wikipedia.org/wiki/Port_Bouet_Airport	50	01010000001C9A53632F750FC0BD46A80681041540
628	4	Airport	major	General Juan N Alvarez Int'l	ACA	terminal	MMAA	ACA	http://en.wikipedia.org/wiki/General_Juan_N._%C3%81lvarez_International_Airport	50	0101000000208D47DE49F058C048CFDC4A10C33040
629	4	Airport	major	Kotoka Int'l	ACC	terminal	DGAA	ACC	http://en.wikipedia.org/wiki/Kotoka_International_Airport	50	0101000000298AC05D87F0C5BFA93188908C6D1640
630	4	Airport	mid	Bole Int'l	ADD	terminal	HAAB	ADD	http://en.wikipedia.org/wiki/Bole_International_Airport	50	0101000000116CA44387654340DA33C859A5F62140
631	4	Airport	mid	Aden Int'l	ADE	terminal	OYAA	ADE	http://en.wikipedia.org/wiki/Aden_International_Airport	50	01010000009A982EC4EA834640F241CF66D5A72940
632	4	Airport	mid	Adelaide Int'l	ADL	terminal	YPAD	ADL	http://en.wikipedia.org/wiki/Adelaide_International_Airport	50	010100000017DFA2F90651614069A0791F657841C0
633	4	Airport	major	Almaty Int'l	ALA	terminal	UAAA	ALA	http://en.wikipedia.org/wiki/Almaty_International_Airport	50	01010000005B11125CC54053402078FAEC59AC4540
634	4	Airport	major	Houari Boumediene	ALG	terminal	DAAG	ALG	http://en.wikipedia.org/wiki/Houari_Boumedienne_Airport	50	0101000000530C0F9C53B209406629617290594240
635	4	Airport	major	Aleppo Int'l	ALP	terminal	OSAP	ALP	http://en.wikipedia.org/wiki/Aleppo_International_Airport	50	0101000000946EEF85199D424016481CC0A1174240
636	4	Airport	mid	Sardar Vallabhbhai Patel Int'l	AMD	terminal	VAAH	AMD	http://en.wikipedia.org/wiki/Sardar_Vallabhbhai_Patel_International_Airport	50	0101000000DA79B9D3BC2752408A73EC5F1C123740
637	4	Airport	mid	Cerro Moreno Int'l	ANF	terminal	SCFA	ANF	http://en.wikipedia.org/wiki/Cerro_Moreno_International_Airport	50	010100000006A8B031399C51C0118B09AFEE7237C0
638	4	Airport	mid	Ashkhabad Northwest	ASB	terminal	UTAA	ASB	http://en.wikipedia.org/wiki/Ashgabat_Airport	50	01010000006D666F6F962E4D4032D66FAD0FFE4240
639	4	Airport	mid	Yohannes Iv Int'l	ASM	terminal	HHAS	ASM	http://en.wikipedia.org/wiki/Asmara_International_Airport	50	0101000000FE928768037443407E7516D554962E40
640	4	Airport	mid	Silvio Pettirossi Int'l	ASU	terminal	SGAS	ASU	http://en.wikipedia.org/wiki/Silvio_Pettirossi_International_Airport	50	0101000000DA264ABBC7C14CC0B60C7E61DD3D39C0
641	4	Airport	mid	Bermuda Int'l	BDA	terminal	TXKF	BDA	http://en.wikipedia.org/wiki/Bermuda_International_Airport	50	01010000006C551640FA2C50C0143A8E69F92D4040
642	4	Airport	major	Surcin	BEG	terminal	LYBE	BEG	http://en.wikipedia.org/wiki/Belgrade_Nikola_Tesla_Airport	50	0101000000F9E68FA0914A34406E7F1181D7684640
643	4	Airport	major	Beirut Int'l	BEY	terminal	OLBA	BEY	http://en.wikipedia.org/wiki/Beirut_Rafic_Hariri_International_Airport	50	01010000007891CF6B1DBF414053431B05A8E94040
644	4	Airport	mid	Bairagarh	BHO	terminal	VABP	BHO	http://en.wikipedia.org/wiki/Bhopal_Airport	50	0101000000CB6793D6D0555340E15930041B493740
645	4	Airport	mid	Bamako Senou	BKO	terminal	GABS	BKO	http://en.wikipedia.org/wiki/Senou_International_Airport	50	0101000000E436EBBD01CA1FC08EE8A1E423142940
646	4	Airport	major	Nashville Int'l	BNA	terminal	KBNA	BNA	http://en.wikipedia.org/wiki/Nashville_International_Airport	50	0101000000694D0898D5AA55C0B3963C96D4104240
647	4	Airport	major	Brisbane Int'l	BNE	terminal	YBBN	BNE	http://en.wikipedia.org/wiki/Brisbane_Airport	50	01010000003242FD23D92363402ED5E659A9623BC0
648	4	Airport	major	Boise Air Terminal	BOI	terminal	KBOI	BOI	http://en.wikipedia.org/wiki/Boise_Airport	50	0101000000A5BAE3A4320E5DC00EC8E4A7D3C84540
649	4	Airport	mid	Wiley Post Will Rogers Mem.	BRW	terminal	PABR	BRW	http://en.wikipedia.org/wiki/Wiley_Post-Will_Rogers_Memorial_Airport	50	0101000000105D50DFB29863C0FEF0F3DF83D25140
650	4	Airport	major	Greater Buffalo Int'l	BUF	terminal	KBUF	BUF	http://en.wikipedia.org/wiki/Buffalo_Niagara_International_Airport	50	0101000000EC421108D9AE53C0316AFB6A8E774540
651	4	Airport	mid	Bulawayo	BUQ	terminal	FVBU	BUQ	http://en.wikipedia.org/wiki/Joshua_Mqabuko_Nkomo_International_Airport	50	0101000000B15418925F9F3C40249D914AFC0334C0
652	4	Airport	major	Brunei Int'l	BWN	terminal	WBSB	BWN	http://en.wikipedia.org/wiki/Brunei_International_Airport	50	0101000000B06EE038B8BB5C40CA3822AC2AC81340
653	4	Airport	major	Guangzhou Baiyun Int'l	CAN	terminal	ZGGG	CAN	http://en.wikipedia.org/wiki/Guangzhou_Baiyun_International_Airport	50	0101000000DE65DD820A535C408EE805699F633740
654	4	Airport	mid	Carriel Sur Int'l	CCP	terminal	SCIE	CCP	http://en.wikipedia.org/wiki/Carriel_Sur_International_Airport	50	01010000003A382D8CF94352C0B0099C2E606342C0
655	4	Airport	major	Netaji Subhash Chandra Bose Int'l	CCU	terminal	VECC	CCU	http://en.wikipedia.org/wiki/Netaji_Subhash_Chandra_Bose_International_Airport	50	0101000000154802FA281C5640EEDE013D38A53640
656	4	Airport	mid	Chittagong	CGP	terminal	VGEG	CGP	http://en.wikipedia.org/wiki/Shah_Amanat_International_Airport	50	0101000000717C6A3824F45640A3967367DD3E3640
657	4	Airport	major	Christchurch Int'l	CHC	terminal	NZCH	CHC	http://en.wikipedia.org/wiki/Christchurch_International_Airport	50	010100000036F989D43C91654068235AC388BE45C0
658	4	Airport	mid	Conakry	CKY	terminal	GUCY	CKY	http://en.wikipedia.org/wiki/Conakry_International_Airport	50	010100000077864950FC3D2BC0197BA312FB252340
659	4	Airport	major	Hopkins Int'l	CLE	terminal	KCLE	CLE	http://en.wikipedia.org/wiki/Cleveland_Hopkins_International_Airport	50	01010000005909CA02A97554C0FE0740EDA1B44440
660	4	Airport	mid	Alfonso Bonilla Aragon Int'l	CLO	terminal	SKCL	CLO	http://en.wikipedia.org/wiki/Alfonso_Bonilla_Arag%C3%B3n_International_Airport	50	01010000009B95D102A51853C0553EB783A6580C40
661	4	Airport	mid	Cotonou Cadjehon	COO	terminal	DBBB	COO	http://en.wikipedia.org/wiki/Cadjehoun_Airport	50	01010000002C7EBAC5051203407B39E12BD86E1940
662	4	Airport	mid	Ingeniero Ambrosio L.V. Taravella Int'l	COR	terminal	SACO	COR	http://en.wikipedia.org/wiki/Ingeniero_Ambrosio_L.V._Taravella_International_Airport	50	01010000002E02DF94960D50C0709F267BD0503FC0
663	4	Airport	mid	Rafael Nunez	CTG	terminal	SKCG	CTG	http://en.wikipedia.org/wiki/Rafael_N%C3%BA%C3%B1ez_International_Airport	50	0101000000CC1E8E18CAE052C0C08BC9EFCEE32440
664	4	Airport	major	Cancun	CUN	terminal	MMUN	CUN	http://en.wikipedia.org/wiki/Canc%C3%BAn_International_Airport	50	0101000000BEABC573F6B755C0343E3D544A0A3540
665	4	Airport	mid	General R F Villalobos Int'l	CUU	terminal	MMCU	CUU	http://en.wikipedia.org/wiki/General_Roberto_Fierro_Villalobos_International_Airport	50	01010000002A7E1E73077E5AC0B6EFE43E39B43C40
666	4	Airport	mid	Zia Int'l Dhaka	DAC	terminal	VGHS	DAC	http://en.wikipedia.org/wiki/Zia_International_Airport	50	0101000000E00E0647EA995640B020F1AC1ED93740
667	4	Airport	major and military	Darwin Int'l	DRW	terminal	YPDN	DRW	http://en.wikipedia.org/wiki/Darwin_International_Airport	50	010100000062A4E47D145C6040122531B7ECD028C0
668	4	Airport	mid	Louis Botha	DUR	terminal	FADN	DUR	http://en.wikipedia.org/wiki/Durban_International_Airport	50	0101000000E42AA5EE19F23E40F70B062846F73DC0
669	4	Airport	mid	Lubumbashi Luano Int'l	FBM	terminal	FZQA	FBM	http://en.wikipedia.org/wiki/Lubumbashi_International_Airport	50	01010000000F0BB5A679873B401FF46C567D2E27C0
670	4	Airport	mid	Saiss	FEZ	terminal	GMFF	FEZ	http://en.wikipedia.org/wiki/Sa%C3%AFss_Airport	50	010100000006ACA0C7B7ED13C015B201731BF74040
671	4	Airport	mid	Kinshasa N Djili Int'l	FIH	terminal	FZAA	FIH	http://en.wikipedia.org/wiki/Kinshasa_International_Airport	50	0101000000CE50B8C59DE42E4032098C45828E11C0
672	4	Airport	mid	Freetown Lungi	FNA	terminal	GFLL	FNA	http://en.wikipedia.org/wiki/Lungi_International_Airport	50	010100000038F7228184662AC0C9AAEACD183B2140
673	4	Airport	mid	Sunan	FNJ	terminal	ZKPY	FNJ	http://en.wikipedia.org/wiki/Sunan_International_Airport	50	0101000000BEA5F777386B5F40FE54C8679F994340
674	4	Airport	major	Vasilyevka	FRU	terminal	UAFM	FRU	http://en.wikipedia.org/wiki/Manas_International_Airport	50	0101000000D11024D3009E5240C596281319874540
675	4	Airport	mid	Sir Seretse Khama Int'l	GBE	terminal	FBSK	GBE	http://en.wikipedia.org/wiki/Sir_Seretse_Khama_International_Airport	50	01010000001E80CA38A4EC3940FA3B48CBDD8E38C0
676	4	Airport	major	Don Miguel Hidalgo Int'l	GDL	terminal	MMGL	GDL	http://en.wikipedia.org/wiki/Don_Miguel_Hidalgo_y_Costilla_International_Airport	50	0101000000769DF8C03FD359C0148A33D851863440
677	4	Airport	major	Glasgow Int'l	GLA	terminal	EGPF	GLA	http://en.wikipedia.org/wiki/Glasgow_International_Airport	50	0101000000C25F2DCA09BA11C0965D3A8B9DEE4B40
678	4	Airport	mid	La Aurora	GUA	terminal	MGGT	GUA	http://en.wikipedia.org/wiki/La_Aurora_International_Airport	50	0101000000D394C17CEEA156C0F1BA8A6A232D2D40
679	4	Airport	mid	Simon Bolivar Int'l	GYE	terminal	SEGU	GYE	http://en.wikipedia.org/wiki/Jos%C3%A9_Joaqu%C3%ADn_de_Olmedo_International_Airport	50	01010000006FFB18C4C4F853C0BCF521AA464401C0
680	4	Airport	major	Noi Bai	HAN	terminal	VVNB	HAN	http://en.wikipedia.org/wiki/Noi_Bai_International_Airport	50	0101000000A8BB6BCB70735A4068CDF061ED363540
681	4	Airport	major	Jose Marti Int'l	HAV	terminal	MUHA	HAV	http://en.wikipedia.org/wiki/Jos%C3%A9_Mart%C3%AD_International_Airport	50	01010000008E43F92D139A54C004945A8C52FF3640
682	4	Airport	mid	Borg El Arab Int'l	HBE	terminal	HEBA	HBE	http://en.wikipedia.org/wiki/Borg_El_Arab_Airport	50	0101000000B4765A8F52B13D407B464F611AEB3E40
683	4	Airport	major	King Abdul Aziz Int'l	JED	terminal	OEJN	JED	http://en.wikipedia.org/wiki/King_Abdulaziz_International_Airport	50	010100000066A1CD92439343404A8C5410B2AB3540
684	4	Airport	mid	Kano Mallam Aminu Int'l	KAN	terminal	DNKN	KAN	http://en.wikipedia.org/wiki/Mallam_Aminu_Kano_International_Airport	50	0101000000573FA290550B21404749CCED66172840
685	4	Airport	mid	Kashi	KHG	terminal	ZWSH	KHG	http://en.wikipedia.org/wiki/Kashgar_Airport	50	01010000009E8A0D3CD5005340E067F527DCC44340
686	4	Airport	major	Norman Manley Int'l	KIN	terminal	MKJP	KIN	http://en.wikipedia.org/wiki/Norman_Manley_International_Airport	50	01010000002D03950DD63153C00073E5EC04F03140
687	4	Airport	mid	Tribhuvan Int'l	KTM	terminal	VNKT	KTM	http://en.wikipedia.org/wiki/Tribhuvan_International_Airport	50	0101000000DC27C45FDB565540E1CDECA845B33B40
688	4	Airport	mid	Luanda 4 de Fevereiro	LAD	terminal	FNLU	LAD	http://en.wikipedia.org/wiki/Quatro_de_Fevereiro_Airport	50	0101000000634C092637782A40BEA03D1E56B221C0
689	4	Airport	major	Pulkovo 2	LED	terminal	ULLI	LED	http://en.wikipedia.org/wiki/Pulkovo_Airport	50	01010000002BF387F39D4E3E4083018F8C17E74D40
690	4	Airport	mid	Allama Iqbal Int'l	LHE	terminal	OPLA	LHE	http://en.wikipedia.org/wiki/Allama_Iqbal_International_Airport	50	0101000000EAE6E5DF4B9A5240C2E51FFC47853F40
691	4	Airport	mid	Kamuzu Int'l	LLW	terminal	FWKI	LLW	http://en.wikipedia.org/wiki/Lilongwe_International_Airport	50	01010000008AD7E36932E440407EBCE95EC6932BC0
692	4	Airport	major	Lagos Murtala Muhammed	LOS	terminal	DNMM	LOS	http://en.wikipedia.org/wiki/Murtala_Mohammed_International_Airport	50	010100000075420AA5A9910A40F3767A3E23501A40
693	4	Airport	mid	El Alto Int'l	LPB	terminal	SLLP	LPB	http://en.wikipedia.org/wiki/El_Alto_International_Airport	50	01010000009C184C71640B51C01CD0D471878230C0
694	4	Airport	mid	Lusaka Int'l	LUN	terminal	FLLS	LUN	http://en.wikipedia.org/wiki/Lusaka_International_Airport	50	01010000001D0D50310F723C40FEDCA02D59A72EC0
695	4	Airport	mid	Luxor	LXR	terminal	HELX	LXR	http://en.wikipedia.org/wiki/Luxor_International_Airport	50	0101000000826D8DA3055A4040E92ADB014CAC3940
696	4	Airport	major	Chennai Int'l	MAA	terminal	VOMM	MAA	http://en.wikipedia.org/wiki/Chennai_International_Airport	50	01010000006E24384E7B0A54406E78AC310EF72940
697	4	Airport	mid	La Chinita Int'l	MAR	terminal	SVMC	MAR	http://en.wikipedia.org/wiki/La_Chinita_International_Airport	50	010100000019A2693A52EE51C097464B818C1C2540
698	4	Airport	mid	Jose Maria Cordova	MDE	terminal	SKRG	MDE	http://en.wikipedia.org/wiki/Jos%C3%A9_Mar%C3%ADa_C%C3%B3rdova_International_Airport	50	0101000000A9022B3E53DB52C05CEC140C1BAF1840
699	4	Airport	major	Memphis Int'l	MEM	terminal	KMEM	MEM	http://en.wikipedia.org/wiki/Memphis_International_Airport	50	0101000000552365FED27E56C0671D1F3BAF854140
700	4	Airport	mid	Augusto Cesar Sandino Int'l	MGA	terminal	MNMG	MGA	http://en.wikipedia.org/wiki/Augusto_C._Sandino_International_Airport	50	01010000005F79C753F68A55C0B47694B60D4A2840
701	4	Airport	major	Mashhad	MHD	terminal	OIMM	MHD	http://en.wikipedia.org/wiki/Mashhad_International_Airport	50	0101000000545CB96C33D24D40C355615E201D4240
702	4	Airport	major	Miami Int'l	MIA	terminal	KMIA	MIA	http://en.wikipedia.org/wiki/Miami_International_Airport	50	0101000000A42AA7ACDA1154C0B4FC2F3C81CB3940
703	4	Airport	mid	Lic M Crecencio Rejon Int'l	MID	terminal	MMMD	MID	http://en.wikipedia.org/wiki/Manuel_Crescencio_Rej%C3%B3n_International_Airport	50	0101000000A3516DFA6E6A56C0BBBE6A7911EF3440
704	4	Airport	major	Luqa	MLA	terminal	LMML	MLA	http://en.wikipedia.org/wiki/Malta_International_Airport	50	0101000000DB887E4D93FD2C408A26A7C3A9EC4140
705	4	Airport	major	Moi Int'l	MBA	terminal	HKMO	MBA	http://en.wikipedia.org/wiki/Moi_International_Airport	50	0101000000986A3B1124CD4340FFB29FB06F2110C0
706	4	Airport	mid	Moshoeshoe I Int'l	MSU	terminal	FXMM	MSU	http://en.wikipedia.org/wiki/Moshoeshoe_I_International_Airport	50	0101000000A9AF2EC8288F3B404EB57A7FA0743DC0
707	4	Airport	major	New Orleans Int'l	MSY	terminal	KMSY	MSY	http://en.wikipedia.org/wiki/Louis_Armstrong_New_Orleans_International_Airport	50	0101000000C4FF73AC6D9056C00A2AD07030FC3D40
708	4	Airport	major and military	Multan	MUX	runway	OPMT	MUX	http://en.wikipedia.org/wiki/Multan_International_Airport	50	0101000000706738D2D0DA51403AD942A3F0313E40
709	4	Airport	major	Carrasco Int'l	MVD	terminal	SUMU	MVD	http://en.wikipedia.org/wiki/Carrasco_International_Airport	50	01010000001A9630D068034CC0EA37017BA76B41C0
710	4	Airport	mid	General Rafael Buelna Int'l	MZT	terminal	MMMZ	MZT	http://en.wikipedia.org/wiki/General_Rafael_Buelna_International_Airport	50	01010000006BCCC7F347915AC06DD5B40AA62A3740
711	4	Airport	major	Nassau Int'l	NAS	terminal	MYNN	NAS	http://en.wikipedia.org/wiki/Lynden_Pindling_International_Airport	50	010100000031A6970EC05D53C0E8AD6E04770C3940
712	4	Airport	mid	Ndjamena	NDJ	terminal	FTTJ	NDJ	http://en.wikipedia.org/wiki/N'Djamena_International_Airport	50	0101000000CDCF133AEB102E407C33BD1153422840
713	4	Airport	mid	Niamey	NIM	terminal	DRRN	NIM	http://en.wikipedia.org/wiki/Diori_Hamani_International_Airport	50	010100000076C105C81F6B01401648C28719F42A40
714	4	Airport	major	Mactan-Cebu Int'l	CEB	terminal	RPVM	CEB	http://en.wikipedia.org/wiki/Mactan-Cebu_International_Airport	50	01010000002346C923AAFE5E4098F2C774BAA12440
715	4	Airport	mid	Nova Lisboa	NOV	terminal	FNHU	NOV	http://en.wikipedia.org/wiki/Nova_Lisboa_Airport	50	01010000009C5EE0C8E07F2F405314C4B6E69A29C0
716	4	Airport	mid	Eppley Airfield	OMA	terminal	KOMA	OMA	http://en.wikipedia.org/wiki/Eppley_Airfield	50	0101000000C497440790F957C062A84FEF5CA64440
717	4	Airport	mid	Nome	OME	terminal	PAOM	OME	http://en.wikipedia.org/wiki/Nome_Airport	50	01010000007DD9CCED21AE64C0B272D24D76205040
718	4	Airport	mid	Ouagadougou	OUA	terminal	DFFD	OUA	http://en.wikipedia.org/wiki/Ouagadougou_Airport	50	010100000035D18CF88B38F8BFC2C8F07008B52840
719	4	Airport	mid	Mais Gate Int'l	PAP	terminal	MTPP	PAP	http://en.wikipedia.org/wiki/Toussaint_Louverture_International_Airport	50	0101000000E4D05CBAD81252C0A9AE73F45F933240
720	4	Airport	mid	Puebla	PBC	terminal	MMPB	PBC	http://en.wikipedia.org/wiki/Hermanos_Serd%C3%A1n_International_Airport	50	010100000032C1CA720C9858C0D5DFB55FEE293340
721	4	Airport	major	Portland Int'l	PDX	terminal	KPDX	PDX	http://en.wikipedia.org/wiki/Portland_International_Airport	50	010100000075830F6FEFA55EC08CD6D3F062CB4640
722	4	Airport	major	Perth Int'l	PER	terminal	YPPH	PER	http://en.wikipedia.org/wiki/Perth_Airport	50	0101000000897592B359FE5C404401D9E1EDF03FC0
723	4	Airport	mid	H F Verwoerd	PLZ	terminal	FAPE	PLZ	http://en.wikipedia.org/wiki/Port_Elizabeth_Airport	50	010100000088B491779D9C3940AE955096F6FD40C0
724	4	Airport	mid	El Tepual Int'l	PMC	terminal	SCTE	PMC	http://en.wikipedia.org/wiki/El_Tepual_Airport	50	01010000001C1CF7EC4B4652C00C264D1079B744C0
725	4	Airport	major	Pochentong	PNH	terminal	VDPP	PNH	http://en.wikipedia.org/wiki/Phnom_Penh_International_Airport	50	01010000000FEEB1EE14365A40DE394F46F41A2740
726	4	Airport	major and military	Pune	PNQ	terminal	VAPO	PNQ	http://en.wikipedia.org/wiki/Pune_Airport	50	01010000001D366FCA2C7A524042241DEB44943240
727	4	Airport	major	Port Moresby Int'l	POM	terminal	AYPY	POM	http://en.wikipedia.org/wiki/Jacksons_International_Airport	50	010100000090B52791C26662407ADCF61597E022C0
728	4	Airport	major	Tocumen Int'l	PTY	terminal	MPTO	PTY	http://en.wikipedia.org/wiki/Tocumen_International_Airport	50	0101000000186B21D1C6D853C0E6A4281A3D222240
729	4	Airport	mid	Carlos Ibanez de Campo Int'l	PUQ	terminal	SCCI	PUQ	http://en.wikipedia.org/wiki/Carlos_Ibanez_Del_Campo_International_Airport	50	0101000000E8E776BDF5B551C0BC65C720A6804AC0
730	4	Airport	major	Durham Int'l	RDU	terminal	KRDU	RDU	http://en.wikipedia.org/wiki/Raleigh-Durham_International_Airport	50	0101000000FAA32CFEA5B253C08C920D9D07F04140
731	4	Airport	major	Mingaladon	RGN	terminal	VYYY	RGN	http://en.wikipedia.org/wiki/Yangon_International_Airport	50	0101000000D2EAFEA496085840CE16090CB2E63040
732	4	Airport	major	Riga	RIX	terminal	EVRA	RIX	http://en.wikipedia.org/wiki/Riga_International_Airport	50	01010000008A22E796B8FA3740F7B41C3904764C40
733	4	Airport	mid	Sanaa Int'l	SAH	terminal	OYSN	SAH	http://en.wikipedia.org/wiki/Sana'a_International_Airport	50	01010000008CA6DC39C11C46404B257562A3F22E40
734	4	Airport	major	Baghdad Int'l	SDA	terminal	ORBI	SDA	http://en.wikipedia.org/wiki/Baghdad_International_Airport	50	0101000000CE5D86014D1D4640593E2C2A53A24040
735	4	Airport	major	De Las Americas Int'l	SDQ	terminal	MDSD	SDQ	http://en.wikipedia.org/wiki/Las_Am%C3%A9ricas_International_Airport	50	01010000001A710C544B6B51C0E455BFE0226E3240
736	4	Airport	major	Tan Son Nhat	SGN	terminal	VVTS	SGN	http://en.wikipedia.org/wiki/Tan_Son_Nhat_International_Airport	50	0101000000B96C3F0283AA5A4046A88925F2A12540
737	4	Airport	major	Thessaloniki	SKG	terminal	LGTS	SKG	http://en.wikipedia.org/wiki/Thessaloniki_International_Airport%2C_%22Macedonia%22	50	0101000000886AF6AAF7F936406444044B0E434440
738	4	Airport	major	Vrazhdebna	SOF	terminal	LBSF	SOF	http://en.wikipedia.org/wiki/Sofia_Airport	50	01010000003E57691A0767374039E17B2F37584540
739	4	Airport	major	Surat	STV	terminal	VASU	STV	http://en.wikipedia.org/wiki/Surat_Airport	50	010100000081D4811C842F52407CED32D5D51E3540
740	4	Airport	mid	Nausori Int'l	SUV	terminal	NFNA	SUV	http://en.wikipedia.org/wiki/Nausori_International_Airport	50	0101000000E8248FEAEB5166401A430D15C00B32C0
741	4	Airport	major	Shiraz Int'l	SYZ	terminal	OISS	SYZ	http://en.wikipedia.org/wiki/Shiraz_International_Airport	50	0101000000181808A07D4B4A4046A0B7A3B98B3D40
742	4	Airport	mid	Gen Francisco J Mina Int'l	TAM	terminal	MMTM	TAM	http://en.wikipedia.org/wiki/General_Francisco_Javier_Mina_International_Airport	50	01010000001DCF5107AB7758C0EBB3A9A8114A3640
743	4	Airport	mid	Toncontin Int'l	TGU	terminal	MHTG	TGU	http://en.wikipedia.org/wiki/Toncont%C3%ADn_International_Airport	50	0101000000B6B23C9007CE55C0CC79F561B61E2C40
744	4	Airport	major	Mehrabad Int'l	THR	terminal	OIII	THR	http://en.wikipedia.org/wiki/Mehrabad_International_Airport	50	01010000005403EE3310A9494053623DF47ED84140
745	4	Airport	major	Tirane Rinas	TIA	terminal	LATI	TIA	http://en.wikipedia.org/wiki/Tirana_International_Airport_N%C3%ABn%C3%AB_Tereza	50	010100000098EF1A5D0CB7334079E3FD75DEB54440
746	4	Airport	major	General Abelardo L Rodriguez Int'l	TIJ	terminal	MMTJ	TIJ	http://en.wikipedia.org/wiki/General_Abelardo_L._Rodr%C3%ADguez_International_Airport	50	0101000000C0274A336E3E5DC0653CACF6E4454040
747	4	Airport	mid	Jose Maria Morelos Y Pavon	TLC	terminal	MMTO	TLC	http://en.wikipedia.org/wiki/Lic._Adolfo_L%C3%B3pez_Mateos_International_Airport	50	01010000009864418585E458C00E3D7142B4563340
748	4	Airport	major	Ulemiste	TLL	terminal	EETN	TLL	http://en.wikipedia.org/wiki/Tallinn_Airport	50	0101000000D53A33F688CC384047A58FEB4FB54D40
749	4	Airport	major	Ben Gurion	TLV	terminal	LLBG	TLV	http://en.wikipedia.org/wiki/Ben_Gurion_International_Airport	50	01010000001AFB9602786F4140FF8E087918004040
750	4	Airport	mid	Sao Tome Salazar	TMS	terminal	FPST	TMS	http://en.wikipedia.org/wiki/S%C3%A3o_Tom%C3%A9_International_Airport	50	01010000002ADCF5FDEDD91A40D3128D27CFFBD73F
751	4	Airport	mid	Antananarivo Ivato	TNR	terminal	FMMI	TNR	http://en.wikipedia.org/wiki/Ivato_Airport	50	010100000086116066D8BC4740BA4BE035A1CC32C0
752	4	Airport	major	Tampa Int'l	TPA	parking	KTPA	TPA	http://en.wikipedia.org/wiki/Tampa_International_Airport	50	0101000000C5EB7F8F3AA254C032C832E8E3FA3B40
753	4	Airport	mid	Zim Valencia	VLN	terminal	SVVA	VLN	http://en.wikipedia.org/wiki/Arturo_Michelena_International_Airport	50	0101000000543B6BF907FB50C05D2266D5D94E2440
754	4	Airport	mid	Gumrak	VOG	terminal	URWW	VOG	http://en.wikipedia.org/wiki/Volgograd_International_Airport	50	0101000000122A6B09692D464077BA88A755654840
755	4	Airport	mid	Vientiane	VTE	terminal	VLVT	VTE	http://en.wikipedia.org/wiki/Wattay_International_Airport	50	010100000044BFBC035EA45940855F52B8B7F93140
756	4	Airport	mid	Viru Viru Int'l	VVI	terminal	SLVR	VVI	http://en.wikipedia.org/wiki/Viru_Viru_International_Airport	50	01010000002B39CB42F8914FC0F249DAD7DFA531C0
757	4	Airport	major	Wellington Int'l	WLG	terminal	NZWN	WLG	http://en.wikipedia.org/wiki/Wellington_International_Airport	50	010100000024CC7029F9D965406B024E511CAA44C0
758	4	Airport	mid	Prince Rupert	YPR	terminal	CYPR	YPR	http://en.wikipedia.org/wiki/Prince_Rupert_Airport	50	0101000000BA10AB3F424E60C04C37894160254B40
759	4	Airport	mid	Windsor	YQG	terminal	CYQG	YQG	http://en.wikipedia.org/wiki/Windsor_Airport	50	0101000000C203D81372BD54C05985484E08224540
760	4	Airport	mid	Regina	YQR	terminal	CYQR	YQR	http://en.wikipedia.org/wiki/Regina_International_Airport	50	0101000000023A58A1F2295AC0D139C6BA73374940
761	4	Airport	major	Vancouver Int'l	YVR	terminal	CYVR	YVR	http://en.wikipedia.org/wiki/Vancouver_International_Airport	50	01010000000393325393CB5EC00767E88AC6984840
762	4	Airport	major	Winnipeg Int'l	YWG	terminal	CYWG	YWG	http://en.wikipedia.org/wiki/Winnipeg_James_Armstrong_Richardson_International_Airport	50	0101000000A51C2464834E58C0FC885653A0F34840
763	4	Airport	mid	John G Diefenbaker Int'l	YXE	terminal	CYXE	YXE	http://en.wikipedia.org/wiki/Saskatoon/John_G._Diefenbaker_International_Airport	50	0101000000B8BBFCF02BAC5AC09E21DB46C7154A40
764	4	Airport	mid	Whitehorse Int'l	YXY	terminal	CYXY	YXY	http://en.wikipedia.org/wiki/Whitehorse_International_Airport	50	01010000005B33245070E260C06B506C56695B4E40
765	4	Airport	major	Calgary Int'l	YYC	terminal	CYYC	YYC	http://en.wikipedia.org/wiki/Calgary_International_Airport	50	010100000049C9F205AD805CC06C1A3BEEBF904940
766	4	Airport	mid	Charlottetown	YYG	terminal	CYYG	YYG	http://en.wikipedia.org/wiki/Charlottetown_Airport	50	0101000000145FB347CC904FC03B8F5D8695244740
767	4	Airport	mid	Churchill	YYQ	terminal	CYYQ	YYQ	http://en.wikipedia.org/wiki/Churchill_Airport	50	01010000005DC22411358557C036C2F0F2F65F4D40
768	4	Airport	mid	St John's Int'l	YYT	terminal	CYYT	YYT	http://en.wikipedia.org/wiki/St._John's_International_Airport	50	010100000081CE618F255F4AC01B41BAA57ACE4740
769	4	Airport	mid	Yellowknife	YZF	terminal	CYZF	YZF	http://en.wikipedia.org/wiki/Yellowknife_Airport	50	01010000006C6DA2AC059C5CC0244B311F413C4F40
770	4	Airport	major	Zagreb	ZAG	terminal	LDZA	ZAG	http://en.wikipedia.org/wiki/Zagreb_Airport	50	0101000000D71F535EBF0F3040F81EFFA5DDDD4640
771	4	Airport	mid	Zanzibar	ZNZ	terminal	HTZA	ZNZ	http://en.wikipedia.org/wiki/Zanzibar_International_Airport	50	0101000000E966DC5F759C43402044A3E7D0DF18C0
772	4	Airport	mid	Reykjavik Air Terminal	REK	terminal	BIRK	REK	http://en.wikipedia.org/wiki/Reykjav%C3%ADk_Airport	50	01010000003EB9DAA156F235C0AA4BDE9A70085040
773	4	Airport	mid	Arkhangelsk-Talagi	ARH	terminal	ULAA	ARH	http://en.wikipedia.org/wiki/Talagi_Airport	50	01010000005C45BDF04E5B44409A54CB0C31265040
774	4	Airport	major	Kazan Int'l	KZN	terminal	UWKD	KZN	http://en.wikipedia.org/wiki/Kazan_International_Airport	50	0101000000EE21DB7833A64840DF0A2EEAD4CD4B40
775	4	Airport	major	Paris Orly	ORY	parking	LFPO	ORY	http://en.wikipedia.org/wiki/Orly_Airport_(Paris)	50	0101000000545EDA7764F00240659994569B5D4840
776	4	Airport	major	Quebec	YQB	terminal	CYQB	YQB	http://en.wikipedia.org/wiki/Qu%C3%A9bec/Jean_Lesage_International_Airport	50	01010000001F6D0B4792D851C0124B511D52654740
777	4	Airport	major	Montreal-Trudeau	YUL	terminal	CYUL	YUL	http://en.wikipedia.org/wiki/Montr%C3%A9al-Pierre_Elliott_Trudeau_International_Airport	50	0101000000BF2D35CCF46F52C0924ACA40ABBA4640
778	4	Airport	major	Narita Int'l	NRT	terminal	RJAA	NRT	http://en.wikipedia.org/wiki/Narita_International_Airport	50	01010000006C2ED0044D8C6140C574E296CCE14140
779	4	Airport	major	Chubu Centrair Int'l	NGO	terminal	RJGG	NGO	http://en.wikipedia.org/wiki/Ch%C5%ABbu_Centrair_International_Airport	50	01010000002AD43B9B121A61406AE960AFF46D4140
780	4	Airport	mid	Okadama	OKD	terminal	RJCO	OKD	http://en.wikipedia.org/wiki/Okadama_Airport	50	0101000000831BB92A3AAC61406BB81CC4298E4540
781	4	Airport	major	Bergen Flesland	BGO	terminal	ENBR	BGO	http://en.wikipedia.org/wiki/Bergen_Airport%2C_Flesland	50	0101000000D8106E0AB5E814401FC9D6F3FF244E40
782	4	Airport	major	Tromso Langnes	TOS	terminal	ENTC	TOS	http://en.wikipedia.org/wiki/Troms%C3%B8_Airport	50	01010000002F5CBE5942E83240A5088CDC7F6B5140
783	4	Airport	mid	Val de Caes Int'l	BEL	terminal	SBBE	BEL	http://en.wikipedia.org/wiki/Val_de_C%C3%A3es_International_Airport	50	01010000001AAC473B623D48C00D19889A663CF6BF
784	4	Airport	mid	Campo Grande Int'l	CGR	terminal	SBCG	CGR	http://en.wikipedia.org/wiki/Campo_Grande_International_Airport	50	0101000000EB9D4C26A0554BC08CA3AFC20F7534C0
785	4	Airport	mid	Afonso Pena Int'l	CWB	terminal	SBCT	CWB	http://en.wikipedia.org/wiki/Afonso_Pena_International_Airport	50	010100000000BCC71B3C9648C07E132D4E378939C0
786	4	Airport	mid	Pinto Martins Int'l	FOR	terminal	SBFZ	FOR	http://en.wikipedia.org/wiki/Pinto_Martins_International_Airport	50	0101000000DEB7B434374543C03555E0FE8F3A0EC0
787	4	Airport	major	Sao Paulo-Guarulhos Int'l	GRU	terminal	SBGR	GRU	http://en.wikipedia.org/wiki/S%C3%A3o_Paulo-Guarulhos_International_Airport	50	01010000006E5A2D1AAA3D47C03AB613E9156D37C0
788	4	Airport	mid	Santa Genoveva	GYN	terminal	SBGO	GYN	http://en.wikipedia.org/wiki/Santa_Genoveva_Airport	50	01010000004F7090C0029D48C0CB8692C6E2A130C0
789	4	Airport	mid	Salgado Filho Int'l	POA	terminal	SBPA	POA	http://en.wikipedia.org/wiki/Salgado_Filho_International_Airport	50	0101000000879C1E47A99649C01401214A7DFD3DC0
790	4	Airport	mid	Gilberto Freyre Int'l	REC	terminal	SBRF	REC	http://en.wikipedia.org/wiki/Guararapes_International_Airport	50	01010000004E4D88C3897541C0DDE2EB6B644320C0
791	4	Airport	mid	Deputado Luis Eduardo Magalhaes Int'l	SSA	terminal	SBSV	SSA	http://en.wikipedia.org/wiki/Deputado_Lu%C3%ADs_Eduardo_Magalh%C3%A3es_International_Airport	50	01010000004EE97EB1DA2A43C000F4AC3027D429C0
792	4	Airport	mid	El Plumerillo	MDZ	terminal	SAME	MDZ	http://en.wikipedia.org/wiki/Governor_Francisco_Gabrielli_International_Airport	50	0101000000E033F65B1A3351C0B7521F5BF56940C0
793	4	Airport	mid	Eduardo Gomes Int'l	MAO	terminal	SBEG	MAO	http://en.wikipedia.org/wiki/Eduardo_Gomes_International_Airport	50	0101000000DB87C971E5054EC057786618D24108C0
794	4	Airport	mid	Yaounde Nsimalen Int'l	NSI	terminal	FKYS	NSI	http://en.wikipedia.org/wiki/Yaound%C3%A9_Nsimalen_International_Airport	50	01010000001FA818B0921827404AEE90C300B80D40
795	4	Airport	major	Shanghai Pudong Int'l	PVG	terminal	ZSPD	PVG	http://en.wikipedia.org/wiki/Shanghai_Pudong_International_Airport	50	010100000029F457154C735E4020D17CB9FD263F40
796	4	Airport	mid	Marka Int'l	ADJ	terminal	OJAM	ADJ	http://en.wikipedia.org/wiki/Marka_Airport	50	010100000044BF0E29F7FD41403C6AC92165F93F40
797	4	Airport	major	Male Int'l	MLE	terminal	VRMM	MLE	http://en.wikipedia.org/wiki/Mal%C3%A9_International_Airport	50	0101000000C6292DC3C06152403D7540CF3AC11040
798	4	Airport	mid	Gen. Heriberto Jara Int'l	VER	terminal	MMVR	VER	http://en.wikipedia.org/wiki/General_Heriberto_Jara_International_Airport	50	010100000025CF489DBF0B58C08B6B38E175243340
799	4	Airport	mid	Osvaldo Vieira Int'l	OXB	terminal	GGOV	OXB	http://en.wikipedia.org/wiki/Osvaldo_Vieira_International_Airport	50	01010000003CF7A531684D2FC004093DEF20C72740
800	4	Airport	major	Francisco Bangoy Int'l	DVO	terminal	RPMD	DVO	http://en.wikipedia.org/wiki/Francisco_Bangoy_International_Airport	50	0101000000A1D075C548695F40666DC29CAB851C40
801	4	Airport	mid	Seychelles Int'l	SEZ	terminal	FSIA	SEZ	http://en.wikipedia.org/wiki/Seychelles_International_Airport	50	01010000000D5A91887AC14B40FE49C5BF2CAF12C0
802	4	Airport	major	Leopold Sedar Senghor Int'l	DKR	terminal	GOOY	DKR	http://en.wikipedia.org/wiki/Dakar-Yoff-L%C3%A9opold_S%C3%A9dar_Senghor_International_Airport	50	0101000000585A655F8B7D31C066D9C14BC37D2D40
803	4	Airport	mid	Port Sudan New Int'l	PZU	terminal	HSPN	PZU	http://en.wikipedia.org/wiki/Port_Sudan_New_International_Airport	50	0101000000A1EC02488F9E4240A17A5A85216F3340
804	4	Airport	major	Tashkent Int'l	TAS	terminal	UTTT	TAS	http://en.wikipedia.org/wiki/Tashkent_International_Airport	50	0101000000B56E023310515140443F32E190A14440
805	3	Airport	major	Copenhagen	CPH	terminal	EKCH	CPH	http://en.wikipedia.org/wiki/Copenhagen_Airport	75	010100000021408FB7774C29401D1093BE72D04B40
806	3	Airport	mid	Aeroportul National Bucuresti-Baneasa	BBU	terminal	LRBS	BBU	http://en.wikipedia.org/wiki/Aurel_Vlaicu_International_Airport	75	010100000091638115F2153A40FB13EF0D9F3F4640
807	3	Airport	major	Ferihegy	BUD	terminal	LHBP	BUD	http://en.wikipedia.org/wiki/Budapest_Ferihegy_International_Airport	75	0101000000A5AC2A8421433340234F008875B74740
808	3	Airport	major	Chongqing Jiangbei Int'l	CKG	terminal	ZUCK	CKG	http://en.wikipedia.org/wiki/Chongqing_Jiangbei_International_Airport	75	010100000077979950D5A85A405EBAC9D45AB93D40
809	3	Airport	major	Douglas Int'l	CLT	terminal	KCLT	CLT	http://en.wikipedia.org/wiki/Charlotte/Douglas_International_Airport	75	01010000004020DF4F693C54C0638A7FFD369C4140
810	3	Airport	major	Detroit Metro	DTW	terminal	KDTW	DTW	http://en.wikipedia.org/wiki/Detroit_Metropolitan_Wayne_County_Airport	75	0101000000094B20E343D654C0F21C6168E41C4540
811	3	Airport	major	Dublin	DUB	terminal	EIDW	DUB	http://en.wikipedia.org/wiki/Dublin_Airport	75	0101000000D22148F7BCF918C0A0881D35A8B64A40
812	3	Airport	major	Fairbanks Int'l	FAI	terminal	PAFA	FAI	http://en.wikipedia.org/wiki/Fairbanks_International_Airport	75	0101000000B2A8C7FCB37B62C015B52EB85B345040
813	3	Airport	major	Hamburg	HAM	terminal	EDDH	HAM	http://en.wikipedia.org/wiki/Hamburg_Airport	75	0101000000813BC245E40224409564056AE5D04A40
814	3	Airport	major	Kuala Lumpur Int'l	KUL	terminal	WMKK	KUL	http://en.wikipedia.org/wiki/Kuala_Lumpur_International_Airport	75	01010000001B884550B06D594085C1DC12E8FA0540
815	3	Airport	major	Mccarran Int'l	LAS	terminal	KLAS	LAS	http://en.wikipedia.org/wiki/McCarran_International_Airport	75	01010000004177A74AAFC95CC0EF8E22FADF0A4240
816	3	Airport	major	Orlando Int'l	MCO	terminal	KMCO	MCO	http://en.wikipedia.org/wiki/Orlando_International_Airport	75	01010000007B60CDF8AB5354C01A7112E45F6E3C40
817	3	Airport	major	Minneapolis St. Paul Int'l	MSP	terminal	KMSP	MSP	http://en.wikipedia.org/wiki/Minneapolis-Saint_Paul_International_Airport	75	0101000000ECD23884514D57C0F011683DE6704640
818	3	Airport	major	Franz-Josef-Strauss	MUC	terminal	EDDM	MUC	http://en.wikipedia.org/wiki/Munich_International_Airport	75	01010000006AB2ECF47C9327406B4E368B4A2D4840
819	3	Airport	major	Philadelphia Int'l	PHL	terminal	KPHL	PHL	http://en.wikipedia.org/wiki/Philadelphia_International_Airport	75	0101000000816A2D148DCF52C0D07266A023F04340
820	3	Airport	major	Sky Harbor Int'l	PHX	terminal	KPHX	PHX	http://en.wikipedia.org/wiki/Phoenix_Sky_Harbor_International_Airport	75	010100000088749566DF005CC00D631749CAB74040
821	3	Airport	major	Salt Lake City Int'l	SLC	terminal	KSLC	SLC	http://en.wikipedia.org/wiki/Salt_Lake_City_International_Airport	75	01010000000D2F1CD7D8FE5BC0F2703A89B3644440
822	3	Airport	major	Lambert St Louis Int'l	STL	terminal	KSTL	STL	http://en.wikipedia.org/wiki/Lambert-St._Louis_International_Airport	75	010100000003FC91CC6B9756C0CAAE0654115F4340
823	3	Airport	major	Okecie Int'l	WAW	terminal	EPWA	WAW	http://en.wikipedia.org/wiki/Warsaw_Frederic_Chopin_Airport	75	01010000004F35E39704F9344085675B34E4154A40
824	3	Airport	major	Zurich Int'l	ZRH	terminal	LSZH	ZRH	http://en.wikipedia.org/wiki/Z%C3%BCrich_Airport	75	01010000005FD2025BDA1F2140A7B73BE6E7B94740
825	3	Airport	mid	Gosselies	CRL	terminal	EBCI	CRL	http://en.wikipedia.org/wiki/Brussels_South_Charleroi_Airport	75	010100000021E8205247D111400D097B39833A4940
826	3	Airport	major	Munich Freight Terminal	MUCf	freight	EDDMf	MUCf	http://en.wikipedia.org/wiki/Munich_Airport	75	0101000000399D47A8F9892740E5F5F120C62C4840
827	3	Airport	major	Barcelona	BCN	terminal	LEBL	BCN	http://en.wikipedia.org/wiki/Barcelona_International_Airport	75	010100000040666338C09F0040650FCECACDA64440
828	3	Airport	major	Ruzyn	PRG	terminal	LKPR	PRG	http://en.wikipedia.org/wiki/Ruzyn%C4%9B_International_Airport	75	01010000005FFEC0CAF3882C402F0D7883C70D4940
829	2	Airport	major	Hong Kong Int'l	HKG	terminal	VHHH	HKG	http://en.wikipedia.org/wiki/Hong_Kong_International_Airport	150	01010000005A40F94ED77B5C40E0FCF7A6B9503640
830	2	Airport	major	Taoyuan	TPE	terminal	RCTP	TPE	http://en.wikipedia.org/wiki/Taiwan_Taoyuan_International_Airport	150	01010000002F9204C6CE4E5E404E60154EA5133940
831	2	Airport	major	Schiphol	AMS	terminal	EHAM	AMS	http://en.wikipedia.org/wiki/Amsterdam_Schiphol_Airport	150	01010000000EAA98D3B80E134042ADB5188B274A40
832	2	Airport	major	Singapore Changi	SIN	terminal	WSSS	SIN	http://en.wikipedia.org/wiki/Singapore_Changi_Airport	150	0101000000F4CBAF6721FF594097623AB4D5B2F53F
833	2	Airport	major	London Heathrow	LHR	parking	EGLL	LHR	http://en.wikipedia.org/wiki/London_Heathrow_Airport	150	0101000000B7E924C28400DDBFE98FCE9749BC4940
834	2	Airport	major	Auckland Int'l	AKL	terminal	NZAA	AKL	http://en.wikipedia.org/wiki/Auckland_International_Airport	150	0101000000426DFEC355D965402800903ED08042C0
835	2	Airport	major	Anchorage Int'l	ANC	terminal	PALH	ANC	http://en.wikipedia.org/wiki/Lake_Hood_Seaplane_Base	150	01010000002A1CC24A6ABF62C001E9426121964E40
836	2	Airport	major	Hartsfield-Jackson Atlanta Int'l	ATL	terminal	KATL	ATL	http://en.wikipedia.org/wiki/Hartsfield-Jackson_Atlanta_International_Airport	150	01010000009E4828B6391B55C085F25EDBFCD14040
837	2	Airport	major	Beijing Capital	PEK	terminal	ZBAA	PEK	http://en.wikipedia.org/wiki/Beijing_Capital_International_Airport	150	0101000000189894A4A4255D40A348EB03150A4440
838	2	Airport	major	Eldorado Int'l	BOG	terminal	SKBO	BOG	http://en.wikipedia.org/wiki/El_Dorado_International_Airport	150	01010000000C27EA002D8952C0B24BC7D09ACB1240
839	2	Airport	major	Chhatrapati Shivaji Int'l	BOM	terminal	VABB	BOM	http://en.wikipedia.org/wiki/Chhatrapati_Shivaji_International_Airport	150	010100000013E212DBF8375240020EF09958183340
840	2	Airport	major	Gen E L Logan Int'l	BOS	terminal	KBOS	BOS	http://en.wikipedia.org/wiki/Logan_International_Airport	150	0101000000502E57CE0CC151C0780BF8A0EB2E4540
841	2	Airport	major	Baltimore-Washington Int'l Thurgood Marshall	BWI	terminal	KBWI	BWI	http://en.wikipedia.org/wiki/Baltimore-Washington_International_Thurgood_Marshall_Airport	150	01010000003285510BCB2A53C0591DF364F6964340
842	2	Airport	major	Cairo Int'l	CAI	terminal	HECA	CAI	http://en.wikipedia.org/wiki/Cairo_International_Airport	150	01010000004AA1C48E55663F40B211C767AB1C3E40
843	2	Airport	mid	Casablanca-Anfa	CAS	terminal	GMMC	CAS	http://en.wikipedia.org/wiki/Casablanca-Anfa_Airport	150	0101000000CDD9C4D422A71EC0B24D267309C84040
844	2	Airport	mid	Simon Bolivar Int'l	CCS	terminal	SVMI	CCS	http://en.wikipedia.org/wiki/Sim%C3%B3n_Bol%C3%ADvar_International_Airport	150	010100000036313F305EC050C0C4ADDC80D8312540
845	2	Airport	major	Cape Town Int'l	CPT	terminal	FACT	CPT	http://en.wikipedia.org/wiki/Cape_Town_International_Airport	150	01010000000573550400993240A69C369837FC40C0
846	2	Airport	major	Chengdushuang Liu	CTU	terminal	ZUUU	CTU	http://en.wikipedia.org/wiki/Chengdu_Shuangliu_International_Airport	150	010100000020D9115731FD594034BB1E16C1943E40
847	2	Airport	major	Indira Gandhi Int'l	DEL	terminal	VIDP	DEL	http://en.wikipedia.org/wiki/Indira_Gandhi_International_Airport	150	0101000000A44DF61B9F45534002F7E4FD278F3C40
848	2	Airport	major	Denver Int'l	DEN	terminal	KDEN	DEN	http://en.wikipedia.org/wiki/Denver_International_Airport	150	0101000000DB4ADF7E1F2B5AC05BA99826BBEC4340
849	2	Airport	major	Dallas-Ft. Worth Int'l	DFW	parking	KDFW	DFW	http://en.wikipedia.org/wiki/Dallas-Fort_Worth_International_Airport	150	0101000000A7C18E70954258C085392F2238734040
850	2	Airport	major	Don Muang Int'l	DMK	terminal	VTBD	DMK	http://en.wikipedia.org/wiki/Don_Mueang_International_Airport	150	0101000000EC86F1A590265940BA6FA17E2ED72B40
851	2	Airport	major	Dubai Int'l	DXB	terminal	OMDB	DXB	http://en.wikipedia.org/wiki/Dubai_International_Airport	150	010100000098DF756452AD4B40388B8523A8403940
852	2	Airport	major	Newark Int'l	EWR	terminal	KEWR	EWR	http://en.wikipedia.org/wiki/Newark_Liberty_International_Airport	150	0101000000AE308B61568B52C085AC9BA461584440
853	2	Airport	major	Ministro Pistarini Int'l	EZE	terminal	SAEZ	EZE	http://en.wikipedia.org/wiki/Ministro_Pistarini_International_Airport	150	01010000006248F58947454DC070AB3695256841C0
854	2	Airport	major	Fort Lauderdale Hollywood Int'l	FLL	terminal	KFLL	FLL	http://en.wikipedia.org/wiki/Fort_Lauderdale-Hollywood_International_Airport	150	010100000038D0C2EB4B0954C08812068F5B123A40
855	2	Airport	major	George Bush Intercontinental	IAH	terminal	KIAH	IAH	http://en.wikipedia.org/wiki/George_Bush_Intercontinental_Airport	150	01010000004348576B5BD557C00E06B13891FC3D40
856	2	Airport	major	Ataturk Hava Limani	IST	terminal	LTBA	IST	http://en.wikipedia.org/wiki/Atat%C3%BCrk_International_Airport	150	01010000009EB5C6FBCDD13C40C38F87D2297D4440
857	2	Airport	major	OR Tambo Int'l	JNB	terminal	FAJS	JNB	http://en.wikipedia.org/wiki/OR_Tambo_International_Airport	150	01010000001E2E439A633B3C4090C10C01D1213AC0
858	2	Airport	mid	Juneau Int'l	JNU	terminal	PAJN	JNU	http://en.wikipedia.org/wiki/Juneau_International_Airport	150	0101000000A90F5DA1ACD260C0F72963E1F12D4D40
859	2	Airport	major	Los Angeles Int'l	LAX	terminal	KLAX	LAX	http://en.wikipedia.org/wiki/Los_Angeles_International_Airport	150	01010000008364710BC2995DC0FE18B4B3DAF84040
860	2	Airport	major	Linate	LIN	terminal	LIML	LIN	http://en.wikipedia.org/wiki/Linate_Airport	150	0101000000366D12BE578F2240B81E7F2FEEBA4640
861	2	Airport	major	Melbourne Int'l	MEL	terminal	YMML	MEL	http://en.wikipedia.org/wiki/Melbourne_Airport	150	0101000000CE780BFE2A1B6240FC3915A2C0D542C0
862	2	Airport	major	Lic Benito Juarez Int'l	MEX	terminal	MMMX	MEX	http://en.wikipedia.org/wiki/Mexico_City_International_Airport	150	01010000005770DC7249C558C0005B12EF7A6F3340
863	2	Airport	major	Ninoy Aquino Int'l	MNL	terminal	RPLL	MNL	http://en.wikipedia.org/wiki/Ninoy_Aquino_International_Airport	150	01010000008A63458943405E402C7F81887F032D40
864	2	Airport	major	Jomo Kenyatta Int'l	NBO	terminal	HKJK	NBO	http://en.wikipedia.org/wiki/Jomo_Kenyatta_International_Airport	150	01010000003881E14E697642400C7E9373D949F5BF
865	2	Airport	major	Honolulu Int'l	HNL	terminal	PHNL	HNL	http://en.wikipedia.org/wiki/Honolulu_International_Airport	150	010100000002561FDD6EBD63C0FC91186AFF543540
866	2	Airport	major	Chicago O'Hare Int'l	ORD	terminal	KORD	ORD	http://en.wikipedia.org/wiki/O'Hare_International_Airport	150	0101000000EA94CBB8EDF955C06828D7E7FEFC4440
867	2	Airport	major	King Khalid Int'l	RUH	terminal	OERK	RUH	http://en.wikipedia.org/wiki/King_Khalid_International_Airport	150	0101000000AE948F88D5594740C2CEB61A83F53840
868	2	Airport	major	Arturo Merino Benitez Int'l	SCL	terminal	SCEL	SCL	http://en.wikipedia.org/wiki/Comodoro_Arturo_Merino_Ben%C3%ADtez_International_Airport	150	01010000008ED26EC0CBB251C0958CCC71CBB240C0
869	2	Airport	major	Tacoma Int'l	SEA	terminal	KSEA	SEA	http://en.wikipedia.org/wiki/Seattle-Tacoma_International_Airport	150	0101000000FF77FEB658935EC0A120C84AC7B84740
870	2	Airport	major	San Francisco Int'l	SFO	terminal	KSFO	SFO	http://en.wikipedia.org/wiki/San_Francisco_International_Airport	150	0101000000551933C78A985EC0FD5194ADFACE4240
871	2	Airport	major	Hongqiao	SHA	terminal	ZSSS	SHA	http://en.wikipedia.org/wiki/Shanghai_Hongqiao_International_Airport	150	01010000008F7487F4D5555E4064D45F1AF02F3F40
872	2	Airport	major	Sheremtyevo	SVO	terminal	UUEE	SVO	http://en.wikipedia.org/wiki/Sheremetyevo_International_Airport	150	01010000006A652C793EB5424016A07B8AB4FB4B40
873	2	Airport	major	Toronto-Pearson Int'l	YYZ	terminal	CYYZ	YYZ	http://en.wikipedia.org/wiki/Toronto_Pearson_International_Airport	150	0101000000FBFA847E21E753C0513877AE29D74540
874	2	Airport	major	Kingsford Smith	SYD	terminal	YSSY	SYD	http://en.wikipedia.org/wiki/Kingsford_Smith_International_Airport	150	0101000000B8CF616C50E56240D4625FF5E1F740C0
875	2	Airport	major	Helsinki Vantaa	HEL	terminal	EFHK	HEL	http://en.wikipedia.org/wiki/Helsinki-Vantaa_Airport	150	010100000072BD8278DCF73840B0EBACAECB284E40
876	2	Airport	major	Charles de Gaulle Int'l	CDG	terminal	LFPG	CDG	http://en.wikipedia.org/wiki/Charles_de_Gaulle_International_Airport	150	0101000000D4BA9DC4BE550440CC608A84D8814840
877	2	Airport	major	Berlin-Tegel Int'l	TXL	terminal	EDDT	TXL	http://en.wikipedia.org/wiki/Berlin-Tegel_International_Airport	150	0101000000F819B464A3942A40D7B31085F7464A40
878	2	Airport	major	Vienna Schwechat Int'l	VIE	terminal	LOWW	VIE	http://en.wikipedia.org/wiki/Vienna_International_Airport	150	010100000052F0427D8E8F30400147B32C540F4840
879	2	Airport	major	Frankfurt Int'l	FRA	terminal	EDDF	FRA	http://en.wikipedia.org/wiki/Frankfurt_Airport	150	0101000000C29293F7C5242140F3123D967C064940
880	2	Airport	major	Leonardo da Vinci Int'l	FCO	terminal	LIRF	FCO	http://en.wikipedia.org/wiki/Leonardo_da_Vinci_Airport	150	01010000007BC18D390D8028401C63F622C5E54440
881	2	Airport	major	Osaka Int'l	ITM	terminal	RJOO	ITM	http://en.wikipedia.org/wiki/Osaka_International_Airport	150	01010000002C5CDEC128EE60401FF3F93525654140
882	2	Airport	major	Gimpo Int'l	GMP	terminal	RKSS	GMP	http://en.wikipedia.org/wiki/Gimpo_International_Airport	150	01010000006F5B95675AB35F40DD90C49F55C74240
883	2	Airport	major	Oslo Gardermoen	OSL	terminal	ENGM	OSL	http://en.wikipedia.org/wiki/Gardermoen_Air_Station	150	0101000000FFE824AABD3226409CA99E2CC7184E40
884	2	Airport	major	Juscelino Kubitschek Int'l	BSB	terminal	SBBR	BSB	http://en.wikipedia.org/wiki/Bras%C3%ADlia_International_Airport	150	010100000058B6E365DCF547C06C90847170BD2FC0
885	2	Airport	major	Congonhas Int'l	CGH	terminal	SBSP	CGH	http://en.wikipedia.org/wiki/Congonhas-S%C3%A3o_Paulo_International_Airport	150	0101000000144ACFE55D5447C08437F1D179A037C0
886	2	Airport	major	Rio de Janeiro-Antonio Carlos Jobim Int'l	GIG	terminal	SBGL	GIG	http://en.wikipedia.org/wiki/Rio_de_Janeiro-Gale%C3%A3o_International_Airport	150	0101000000520406F6CA9F45C02E4DEEC1F5CF36C0
887	2	Airport	major	Madrid Barajas	MAD	terminal	LEMD	MAD	http://en.wikipedia.org/wiki/Madrid_Barajas_International_Airport	150	01010000006415C0D85D8D0CC0BE4694A0EB3B4440
888	2	Airport	major	Luis Munoz Marin	SJU	terminal	TJSJ	SJU	http://en.wikipedia.org/wiki/Luis_Mu%C3%B1oz_Mar%C3%ADn_International_Airport	150	0101000000E4E1CD4D458050C0C2C9AFD125703240
889	2	Airport	major	Arlanda	ARN	terminal	ESSA	ARN	http://en.wikipedia.org/wiki/Stockholm-Arlanda_Airport	150	0101000000B62C995044EE314043774AE957D34D40
890	2	Airport	major	Soekarno-Hatta Int'l	CGK	parking	WIII	CGK	http://en.wikipedia.org/wiki/Soekarno-Hatta_International_Airport	150	010100000093CBF6FCDFA95A4013EC8D34A48118C0
891	2	Airport	major	Eleftherios Venizelos Int'l	ATH	terminal	LGAV	ATH	http://en.wikipedia.org/wiki/Athens_International_Airport	150	0101000000AD7DA33276F23740083BB97CD6F74240
\.


--
-- Name: world_airports_gid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('world_airports_gid_seq', 891, true);


--
-- Name: world_airports_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY world_airports
    ADD CONSTRAINT world_airports_pkey PRIMARY KEY (gid);


--
-- PostgreSQL database dump complete
--

