--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.6
-- Dumped by pg_dump version 9.4.6
-- Started on 2016-04-29 11:59:49 BOT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 1 (class 3079 OID 12478)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2761 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 176 (class 1259 OID 24766)
-- Name: album; Type: TABLE; Schema: public; Owner: admin_user; Tablespace: 
--

CREATE TABLE album (
    album_id integer NOT NULL,
    title character varying(100),
    artist_id integer NOT NULL
);


ALTER TABLE album OWNER TO admin_user;

--
-- TOC entry 175 (class 1259 OID 24764)
-- Name: album_album_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE album_album_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE album_album_id_seq OWNER TO admin_user;

--
-- TOC entry 2763 (class 0 OID 0)
-- Dependencies: 175
-- Name: album_album_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE album_album_id_seq OWNED BY album.album_id;


--
-- TOC entry 174 (class 1259 OID 24758)
-- Name: artist; Type: TABLE; Schema: public; Owner: admin_user; Tablespace: 
--

CREATE TABLE artist (
    artist_id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE artist OWNER TO admin_user;

--
-- TOC entry 173 (class 1259 OID 24756)
-- Name: artist_artist_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE artist_artist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE artist_artist_id_seq OWNER TO admin_user;

--
-- TOC entry 2765 (class 0 OID 0)
-- Dependencies: 173
-- Name: artist_artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE artist_artist_id_seq OWNED BY artist.artist_id;


--
-- TOC entry 189 (class 1259 OID 24857)
-- Name: customer; Type: TABLE; Schema: public; Owner: admin_user; Tablespace: 
--

CREATE TABLE customer (
    customer_id integer NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    company character varying(100),
    address character varying(100),
    city character varying(100),
    state character varying(100),
    country character varying(100),
    postal_code character varying(100),
    phone character varying(100),
    fax character varying(100),
    email character varying(100),
    support_rep_id integer NOT NULL
);


ALTER TABLE customer OWNER TO admin_user;

--
-- TOC entry 188 (class 1259 OID 24855)
-- Name: customer_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE customer_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE customer_customer_id_seq OWNER TO admin_user;

--
-- TOC entry 2767 (class 0 OID 0)
-- Dependencies: 188
-- Name: customer_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE customer_customer_id_seq OWNED BY customer.customer_id;


--
-- TOC entry 187 (class 1259 OID 24844)
-- Name: employee; Type: TABLE; Schema: public; Owner: admin_user; Tablespace: 
--

CREATE TABLE employee (
    employee_id integer NOT NULL,
    last_name character varying(100),
    first_name character varying(100),
    title character varying(100),
    reports_to integer,
    birth_date date,
    hire_date date,
    address character varying(100),
    city character varying(100),
    state character varying(100),
    country character varying(100),
    postal_code character varying(100),
    phone character varying(100),
    fax character varying(100),
    email character varying(100)
);


ALTER TABLE employee OWNER TO admin_user;

--
-- TOC entry 186 (class 1259 OID 24842)
-- Name: employee_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE employee_employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE employee_employee_id_seq OWNER TO admin_user;

--
-- TOC entry 2769 (class 0 OID 0)
-- Dependencies: 186
-- Name: employee_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE employee_employee_id_seq OWNED BY employee.employee_id;


--
-- TOC entry 180 (class 1259 OID 24787)
-- Name: genre; Type: TABLE; Schema: public; Owner: admin_user; Tablespace: 
--

CREATE TABLE genre (
    genre_id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE genre OWNER TO admin_user;

--
-- TOC entry 179 (class 1259 OID 24785)
-- Name: genre_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE genre_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE genre_genre_id_seq OWNER TO admin_user;

--
-- TOC entry 2771 (class 0 OID 0)
-- Dependencies: 179
-- Name: genre_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE genre_genre_id_seq OWNED BY genre.genre_id;


--
-- TOC entry 191 (class 1259 OID 24870)
-- Name: invoice; Type: TABLE; Schema: public; Owner: admin_user; Tablespace: 
--

CREATE TABLE invoice (
    invoice_id integer NOT NULL,
    customer_id integer NOT NULL,
    invoice_date date,
    billing_address character varying(100),
    billing_city character varying(100),
    billing_state character varying(100),
    billing_country character varying(100),
    billing_postal_code character varying(100),
    total double precision
);


ALTER TABLE invoice OWNER TO admin_user;

--
-- TOC entry 190 (class 1259 OID 24868)
-- Name: invoice_invoice_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE invoice_invoice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE invoice_invoice_id_seq OWNER TO admin_user;

--
-- TOC entry 2773 (class 0 OID 0)
-- Dependencies: 190
-- Name: invoice_invoice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE invoice_invoice_id_seq OWNED BY invoice.invoice_id;


--
-- TOC entry 193 (class 1259 OID 24883)
-- Name: invoice_line; Type: TABLE; Schema: public; Owner: admin_user; Tablespace: 
--

CREATE TABLE invoice_line (
    invoice_line_id integer NOT NULL,
    invoice_id integer NOT NULL,
    track_id integer NOT NULL,
    unit_price double precision,
    quantity double precision
);


ALTER TABLE invoice_line OWNER TO admin_user;

--
-- TOC entry 192 (class 1259 OID 24881)
-- Name: invoice_line_invoice_line_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE invoice_line_invoice_line_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE invoice_line_invoice_line_id_seq OWNER TO admin_user;

--
-- TOC entry 2775 (class 0 OID 0)
-- Dependencies: 192
-- Name: invoice_line_invoice_line_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE invoice_line_invoice_line_id_seq OWNED BY invoice_line.invoice_line_id;


--
-- TOC entry 178 (class 1259 OID 24779)
-- Name: media_type; Type: TABLE; Schema: public; Owner: admin_user; Tablespace: 
--

CREATE TABLE media_type (
    media_type_id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE media_type OWNER TO admin_user;

--
-- TOC entry 177 (class 1259 OID 24777)
-- Name: media_type_media_type_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE media_type_media_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE media_type_media_type_id_seq OWNER TO admin_user;

--
-- TOC entry 2777 (class 0 OID 0)
-- Dependencies: 177
-- Name: media_type_media_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE media_type_media_type_id_seq OWNED BY media_type.media_type_id;


--
-- TOC entry 184 (class 1259 OID 24821)
-- Name: playlist; Type: TABLE; Schema: public; Owner: admin_user; Tablespace: 
--

CREATE TABLE playlist (
    playlist_id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE playlist OWNER TO admin_user;

--
-- TOC entry 183 (class 1259 OID 24819)
-- Name: playlist_playlist_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE playlist_playlist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE playlist_playlist_id_seq OWNER TO admin_user;

--
-- TOC entry 2779 (class 0 OID 0)
-- Dependencies: 183
-- Name: playlist_playlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE playlist_playlist_id_seq OWNED BY playlist.playlist_id;


--
-- TOC entry 185 (class 1259 OID 24827)
-- Name: playlist_track; Type: TABLE; Schema: public; Owner: admin_user; Tablespace: 
--

CREATE TABLE playlist_track (
    playlist_id integer NOT NULL,
    track_id integer NOT NULL
);


ALTER TABLE playlist_track OWNER TO admin_user;

--
-- TOC entry 182 (class 1259 OID 24795)
-- Name: track; Type: TABLE; Schema: public; Owner: admin_user; Tablespace: 
--

CREATE TABLE track (
    track_id integer NOT NULL,
    name character varying(500),
    album_id integer NOT NULL,
    media_type_id integer NOT NULL,
    genre_id integer NOT NULL,
    composer character varying(500),
    milliseconds integer,
    bytes bytea,
    unit_price double precision
);


ALTER TABLE track OWNER TO admin_user;

--
-- TOC entry 181 (class 1259 OID 24793)
-- Name: track_track_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE track_track_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE track_track_id_seq OWNER TO admin_user;

--
-- TOC entry 2782 (class 0 OID 0)
-- Dependencies: 181
-- Name: track_track_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE track_track_id_seq OWNED BY track.track_id;


--
-- TOC entry 197 (class 1259 OID 24920)
-- Name: vi_list_sales_by_vendor; Type: VIEW; Schema: public; Owner: admin_user
--

CREATE VIEW vi_list_sales_by_vendor AS
 SELECT e.employee_id,
    e.first_name,
    date_part('year'::text, i.invoice_date) AS year,
    date_part('month'::text, i.invoice_date) AS month,
    sum(i.total) AS total
   FROM ((employee e
     JOIN customer c ON ((e.employee_id = c.support_rep_id)))
     JOIN invoice i ON ((c.customer_id = i.customer_id)))
  GROUP BY e.employee_id, e.first_name, date_part('year'::text, i.invoice_date), date_part('month'::text, i.invoice_date)
  ORDER BY e.first_name, date_part('year'::text, i.invoice_date), date_part('month'::text, i.invoice_date);


ALTER TABLE vi_list_sales_by_vendor OWNER TO admin_user;

--
-- TOC entry 196 (class 1259 OID 24916)
-- Name: vi_top20_track_by_media_type; Type: VIEW; Schema: public; Owner: admin_user
--

CREATE VIEW vi_top20_track_by_media_type AS
 SELECT mt.name AS media_type,
    t.name AS track,
    t.milliseconds
   FROM (track t
     JOIN media_type mt ON ((t.media_type_id = mt.media_type_id)))
  GROUP BY mt.name, t.name, t.milliseconds
  ORDER BY t.milliseconds DESC
 LIMIT 20;


ALTER TABLE vi_top20_track_by_media_type OWNER TO admin_user;

--
-- TOC entry 195 (class 1259 OID 24911)
-- Name: vi_top3_track_clients; Type: VIEW; Schema: public; Owner: admin_user
--

CREATE VIEW vi_top3_track_clients AS
 SELECT c.first_name,
    c.last_name,
    c.city,
    c.country,
    c.phone,
    sum(il.quantity) AS quantity
   FROM ((invoice_line il
     JOIN invoice i ON ((il.invoice_id = i.invoice_id)))
     JOIN customer c ON ((c.customer_id = i.customer_id)))
  GROUP BY c.first_name, c.last_name, c.city, c.country, c.phone
  ORDER BY sum(il.quantity) DESC
 LIMIT 3;


ALTER TABLE vi_top3_track_clients OWNER TO admin_user;

--
-- TOC entry 194 (class 1259 OID 24906)
-- Name: vi_top5_by_genre; Type: VIEW; Schema: public; Owner: admin_user
--

CREATE VIEW vi_top5_by_genre AS
 SELECT a.genre,
    a.track,
    a.quantity,
    a.ranking
   FROM ( SELECT g.name AS genre,
            t.name AS track,
            sum(i.quantity) AS quantity,
            row_number() OVER (PARTITION BY g.name ORDER BY sum(i.quantity) DESC) AS ranking
           FROM ((track t
             JOIN genre g ON ((t.genre_id = g.genre_id)))
             JOIN invoice_line i ON ((t.track_id = i.track_id)))
          GROUP BY g.name, t.name
          ORDER BY g.name, sum(i.quantity) DESC) a
  WHERE (a.ranking <= 5);


ALTER TABLE vi_top5_by_genre OWNER TO admin_user;

--
-- TOC entry 2578 (class 2604 OID 24769)
-- Name: album_id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY album ALTER COLUMN album_id SET DEFAULT nextval('album_album_id_seq'::regclass);


--
-- TOC entry 2577 (class 2604 OID 24761)
-- Name: artist_id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY artist ALTER COLUMN artist_id SET DEFAULT nextval('artist_artist_id_seq'::regclass);


--
-- TOC entry 2584 (class 2604 OID 24860)
-- Name: customer_id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY customer ALTER COLUMN customer_id SET DEFAULT nextval('customer_customer_id_seq'::regclass);


--
-- TOC entry 2583 (class 2604 OID 24847)
-- Name: employee_id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY employee ALTER COLUMN employee_id SET DEFAULT nextval('employee_employee_id_seq'::regclass);


--
-- TOC entry 2580 (class 2604 OID 24790)
-- Name: genre_id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY genre ALTER COLUMN genre_id SET DEFAULT nextval('genre_genre_id_seq'::regclass);


--
-- TOC entry 2585 (class 2604 OID 24873)
-- Name: invoice_id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY invoice ALTER COLUMN invoice_id SET DEFAULT nextval('invoice_invoice_id_seq'::regclass);


--
-- TOC entry 2586 (class 2604 OID 24886)
-- Name: invoice_line_id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY invoice_line ALTER COLUMN invoice_line_id SET DEFAULT nextval('invoice_line_invoice_line_id_seq'::regclass);


--
-- TOC entry 2579 (class 2604 OID 24782)
-- Name: media_type_id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY media_type ALTER COLUMN media_type_id SET DEFAULT nextval('media_type_media_type_id_seq'::regclass);


--
-- TOC entry 2582 (class 2604 OID 24824)
-- Name: playlist_id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY playlist ALTER COLUMN playlist_id SET DEFAULT nextval('playlist_playlist_id_seq'::regclass);


--
-- TOC entry 2581 (class 2604 OID 24798)
-- Name: track_id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY track ALTER COLUMN track_id SET DEFAULT nextval('track_track_id_seq'::regclass);


--
-- TOC entry 2736 (class 0 OID 24766)
-- Dependencies: 176
-- Data for Name: album; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY album (album_id, title, artist_id) FROM stdin;
1	For Those About To Rock We Salute You	1
2	Balls to the Wall	2
3	Restless and Wild	2
4	Let There Be Rock	1
5	Big Ones	3
6	Jagged Little Pill	4
7	Facelift	5
9	Plays Metallica By Four Cellos	7
10	Audioslave	8
11	Out Of Exile	8
12	BackBeat Soundtrack	9
13	The Best Of Billy Cobham	10
14	Alcohol Fueled Brewtality Live! [Disc 1]	11
15	Alcohol Fueled Brewtality Live! [Disc 2]	11
16	Black Sabbath	12
17	Black Sabbath Vol. 4 (Remaster)	12
18	Body Count	13
19	Chemical Wedding	14
20	The Best Of Buddy Guy - The Millenium Collection	15
21	Prenda Minha	16
22	Sozinho Remix Ao Vivo	16
23	Minha Historia	17
27	Cidade Negra - Hits	19
30	BBC Sessions [Disc 1] [Live]	22
31	Bongo Fury	23
32	Carnaval 2001	21
33	Chill: Brazil (Disc 1)	24
35	Garage Inc. (Disc 1)	50
36	Greatest Hits II	51
37	Greatest Kiss	52
38	Heart of the Night	53
39	International Superhits	54
40	Into The Light	55
41	Meus Momentos	56
43	MK III The Final Concerts [Disc 1]	58
44	Physical Graffiti [Disc 1]	22
45	Sambas De Enredo 2001	21
46	Supernatural	59
47	The Best of Ed Motta	37
48	The Essential Miles Davis [Disc 1]	68
49	The Essential Miles Davis [Disc 2]	68
50	The Final Concerts (Disc 2)	58
51	Up An' Atom	69
53	Vozes do MPB	21
54	Chronicle, Vol. 1	76
55	Chronicle, Vol. 2	76
58	Come Taste The Band	58
59	Deep Purple In Rock	58
60	Fireball	58
61	Knocking at Your Back Door: The Best Of Deep Purple in the 80's	58
62	Machine Head	58
63	Purpendicular	58
64	Slaves And Masters	58
65	Stormbringer	58
66	The Battle Rages On	58
67	Vault: Def Leppard's Greatest Hits	78
68	Outbreak	79
69	Djavan Ao Vivo - Vol. 02	80
70	Djavan Ao Vivo - Vol. 1	80
72	The Cream Of Clapton	81
73	Unplugged	81
74	Album Of The Year	82
75	Angel Dust	82
76	King For A Day Fool For A Lifetime	82
77	The Real Thing	82
78	Deixa Entrar	83
79	In Your Honor [Disc 1]	84
80	In Your Honor [Disc 2]	84
81	One By One	84
82	The Colour And The Shape	84
83	My Way: The Best Of Frank Sinatra [Disc 1]	85
84	Roda De Funk	86
86	Quanta Gente Veio Ver (Live)	27
88	Faceless	87
89	American Idiot	54
90	Appetite for Destruction	88
91	Use Your Illusion I	88
92	Use Your Illusion II	88
93	Blue Moods	89
94	A Matter of Life and Death	90
95	A Real Dead One	90
96	A Real Live One	90
97	Brave New World	90
98	Dance Of Death	90
99	Fear Of The Dark	90
100	Iron Maiden	90
101	Killers	90
102	Live After Death	90
103	Live At Donington 1992 (Disc 1)	90
104	Live At Donington 1992 (Disc 2)	90
105	No Prayer For The Dying	90
106	Piece Of Mind	90
107	Powerslave	90
108	Rock In Rio [CD1]	90
109	Rock In Rio [CD2]	90
110	Seventh Son of a Seventh Son	90
111	Somewhere in Time	90
112	The Number of The Beast	90
113	The X Factor	90
114	Virtual XI	90
115	Sex Machine	91
116	Emergency On Planet Earth	92
117	Synkronized	92
118	The Return Of The Space Cowboy	92
119	Get Born	93
120	Are You Experienced?	94
121	Surfing with the Alien (Remastered)	95
122	Jorge Ben Jor 25 Anos	46
123	Jota Quest-1995	96
125	Living After Midnight	98
126	Unplugged [Live]	52
127	BBC Sessions [Disc 2] [Live]	22
128	Coda	22
129	Houses Of The Holy	22
130	In Through The Out Door	22
131	IV	22
132	Led Zeppelin I	22
133	Led Zeppelin II	22
134	Led Zeppelin III	22
135	Physical Graffiti [Disc 2]	22
136	Presence	22
137	The Song Remains The Same (Disc 1)	22
138	The Song Remains The Same (Disc 2)	22
141	Greatest Hits	100
144	Misplaced Childhood	102
145	Barulhinho Bom	103
146	Seek And Shall Find: More Of The Best (1963-1981)	104
147	The Best Of Men At Work	105
148	Black Album	50
149	Garage Inc. (Disc 2)	50
150	Kill 'Em All	50
151	Load	50
152	Master Of Puppets	50
153	ReLoad	50
154	Ride The Lightning	50
155	St. Anger	50
156	...And Justice For All	50
157	Miles Ahead	68
158	Milton Nascimento Ao Vivo	42
159	Minas	42
163	From The Muddy Banks Of The Wishkah [Live]	110
164	Nevermind	110
166	Olodum	112
168	Arquivo II	113
169	Arquivo Os Paralamas Do Sucesso	113
170	Bark at the Moon (Remastered)	114
171	Blizzard of Ozz	114
172	Diary of a Madman (Remastered)	114
173	No More Tears (Remastered)	114
174	Tribute	114
175	Walking Into Clarksdale	115
176	Original Soundtracks 1	116
177	The Beast Live	117
178	Live On Two Legs [Live]	118
179	Pearl Jam	118
180	Riot Act	118
181	Ten	118
182	Vs.	118
183	Dark Side Of The Moon	120
185	Greatest Hits I	51
186	News Of The World	51
187	Out Of Time	122
188	Green	124
189	New Adventures In Hi-Fi	124
190	The Best Of R.E.M.: The IRS Years	124
192	Raul Seixas	126
193	Blood Sugar Sex Magik	127
194	By The Way	127
195	Californication	127
196	Retrospective I (1974-1980)	128
197	Santana - As Years Go By	59
198	Santana Live	59
199	Maquinarama	130
201	Judas 0: B-Sides and Rarities	131
202	Rotten Apples: Greatest Hits	131
203	A-Sides	132
204	Morning Dance	53
205	In Step	133
206	Core	134
207	Mezmerize	135
208	[1997] Black Light Syndrome	136
209	Live [Disc 1]	137
210	Live [Disc 2]	137
211	The Singles	138
212	Beyond Good And Evil	139
213	Pure Cult: The Best Of The Cult (For Rockers, Ravers, Lovers & Sinners) [UK]	139
214	The Doors	140
215	The Police Greatest Hits	141
216	Hot Rocks, 1964-1971 (Disc 1)	142
217	No Security	142
218	Voodoo Lounge	142
219	Tangents	143
220	Transmission	143
221	My Generation - The Very Best Of The Who	144
222	Serie Sem Limite (Disc 1)	145
223	Serie Sem Limite (Disc 2)	145
226	Battlestar Galactica: The Story So Far	147
227	Battlestar Galactica, Season 3	147
228	Heroes, Season 1	148
229	Lost, Season 3	149
230	Lost, Season 1	149
231	Lost, Season 2	149
232	Achtung Baby	150
233	All That You Can't Leave Behind	150
234	B-Sides 1980-1990	150
235	How To Dismantle An Atomic Bomb	150
236	Pop	150
237	Rattle And Hum	150
238	The Best Of 1980-1990	150
239	War	150
240	Zooropa	150
241	UB40 The Best Of - Volume Two [UK]	151
242	Diver Down	152
243	The Best Of Van Halen, Vol. I	152
244	Van Halen	152
245	Van Halen III	152
246	Contraband	153
248	Ao Vivo [IMPORT]	155
249	The Office, Season 1	156
250	The Office, Season 2	156
251	The Office, Season 3	156
252	Un-Led-Ed	157
253	Battlestar Galactica (Classic), Season 1	158
254	Aquaman	159
255	Instant Karma: The Amnesty International Campaign to Save Darfur	150
256	Speak of the Devil	114
257	20th Century Masters - The Millennium Collection: The Best of Scorpions	179
258	House of Pain	180
259	Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henrique Amaro	36
260	Cake: B-Sides and Rarities	196
261	LOST, Season 4	149
262	Quiet Songs	197
264	Realize	199
265	Every Kind of Light	200
266	Duos II	201
267	Worlds	202
268	The Best of Beethoven	203
269	Temple of the Dog	204
270	Carry On	205
271	Revelations	8
272	Adorate Deum: Gregorian Chant from the Proper of the Mass	206
273	Allegri: Miserere	207
274	Pachelbel: Canon & Gigue	208
275	Vivaldi: The Four Seasons	209
276	Bach: Violin Concertos	210
277	Bach: Goldberg Variations	211
278	Bach: The Cello Suites	212
279	Handel: The Messiah (Highlights)	213
280	The World of Classical Favourites	214
281	Sir Neville Marriner: A Celebration	215
282	Mozart: Wind Concertos	216
283	Haydn: Symphonies 99 - 104	217
285	A Soprano Inspired	219
286	Great Opera Choruses	220
287	Wagner: Favourite Overtures	221
289	Tchaikovsky: The Nutcracker	223
290	The Last Night of the Proms	224
291	Puccini: Madama Butterfly - Highlights	225
292	Holst: The Planets, Op. 32 & Vaughan Williams: Fantasies	226
293	Pavarotti's Opera Made Easy	227
294	Great Performances - Barber's Adagio and Other Romantic Favorites for Strings	228
295	Carmina Burana	229
296	A Copland Celebration, Vol. I	230
297	Bach: Toccata & Fugue in D Minor	231
298	Prokofiev: Symphony No.1	232
299	Scheherazade	233
300	Bach: The Brandenburg Concertos	234
301	Chopin: Piano Concertos Nos. 1 & 2	235
302	Mascagni: Cavalleria Rusticana	236
303	Sibelius: Finlandia	237
304	Beethoven Piano Sonatas: Moonlight & Pastorale	238
305	Great Recordings of the Century - Mahler: Das Lied von der Erde	240
307	Adams, John: The Chairman Dances	242
309	Palestrina: Missa Papae Marcelli & Allegri: Miserere	244
310	Prokofiev: Romeo & Juliet	245
311	Strauss: Waltzes	226
312	Berlioz: Symphonie Fantastique	245
313	Bizet: Carmen Highlights	246
314	English Renaissance	247
315	Handel: Music for the Royal Fireworks (Original Version 1749)	208
317	Mozart Gala: Famous Arias	249
318	SCRIABIN: Vers la flamme	250
319	Armada: Music from the Courts of England and Spain	251
320	Mozart: Symphonies Nos. 40 & 41	248
321	Back to Black	252
322	Frank	252
323	Carried to Dust (Bonus Track Version)	253
324	Beethoven: Symphony No. 6 'Pastoral' Etc.	254
325	Bartok: Violin & Viola Concertos	255
326	Mendelssohn: A Midsummer Night's Dream	256
327	Bach: Orchestral Suites Nos. 1 - 4	257
328	Charpentier: Divertissements, Airs & Concerts	258
329	South American Getaway	259
331	Purcell: The Fairy Queen	261
333	Purcell: Music for the Queen Mary	263
335	J.S. Bach: Chaconne, Suite in E Minor, Partita in E Major & Prelude, Fugue and Allegro	265
336	Prokofiev: Symphony No.5 & Stravinksy: Le Sacre Du Printemps	248
337	Szymanowski: Piano Works, Vol. 1	266
339	Great Recordings of the Century: Paganini's 24 Caprices	268
341	Great Recordings of the Century - Shubert: Schwanengesang, 4 Lieder	270
342	Locatelli: Concertos for Violin, Strings and Continuo, Vol. 3	271
343	Respighi:Pines of Rome	226
344	Schubert: The Late String Quartets & String Quintet (3 CD's)	272
345	Monteverdi: L'Orfeo	273
346	Mozart: Chamber Music	274
347	Koyaanisqatsi (Soundtrack from the Motion Picture)	275
\.


--
-- TOC entry 2787 (class 0 OID 0)
-- Dependencies: 175
-- Name: album_album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('album_album_id_seq', 1, false);


--
-- TOC entry 2734 (class 0 OID 24758)
-- Dependencies: 174
-- Data for Name: artist; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY artist (artist_id, name) FROM stdin;
1	AC/DC
2	Accept
3	Aerosmith
4	Alanis Morissette
5	Alice In Chains
7	Apocalyptica
8	Audioslave
9	BackBeat
10	Billy Cobham
11	Black Label Society
12	Black Sabbath
13	Body Count
14	Bruce Dickinson
15	Buddy Guy
16	Caetano Veloso
17	Chico Buarque
19	Cidade Negra
21	Various Artists
22	Led Zeppelin
23	Frank Zappa & Captain Beefheart
24	Marcos Valle
25	Milton Nascimento & Bebeto
26	Azymuth
27	Gilberto Gil
29	Bebel Gilberto
30	Jorge Vercilo
31	Baby Consuelo
32	Ney Matogrosso
33	Luiz Melodia
34	Nando Reis
36	O Rappa
37	Ed Motta
38	Banda Black Rio
39	Fernanda Porto
40	Os Cariocas
41	Elis Regina
42	Milton Nascimento
43	A Cor Do Som
44	Kid Abelha
46	Jorge Ben
47	Hermeto Pascoal
49	Edson, DJ Marky & DJ Patife Featuring Fernanda Porto
50	Metallica
51	Queen
52	Kiss
53	Spyro Gyra
54	Green Day
55	David Coverdale
56	Gonzaguinha
57	Os Mutantes
58	Deep Purple
59	Santana
60	Santana Feat. Dave Matthews
61	Santana Feat. Everlast
62	Santana Feat. Rob Thomas
63	Santana Feat. Lauryn Hill & Cee-Lo
64	Santana Feat. The Project G&B
66	Santana Feat. Eagle-Eye Cherry
67	Santana Feat. Eric Clapton
68	Miles Davis
69	Gene Krupa
75	Vinicius, Toquinho & Quarteto Em Cy
76	Creedence Clearwater Revival
78	Def Leppard
79	Dennis Chambers
80	Djavan
81	Eric Clapton
82	Faith No More
83	Falamansa
84	Foo Fighters
85	Frank Sinatra
86	Funk Como Le Gusta
87	Godsmack
88	Guns N' Roses
89	Incognito
90	Iron Maiden
91	James Brown
92	Jamiroquai
93	JET
94	Jimi Hendrix
95	Joe Satriani
96	Jota Quest
98	Judas Priest
100	Lenny Kravitz
101	Lulu Santos
102	Marillion
103	Marisa Monte
104	Marvin Gaye
105	Men At Work
110	Nirvana
112	Olodum
113	Os Paralamas Do Sucesso
114	Ozzy Osbourne
115	Page & Plant
116	Passengers
117	Paul D'Ianno
118	Pearl Jam
119	Peter Tosh
120	Pink Floyd
121	Planet Hemp
122	R.E.M. Feat. Kate Pearson
123	R.E.M. Feat. KRS-One
124	R.E.M.
125	Raimundos
126	Raul Seixas
127	Red Hot Chili Peppers
128	Rush
129	Simply Red
130	Skank
131	Smashing Pumpkins
132	Soundgarden
133	Stevie Ray Vaughan & Double Trouble
134	Stone Temple Pilots
135	System Of A Down
136	Terry Bozzio, Tony Levin & Steve Stevens
137	The Black Crowes
138	The Clash
139	The Cult
140	The Doors
141	The Police
142	The Rolling Stones
143	The Tea Party
144	The Who
145	Tim Maia
147	Battlestar Galactica
148	Heroes
149	Lost
150	U2
151	UB40
152	Van Halen
153	Velvet Revolver
154	Whitesnake
155	Zeca Pagodinho
156	The Office
157	Dread Zeppelin
158	Battlestar Galactica (Classic)
159	Aquaman
160	Christina Aguilera featuring BigElf
161	Aerosmith & Sierra Leone's Refugee Allstars
162	Los Lonely Boys
163	Corinne Bailey Rae
164	Dhani Harrison & Jakob Dylan
165	Jackson Browne
166	Avril Lavigne
167	Big & Rich
168	Youssou N'Dour
169	Black Eyed Peas
170	Jack Johnson
171	Ben Harper
172	Snow Patrol
173	Matisyahu
174	The Postal Service
175	Jaguares
176	The Flaming Lips
177	Jack's Mannequin & Mick Fleetwood
178	Regina Spektor
179	Scorpions
180	House Of Pain
181	Xis
182	Nega Gizza
183	Gustavo & Andres Veiga & Salazar
184	Rodox
185	Charlie Brown Jr.
187	Los Hermanos
188	Mundo Livre S/A
189	Otto
190	Instituto
192	DJ Dolores & Orchestra Santa Massa
193	Seu Jorge
194	Sabotage E Instituto
195	Stereo Maracana
196	Cake
197	Aisha Duo
199	Karsh Kale
200	The Posies
201	Luciana Souza/Romero Lubambo
202	Aaron Goldberg
203	Nicolaus Esterhazy Sinfonia
204	Temple of the Dog
205	Chris Cornell
206	Alberto Turco & Nova Schola Gregoriana
207	Richard Marlow & The Choir of Trinity College, Cambridge
208	English Concert & Trevor Pinnock
209	Anne-Sophie Mutter, Herbert Von Karajan & Wiener Philharmoniker
210	Hilary Hahn, Jeffrey Kahane, Los Angeles Chamber Orchestra & Margaret Batjer
211	Wilhelm Kempff
212	Yo-Yo Ma
213	Scholars Baroque Ensemble
214	Academy of St. Martin in the Fields & Sir Neville Marriner
215	Academy of St. Martin in the Fields Chamber Ensemble & Sir Neville Marriner
216	Berliner Philharmoniker, Claudio Abbado & Sabine Meyer
217	Royal Philharmonic Orchestra & Sir Thomas Beecham
219	Britten Sinfonia, Ivor Bolton & Lesley Garrett
220	Chicago Symphony Chorus, Chicago Symphony Orchestra & Sir Georg Solti
221	Sir Georg Solti & Wiener Philharmoniker
222	Academy of St. Martin in the Fields, John Birch, Sir Neville Marriner & Sylvia McNair
223	London Symphony Orchestra & Sir Charles Mackerras
224	Barry Wordsworth & BBC Concert Orchestra
225	Herbert Von Karajan, Mirella Freni & Wiener Philharmoniker
226	Eugene Ormandy
227	Luciano Pavarotti
228	Leonard Bernstein & New York Philharmonic
229	Boston Symphony Orchestra & Seiji Ozawa
230	Aaron Copland & London Symphony Orchestra
231	Ton Koopman
232	Sergei Prokofiev & Yuri Temirkanov
233	Chicago Symphony Orchestra & Fritz Reiner
234	Orchestra of The Age of Enlightenment
235	Emanuel Ax, Eugene Ormandy & Philadelphia Orchestra
236	James Levine
237	Berliner Philharmoniker & Hans Rosbaud
238	Maurizio Pollini
239	Academy of St. Martin in the Fields, Sir Neville Marriner & William Bennett
240	Gustav Mahler
242	Edo de Waart & San Francisco Symphony
244	Choir Of Westminster Abbey & Simon Preston
245	Michael Tilson Thomas & San Francisco Symphony
246	Chor der Wiener Staatsoper, Herbert Von Karajan & Wiener Philharmoniker
247	The King's Singers
248	Berliner Philharmoniker & Herbert Von Karajan
249	Sir Georg Solti, Sumi Jo & Wiener Philharmoniker
250	Christopher O'Riley
251	Fretwork
252	Amy Winehouse
253	Calexico
254	Otto Klemperer & Philharmonia Orchestra
255	Yehudi Menuhin
256	Philharmonia Orchestra & Sir Neville Marriner
257	Academy of St. Martin in the Fields, Sir Neville Marriner & Thurston Dart
258	Les Arts Florissants & William Christie
259	The 12 Cellists of The Berlin Philharmonic
260	Adrian Leaper & Doreen de Feis
261	Roger Norrington, London Classical Players
263	Equale Brass Ensemble, John Eliot Gardiner & Munich Monteverdi Orchestra and Choir
265	Julian Bream
266	Martin Roscoe
268	Itzhak Perlman
269	Michele Campanella
270	Gerald Moore
271	Mela Tenenbaum, Pro Musica Prague & Richard Kapp
272	Emerson String Quartet
273	C. Monteverdi, Nigel Rogers - Chiaroscuro; London Baroque; London Cornett & Sackbu
274	Nash Ensemble
275	Philip Glass Ensemble
\.


--
-- TOC entry 2788 (class 0 OID 0)
-- Dependencies: 173
-- Name: artist_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('artist_artist_id_seq', 1, false);


--
-- TOC entry 2749 (class 0 OID 24857)
-- Dependencies: 189
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY customer (customer_id, first_name, last_name, company, address, city, state, country, postal_code, phone, fax, email, support_rep_id) FROM stdin;
14	Mark	Philips	Telus	8210 111 ST NW	Edmonton	AB	Canada	T6G 2C7	+1 (780) 434-4554	+1 (780) 434-5565	mphilips12@shaw.ca	5
15	Jennifer	Peterson	Rogers Canada	700 W Pender Street	Vancouver	BC	Canada	V6C 1G8	+1 (604) 688-2255	+1 (604) 688-8756	jenniferp@rogers.ca	3
16	Frank	Harris	Google Inc.	1600 Amphitheatre Parkway	Mountain View	CA	USA	94043-1351	+1 (650) 253-0000	+1 (650) 253-0000	fharris@google.com	4
17	Jack	Smith	Microsoft Corporation	1 Microsoft Way	Redmond	WA	USA	98052-8300	+1 (425) 882-8080	+1 (425) 882-8081	jacksmith@microsoft.com	5
18	Michelle	Brooks		627 Broadway	New York	NY	USA	10012-2612	+1 (212) 221-3546	+1 (212) 221-4679	michelleb@aol.com	3
19	Tim	Goyer	Apple Inc.	1 Infinite Loop	Cupertino	CA	USA	95014	+1 (408) 996-1010	+1 (408) 996-1011	tgoyer@apple.com	3
20	Dan	Miller		541 Del Medio Avenue	Mountain View	CA	USA	94040-111	+1 (650) 644-3358		dmiller@comcast.com	4
21	Kathy	Chase		801 W 4th Street	Reno	NV	USA	89503	+1 (775) 223-7665		kachase@hotmail.com	5
22	Heather	Leacock		120 S Orange Ave	Orlando	FL	USA	32801	+1 (407) 999-7788		hleacock@gmail.com	4
23	John	Gordon		69 Salem Street	Boston	MA	USA	2113	+1 (617) 522-1333		johngordon22@yahoo.com	4
24	Frank	Ralston		162 E Superior Street	Chicago	IL	USA	60611	+1 (312) 332-3232		fralston@gmail.com	3
25	Victor	Stevens		319 N. Frances Street	Madison	WI	USA	53703	+1 (608) 257-0597		vstevens@yahoo.com	5
26	Richard	Cunningham		2211 W Berry Street	Fort Worth	TX	USA	76110	+1 (817) 924-7272		ricunningham@hotmail.com	4
27	Patrick	Gray		1033 N Park Ave	Tucson	AZ	USA	85719	+1 (520) 622-4200		patrick.gray@aol.com	4
28	Julia	Barnett		302 S 700 E	Salt Lake City	UT	USA	84102	+1 (801) 531-7272		jubarnett@gmail.com	5
29	Robert	Brown		796 Dundas Street West	Toronto	ON	Canada	M6J 1V1	+1 (416) 363-8888		robbrown@shaw.ca	3
30	Edward	Francis		230 Elgin Street	Ottawa	ON	Canada	K2P 1L7	+1 (613) 234-3322		edfrancis@yachoo.ca	3
31	Martha	Silk		194A Chain Lake Drive	Halifax	NS	Canada	B3S 1C5	+1 (902) 450-0450		marthasilk@gmail.com	5
32	Aaron	Mitchell		696 Osborne Street	Winnipeg	MB	Canada	R3L 2B9	+1 (204) 452-6452		aaronmitchell@yahoo.ca	4
33	Ellie	Sullivan		5112 48 Street	Yellowknife	NT	Canada	X1A 1N6	+1 (867) 920-2233		ellie.sullivan@shaw.ca	3
39	Camille	Bernard		4, Rue Milton	Paris		France	75009	+33 01 49 70 65 65		camille.bernard@yahoo.fr	4
40	Dominique	Lefebvre		8, Rue Hanovre	Paris		France	75002	+33 01 47 42 71 71		dominiquelefebvre@gmail.com	4
41	Marc	Dubois		11, Place Bellecour	Lyon		France	69002	+33 04 78 30 30 30		marc.dubois@hotmail.com	5
42	Wyatt	Girard		9, Place Louis Barthou	Bordeaux		France	33000	+33 05 56 96 96 96		wyatt.girard@yahoo.fr	3
43	Isabelle	Mercier		68, Rue Jouvence	Dijon		France	21000	+33 03 80 73 66 99		isabelle_mercier@apple.fr	3
46	Hugh	O'Reilly		3 Chatham Street	Dublin	Dublin	Ireland		+353 01 6792424		hughoreilly@apple.ie	3
47	Lucas	Mancini		Via Degli Scipioni, 43	Rome	RM	Italy	00192	+39 06 39733434		lucas.mancini@yahoo.it	5
48	Johannes	Van der Berg		Lijnbaansgracht 120bg	Amsterdam	VV	Netherlands	1016	+31 020 6223130		johavanderberg@yahoo.nl	5
51	Joakim	Johansson		Celsiusg. 9	Stockholm		Sweden	11230	+46 08-651 52 52		joakim.johansson@yahoo.se	5
52	Emma	Jones		202 Hoxton Street	London		United Kingdom	N1 5LH	+44 020 7707 0707		emma_jones@hotmail.com	3
53	Phil	Hughes		113 Lupus St	London		United Kingdom	SW1V 3EN	+44 020 7976 5722		phil.hughes@gmail.com	3
54	Steve	Murray		110 Raeburn Pl	Edinburgh		United Kingdom	EH4 1HH	+44 0131 315 3300		steve.murray@yahoo.uk	5
55	Mark	Taylor		421 Bourke Street	Sidney	NSW	Australia	2010	+61 (02) 9332 3633		mark.taylor@yahoo.au	4
57	Luis	Rojas		Calle Lira, 198	Santiago		Chile		+56 (0)2 635 4444		luisrojas@yahoo.cl	5
58	Manoj	Pareek		12,Community Centre	Delhi		India	110017	+91 0124 39883988		manoj.pareek@rediff.com	3
59	Puja	Srivastava		3,Raj Bhavan Road	Bangalore		India	560001	+91 080 22289999		puja_srivastava@yahoo.in	3
\.


--
-- TOC entry 2789 (class 0 OID 0)
-- Dependencies: 188
-- Name: customer_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('customer_customer_id_seq', 1, false);


--
-- TOC entry 2747 (class 0 OID 24844)
-- Dependencies: 187
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY employee (employee_id, last_name, first_name, title, reports_to, birth_date, hire_date, address, city, state, country, postal_code, phone, fax, email) FROM stdin;
1	Adams	Andrew	General Manager	\N	1962-02-18	2002-08-14	11120 Jasper Ave NW	Edmonton	AB	Canada	T5K 2N1	+1 (780) 428-9482	+1 (780) 428-3457	andrew@chinookcorp.com
2	Edwards	Nancy	Sales Manager	1	1958-12-08	2002-05-01	825 8 Ave SW	Calgary	AB	Canada	T2P 2T3	+1 (403) 262-3443	+1 (403) 262-3322	nancy@chinookcorp.com
3	Peacock	Jane	Sales Support Agent	2	1973-08-29	2002-04-01	1111 6 Ave SW	Calgary	AB	Canada	T2P 5M5	+1 (403) 262-3443	+1 (403) 262-6712	jane@chinookcorp.com
4	Park	Margaret	Sales Support Agent	2	1947-09-19	2003-05-03	683 10 Street SW	Calgary	AB	Canada	T2P 5G3	+1 (403) 263-4423	+1 (403) 263-4289	margaret@chinookcorp.com
5	Johnson	Steve	Sales Support Agent	2	1965-03-03	2003-10-17	7727B 41 Ave	Calgary	AB	Canada	T3B 1Y7	1 (780) 836-9987	1 (780) 836-9543	steve@chinookcorp.com
6	Mitchell	Michael	IT Manager	1	1973-07-01	2003-10-17	5827 Bowness Road NW	Calgary	AB	Canada	T3B 0C5	+1 (403) 246-9887	+1 (403) 246-9899	michael@chinookcorp.com
7	King	Robert	IT Staff	6	1970-05-29	2004-01-02	590 Columbia Boulevard West	Lethbridge	AB	Canada	T1K 5N8	+1 (403) 456-9986	+1 (403) 456-8485	robert@chinookcorp.com
8	Callahan	Laura	IT Staff	6	1968-01-09	2004-03-04	923 7 ST NW	Lethbridge	AB	Canada	T1H 1Y8	+1 (403) 467-3351	+1 (403) 467-8772	laura@chinookcorp.com
\.


--
-- TOC entry 2790 (class 0 OID 0)
-- Dependencies: 186
-- Name: employee_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('employee_employee_id_seq', 1, false);


--
-- TOC entry 2740 (class 0 OID 24787)
-- Dependencies: 180
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY genre (genre_id, name) FROM stdin;
1	Rock
2	Jazz
3	Metal
4	Alternative & Punk
5	Rock And Roll
6	Blues
7	Latin
8	Reggae
9	Pop
10	Soundtrack
11	Bossa Nova
12	Easy Listening
13	Heavy Metal
14	R&B/Soul
15	Electronica/Dance
16	World
17	Hip Hop/Rap
18	Science Fiction
19	TV Shows
20	Sci Fi & Fantasy
21	Drama
22	Comedy
23	Alternative
24	Classical
25	Opera
\.


--
-- TOC entry 2791 (class 0 OID 0)
-- Dependencies: 179
-- Name: genre_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('genre_genre_id_seq', 1, false);


--
-- TOC entry 2751 (class 0 OID 24870)
-- Dependencies: 191
-- Data for Name: invoice; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY invoice (invoice_id, customer_id, invoice_date, billing_address, billing_city, billing_state, billing_country, billing_postal_code, total) FROM stdin;
4	14	2009-01-06	8210 111 ST NW	Edmonton	AB	Canada	T6G 2C7	8.91000000000000014
5	23	2009-01-11	69 Salem Street	Boston	MA	USA	2113	13.8599999999999994
8	40	2009-02-01	8, Rue Hanovre	Paris		France	75002	1.97999999999999998
9	42	2009-02-02	9, Place Louis Barthou	Bordeaux		France	33000	3.95999999999999996
10	46	2009-02-03	3 Chatham Street	Dublin	Dublin	Ireland		5.94000000000000039
11	52	2009-02-06	202 Hoxton Street	London		United Kingdom	N1 5LH	8.91000000000000014
13	16	2009-02-19	1600 Amphitheatre Parkway	Mountain View	CA	USA	94043-1351	0.989999999999999991
14	17	2009-03-04	1 Microsoft Way	Redmond	WA	USA	98052-8300	1.97999999999999998
15	19	2009-03-04	1 Infinite Loop	Cupertino	CA	USA	95014	1.97999999999999998
16	21	2009-03-05	801 W 4th Street	Reno	NV	USA	89503	3.95999999999999996
17	25	2009-03-06	319 N. Frances Street	Madison	WI	USA	53703	5.94000000000000039
18	31	2009-03-09	194A Chain Lake Drive	Halifax	NS	Canada	B3S 1C5	8.91000000000000014
19	40	2009-03-14	8, Rue Hanovre	Paris		France	75002	13.8599999999999994
20	54	2009-03-22	110 Raeburn Pl	Edinburgh		United Kingdom	EH4 1HH	0.989999999999999991
21	55	2009-04-04	421 Bourke Street	Sidney	NSW	Australia	2010	1.97999999999999998
22	57	2009-04-04	Calle Lira, 198	Santiago		Chile		1.97999999999999998
23	59	2009-04-05	3,Raj Bhavan Road	Bangalore		India	560001	3.95999999999999996
26	19	2009-04-14	1 Infinite Loop	Cupertino	CA	USA	95014	13.8599999999999994
27	33	2009-04-22	5112 48 Street	Yellowknife	NT	Canada	X1A 1N6	0.989999999999999991
31	42	2009-05-07	9, Place Louis Barthou	Bordeaux		France	33000	5.94000000000000039
32	48	2009-05-10	Lijnbaansgracht 120bg	Amsterdam	VV	Netherlands	1016	8.91000000000000014
33	57	2009-05-15	Calle Lira, 198	Santiago		Chile		13.8599999999999994
36	15	2009-06-05	700 W Pender Street	Vancouver	BC	Canada	V6C 1G8	1.97999999999999998
37	17	2009-06-06	1 Microsoft Way	Redmond	WA	USA	98052-8300	3.95999999999999996
38	21	2009-06-07	801 W 4th Street	Reno	NV	USA	89503	5.94000000000000039
39	27	2009-06-10	1033 N Park Ave	Tucson	AZ	USA	85719	8.91000000000000014
42	51	2009-07-06	Celsiusg. 9	Stockholm		Sweden	11230	1.97999999999999998
43	53	2009-07-06	113 Lupus St	London		United Kingdom	SW1V 3EN	1.97999999999999998
44	55	2009-07-07	421 Bourke Street	Sidney	NSW	Australia	2010	3.95999999999999996
45	59	2009-07-08	3,Raj Bhavan Road	Bangalore		India	560001	5.94000000000000039
47	15	2009-07-16	700 W Pender Street	Vancouver	BC	Canada	V6C 1G8	13.8599999999999994
48	29	2009-07-24	796 Dundas Street West	Toronto	ON	Canada	M6J 1V1	0.989999999999999991
49	30	2009-08-06	230 Elgin Street	Ottawa	ON	Canada	K2P 1L7	1.97999999999999998
50	32	2009-08-06	696 Osborne Street	Winnipeg	MB	Canada	R3L 2B9	1.97999999999999998
54	53	2009-08-16	113 Lupus St	London		United Kingdom	SW1V 3EN	13.8599999999999994
59	17	2009-09-08	1 Microsoft Way	Redmond	WA	USA	98052-8300	5.94000000000000039
60	23	2009-09-11	69 Salem Street	Boston	MA	USA	2113	8.91000000000000014
61	32	2009-09-16	696 Osborne Street	Winnipeg	MB	Canada	R3L 2B9	13.8599999999999994
62	46	2009-09-24	3 Chatham Street	Dublin	Dublin	Ireland		0.989999999999999991
63	47	2009-10-07	Via Degli Scipioni, 43	Rome	RM	Italy	00192	1.97999999999999998
65	51	2009-10-08	Celsiusg. 9	Stockholm		Sweden	11230	3.95999999999999996
66	55	2009-10-09	421 Bourke Street	Sidney	NSW	Australia	2010	5.94000000000000039
69	25	2009-10-25	319 N. Frances Street	Madison	WI	USA	53703	0.989999999999999991
70	26	2009-11-07	2211 W Berry Street	Fort Worth	TX	USA	76110	1.97999999999999998
71	28	2009-11-07	302 S 700 E	Salt Lake City	UT	USA	84102	1.97999999999999998
72	30	2009-11-08	230 Elgin Street	Ottawa	ON	Canada	K2P 1L7	3.95999999999999996
74	40	2009-11-12	8, Rue Hanovre	Paris		France	75002	8.91000000000000014
81	19	2009-12-13	1 Infinite Loop	Cupertino	CA	USA	95014	8.91000000000000014
82	28	2009-12-18	302 S 700 E	Salt Lake City	UT	USA	84102	13.8599999999999994
83	42	2009-12-26	9, Place Louis Barthou	Bordeaux		France	33000	0.989999999999999991
84	43	2010-01-08	68, Rue Jouvence	Dijon		France	21000	1.97999999999999998
86	47	2010-01-09	Via Degli Scipioni, 43	Rome	RM	Italy	00192	3.95999999999999996
87	51	2010-01-10	Celsiusg. 9	Stockholm		Sweden	11230	6.94000000000000039
88	57	2010-01-13	Calle Lira, 198	Santiago		Chile		17.9100000000000001
90	21	2010-01-26	801 W 4th Street	Reno	NV	USA	89503	0.989999999999999991
91	22	2010-02-08	120 S Orange Ave	Orlando	FL	USA	32801	1.97999999999999998
92	24	2010-02-08	162 E Superior Street	Chicago	IL	USA	60611	1.97999999999999998
93	26	2010-02-09	2211 W Berry Street	Fort Worth	TX	USA	76110	3.95999999999999996
94	30	2010-02-10	230 Elgin Street	Ottawa	ON	Canada	K2P 1L7	5.94000000000000039
97	59	2010-02-26	3,Raj Bhavan Road	Bangalore		India	560001	1.98999999999999999
102	15	2010-03-16	700 W Pender Street	Vancouver	BC	Canada	V6C 1G8	9.91000000000000014
103	24	2010-03-21	162 E Superior Street	Chicago	IL	USA	60611	15.8599999999999994
105	39	2010-04-11	4, Rue Milton	Paris		France	75009	1.97999999999999998
106	41	2010-04-11	11, Place Bellecour	Lyon		France	69002	1.97999999999999998
107	43	2010-04-12	68, Rue Jouvence	Dijon		France	21000	3.95999999999999996
108	47	2010-04-13	Via Degli Scipioni, 43	Rome	RM	Italy	00192	5.94000000000000039
109	53	2010-04-16	113 Lupus St	London		United Kingdom	SW1V 3EN	8.91000000000000014
111	17	2010-04-29	1 Microsoft Way	Redmond	WA	USA	98052-8300	0.989999999999999991
112	18	2010-05-12	627 Broadway	New York	NY	USA	10012-2612	1.97999999999999998
113	20	2010-05-12	541 Del Medio Avenue	Mountain View	CA	USA	94040-111	1.97999999999999998
114	22	2010-05-13	120 S Orange Ave	Orlando	FL	USA	32801	3.95999999999999996
115	26	2010-05-14	2211 W Berry Street	Fort Worth	TX	USA	76110	5.94000000000000039
116	32	2010-05-17	696 Osborne Street	Winnipeg	MB	Canada	R3L 2B9	8.91000000000000014
117	41	2010-05-22	11, Place Bellecour	Lyon		France	69002	13.8599999999999994
118	55	2010-05-30	421 Bourke Street	Sidney	NSW	Australia	2010	0.989999999999999991
120	58	2010-06-12	12,Community Centre	Delhi		India	110017	1.97999999999999998
124	20	2010-06-22	541 Del Medio Avenue	Mountain View	CA	USA	94040-111	13.8599999999999994
128	39	2010-07-14	4, Rue Milton	Paris		France	75009	3.95999999999999996
129	43	2010-07-15	68, Rue Jouvence	Dijon		France	21000	5.94000000000000039
131	58	2010-07-23	12,Community Centre	Delhi		India	110017	13.8599999999999994
133	14	2010-08-13	8210 111 ST NW	Edmonton	AB	Canada	T6G 2C7	1.97999999999999998
134	16	2010-08-13	1600 Amphitheatre Parkway	Mountain View	CA	USA	94043-1351	1.97999999999999998
135	18	2010-08-14	627 Broadway	New York	NY	USA	10012-2612	3.95999999999999996
136	22	2010-08-15	120 S Orange Ave	Orlando	FL	USA	32801	5.94000000000000039
137	28	2010-08-18	302 S 700 E	Salt Lake City	UT	USA	84102	8.91000000000000014
139	51	2010-08-31	Celsiusg. 9	Stockholm		Sweden	11230	0.989999999999999991
140	52	2010-09-13	202 Hoxton Street	London		United Kingdom	N1 5LH	1.97999999999999998
141	54	2010-09-13	110 Raeburn Pl	Edinburgh		United Kingdom	EH4 1HH	1.97999999999999998
145	16	2010-09-23	1600 Amphitheatre Parkway	Mountain View	CA	USA	94043-1351	13.8599999999999994
146	30	2010-10-01	230 Elgin Street	Ottawa	ON	Canada	K2P 1L7	0.989999999999999991
147	31	2010-10-14	194A Chain Lake Drive	Halifax	NS	Canada	B3S 1C5	1.97999999999999998
148	33	2010-10-14	5112 48 Street	Yellowknife	NT	Canada	X1A 1N6	1.97999999999999998
150	39	2010-10-16	4, Rue Milton	Paris		France	75009	5.94000000000000039
152	54	2010-10-24	110 Raeburn Pl	Edinburgh		United Kingdom	EH4 1HH	13.8599999999999994
156	14	2010-11-15	8210 111 ST NW	Edmonton	AB	Canada	T6G 2C7	3.95999999999999996
157	18	2010-11-16	627 Broadway	New York	NY	USA	10012-2612	5.94000000000000039
158	24	2010-11-19	162 E Superior Street	Chicago	IL	USA	60611	8.91000000000000014
159	33	2010-11-24	5112 48 Street	Yellowknife	NT	Canada	X1A 1N6	13.8599999999999994
160	47	2010-12-02	Via Degli Scipioni, 43	Rome	RM	Italy	00192	0.989999999999999991
161	48	2010-12-15	Lijnbaansgracht 120bg	Amsterdam	VV	Netherlands	1016	1.97999999999999998
163	52	2010-12-16	202 Hoxton Street	London		United Kingdom	N1 5LH	3.95999999999999996
167	26	2011-01-02	2211 W Berry Street	Fort Worth	TX	USA	76110	0.989999999999999991
168	27	2011-01-15	1033 N Park Ave	Tucson	AZ	USA	85719	1.97999999999999998
169	29	2011-01-15	796 Dundas Street West	Toronto	ON	Canada	M6J 1V1	1.97999999999999998
170	31	2011-01-16	194A Chain Lake Drive	Halifax	NS	Canada	B3S 1C5	3.95999999999999996
172	41	2011-01-20	11, Place Bellecour	Lyon		France	69002	8.91000000000000014
178	14	2011-02-17	8210 111 ST NW	Edmonton	AB	Canada	T6G 2C7	5.94000000000000039
179	20	2011-02-20	541 Del Medio Avenue	Mountain View	CA	USA	94040-111	8.91000000000000014
180	29	2011-02-25	796 Dundas Street West	Toronto	ON	Canada	M6J 1V1	13.8599999999999994
181	43	2011-03-05	68, Rue Jouvence	Dijon		France	21000	0.989999999999999991
183	46	2011-03-18	3 Chatham Street	Dublin	Dublin	Ireland		1.97999999999999998
184	48	2011-03-19	Lijnbaansgracht 120bg	Amsterdam	VV	Netherlands	1016	3.95999999999999996
185	52	2011-03-20	202 Hoxton Street	London		United Kingdom	N1 5LH	5.94000000000000039
186	58	2011-03-23	12,Community Centre	Delhi		India	110017	8.91000000000000014
188	22	2011-04-05	120 S Orange Ave	Orlando	FL	USA	32801	0.989999999999999991
189	23	2011-04-18	69 Salem Street	Boston	MA	USA	2113	1.97999999999999998
190	25	2011-04-18	319 N. Frances Street	Madison	WI	USA	53703	1.97999999999999998
191	27	2011-04-19	1033 N Park Ave	Tucson	AZ	USA	85719	3.95999999999999996
192	31	2011-04-20	194A Chain Lake Drive	Halifax	NS	Canada	B3S 1C5	5.94000000000000039
194	46	2011-04-28	3 Chatham Street	Dublin	Dublin	Ireland		21.8599999999999994
200	16	2011-05-24	1600 Amphitheatre Parkway	Mountain View	CA	USA	94043-1351	8.91000000000000014
201	25	2011-05-29	319 N. Frances Street	Madison	WI	USA	53703	18.8599999999999994
202	39	2011-06-06	4, Rue Milton	Paris		France	75009	1.98999999999999999
203	40	2011-06-19	8, Rue Hanovre	Paris		France	75002	2.97999999999999998
204	42	2011-06-19	9, Place Louis Barthou	Bordeaux		France	33000	3.97999999999999998
206	48	2011-06-21	Lijnbaansgracht 120bg	Amsterdam	VV	Netherlands	1016	8.9399999999999995
207	54	2011-06-24	110 Raeburn Pl	Edinburgh		United Kingdom	EH4 1HH	8.91000000000000014
209	18	2011-07-07	627 Broadway	New York	NY	USA	10012-2612	0.989999999999999991
210	19	2011-07-20	1 Infinite Loop	Cupertino	CA	USA	95014	1.97999999999999998
211	21	2011-07-20	801 W 4th Street	Reno	NV	USA	89503	1.97999999999999998
212	23	2011-07-21	69 Salem Street	Boston	MA	USA	2113	3.95999999999999996
213	27	2011-07-22	1033 N Park Ave	Tucson	AZ	USA	85719	5.94000000000000039
214	33	2011-07-25	5112 48 Street	Yellowknife	NT	Canada	X1A 1N6	8.91000000000000014
215	42	2011-07-30	9, Place Louis Barthou	Bordeaux		France	33000	13.8599999999999994
217	57	2011-08-20	Calle Lira, 198	Santiago		Chile		1.97999999999999998
218	59	2011-08-20	3,Raj Bhavan Road	Bangalore		India	560001	1.97999999999999998
222	21	2011-08-30	801 W 4th Street	Reno	NV	USA	89503	13.8599999999999994
226	40	2011-09-21	8, Rue Hanovre	Paris		France	75002	3.95999999999999996
229	59	2011-09-30	3,Raj Bhavan Road	Bangalore		India	560001	13.8599999999999994
230	14	2011-10-08	8210 111 ST NW	Edmonton	AB	Canada	T6G 2C7	0.989999999999999991
231	15	2011-10-21	700 W Pender Street	Vancouver	BC	Canada	V6C 1G8	1.97999999999999998
232	17	2011-10-21	1 Microsoft Way	Redmond	WA	USA	98052-8300	1.97999999999999998
233	19	2011-10-22	1 Infinite Loop	Cupertino	CA	USA	95014	3.95999999999999996
234	23	2011-10-23	69 Salem Street	Boston	MA	USA	2113	5.94000000000000039
235	29	2011-10-26	796 Dundas Street West	Toronto	ON	Canada	M6J 1V1	8.91000000000000014
237	52	2011-11-08	202 Hoxton Street	London		United Kingdom	N1 5LH	0.989999999999999991
238	53	2011-11-21	113 Lupus St	London		United Kingdom	SW1V 3EN	1.97999999999999998
239	55	2011-11-21	421 Bourke Street	Sidney	NSW	Australia	2010	1.97999999999999998
240	57	2011-11-22	Calle Lira, 198	Santiago		Chile		3.95999999999999996
243	17	2011-12-01	1 Microsoft Way	Redmond	WA	USA	98052-8300	13.8599999999999994
244	31	2011-12-09	194A Chain Lake Drive	Halifax	NS	Canada	B3S 1C5	0.989999999999999991
245	32	2011-12-22	696 Osborne Street	Winnipeg	MB	Canada	R3L 2B9	1.97999999999999998
248	40	2011-12-24	8, Rue Hanovre	Paris		France	75002	5.94000000000000039
249	46	2011-12-27	3 Chatham Street	Dublin	Dublin	Ireland		8.91000000000000014
250	55	2012-01-01	421 Bourke Street	Sidney	NSW	Australia	2010	13.8599999999999994
254	15	2012-01-23	700 W Pender Street	Vancouver	BC	Canada	V6C 1G8	3.95999999999999996
255	19	2012-01-24	1 Infinite Loop	Cupertino	CA	USA	95014	5.94000000000000039
256	25	2012-01-27	319 N. Frances Street	Madison	WI	USA	53703	8.91000000000000014
258	48	2012-02-09	Lijnbaansgracht 120bg	Amsterdam	VV	Netherlands	1016	0.989999999999999991
260	51	2012-02-22	Celsiusg. 9	Stockholm		Sweden	11230	1.97999999999999998
261	53	2012-02-23	113 Lupus St	London		United Kingdom	SW1V 3EN	3.95999999999999996
262	57	2012-02-24	Calle Lira, 198	Santiago		Chile		5.94000000000000039
265	27	2012-03-11	1033 N Park Ave	Tucson	AZ	USA	85719	0.989999999999999991
266	28	2012-03-24	302 S 700 E	Salt Lake City	UT	USA	84102	1.97999999999999998
267	30	2012-03-24	230 Elgin Street	Ottawa	ON	Canada	K2P 1L7	1.97999999999999998
268	32	2012-03-25	696 Osborne Street	Winnipeg	MB	Canada	R3L 2B9	3.95999999999999996
270	42	2012-03-29	9, Place Louis Barthou	Bordeaux		France	33000	8.91000000000000014
271	51	2012-04-03	Celsiusg. 9	Stockholm		Sweden	11230	13.8599999999999994
276	15	2012-04-26	700 W Pender Street	Vancouver	BC	Canada	V6C 1G8	5.94000000000000039
277	21	2012-04-29	801 W 4th Street	Reno	NV	USA	89503	8.91000000000000014
278	30	2012-05-04	230 Elgin Street	Ottawa	ON	Canada	K2P 1L7	13.8599999999999994
281	47	2012-05-25	Via Degli Scipioni, 43	Rome	RM	Italy	00192	1.97999999999999998
283	53	2012-05-27	113 Lupus St	London		United Kingdom	SW1V 3EN	5.94000000000000039
284	59	2012-05-30	3,Raj Bhavan Road	Bangalore		India	560001	8.91000000000000014
286	23	2012-06-12	69 Salem Street	Boston	MA	USA	2113	0.989999999999999991
287	24	2012-06-25	162 E Superior Street	Chicago	IL	USA	60611	1.97999999999999998
288	26	2012-06-25	2211 W Berry Street	Fort Worth	TX	USA	76110	1.97999999999999998
289	28	2012-06-26	302 S 700 E	Salt Lake City	UT	USA	84102	3.95999999999999996
290	32	2012-06-27	696 Osborne Street	Winnipeg	MB	Canada	R3L 2B9	5.94000000000000039
292	47	2012-07-05	Via Degli Scipioni, 43	Rome	RM	Italy	00192	13.8599999999999994
298	17	2012-07-31	1 Microsoft Way	Redmond	WA	USA	98052-8300	10.9100000000000001
299	26	2012-08-05	2211 W Berry Street	Fort Worth	TX	USA	76110	23.8599999999999994
300	40	2012-08-13	8, Rue Hanovre	Paris		France	75002	0.989999999999999991
301	41	2012-08-26	11, Place Bellecour	Lyon		France	69002	1.97999999999999998
302	43	2012-08-26	68, Rue Jouvence	Dijon		France	21000	1.97999999999999998
305	55	2012-08-31	421 Bourke Street	Sidney	NSW	Australia	2010	8.91000000000000014
307	19	2012-09-13	1 Infinite Loop	Cupertino	CA	USA	95014	1.98999999999999999
308	20	2012-09-26	541 Del Medio Avenue	Mountain View	CA	USA	94040-111	3.97999999999999998
309	22	2012-09-26	120 S Orange Ave	Orlando	FL	USA	32801	3.97999999999999998
310	24	2012-09-27	162 E Superior Street	Chicago	IL	USA	60611	7.95999999999999996
311	28	2012-09-28	302 S 700 E	Salt Lake City	UT	USA	84102	11.9399999999999995
313	43	2012-10-06	68, Rue Jouvence	Dijon		France	21000	16.8599999999999994
314	57	2012-10-14	Calle Lira, 198	Santiago		Chile		0.989999999999999991
315	58	2012-10-27	12,Community Centre	Delhi		India	110017	1.97999999999999998
320	22	2012-11-06	120 S Orange Ave	Orlando	FL	USA	32801	13.8599999999999994
323	39	2012-11-27	4, Rue Milton	Paris		France	75009	1.97999999999999998
324	41	2012-11-28	11, Place Bellecour	Lyon		France	69002	3.95999999999999996
326	51	2012-12-02	Celsiusg. 9	Stockholm		Sweden	11230	8.91000000000000014
328	15	2012-12-15	700 W Pender Street	Vancouver	BC	Canada	V6C 1G8	0.989999999999999991
329	16	2012-12-28	1600 Amphitheatre Parkway	Mountain View	CA	USA	94043-1351	1.97999999999999998
330	18	2012-12-28	627 Broadway	New York	NY	USA	10012-2612	1.97999999999999998
331	20	2012-12-29	541 Del Medio Avenue	Mountain View	CA	USA	94040-111	3.95999999999999996
332	24	2012-12-30	162 E Superior Street	Chicago	IL	USA	60611	5.94000000000000039
333	30	2013-01-02	230 Elgin Street	Ottawa	ON	Canada	K2P 1L7	8.91000000000000014
334	39	2013-01-07	4, Rue Milton	Paris		France	75009	13.8599999999999994
335	53	2013-01-15	113 Lupus St	London		United Kingdom	SW1V 3EN	0.989999999999999991
336	54	2013-01-28	110 Raeburn Pl	Edinburgh		United Kingdom	EH4 1HH	1.97999999999999998
338	58	2013-01-29	12,Community Centre	Delhi		India	110017	3.95999999999999996
341	18	2013-02-07	627 Broadway	New York	NY	USA	10012-2612	13.8599999999999994
342	32	2013-02-15	696 Osborne Street	Winnipeg	MB	Canada	R3L 2B9	0.989999999999999991
343	33	2013-02-28	5112 48 Street	Yellowknife	NT	Canada	X1A 1N6	1.97999999999999998
346	41	2013-03-02	11, Place Bellecour	Lyon		France	69002	5.94000000000000039
347	47	2013-03-05	Via Degli Scipioni, 43	Rome	RM	Italy	00192	8.91000000000000014
351	14	2013-03-31	8210 111 ST NW	Edmonton	AB	Canada	T6G 2C7	1.97999999999999998
352	16	2013-04-01	1600 Amphitheatre Parkway	Mountain View	CA	USA	94043-1351	3.95999999999999996
353	20	2013-04-02	541 Del Medio Avenue	Mountain View	CA	USA	94040-111	5.94000000000000039
354	26	2013-04-05	2211 W Berry Street	Fort Worth	TX	USA	76110	8.91000000000000014
358	52	2013-05-01	202 Hoxton Street	London		United Kingdom	N1 5LH	1.97999999999999998
359	54	2013-05-02	110 Raeburn Pl	Edinburgh		United Kingdom	EH4 1HH	3.95999999999999996
360	58	2013-05-03	12,Community Centre	Delhi		India	110017	5.94000000000000039
362	14	2013-05-11	8210 111 ST NW	Edmonton	AB	Canada	T6G 2C7	13.8599999999999994
363	28	2013-05-19	302 S 700 E	Salt Lake City	UT	USA	84102	0.989999999999999991
364	29	2013-06-01	796 Dundas Street West	Toronto	ON	Canada	M6J 1V1	1.97999999999999998
365	31	2013-06-01	194A Chain Lake Drive	Halifax	NS	Canada	B3S 1C5	1.97999999999999998
366	33	2013-06-02	5112 48 Street	Yellowknife	NT	Canada	X1A 1N6	3.95999999999999996
368	43	2013-06-06	68, Rue Jouvence	Dijon		France	21000	8.91000000000000014
369	52	2013-06-11	202 Hoxton Street	London		United Kingdom	N1 5LH	13.8599999999999994
374	16	2013-07-04	1600 Amphitheatre Parkway	Mountain View	CA	USA	94043-1351	5.94000000000000039
375	22	2013-07-07	120 S Orange Ave	Orlando	FL	USA	32801	8.91000000000000014
376	31	2013-07-12	194A Chain Lake Drive	Halifax	NS	Canada	B3S 1C5	13.8599999999999994
378	46	2013-08-02	3 Chatham Street	Dublin	Dublin	Ireland		1.97999999999999998
379	48	2013-08-02	Lijnbaansgracht 120bg	Amsterdam	VV	Netherlands	1016	1.97999999999999998
381	54	2013-08-04	110 Raeburn Pl	Edinburgh		United Kingdom	EH4 1HH	5.94000000000000039
384	24	2013-08-20	162 E Superior Street	Chicago	IL	USA	60611	0.989999999999999991
385	25	2013-09-02	319 N. Frances Street	Madison	WI	USA	53703	1.97999999999999998
386	27	2013-09-02	1033 N Park Ave	Tucson	AZ	USA	85719	1.97999999999999998
387	29	2013-09-03	796 Dundas Street West	Toronto	ON	Canada	M6J 1V1	3.95999999999999996
388	33	2013-09-04	5112 48 Street	Yellowknife	NT	Canada	X1A 1N6	5.94000000000000039
389	39	2013-09-07	4, Rue Milton	Paris		France	75009	8.91000000000000014
390	48	2013-09-12	Lijnbaansgracht 120bg	Amsterdam	VV	Netherlands	1016	13.8599999999999994
396	18	2013-10-08	627 Broadway	New York	NY	USA	10012-2612	8.91000000000000014
397	27	2013-10-13	1033 N Park Ave	Tucson	AZ	USA	85719	13.8599999999999994
398	41	2013-10-21	11, Place Bellecour	Lyon		France	69002	0.989999999999999991
399	42	2013-11-03	9, Place Louis Barthou	Bordeaux		France	33000	1.97999999999999998
401	46	2013-11-04	3 Chatham Street	Dublin	Dublin	Ireland		3.95999999999999996
405	20	2013-11-21	541 Del Medio Avenue	Mountain View	CA	USA	94040-111	0.989999999999999991
406	21	2013-12-04	801 W 4th Street	Reno	NV	USA	89503	1.97999999999999998
407	23	2013-12-04	69 Salem Street	Boston	MA	USA	2113	1.97999999999999998
408	25	2013-12-05	319 N. Frances Street	Madison	WI	USA	53703	3.95999999999999996
409	29	2013-12-06	796 Dundas Street West	Toronto	ON	Canada	M6J 1V1	5.94000000000000039
412	58	2013-12-22	12,Community Centre	Delhi		India	110017	1.98999999999999999
\.


--
-- TOC entry 2792 (class 0 OID 0)
-- Dependencies: 190
-- Name: invoice_invoice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('invoice_invoice_id_seq', 1, false);


--
-- TOC entry 2753 (class 0 OID 24883)
-- Dependencies: 193
-- Data for Name: invoice_line; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY invoice_line (invoice_line_id, invoice_id, track_id, unit_price, quantity) FROM stdin;
13	4	42	0.989999999999999991	1
14	4	48	0.989999999999999991	1
15	4	54	0.989999999999999991	1
16	4	60	0.989999999999999991	1
19	4	78	0.989999999999999991	1
20	4	84	0.989999999999999991	1
21	4	90	0.989999999999999991	1
22	5	99	0.989999999999999991	1
23	5	108	0.989999999999999991	1
24	5	117	0.989999999999999991	1
25	5	126	0.989999999999999991	1
26	5	135	0.989999999999999991	1
27	5	144	0.989999999999999991	1
28	5	153	0.989999999999999991	1
29	5	162	0.989999999999999991	1
30	5	171	0.989999999999999991	1
31	5	180	0.989999999999999991	1
32	5	189	0.989999999999999991	1
33	5	198	0.989999999999999991	1
35	5	216	0.989999999999999991	1
39	8	234	0.989999999999999991	1
40	8	236	0.989999999999999991	1
42	9	240	0.989999999999999991	1
56	11	304	0.989999999999999991	1
74	13	462	0.989999999999999991	1
75	14	463	0.989999999999999991	1
76	14	464	0.989999999999999991	1
77	15	466	0.989999999999999991	1
78	15	468	0.989999999999999991	1
79	16	470	0.989999999999999991	1
80	16	472	0.989999999999999991	1
81	16	474	0.989999999999999991	1
82	16	476	0.989999999999999991	1
83	17	480	0.989999999999999991	1
84	17	484	0.989999999999999991	1
85	17	488	0.989999999999999991	1
86	17	492	0.989999999999999991	1
87	17	496	0.989999999999999991	1
88	17	500	0.989999999999999991	1
90	18	512	0.989999999999999991	1
91	18	518	0.989999999999999991	1
92	18	524	0.989999999999999991	1
96	18	548	0.989999999999999991	1
97	18	554	0.989999999999999991	1
99	19	572	0.989999999999999991	1
100	19	581	0.989999999999999991	1
101	19	590	0.989999999999999991	1
102	19	599	0.989999999999999991	1
103	19	608	0.989999999999999991	1
104	19	617	0.989999999999999991	1
105	19	626	0.989999999999999991	1
106	19	635	0.989999999999999991	1
107	19	644	0.989999999999999991	1
111	19	680	0.989999999999999991	1
112	20	694	0.989999999999999991	1
113	21	695	0.989999999999999991	1
114	21	696	0.989999999999999991	1
115	22	698	0.989999999999999991	1
116	22	700	0.989999999999999991	1
117	23	702	0.989999999999999991	1
118	23	704	0.989999999999999991	1
119	23	706	0.989999999999999991	1
120	23	708	0.989999999999999991	1
136	26	795	0.989999999999999991	1
137	26	804	0.989999999999999991	1
138	26	813	0.989999999999999991	1
139	26	822	0.989999999999999991	1
140	26	831	0.989999999999999991	1
141	26	840	0.989999999999999991	1
142	26	849	0.989999999999999991	1
143	26	858	0.989999999999999991	1
145	26	876	0.989999999999999991	1
147	26	894	0.989999999999999991	1
148	26	903	0.989999999999999991	1
149	26	912	0.989999999999999991	1
150	27	926	0.989999999999999991	1
159	31	944	0.989999999999999991	1
160	31	948	0.989999999999999991	1
161	31	952	0.989999999999999991	1
162	31	956	0.989999999999999991	1
163	31	960	0.989999999999999991	1
164	31	964	0.989999999999999991	1
165	32	970	0.989999999999999991	1
166	32	976	0.989999999999999991	1
167	32	982	0.989999999999999991	1
168	32	988	0.989999999999999991	1
169	32	994	0.989999999999999991	1
170	32	1000	0.989999999999999991	1
171	32	1006	0.989999999999999991	1
172	32	1012	0.989999999999999991	1
173	32	1018	0.989999999999999991	1
174	33	1027	0.989999999999999991	1
175	33	1036	0.989999999999999991	1
176	33	1045	0.989999999999999991	1
177	33	1054	0.989999999999999991	1
178	33	1063	0.989999999999999991	1
179	33	1072	0.989999999999999991	1
181	33	1090	0.989999999999999991	1
182	33	1099	0.989999999999999991	1
183	33	1108	0.989999999999999991	1
185	33	1126	0.989999999999999991	1
191	36	1162	0.989999999999999991	1
192	36	1164	0.989999999999999991	1
193	37	1166	0.989999999999999991	1
194	37	1168	0.989999999999999991	1
195	37	1170	0.989999999999999991	1
196	37	1172	0.989999999999999991	1
197	38	1176	0.989999999999999991	1
198	38	1180	0.989999999999999991	1
199	38	1184	0.989999999999999991	1
200	38	1188	0.989999999999999991	1
201	38	1192	0.989999999999999991	1
202	38	1196	0.989999999999999991	1
203	39	1202	0.989999999999999991	1
204	39	1208	0.989999999999999991	1
205	39	1214	0.989999999999999991	1
206	39	1220	0.989999999999999991	1
207	39	1226	0.989999999999999991	1
208	39	1232	0.989999999999999991	1
209	39	1238	0.989999999999999991	1
210	39	1244	0.989999999999999991	1
211	39	1250	0.989999999999999991	1
227	42	1391	0.989999999999999991	1
228	42	1392	0.989999999999999991	1
229	43	1394	0.989999999999999991	1
230	43	1396	0.989999999999999991	1
231	44	1398	0.989999999999999991	1
232	44	1400	0.989999999999999991	1
233	44	1402	0.989999999999999991	1
234	44	1404	0.989999999999999991	1
235	45	1408	0.989999999999999991	1
236	45	1412	0.989999999999999991	1
237	45	1416	0.989999999999999991	1
238	45	1420	0.989999999999999991	1
239	45	1424	0.989999999999999991	1
240	45	1428	0.989999999999999991	1
250	47	1491	0.989999999999999991	1
251	47	1500	0.989999999999999991	1
252	47	1509	0.989999999999999991	1
253	47	1518	0.989999999999999991	1
257	47	1554	0.989999999999999991	1
258	47	1563	0.989999999999999991	1
259	47	1572	0.989999999999999991	1
260	47	1581	0.989999999999999991	1
261	47	1590	0.989999999999999991	1
262	47	1599	0.989999999999999991	1
263	47	1608	0.989999999999999991	1
264	48	1622	0.989999999999999991	1
265	49	1623	0.989999999999999991	1
266	49	1624	0.989999999999999991	1
267	50	1626	0.989999999999999991	1
268	50	1628	0.989999999999999991	1
291	54	1750	0.989999999999999991	1
292	54	1759	0.989999999999999991	1
294	54	1777	0.989999999999999991	1
295	54	1786	0.989999999999999991	1
296	54	1795	0.989999999999999991	1
297	54	1804	0.989999999999999991	1
298	54	1813	0.989999999999999991	1
299	54	1822	0.989999999999999991	1
300	54	1831	0.989999999999999991	1
301	54	1840	0.989999999999999991	1
311	59	1872	0.989999999999999991	1
312	59	1876	0.989999999999999991	1
313	59	1880	0.989999999999999991	1
314	59	1884	0.989999999999999991	1
315	59	1888	0.989999999999999991	1
316	59	1892	0.989999999999999991	1
317	60	1898	0.989999999999999991	1
318	60	1904	0.989999999999999991	1
319	60	1910	0.989999999999999991	1
321	60	1922	0.989999999999999991	1
322	60	1928	0.989999999999999991	1
323	60	1934	0.989999999999999991	1
324	60	1940	0.989999999999999991	1
330	61	1991	0.989999999999999991	1
331	61	2000	0.989999999999999991	1
332	61	2009	0.989999999999999991	1
339	61	2072	0.989999999999999991	1
340	62	2086	0.989999999999999991	1
341	63	2087	0.989999999999999991	1
342	63	2088	0.989999999999999991	1
345	65	2094	0.989999999999999991	1
346	65	2096	0.989999999999999991	1
347	65	2098	0.989999999999999991	1
348	65	2100	0.989999999999999991	1
349	66	2104	0.989999999999999991	1
350	66	2108	0.989999999999999991	1
351	66	2112	0.989999999999999991	1
352	66	2116	0.989999999999999991	1
353	66	2120	0.989999999999999991	1
354	66	2124	0.989999999999999991	1
378	69	2318	0.989999999999999991	1
379	70	2319	0.989999999999999991	1
380	70	2320	0.989999999999999991	1
381	71	2322	0.989999999999999991	1
382	71	2324	0.989999999999999991	1
383	72	2326	0.989999999999999991	1
384	72	2328	0.989999999999999991	1
385	72	2330	0.989999999999999991	1
386	72	2332	0.989999999999999991	1
393	74	2362	0.989999999999999991	1
394	74	2368	0.989999999999999991	1
395	74	2374	0.989999999999999991	1
396	74	2380	0.989999999999999991	1
397	74	2386	0.989999999999999991	1
398	74	2392	0.989999999999999991	1
399	74	2398	0.989999999999999991	1
400	74	2404	0.989999999999999991	1
401	74	2410	0.989999999999999991	1
431	81	2594	0.989999999999999991	1
432	81	2600	0.989999999999999991	1
433	81	2606	0.989999999999999991	1
434	81	2612	0.989999999999999991	1
435	81	2618	0.989999999999999991	1
436	81	2624	0.989999999999999991	1
437	81	2630	0.989999999999999991	1
438	81	2636	0.989999999999999991	1
439	81	2642	0.989999999999999991	1
440	82	2651	0.989999999999999991	1
441	82	2660	0.989999999999999991	1
442	82	2669	0.989999999999999991	1
443	82	2678	0.989999999999999991	1
444	82	2687	0.989999999999999991	1
445	82	2696	0.989999999999999991	1
446	82	2705	0.989999999999999991	1
447	82	2714	0.989999999999999991	1
448	82	2723	0.989999999999999991	1
449	82	2732	0.989999999999999991	1
450	82	2741	0.989999999999999991	1
451	82	2750	0.989999999999999991	1
468	87	2820	1.98999999999999999	1
469	88	2826	1.98999999999999999	1
470	88	2832	1.98999999999999999	1
471	88	2838	1.98999999999999999	1
472	88	2844	1.98999999999999999	1
473	88	2850	1.98999999999999999	1
474	88	2856	1.98999999999999999	1
475	88	2862	1.98999999999999999	1
476	88	2868	1.98999999999999999	1
477	88	2874	1.98999999999999999	1
492	90	3014	0.989999999999999991	1
493	91	3015	0.989999999999999991	1
494	91	3016	0.989999999999999991	1
495	92	3018	0.989999999999999991	1
496	92	3020	0.989999999999999991	1
497	93	3022	0.989999999999999991	1
498	93	3024	0.989999999999999991	1
499	93	3026	0.989999999999999991	1
500	93	3028	0.989999999999999991	1
501	94	3032	0.989999999999999991	1
502	94	3036	0.989999999999999991	1
503	94	3040	0.989999999999999991	1
504	94	3044	0.989999999999999991	1
505	94	3048	0.989999999999999991	1
506	94	3052	0.989999999999999991	1
530	97	3246	1.98999999999999999	1
545	102	3290	0.989999999999999991	1
546	102	3296	0.989999999999999991	1
547	102	3302	0.989999999999999991	1
548	102	3308	0.989999999999999991	1
549	102	3314	0.989999999999999991	1
550	102	3320	0.989999999999999991	1
551	102	3326	0.989999999999999991	1
552	102	3332	0.989999999999999991	1
553	102	3338	1.98999999999999999	1
554	103	3347	1.98999999999999999	1
555	103	3356	0.989999999999999991	1
556	103	3365	0.989999999999999991	1
557	103	3374	0.989999999999999991	1
558	103	3383	0.989999999999999991	1
559	103	3392	0.989999999999999991	1
560	103	3401	0.989999999999999991	1
561	103	3410	0.989999999999999991	1
563	103	3428	1.98999999999999999	1
564	103	3437	0.989999999999999991	1
565	103	3446	0.989999999999999991	1
566	103	3455	0.989999999999999991	1
567	103	3464	0.989999999999999991	1
569	105	3479	0.989999999999999991	1
571	106	3482	0.989999999999999991	1
572	106	3484	0.989999999999999991	1
573	107	3486	0.989999999999999991	1
574	107	3488	0.989999999999999991	1
575	107	3490	0.989999999999999991	1
576	107	3492	0.989999999999999991	1
578	108	3500	0.989999999999999991	1
579	108	1	0.989999999999999991	1
580	108	5	0.989999999999999991	1
581	108	9	0.989999999999999991	1
582	108	13	0.989999999999999991	1
583	109	19	0.989999999999999991	1
584	109	25	0.989999999999999991	1
585	109	31	0.989999999999999991	1
586	109	37	0.989999999999999991	1
587	109	43	0.989999999999999991	1
588	109	49	0.989999999999999991	1
589	109	55	0.989999999999999991	1
590	109	61	0.989999999999999991	1
607	112	208	0.989999999999999991	1
608	112	209	0.989999999999999991	1
609	113	211	0.989999999999999991	1
610	113	213	0.989999999999999991	1
611	114	215	0.989999999999999991	1
613	114	219	0.989999999999999991	1
616	115	229	0.989999999999999991	1
618	115	237	0.989999999999999991	1
619	115	241	0.989999999999999991	1
630	117	308	0.989999999999999991	1
634	117	344	0.989999999999999991	1
635	117	353	0.989999999999999991	1
636	117	362	0.989999999999999991	1
637	117	371	0.989999999999999991	1
642	117	416	0.989999999999999991	1
643	117	425	0.989999999999999991	1
644	118	439	0.989999999999999991	1
647	120	443	0.989999999999999991	1
648	120	445	0.989999999999999991	1
669	124	549	0.989999999999999991	1
670	124	558	0.989999999999999991	1
672	124	576	0.989999999999999991	1
674	124	594	0.989999999999999991	1
675	124	603	0.989999999999999991	1
676	124	612	0.989999999999999991	1
677	124	621	0.989999999999999991	1
678	124	630	0.989999999999999991	1
679	124	639	0.989999999999999991	1
687	128	679	0.989999999999999991	1
688	128	681	0.989999999999999991	1
689	128	683	0.989999999999999991	1
690	128	685	0.989999999999999991	1
691	129	689	0.989999999999999991	1
692	129	693	0.989999999999999991	1
693	129	697	0.989999999999999991	1
694	129	701	0.989999999999999991	1
695	129	705	0.989999999999999991	1
696	129	709	0.989999999999999991	1
706	131	772	0.989999999999999991	1
707	131	781	0.989999999999999991	1
708	131	790	0.989999999999999991	1
709	131	799	0.989999999999999991	1
710	131	808	0.989999999999999991	1
711	131	817	0.989999999999999991	1
712	131	826	0.989999999999999991	1
713	131	835	0.989999999999999991	1
714	131	844	0.989999999999999991	1
715	131	853	0.989999999999999991	1
716	131	862	0.989999999999999991	1
717	131	871	0.989999999999999991	1
721	133	904	0.989999999999999991	1
722	133	905	0.989999999999999991	1
723	134	907	0.989999999999999991	1
724	134	909	0.989999999999999991	1
725	135	911	0.989999999999999991	1
726	135	913	0.989999999999999991	1
727	135	915	0.989999999999999991	1
728	135	917	0.989999999999999991	1
729	136	921	0.989999999999999991	1
730	136	925	0.989999999999999991	1
731	136	929	0.989999999999999991	1
732	136	933	0.989999999999999991	1
733	136	937	0.989999999999999991	1
734	136	941	0.989999999999999991	1
735	137	947	0.989999999999999991	1
736	137	953	0.989999999999999991	1
737	137	959	0.989999999999999991	1
738	137	965	0.989999999999999991	1
739	137	971	0.989999999999999991	1
740	137	977	0.989999999999999991	1
741	137	983	0.989999999999999991	1
742	137	989	0.989999999999999991	1
743	137	995	0.989999999999999991	1
760	140	1137	0.989999999999999991	1
761	141	1139	0.989999999999999991	1
762	141	1141	0.989999999999999991	1
782	145	1236	0.989999999999999991	1
783	145	1245	0.989999999999999991	1
784	145	1254	0.989999999999999991	1
785	145	1263	0.989999999999999991	1
786	145	1272	0.989999999999999991	1
787	145	1281	0.989999999999999991	1
788	145	1290	0.989999999999999991	1
789	145	1299	0.989999999999999991	1
790	145	1308	0.989999999999999991	1
791	145	1317	0.989999999999999991	1
792	145	1326	0.989999999999999991	1
793	145	1335	0.989999999999999991	1
794	145	1344	0.989999999999999991	1
795	145	1353	0.989999999999999991	1
796	146	1367	0.989999999999999991	1
797	147	1368	0.989999999999999991	1
798	147	1369	0.989999999999999991	1
799	148	1371	0.989999999999999991	1
800	148	1373	0.989999999999999991	1
805	150	1385	0.989999999999999991	1
806	150	1389	0.989999999999999991	1
807	150	1393	0.989999999999999991	1
808	150	1397	0.989999999999999991	1
809	150	1401	0.989999999999999991	1
810	150	1405	0.989999999999999991	1
820	152	1468	0.989999999999999991	1
821	152	1477	0.989999999999999991	1
822	152	1486	0.989999999999999991	1
823	152	1495	0.989999999999999991	1
824	152	1504	0.989999999999999991	1
825	152	1513	0.989999999999999991	1
826	152	1522	0.989999999999999991	1
827	152	1531	0.989999999999999991	1
829	152	1549	0.989999999999999991	1
830	152	1558	0.989999999999999991	1
831	152	1567	0.989999999999999991	1
832	152	1576	0.989999999999999991	1
833	152	1585	0.989999999999999991	1
839	156	1607	0.989999999999999991	1
840	156	1609	0.989999999999999991	1
841	156	1611	0.989999999999999991	1
842	156	1613	0.989999999999999991	1
843	157	1617	0.989999999999999991	1
844	157	1621	0.989999999999999991	1
845	157	1625	0.989999999999999991	1
846	157	1629	0.989999999999999991	1
847	157	1633	0.989999999999999991	1
848	157	1637	0.989999999999999991	1
849	158	1643	0.989999999999999991	1
850	158	1649	0.989999999999999991	1
851	158	1655	0.989999999999999991	1
852	158	1661	0.989999999999999991	1
853	158	1667	0.989999999999999991	1
859	159	1709	0.989999999999999991	1
863	159	1745	0.989999999999999991	1
864	159	1754	0.989999999999999991	1
865	159	1763	0.989999999999999991	1
866	159	1772	0.989999999999999991	1
867	159	1781	0.989999999999999991	1
868	159	1790	0.989999999999999991	1
869	159	1799	0.989999999999999991	1
870	159	1808	0.989999999999999991	1
871	159	1817	0.989999999999999991	1
872	160	1831	0.989999999999999991	1
873	161	1832	0.989999999999999991	1
874	161	1833	0.989999999999999991	1
877	163	1839	0.989999999999999991	1
878	163	1841	0.989999999999999991	1
879	163	1843	0.989999999999999991	1
880	163	1845	0.989999999999999991	1
912	168	2065	0.989999999999999991	1
913	169	2067	0.989999999999999991	1
914	169	2069	0.989999999999999991	1
915	170	2071	0.989999999999999991	1
916	170	2073	0.989999999999999991	1
917	170	2075	0.989999999999999991	1
925	172	2107	0.989999999999999991	1
926	172	2113	0.989999999999999991	1
927	172	2119	0.989999999999999991	1
928	172	2125	0.989999999999999991	1
929	172	2131	0.989999999999999991	1
930	172	2137	0.989999999999999991	1
931	172	2143	0.989999999999999991	1
932	172	2149	0.989999999999999991	1
933	172	2155	0.989999999999999991	1
957	178	2313	0.989999999999999991	1
958	178	2317	0.989999999999999991	1
959	178	2321	0.989999999999999991	1
960	178	2325	0.989999999999999991	1
961	178	2329	0.989999999999999991	1
962	178	2333	0.989999999999999991	1
964	179	2345	0.989999999999999991	1
965	179	2351	0.989999999999999991	1
966	179	2357	0.989999999999999991	1
967	179	2363	0.989999999999999991	1
968	179	2369	0.989999999999999991	1
969	179	2375	0.989999999999999991	1
970	179	2381	0.989999999999999991	1
971	179	2387	0.989999999999999991	1
972	180	2396	0.989999999999999991	1
973	180	2405	0.989999999999999991	1
974	180	2414	0.989999999999999991	1
975	180	2423	0.989999999999999991	1
976	180	2432	0.989999999999999991	1
977	180	2441	0.989999999999999991	1
979	180	2459	0.989999999999999991	1
981	180	2477	0.989999999999999991	1
982	180	2486	0.989999999999999991	1
983	180	2495	0.989999999999999991	1
984	180	2504	0.989999999999999991	1
985	180	2513	0.989999999999999991	1
986	181	2527	0.989999999999999991	1
989	183	2531	0.989999999999999991	1
990	183	2533	0.989999999999999991	1
991	184	2535	0.989999999999999991	1
992	184	2537	0.989999999999999991	1
993	184	2539	0.989999999999999991	1
994	184	2541	0.989999999999999991	1
995	185	2545	0.989999999999999991	1
996	185	2549	0.989999999999999991	1
997	185	2553	0.989999999999999991	1
998	185	2557	0.989999999999999991	1
999	185	2561	0.989999999999999991	1
1000	185	2565	0.989999999999999991	1
1001	186	2571	0.989999999999999991	1
1002	186	2577	0.989999999999999991	1
1003	186	2583	0.989999999999999991	1
1004	186	2589	0.989999999999999991	1
1005	186	2595	0.989999999999999991	1
1006	186	2601	0.989999999999999991	1
1007	186	2607	0.989999999999999991	1
1008	186	2613	0.989999999999999991	1
1009	186	2619	0.989999999999999991	1
1027	190	2763	0.989999999999999991	1
1031	191	2771	0.989999999999999991	1
1048	194	2860	1.98999999999999999	1
1049	194	2869	1.98999999999999999	1
1050	194	2878	1.98999999999999999	1
1051	194	2887	1.98999999999999999	1
1052	194	2896	1.98999999999999999	1
1053	194	2905	1.98999999999999999	1
1054	194	2914	1.98999999999999999	1
1055	194	2923	1.98999999999999999	1
1056	194	2932	0.989999999999999991	1
1057	194	2941	0.989999999999999991	1
1058	194	2950	0.989999999999999991	1
1059	194	2959	0.989999999999999991	1
1060	194	2968	0.989999999999999991	1
1061	194	2977	0.989999999999999991	1
1077	200	3035	0.989999999999999991	1
1078	200	3041	0.989999999999999991	1
1079	200	3047	0.989999999999999991	1
1080	200	3053	0.989999999999999991	1
1081	200	3059	0.989999999999999991	1
1082	200	3065	0.989999999999999991	1
1083	200	3071	0.989999999999999991	1
1084	200	3077	0.989999999999999991	1
1085	200	3083	0.989999999999999991	1
1086	201	3092	0.989999999999999991	1
1087	201	3101	0.989999999999999991	1
1088	201	3110	0.989999999999999991	1
1091	201	3137	0.989999999999999991	1
1093	201	3155	0.989999999999999991	1
1094	201	3164	0.989999999999999991	1
1095	201	3173	1.98999999999999999	1
1096	201	3182	1.98999999999999999	1
1097	201	3191	1.98999999999999999	1
1098	201	3200	1.98999999999999999	1
1099	201	3209	1.98999999999999999	1
1100	202	3223	1.98999999999999999	1
1101	203	3224	1.98999999999999999	1
1102	203	3225	0.989999999999999991	1
1103	204	3227	1.98999999999999999	1
1104	204	3229	1.98999999999999999	1
1109	206	3241	1.98999999999999999	1
1110	206	3245	1.98999999999999999	1
1111	206	3249	1.98999999999999999	1
1112	206	3253	0.989999999999999991	1
1113	206	3257	0.989999999999999991	1
1114	206	3261	0.989999999999999991	1
1115	207	3267	0.989999999999999991	1
1116	207	3273	0.989999999999999991	1
1117	207	3279	0.989999999999999991	1
1118	207	3285	0.989999999999999991	1
1119	207	3291	0.989999999999999991	1
1120	207	3297	0.989999999999999991	1
1121	207	3303	0.989999999999999991	1
1122	207	3309	0.989999999999999991	1
1123	207	3315	0.989999999999999991	1
1138	209	3455	0.989999999999999991	1
1139	210	3456	0.989999999999999991	1
1140	210	3457	0.989999999999999991	1
1141	211	3459	0.989999999999999991	1
1142	211	3461	0.989999999999999991	1
1143	212	3463	0.989999999999999991	1
1144	212	3465	0.989999999999999991	1
1145	212	3467	0.989999999999999991	1
1146	212	3469	0.989999999999999991	1
1147	213	3473	0.989999999999999991	1
1148	213	3477	0.989999999999999991	1
1149	213	3481	0.989999999999999991	1
1152	213	3493	0.989999999999999991	1
1153	214	3499	0.989999999999999991	1
1154	214	2	0.989999999999999991	1
1155	214	8	0.989999999999999991	1
1156	214	14	0.989999999999999991	1
1157	214	20	0.989999999999999991	1
1158	214	26	0.989999999999999991	1
1159	214	32	0.989999999999999991	1
1160	214	38	0.989999999999999991	1
1161	214	44	0.989999999999999991	1
1162	215	53	0.989999999999999991	1
1163	215	62	0.989999999999999991	1
1165	215	80	0.989999999999999991	1
1166	215	89	0.989999999999999991	1
1167	215	98	0.989999999999999991	1
1168	215	107	0.989999999999999991	1
1169	215	116	0.989999999999999991	1
1170	215	125	0.989999999999999991	1
1171	215	134	0.989999999999999991	1
1172	215	143	0.989999999999999991	1
1173	215	152	0.989999999999999991	1
1174	215	161	0.989999999999999991	1
1175	215	170	0.989999999999999991	1
1177	217	185	0.989999999999999991	1
1178	217	186	0.989999999999999991	1
1179	218	188	0.989999999999999991	1
1180	218	190	0.989999999999999991	1
1202	222	303	0.989999999999999991	1
1206	222	339	0.989999999999999991	1
1207	222	348	0.989999999999999991	1
1208	222	357	0.989999999999999991	1
1209	222	366	0.989999999999999991	1
1210	222	375	0.989999999999999991	1
1219	226	424	0.989999999999999991	1
1220	226	426	0.989999999999999991	1
1221	226	428	0.989999999999999991	1
1222	226	430	0.989999999999999991	1
1238	229	517	0.989999999999999991	1
1239	229	526	0.989999999999999991	1
1241	229	544	0.989999999999999991	1
1242	229	553	0.989999999999999991	1
1244	229	571	0.989999999999999991	1
1245	229	580	0.989999999999999991	1
1246	229	589	0.989999999999999991	1
1247	229	598	0.989999999999999991	1
1248	229	607	0.989999999999999991	1
1249	229	616	0.989999999999999991	1
1250	229	625	0.989999999999999991	1
1251	229	634	0.989999999999999991	1
1262	234	670	0.989999999999999991	1
1264	234	678	0.989999999999999991	1
1265	234	682	0.989999999999999991	1
1266	234	686	0.989999999999999991	1
1267	235	692	0.989999999999999991	1
1268	235	698	0.989999999999999991	1
1269	235	704	0.989999999999999991	1
1270	235	710	0.989999999999999991	1
1297	240	892	0.989999999999999991	1
1298	240	894	0.989999999999999991	1
1314	243	981	0.989999999999999991	1
1315	243	990	0.989999999999999991	1
1316	243	999	0.989999999999999991	1
1317	243	1008	0.989999999999999991	1
1318	243	1017	0.989999999999999991	1
1319	243	1026	0.989999999999999991	1
1320	243	1035	0.989999999999999991	1
1321	243	1044	0.989999999999999991	1
1322	243	1053	0.989999999999999991	1
1324	243	1071	0.989999999999999991	1
1326	243	1089	0.989999999999999991	1
1327	243	1098	0.989999999999999991	1
1328	244	1112	0.989999999999999991	1
1329	245	1113	0.989999999999999991	1
1337	248	1130	0.989999999999999991	1
1338	248	1134	0.989999999999999991	1
1339	248	1138	0.989999999999999991	1
1340	248	1142	0.989999999999999991	1
1341	248	1146	0.989999999999999991	1
1342	248	1150	0.989999999999999991	1
1343	249	1156	0.989999999999999991	1
1344	249	1162	0.989999999999999991	1
1345	249	1168	0.989999999999999991	1
1346	249	1174	0.989999999999999991	1
1347	249	1180	0.989999999999999991	1
1348	249	1186	0.989999999999999991	1
1349	249	1192	0.989999999999999991	1
1350	249	1198	0.989999999999999991	1
1351	249	1204	0.989999999999999991	1
1352	250	1213	0.989999999999999991	1
1353	250	1222	0.989999999999999991	1
1354	250	1231	0.989999999999999991	1
1355	250	1240	0.989999999999999991	1
1356	250	1249	0.989999999999999991	1
1357	250	1258	0.989999999999999991	1
1358	250	1267	0.989999999999999991	1
1359	250	1276	0.989999999999999991	1
1360	250	1285	0.989999999999999991	1
1361	250	1294	0.989999999999999991	1
1362	250	1303	0.989999999999999991	1
1363	250	1312	0.989999999999999991	1
1364	250	1321	0.989999999999999991	1
1365	250	1330	0.989999999999999991	1
1371	254	1352	0.989999999999999991	1
1372	254	1354	0.989999999999999991	1
1373	254	1356	0.989999999999999991	1
1374	254	1358	0.989999999999999991	1
1375	255	1362	0.989999999999999991	1
1376	255	1366	0.989999999999999991	1
1377	255	1370	0.989999999999999991	1
1378	255	1374	0.989999999999999991	1
1379	255	1378	0.989999999999999991	1
1380	255	1382	0.989999999999999991	1
1381	256	1388	0.989999999999999991	1
1382	256	1394	0.989999999999999991	1
1383	256	1400	0.989999999999999991	1
1384	256	1406	0.989999999999999991	1
1385	256	1412	0.989999999999999991	1
1386	256	1418	0.989999999999999991	1
1387	256	1424	0.989999999999999991	1
1388	256	1430	0.989999999999999991	1
1389	256	1436	0.989999999999999991	1
1404	258	1576	0.989999999999999991	1
1407	260	1580	0.989999999999999991	1
1408	260	1582	0.989999999999999991	1
1409	261	1584	0.989999999999999991	1
1410	261	1586	0.989999999999999991	1
1411	261	1588	0.989999999999999991	1
1412	261	1590	0.989999999999999991	1
1413	262	1594	0.989999999999999991	1
1414	262	1598	0.989999999999999991	1
1415	262	1602	0.989999999999999991	1
1416	262	1606	0.989999999999999991	1
1417	262	1610	0.989999999999999991	1
1418	262	1614	0.989999999999999991	1
1442	265	1808	0.989999999999999991	1
1443	266	1809	0.989999999999999991	1
1444	266	1810	0.989999999999999991	1
1445	267	1812	0.989999999999999991	1
1446	267	1814	0.989999999999999991	1
1447	268	1816	0.989999999999999991	1
1448	268	1818	0.989999999999999991	1
1449	268	1820	0.989999999999999991	1
1450	268	1822	0.989999999999999991	1
1457	270	1852	0.989999999999999991	1
1458	270	1858	0.989999999999999991	1
1459	270	1864	0.989999999999999991	1
1460	270	1870	0.989999999999999991	1
1461	270	1876	0.989999999999999991	1
1462	270	1882	0.989999999999999991	1
1463	270	1888	0.989999999999999991	1
1464	270	1894	0.989999999999999991	1
1465	270	1900	0.989999999999999991	1
1466	271	1909	0.989999999999999991	1
1469	271	1936	0.989999999999999991	1
1475	271	1990	0.989999999999999991	1
1476	271	1999	0.989999999999999991	1
1477	271	2008	0.989999999999999991	1
1492	276	2070	0.989999999999999991	1
1493	276	2074	0.989999999999999991	1
1495	277	2084	0.989999999999999991	1
1496	277	2090	0.989999999999999991	1
1497	277	2096	0.989999999999999991	1
1498	277	2102	0.989999999999999991	1
1499	277	2108	0.989999999999999991	1
1500	277	2114	0.989999999999999991	1
1501	277	2120	0.989999999999999991	1
1502	277	2126	0.989999999999999991	1
1503	277	2132	0.989999999999999991	1
1504	278	2141	0.989999999999999991	1
1505	278	2150	0.989999999999999991	1
1506	278	2159	0.989999999999999991	1
1507	278	2168	0.989999999999999991	1
1508	278	2177	0.989999999999999991	1
1509	278	2186	0.989999999999999991	1
1510	278	2195	0.989999999999999991	1
1511	278	2204	0.989999999999999991	1
1512	278	2213	0.989999999999999991	1
1513	278	2222	0.989999999999999991	1
1514	278	2231	0.989999999999999991	1
1517	278	2258	0.989999999999999991	1
1521	281	2276	0.989999999999999991	1
1522	281	2278	0.989999999999999991	1
1527	283	2290	0.989999999999999991	1
1528	283	2294	0.989999999999999991	1
1529	283	2298	0.989999999999999991	1
1530	283	2302	0.989999999999999991	1
1531	283	2306	0.989999999999999991	1
1532	283	2310	0.989999999999999991	1
1533	284	2316	0.989999999999999991	1
1534	284	2322	0.989999999999999991	1
1535	284	2328	0.989999999999999991	1
1538	284	2346	0.989999999999999991	1
1540	284	2358	0.989999999999999991	1
1541	284	2364	0.989999999999999991	1
1556	286	2504	0.989999999999999991	1
1557	287	2505	0.989999999999999991	1
1558	287	2506	0.989999999999999991	1
1559	288	2508	0.989999999999999991	1
1560	288	2510	0.989999999999999991	1
1561	289	2512	0.989999999999999991	1
1562	289	2514	0.989999999999999991	1
1563	289	2516	0.989999999999999991	1
1564	289	2518	0.989999999999999991	1
1565	290	2522	0.989999999999999991	1
1566	290	2526	0.989999999999999991	1
1567	290	2530	0.989999999999999991	1
1568	290	2534	0.989999999999999991	1
1569	290	2538	0.989999999999999991	1
1570	290	2542	0.989999999999999991	1
1580	292	2605	0.989999999999999991	1
1581	292	2614	0.989999999999999991	1
1582	292	2623	0.989999999999999991	1
1583	292	2632	0.989999999999999991	1
1584	292	2641	0.989999999999999991	1
1585	292	2650	0.989999999999999991	1
1586	292	2659	0.989999999999999991	1
1587	292	2668	0.989999999999999991	1
1588	292	2677	0.989999999999999991	1
1589	292	2686	0.989999999999999991	1
1590	292	2695	0.989999999999999991	1
1591	292	2704	0.989999999999999991	1
1592	292	2713	0.989999999999999991	1
1593	292	2722	0.989999999999999991	1
1609	298	2780	0.989999999999999991	1
1616	298	2822	1.98999999999999999	1
1617	298	2828	1.98999999999999999	1
1618	299	2837	1.98999999999999999	1
1619	299	2846	1.98999999999999999	1
1620	299	2855	1.98999999999999999	1
1621	299	2864	1.98999999999999999	1
1622	299	2873	1.98999999999999999	1
1623	299	2882	1.98999999999999999	1
1624	299	2891	1.98999999999999999	1
1626	299	2909	1.98999999999999999	1
1627	299	2918	1.98999999999999999	1
1628	299	2927	0.989999999999999991	1
1629	299	2936	0.989999999999999991	1
1630	299	2945	0.989999999999999991	1
1631	299	2954	0.989999999999999991	1
1632	300	2968	0.989999999999999991	1
1633	301	2969	0.989999999999999991	1
1634	301	2970	0.989999999999999991	1
1635	302	2972	0.989999999999999991	1
1636	302	2974	0.989999999999999991	1
1647	305	3012	0.989999999999999991	1
1648	305	3018	0.989999999999999991	1
1649	305	3024	0.989999999999999991	1
1650	305	3030	0.989999999999999991	1
1651	305	3036	0.989999999999999991	1
1652	305	3042	0.989999999999999991	1
1653	305	3048	0.989999999999999991	1
1654	305	3054	0.989999999999999991	1
1655	305	3060	0.989999999999999991	1
1670	307	3200	1.98999999999999999	1
1671	308	3201	1.98999999999999999	1
1672	308	3202	1.98999999999999999	1
1673	309	3204	1.98999999999999999	1
1674	309	3206	1.98999999999999999	1
1675	310	3208	1.98999999999999999	1
1676	310	3210	1.98999999999999999	1
1677	310	3212	1.98999999999999999	1
1678	310	3214	1.98999999999999999	1
1679	311	3218	1.98999999999999999	1
1680	311	3222	1.98999999999999999	1
1681	311	3226	1.98999999999999999	1
1682	311	3230	1.98999999999999999	1
1683	311	3234	1.98999999999999999	1
1684	311	3238	1.98999999999999999	1
1694	313	3301	0.989999999999999991	1
1695	313	3310	0.989999999999999991	1
1696	313	3319	0.989999999999999991	1
1697	313	3328	0.989999999999999991	1
1698	313	3337	1.98999999999999999	1
1699	313	3346	1.98999999999999999	1
1700	313	3355	0.989999999999999991	1
1701	313	3364	1.98999999999999999	1
1702	313	3373	0.989999999999999991	1
1703	313	3382	0.989999999999999991	1
1704	313	3391	0.989999999999999991	1
1705	313	3400	0.989999999999999991	1
1708	314	3432	0.989999999999999991	1
1709	315	3433	0.989999999999999991	1
1732	320	30	0.989999999999999991	1
1733	320	39	0.989999999999999991	1
1734	320	48	0.989999999999999991	1
1735	320	57	0.989999999999999991	1
1738	320	84	0.989999999999999991	1
1739	320	93	0.989999999999999991	1
1740	320	102	0.989999999999999991	1
1741	320	111	0.989999999999999991	1
1742	320	120	0.989999999999999991	1
1743	320	129	0.989999999999999991	1
1744	320	138	0.989999999999999991	1
1745	320	147	0.989999999999999991	1
1749	323	165	0.989999999999999991	1
1750	323	167	0.989999999999999991	1
1751	324	169	0.989999999999999991	1
1752	324	171	0.989999999999999991	1
1753	324	173	0.989999999999999991	1
1754	324	175	0.989999999999999991	1
1762	326	211	0.989999999999999991	1
1764	326	223	0.989999999999999991	1
1765	326	229	0.989999999999999991	1
1767	326	241	0.989999999999999991	1
1793	332	411	0.989999999999999991	1
1794	332	415	0.989999999999999991	1
1795	332	419	0.989999999999999991	1
1796	332	423	0.989999999999999991	1
1797	332	427	0.989999999999999991	1
1798	332	431	0.989999999999999991	1
1799	333	437	0.989999999999999991	1
1800	333	443	0.989999999999999991	1
1801	333	449	0.989999999999999991	1
1802	333	455	0.989999999999999991	1
1803	333	461	0.989999999999999991	1
1804	333	467	0.989999999999999991	1
1805	333	473	0.989999999999999991	1
1806	333	479	0.989999999999999991	1
1807	333	485	0.989999999999999991	1
1808	334	494	0.989999999999999991	1
1810	334	512	0.989999999999999991	1
1811	334	521	0.989999999999999991	1
1814	334	548	0.989999999999999991	1
1815	334	557	0.989999999999999991	1
1816	334	566	0.989999999999999991	1
1817	334	575	0.989999999999999991	1
1818	334	584	0.989999999999999991	1
1819	334	593	0.989999999999999991	1
1820	334	602	0.989999999999999991	1
1821	334	611	0.989999999999999991	1
1822	335	625	0.989999999999999991	1
1823	336	626	0.989999999999999991	1
1824	336	627	0.989999999999999991	1
1827	338	633	0.989999999999999991	1
1828	338	635	0.989999999999999991	1
1829	338	637	0.989999999999999991	1
1830	338	639	0.989999999999999991	1
1849	341	753	0.989999999999999991	1
1850	341	762	0.989999999999999991	1
1851	341	771	0.989999999999999991	1
1852	341	780	0.989999999999999991	1
1853	341	789	0.989999999999999991	1
1854	341	798	0.989999999999999991	1
1855	341	807	0.989999999999999991	1
1856	341	816	0.989999999999999991	1
1857	341	825	0.989999999999999991	1
1858	341	834	0.989999999999999991	1
1859	341	843	0.989999999999999991	1
1861	343	858	0.989999999999999991	1
1862	343	859	0.989999999999999991	1
1869	346	875	0.989999999999999991	1
1873	346	891	0.989999999999999991	1
1874	346	895	0.989999999999999991	1
1875	347	901	0.989999999999999991	1
1876	347	907	0.989999999999999991	1
1877	347	913	0.989999999999999991	1
1878	347	919	0.989999999999999991	1
1879	347	925	0.989999999999999991	1
1880	347	931	0.989999999999999991	1
1881	347	937	0.989999999999999991	1
1882	347	943	0.989999999999999991	1
1883	347	949	0.989999999999999991	1
1901	351	1093	0.989999999999999991	1
1902	351	1095	0.989999999999999991	1
1904	352	1099	0.989999999999999991	1
1905	352	1101	0.989999999999999991	1
1907	353	1107	0.989999999999999991	1
1908	353	1111	0.989999999999999991	1
1909	353	1115	0.989999999999999991	1
1910	353	1119	0.989999999999999991	1
1911	353	1123	0.989999999999999991	1
1912	353	1127	0.989999999999999991	1
1914	354	1139	0.989999999999999991	1
1915	354	1145	0.989999999999999991	1
1916	354	1151	0.989999999999999991	1
1917	354	1157	0.989999999999999991	1
1918	354	1163	0.989999999999999991	1
1919	354	1169	0.989999999999999991	1
1920	354	1175	0.989999999999999991	1
1921	354	1181	0.989999999999999991	1
1939	358	1325	0.989999999999999991	1
1940	358	1327	0.989999999999999991	1
1941	359	1329	0.989999999999999991	1
1942	359	1331	0.989999999999999991	1
1943	359	1333	0.989999999999999991	1
1944	359	1335	0.989999999999999991	1
1945	360	1339	0.989999999999999991	1
1946	360	1343	0.989999999999999991	1
1947	360	1347	0.989999999999999991	1
1948	360	1351	0.989999999999999991	1
1949	360	1355	0.989999999999999991	1
1950	360	1359	0.989999999999999991	1
1960	362	1422	0.989999999999999991	1
1961	362	1431	0.989999999999999991	1
1962	362	1440	0.989999999999999991	1
1963	362	1449	0.989999999999999991	1
1964	362	1458	0.989999999999999991	1
1965	362	1467	0.989999999999999991	1
1966	362	1476	0.989999999999999991	1
1967	362	1485	0.989999999999999991	1
1968	362	1494	0.989999999999999991	1
1969	362	1503	0.989999999999999991	1
1971	362	1521	0.989999999999999991	1
1972	362	1530	0.989999999999999991	1
1974	363	1553	0.989999999999999991	1
1975	364	1554	0.989999999999999991	1
1976	364	1555	0.989999999999999991	1
1977	365	1557	0.989999999999999991	1
1978	365	1559	0.989999999999999991	1
1979	366	1561	0.989999999999999991	1
1980	366	1563	0.989999999999999991	1
1981	366	1565	0.989999999999999991	1
1982	366	1567	0.989999999999999991	1
1989	368	1597	0.989999999999999991	1
1990	368	1603	0.989999999999999991	1
1991	368	1609	0.989999999999999991	1
1992	368	1615	0.989999999999999991	1
1993	368	1621	0.989999999999999991	1
1994	368	1627	0.989999999999999991	1
1995	368	1633	0.989999999999999991	1
1996	368	1639	0.989999999999999991	1
1997	368	1645	0.989999999999999991	1
1998	369	1654	0.989999999999999991	1
1999	369	1663	0.989999999999999991	1
2004	369	1708	0.989999999999999991	1
2009	369	1753	0.989999999999999991	1
2010	369	1762	0.989999999999999991	1
2011	369	1771	0.989999999999999991	1
2021	374	1803	0.989999999999999991	1
2022	374	1807	0.989999999999999991	1
2023	374	1811	0.989999999999999991	1
2024	374	1815	0.989999999999999991	1
2025	374	1819	0.989999999999999991	1
2026	374	1823	0.989999999999999991	1
2027	375	1829	0.989999999999999991	1
2028	375	1835	0.989999999999999991	1
2029	375	1841	0.989999999999999991	1
2030	375	1847	0.989999999999999991	1
2031	375	1853	0.989999999999999991	1
2032	375	1859	0.989999999999999991	1
2033	375	1865	0.989999999999999991	1
2034	375	1871	0.989999999999999991	1
2035	375	1877	0.989999999999999991	1
2036	376	1886	0.989999999999999991	1
2037	376	1895	0.989999999999999991	1
2038	376	1904	0.989999999999999991	1
2039	376	1913	0.989999999999999991	1
2040	376	1922	0.989999999999999991	1
2041	376	1931	0.989999999999999991	1
2042	376	1940	0.989999999999999991	1
2048	376	1994	0.989999999999999991	1
2049	376	2003	0.989999999999999991	1
2059	381	2035	0.989999999999999991	1
2060	381	2039	0.989999999999999991	1
2061	381	2043	0.989999999999999991	1
2092	386	2255	0.989999999999999991	1
2093	387	2257	0.989999999999999991	1
2094	387	2259	0.989999999999999991	1
2095	387	2261	0.989999999999999991	1
2096	387	2263	0.989999999999999991	1
2097	388	2267	0.989999999999999991	1
2098	388	2271	0.989999999999999991	1
2099	388	2275	0.989999999999999991	1
2100	388	2279	0.989999999999999991	1
2101	388	2283	0.989999999999999991	1
2102	388	2287	0.989999999999999991	1
2103	389	2293	0.989999999999999991	1
2104	389	2299	0.989999999999999991	1
2105	389	2305	0.989999999999999991	1
2106	389	2311	0.989999999999999991	1
2107	389	2317	0.989999999999999991	1
2108	389	2323	0.989999999999999991	1
2109	389	2329	0.989999999999999991	1
2112	390	2350	0.989999999999999991	1
2113	390	2359	0.989999999999999991	1
2114	390	2368	0.989999999999999991	1
2115	390	2377	0.989999999999999991	1
2116	390	2386	0.989999999999999991	1
2117	390	2395	0.989999999999999991	1
2118	390	2404	0.989999999999999991	1
2119	390	2413	0.989999999999999991	1
2120	390	2422	0.989999999999999991	1
2121	390	2431	0.989999999999999991	1
2122	390	2440	0.989999999999999991	1
2124	390	2458	0.989999999999999991	1
2141	396	2525	0.989999999999999991	1
2142	396	2531	0.989999999999999991	1
2143	396	2537	0.989999999999999991	1
2144	396	2543	0.989999999999999991	1
2145	396	2549	0.989999999999999991	1
2146	396	2555	0.989999999999999991	1
2147	396	2561	0.989999999999999991	1
2148	396	2567	0.989999999999999991	1
2149	396	2573	0.989999999999999991	1
2150	397	2582	0.989999999999999991	1
2151	397	2591	0.989999999999999991	1
2152	397	2600	0.989999999999999991	1
2153	397	2609	0.989999999999999991	1
2154	397	2618	0.989999999999999991	1
2155	397	2627	0.989999999999999991	1
2156	397	2636	0.989999999999999991	1
2157	397	2645	0.989999999999999991	1
2158	397	2654	0.989999999999999991	1
2159	397	2663	0.989999999999999991	1
2160	397	2672	0.989999999999999991	1
2161	397	2681	0.989999999999999991	1
2162	397	2690	0.989999999999999991	1
2163	397	2699	0.989999999999999991	1
2164	398	2713	0.989999999999999991	1
2165	399	2714	0.989999999999999991	1
2166	399	2715	0.989999999999999991	1
2169	401	2721	0.989999999999999991	1
2170	401	2723	0.989999999999999991	1
2171	401	2725	0.989999999999999991	1
2172	401	2727	0.989999999999999991	1
2202	405	2945	0.989999999999999991	1
2203	406	2946	0.989999999999999991	1
2204	406	2947	0.989999999999999991	1
2205	407	2949	0.989999999999999991	1
2206	407	2951	0.989999999999999991	1
2207	408	2953	0.989999999999999991	1
2208	408	2955	0.989999999999999991	1
2209	408	2957	0.989999999999999991	1
2210	408	2959	0.989999999999999991	1
2211	409	2963	0.989999999999999991	1
2212	409	2967	0.989999999999999991	1
2213	409	2971	0.989999999999999991	1
2214	409	2975	0.989999999999999991	1
2215	409	2979	0.989999999999999991	1
2216	409	2983	0.989999999999999991	1
2240	412	3177	1.98999999999999999	1
\.


--
-- TOC entry 2793 (class 0 OID 0)
-- Dependencies: 192
-- Name: invoice_line_invoice_line_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('invoice_line_invoice_line_id_seq', 1, false);


--
-- TOC entry 2738 (class 0 OID 24779)
-- Dependencies: 178
-- Data for Name: media_type; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY media_type (media_type_id, name) FROM stdin;
1	MPEG audio file
2	Protected AAC audio file
3	Protected MPEG-4 video file
4	Purchased AAC audio file
5	AAC audio file
\.


--
-- TOC entry 2794 (class 0 OID 0)
-- Dependencies: 177
-- Name: media_type_media_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('media_type_media_type_id_seq', 1, false);


--
-- TOC entry 2744 (class 0 OID 24821)
-- Dependencies: 184
-- Data for Name: playlist; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY playlist (playlist_id, name) FROM stdin;
1	Music
2	Movies
3	TV Shows
4	Audiobooks
6	Audiobooks
7	Movies
8	Music
9	Music Videos
10	TV Shows
11	Brazilian Music
12	Classical
13	Classical 101 - Deep Cuts
14	Classical 101 - Next Steps
15	Classical 101 - The Basics
16	Grunge
17	Heavy Metal Classic
18	On-The-Go 1
\.


--
-- TOC entry 2795 (class 0 OID 0)
-- Dependencies: 183
-- Name: playlist_playlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('playlist_playlist_id_seq', 1, false);


--
-- TOC entry 2745 (class 0 OID 24827)
-- Dependencies: 185
-- Data for Name: playlist_track; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY playlist_track (playlist_id, track_id) FROM stdin;
1	3402
1	3389
1	3390
1	3391
1	3392
1	3393
1	3394
1	3395
1	3396
1	3397
1	3398
1	3399
1	3400
1	3401
1	3336
1	3478
1	3375
1	3376
1	3377
1	3378
1	3379
1	3380
1	3381
1	3382
1	3383
1	3384
1	3385
1	3386
1	3387
1	3388
1	3365
1	3366
1	3367
1	3368
1	3369
1	3370
1	3371
1	3372
1	3373
1	3374
1	99
1	100
1	101
1	102
1	103
1	104
1	105
1	106
1	107
1	108
1	109
1	110
1	166
1	167
1	168
1	169
1	170
1	171
1	172
1	173
1	174
1	175
1	176
1	177
1	178
1	179
1	180
1	181
1	182
1	2591
1	2592
1	2593
1	2594
1	2595
1	2596
1	2597
1	2598
1	2599
1	2600
1	2601
1	2602
1	2603
1	2604
1	2605
1	2606
1	2607
1	2608
1	923
1	924
1	925
1	926
1	927
1	928
1	929
1	930
1	931
1	932
1	933
1	934
1	935
1	936
1	937
1	938
1	939
1	940
1	941
1	942
1	943
1	944
1	945
1	946
1	947
1	948
1	964
1	965
1	966
1	967
1	968
1	969
1	970
1	971
1	972
1	973
1	974
1	1009
1	1010
1	1011
1	1012
1	1013
1	1014
1	1015
1	1016
1	1017
1	1018
1	1019
1	1134
1	1137
1	1138
1	1139
1	1140
1	1141
1	1142
1	1145
1	468
1	469
1	470
1	471
1	472
1	473
1	474
1	475
1	476
1	477
1	478
1	479
1	480
1	481
1	482
1	483
1	484
1	485
1	486
1	487
1	488
1	1466
1	1467
1	1468
1	1469
1	1470
1	1471
1	1472
1	1473
1	1474
1	1475
1	1476
1	1477
1	1478
1	2165
1	2166
1	2167
1	2168
1	2169
1	2170
1	2171
1	2172
1	2173
1	2174
1	2175
1	2176
1	2177
1	2318
1	2319
1	2320
1	2321
1	2322
1	2323
1	2324
1	2325
1	2326
1	2327
1	2328
1	2329
1	2330
1	2331
1	2332
1	2333
1	2285
1	2286
1	2287
1	2288
1	2289
1	2290
1	2291
1	2292
1	2293
1	2294
1	2295
1	2310
1	2311
1	2312
1	2313
1	2314
1	2315
1	2316
1	2317
1	2282
1	2283
1	2284
1	2358
1	2359
1	2360
1	2361
1	2362
1	2363
1	2364
1	2365
1	2366
1	2367
1	2368
1	2369
1	2370
1	2371
1	2372
1	2373
1	2374
1	2472
1	2473
1	2474
1	2475
1	2476
1	2477
1	2478
1	2479
1	2480
1	2481
1	2482
1	2483
1	2484
1	2485
1	2486
1	2487
1	2488
1	2489
1	2490
1	2491
1	2492
1	2493
1	2494
1	2495
1	2496
1	2497
1	2498
1	2499
1	2500
1	2501
1	2502
1	2503
1	2504
1	2505
1	2705
1	2706
1	2707
1	2708
1	2709
1	2710
1	2711
1	2712
1	2713
1	2714
1	2715
1	2716
1	2717
1	2718
1	2719
1	2720
1	2721
1	2722
1	2723
1	2724
1	2725
1	2726
1	2727
1	2728
1	2729
1	2730
1	2572
1	2573
1	2574
1	2575
1	2576
1	2577
1	2578
1	2579
1	2580
1	2581
1	2582
1	2583
1	2584
1	2585
1	2586
1	2587
1	2588
1	2589
1	2590
1	194
1	195
1	196
1	197
1	198
1	199
1	200
1	201
1	202
1	203
1	204
1	891
1	892
1	893
1	894
1	895
1	896
1	897
1	898
1	899
1	900
1	901
1	902
1	903
1	904
1	905
1	906
1	907
1	908
1	909
1	910
1	911
1	912
1	913
1	914
1	915
1	916
1	917
1	918
1	919
1	920
1	921
1	922
1	1268
1	1269
1	1272
1	1273
1	1274
1	1275
1	1276
1	2532
1	2533
1	2534
1	2535
1	2536
1	2537
1	2538
1	2539
1	2540
1	2541
1	3427
1	3411
1	3412
1	3482
1	3438
1	3403
1	3406
1	3421
1	3436
1	3454
1	3491
1	3413
1	3426
1	3416
1	3501
1	3417
1	3432
1	3443
1	3447
1	3452
1	3441
1	3500
1	3405
1	3488
1	3423
1	3499
1	3445
1	3453
1	3497
1	3439
1	3407
1	3435
1	3490
1	3448
1	3492
1	3425
1	3483
1	3420
1	3424
1	3493
1	3437
1	3498
1	3446
1	3444
1	3502
1	3359
1	3433
1	3479
1	3481
1	3404
1	3486
1	3414
1	3410
1	3431
1	3430
1	3484
1	1034
1	1035
1	1036
1	1037
1	1038
1	1039
1	1040
1	1041
1	1042
1	1043
1	1044
1	1045
1	1046
1	1047
1	1048
1	1049
1	1050
1	1051
1	1052
1	1053
1	1054
1	1055
1	1056
1	3324
1	3331
1	3332
1	3322
1	3329
1	1455
1	1456
1	1457
1	1458
1	1459
1	1460
1	1461
1	1462
1	1463
1	1464
1	1465
1	3352
1	3358
1	3326
1	3327
1	3330
1	3321
1	3319
1	3328
1	3325
1	3323
1	3334
1	3333
1	3335
1	3320
1	1245
1	1246
1	1247
1	1248
1	1249
1	1250
1	1251
1	1252
1	1253
1	1254
1	1255
1	1277
1	1278
1	1279
1	1280
1	1281
1	1283
1	1284
1	1285
1	1286
1	1287
1	1288
1	1300
1	1301
1	1302
1	1303
1	1304
1	3301
1	3300
1	3302
1	3303
1	3304
1	3305
1	3306
1	3307
1	3308
1	3309
1	3310
1	3311
1	3312
1	3313
1	3314
1	3315
1	3316
1	3317
1	3318
1	3357
1	3350
1	3349
1	123
1	124
1	125
1	126
1	127
1	128
1	129
1	130
1	842
1	843
1	844
1	845
1	846
1	847
1	848
1	849
1	850
1	624
1	625
1	626
1	627
1	628
1	629
1	630
1	631
1	632
1	633
1	634
1	635
1	636
1	637
1	638
1	639
1	640
1	641
1	642
1	643
1	644
1	645
1	1188
1	1189
1	1190
1	1191
1	1192
1	1193
1	1194
1	1195
1	1196
1	1197
1	1198
1	1199
1	1200
1	597
1	598
1	599
1	600
1	601
1	602
1	603
1	604
1	605
1	606
1	607
1	608
1	609
1	610
1	611
1	612
1	613
1	614
1	615
1	616
1	617
1	618
1	619
1	1902
1	1903
1	1904
1	1905
1	1906
1	1907
1	1908
1	1909
1	1910
1	1911
1	1912
1	1913
1	1914
1	1915
1	456
1	457
1	458
1	459
1	460
1	461
1	462
1	463
1	464
1	465
1	466
1	467
1	2523
1	2524
1	2525
1	2526
1	2527
1	2528
1	2529
1	2530
1	2531
1	382
1	515
1	516
1	517
1	518
1	519
1	520
1	521
1	522
1	523
1	524
1	525
1	526
1	527
1	528
1	206
1	208
1	209
1	210
1	211
1	213
1	214
1	215
1	216
1	218
1	219
1	220
1	222
1	223
1	224
1	226
1	228
1	229
1	230
1	231
1	232
1	234
1	236
1	237
1	239
1	240
1	241
1	243
1	852
1	853
1	854
1	855
1	858
1	859
1	860
1	862
1	863
1	864
1	865
1	866
1	868
1	869
1	871
1	872
1	873
1	874
1	875
1	876
1	584
1	586
1	587
1	589
1	590
1	591
1	592
1	593
1	594
1	596
1	975
1	976
1	977
1	981
1	982
1	983
1	984
1	985
1	987
1	988
1	390
1	1057
1	1058
1	1059
1	1063
1	1064
1	1065
1	1066
1	1067
1	1069
1	1070
1	1071
1	1072
1	377
1	1088
1	1089
1	1090
1	1091
1	1092
1	1093
1	1094
1	1095
1	1098
1	1099
1	1100
1	1101
1	1105
1	1106
1	1107
1	1108
1	1111
1	1112
1	1113
1	1115
1	1116
1	1118
1	1119
1	501
1	505
1	507
1	509
1	512
1	514
1	378
1	1506
1	1507
1	1508
1	1509
1	1513
1	1516
1	1517
1	1518
1	1519
1	381
1	1520
1	1521
1	1522
1	1523
1	1528
1	1529
1	1530
1	1531
1	3356
1	374
1	1755
1	1762
1	1763
1	1756
1	1764
1	1757
1	1765
1	1766
1	1759
1	1769
1	1770
1	1771
1	1772
1	1917
1	1919
1	1921
1	1922
1	1923
1	1925
1	1926
1	1928
1	1929
1	1931
1	1934
1	1935
1	1936
1	1937
1	1938
1	1939
1	1940
1	375
1	385
1	383
1	2030
1	2032
1	2035
1	2038
1	2039
1	2040
1	2042
1	2043
1	2065
1	2067
1	2068
1	2069
1	2070
1	2071
1	2072
1	2073
1	2074
1	2075
1	2079
1	2080
1	2081
1	2083
1	2084
1	2085
1	2086
1	2087
1	2088
1	2089
1	2090
1	2092
1	386
1	2751
1	2752
1	2753
1	2757
1	2763
1	2764
1	2766
1	2771
1	2772
1	2774
1	2776
1	2780
1	556
1	557
1	558
1	559
1	560
1	561
1	565
1	566
1	569
1	664
1	665
1	667
1	670
1	672
1	673
1	3149
1	3153
1	3155
1	3158
1	3160
1	3162
1	3164
1	77
1	78
1	79
1	80
1	81
1	82
1	83
1	84
1	131
1	132
1	133
1	134
1	135
1	136
1	137
1	138
1	139
1	140
1	141
1	142
1	143
1	144
1	145
1	146
1	147
1	148
1	149
1	150
1	151
1	152
1	153
1	154
1	155
1	156
1	157
1	158
1	159
1	160
1	161
1	162
1	163
1	164
1	165
1	183
1	184
1	185
1	186
1	187
1	188
1	189
1	190
1	191
1	192
1	193
1	1121
1	1122
1	1123
1	1124
1	1125
1	1126
1	1127
1	1128
1	1129
1	1130
1	1131
1	1132
1	1174
1	1175
1	1176
1	1177
1	1178
1	1179
1	1180
1	1181
1	1182
1	1183
1	1184
1	1185
1	1186
1	1187
1	1289
1	1290
1	1291
1	1292
1	1293
1	1294
1	1295
1	1296
1	1297
1	1298
1	1299
1	1325
1	1326
1	1327
1	1328
1	1329
1	1330
1	1331
1	1332
1	1333
1	1334
1	1391
1	1388
1	1394
1	1387
1	1392
1	1389
1	1390
1	1335
1	1336
1	1337
1	1338
1	1339
1	1340
1	1341
1	1342
1	1343
1	1344
1	1345
1	1346
1	1347
1	1348
1	1349
1	1350
1	1351
1	1212
1	1213
1	1214
1	1215
1	1216
1	1217
1	1218
1	1219
1	1220
1	1221
1	1222
1	1223
1	1224
1	1225
1	1226
1	1227
1	1228
1	1229
1	1230
1	1231
1	1232
1	1233
1	1234
1	1352
1	1353
1	1354
1	1355
1	1356
1	1357
1	1358
1	1359
1	1360
1	1361
1	1364
1	1371
1	1372
1	1373
1	1374
1	1375
1	1376
1	1377
1	1378
1	1379
1	1380
1	1381
1	1382
1	1386
1	1383
1	1385
1	1384
1	1546
1	1547
1	1548
1	1549
1	1550
1	1551
1	1552
1	1553
1	1554
1	1555
1	1556
1	1557
1	1558
1	1559
1	1560
1	1561
1	1893
1	1894
1	1895
1	1896
1	1897
1	1898
1	1899
1	1900
1	1901
1	1801
1	1802
1	1803
1	1804
1	1805
1	1806
1	1807
1	1808
1	1809
1	1810
1	1811
1	1812
1	408
1	409
1	410
1	411
1	412
1	413
1	414
1	415
1	416
1	417
1	418
1	1813
1	1814
1	1815
1	1816
1	1817
1	1818
1	1819
1	1820
1	1821
1	1822
1	1823
1	1824
1	1825
1	1826
1	1827
1	1828
1	1829
1	1830
1	1831
1	1832
1	1833
1	1834
1	1835
1	1836
1	1837
1	1838
1	1839
1	1840
1	1841
1	1842
1	1843
1	1844
1	1845
1	1846
1	1847
1	1848
1	1849
1	1850
1	1851
1	1852
1	1853
1	1854
1	1855
1	1856
1	1857
1	1858
1	1859
1	1860
1	1861
1	1862
1	1863
1	1864
1	1865
1	1866
1	1867
1	1868
1	1869
1	1870
1	1871
1	1872
1	1873
1	1874
1	1875
1	1876
1	1877
1	1878
1	1879
1	1880
1	1881
1	1882
1	1883
1	1884
1	1885
1	1886
1	1887
1	1888
1	1889
1	1890
1	1891
1	1892
1	2099
1	2100
1	2101
1	2102
1	2103
1	2104
1	2105
1	2106
1	2107
1	2108
1	2109
1	2110
1	2111
1	2112
1	2554
1	2555
1	2556
1	2557
1	2558
1	2559
1	2560
1	2561
1	2562
1	2563
1	2564
1	3132
1	3133
1	3134
1	3135
1	3136
1	3137
1	3138
1	3139
1	3140
1	3141
1	3142
1	3143
1	3144
1	3145
1	3256
1	3467
1	3468
1	3469
1	3470
1	3471
1	3472
1	3473
1	3474
1	3475
1	3476
1	3477
1	3262
1	3268
1	3263
1	3266
1	3255
1	3259
1	3260
1	3273
1	3265
1	3274
1	3267
1	3261
1	3272
1	3257
1	3258
1	3270
1	3271
1	3254
1	3275
1	3269
1	3253
1	3264
1	3455
1	3456
1	3457
1	3458
1	3459
1	3460
1	3461
1	3462
1	3463
1	3464
1	3465
1	3466
1	1414
1	1415
1	1416
1	1417
1	1418
1	1419
1	1420
1	1421
1	1422
1	1423
1	1424
1	1425
1	1426
1	1427
1	1428
1	1429
1	1430
1	1431
1	1432
1	1433
1	1444
1	1445
1	1446
1	1447
1	1448
1	1449
1	1450
1	1451
1	1452
1	1453
1	1454
1	1773
1	1774
1	1775
1	1776
1	1777
1	1778
1	1779
1	1780
1	1781
1	1782
1	1783
1	1784
1	1785
1	1786
1	1787
1	1788
1	1789
1	1790
1	301
1	302
1	303
1	304
1	305
1	306
1	307
1	308
1	309
1	311
1	2216
1	2217
1	2218
1	2219
1	2220
1	2221
1	2222
1	2223
1	2224
1	2225
1	2226
1	2227
1	2228
1	3038
1	3039
1	3040
1	3041
1	3042
1	3043
1	3044
1	3045
1	3046
1	3047
1	3048
1	3049
1	3050
1	3051
1	1
1	6
1	7
1	8
1	9
1	10
1	11
1	12
1	13
1	14
1	15
1	16
1	17
1	18
1	19
1	20
1	21
1	22
1	2
1	3
1	4
1	5
1	23
1	24
1	25
1	26
1	27
1	28
1	29
1	30
1	31
1	32
1	33
1	34
1	35
1	36
1	37
1	38
1	39
1	40
1	41
1	42
1	43
1	44
1	45
1	46
1	47
1	48
1	49
1	50
1	51
1	52
1	53
1	54
1	55
1	56
1	57
1	58
1	59
1	60
1	61
1	62
1	85
1	86
1	87
1	88
1	89
1	90
1	91
1	92
1	93
1	94
1	95
1	96
1	97
1	98
1	675
1	676
1	677
1	678
1	679
1	680
1	681
1	682
1	683
1	684
1	685
1	686
1	687
1	688
1	689
1	690
1	691
1	692
1	693
1	694
1	695
1	696
1	697
1	698
1	699
1	700
1	701
1	702
1	703
1	704
1	705
1	706
1	707
1	708
1	709
1	710
1	711
1	712
1	713
1	714
1	2609
1	2610
1	2611
1	2612
1	2613
1	2614
1	2615
1	2616
1	2617
1	2618
1	2619
1	2620
1	2621
1	2622
1	2623
1	2624
1	2625
1	2626
1	2627
1	2628
1	2629
1	2630
1	2631
1	2632
1	2633
1	2634
1	2635
1	2636
1	2637
1	2638
1	489
1	490
1	491
1	492
1	493
1	494
1	495
1	496
1	497
1	498
1	499
1	500
1	816
1	817
1	818
1	819
1	820
1	821
1	822
1	823
1	824
1	825
1	745
1	746
1	747
1	748
1	749
1	750
1	751
1	752
1	753
1	754
1	755
1	756
1	757
1	758
1	759
1	760
1	620
1	621
1	622
1	623
1	761
1	762
1	763
1	764
1	765
1	766
1	767
1	768
1	769
1	770
1	771
1	772
1	773
1	774
1	775
1	776
1	777
1	778
1	779
1	780
1	781
1	782
1	783
1	784
1	785
1	543
1	544
1	545
1	546
1	547
1	548
1	549
1	786
1	787
1	788
1	789
1	790
1	791
1	792
1	793
1	794
1	795
1	796
1	797
1	798
1	799
1	800
1	801
1	802
1	803
1	804
1	805
1	806
1	807
1	808
1	809
1	810
1	811
1	812
1	813
1	814
1	815
1	826
1	827
1	828
1	829
1	830
1	831
1	832
1	833
1	834
1	835
1	836
1	837
1	838
1	839
1	840
1	841
1	2639
1	2640
1	2641
1	2642
1	2643
1	2644
1	2645
1	2646
1	2647
1	2648
1	2649
1	3225
1	949
1	950
1	951
1	952
1	953
1	954
1	955
1	956
1	957
1	958
1	959
1	960
1	961
1	962
1	963
1	1020
1	1021
1	1022
1	1023
1	1024
1	1025
1	1026
1	1027
1	1028
1	1029
1	1030
1	1031
1	1032
1	989
1	990
1	991
1	992
1	993
1	994
1	995
1	996
1	997
1	998
1	999
1	1000
1	1001
1	1002
1	1003
1	1004
1	1005
1	1006
1	1007
1	1008
1	351
1	352
1	353
1	354
1	355
1	356
1	357
1	358
1	359
1	1146
1	1147
1	1148
1	1149
1	1150
1	1151
1	1152
1	1153
1	1154
1	1155
1	1156
1	1157
1	1158
1	1159
1	1160
1	1161
1	1162
1	1163
1	1164
1	1165
1	1166
1	1167
1	1168
1	1169
1	1170
1	1171
1	1172
1	1173
1	1235
1	1236
1	1237
1	1238
1	1239
1	1240
1	1241
1	1242
1	1243
1	1244
1	1256
1	1257
1	1258
1	1259
1	1260
1	1261
1	1262
1	1263
1	1264
1	1265
1	1266
1	1267
1	1305
1	1306
1	1307
1	1308
1	1309
1	1310
1	1311
1	1312
1	1313
1	1314
1	1315
1	1316
1	1317
1	1318
1	1319
1	1320
1	1321
1	1322
1	1323
1	1324
1	1201
1	1202
1	1203
1	1204
1	1205
1	1206
1	1207
1	1208
1	1209
1	1210
1	1211
1	1393
1	1362
1	1363
1	1365
1	1366
1	1367
1	1368
1	1369
1	1370
1	1406
1	1407
1	1408
1	1409
1	1410
1	1411
1	1412
1	1413
1	1395
1	1396
1	1397
1	1398
1	1399
1	1400
1	1401
1	1402
1	1403
1	1404
1	1405
1	1434
1	1435
1	1436
1	1437
1	1438
1	1439
1	1440
1	1441
1	1442
1	1443
1	1479
1	1480
1	1481
1	1482
1	1483
1	1484
1	1485
1	1486
1	1487
1	1488
1	1489
1	1490
1	1491
1	1492
1	1493
1	1494
1	1495
1	1496
1	1497
1	1498
1	1499
1	1500
1	1501
1	1502
1	1503
1	1504
1	1505
1	436
1	437
1	438
1	439
1	440
1	441
1	442
1	443
1	444
1	445
1	446
1	447
1	448
1	449
1	450
1	451
1	452
1	453
1	454
1	455
1	1562
1	1563
1	1564
1	1565
1	1566
1	1567
1	1568
1	1569
1	1570
1	1571
1	1572
1	1573
1	1574
1	1575
1	1576
1	337
1	338
1	339
1	340
1	341
1	342
1	343
1	344
1	345
1	346
1	347
1	348
1	349
1	350
1	1577
1	1578
1	1579
1	1580
1	1581
1	1582
1	1583
1	1584
1	1585
1	1586
1	1587
1	1588
1	1589
1	1590
1	1591
1	1592
1	1593
1	1594
1	1595
1	1596
1	1597
1	1598
1	1599
1	1600
1	1601
1	1602
1	1603
1	1604
1	1605
1	1606
1	1607
1	1608
1	1609
1	1610
1	1611
1	1612
1	1613
1	1614
1	1615
1	1616
1	1617
1	1618
1	1619
1	1620
1	1621
1	1622
1	1623
1	1624
1	1625
1	1626
1	1627
1	1628
1	1629
1	1630
1	1631
1	1632
1	1633
1	1634
1	1635
1	1636
1	1637
1	1638
1	1639
1	1640
1	1641
1	1642
1	1643
1	1644
1	1645
1	550
1	551
1	552
1	553
1	554
1	555
1	1646
1	1647
1	1648
1	1649
1	1650
1	1651
1	1652
1	1653
1	1654
1	1655
1	1656
1	1657
1	1658
1	1659
1	1660
1	1661
1	1662
1	1663
1	1664
1	1665
1	1666
1	1667
1	1668
1	1669
1	1670
1	1702
1	1703
1	1704
1	1705
1	1706
1	1707
1	1708
1	1709
1	1710
1	1711
1	1712
1	1713
1	1714
1	1715
1	1716
1	1745
1	1746
1	1747
1	1748
1	1749
1	1750
1	1751
1	1752
1	1753
1	1754
1	1791
1	1792
1	1793
1	1794
1	1795
1	1796
1	1797
1	1798
1	1799
1	1800
1	1986
1	1987
1	1988
1	1989
1	1990
1	1991
1	1992
1	1993
1	1994
1	1995
1	1996
1	1997
1	1998
1	1999
1	2000
1	2001
1	2002
1	2003
1	2004
1	2005
1	2006
1	2007
1	2008
1	2009
1	2010
1	2011
1	2012
1	2013
1	2014
1	2093
1	2094
1	2095
1	2096
1	2097
1	2098
1	3276
1	3277
1	3278
1	3279
1	3280
1	3281
1	3282
1	3283
1	3284
1	3285
1	3286
1	3287
1	2113
1	2114
1	2115
1	2116
1	2117
1	2118
1	2119
1	2120
1	2121
1	2122
1	2123
1	2124
1	2139
1	2140
1	2141
1	2142
1	2143
1	2144
1	2145
1	2146
1	2147
1	2148
1	2149
1	2150
1	2151
1	2152
1	2153
1	2154
1	2155
1	2156
1	2157
1	2158
1	2159
1	2160
1	2161
1	2162
1	2163
1	2164
1	2178
1	2179
1	2180
1	2181
1	2182
1	2183
1	2184
1	2185
1	2186
1	2187
1	2188
1	2189
1	2190
1	2191
1	2192
1	2193
1	2194
1	2195
1	2196
1	2197
1	2198
1	2199
1	2200
1	2201
1	2202
1	2203
1	2204
1	2205
1	2206
1	2207
1	2208
1	2209
1	2210
1	2211
1	2212
1	2213
1	2214
1	2215
1	2229
1	2230
1	2231
1	2232
1	2233
1	2234
1	2235
1	2236
1	2237
1	2650
1	2651
1	2652
1	2653
1	2654
1	2655
1	2656
1	2657
1	2658
1	2659
1	2660
1	2661
1	2662
1	2663
1	3353
1	3355
1	2254
1	2255
1	2256
1	2257
1	2258
1	2259
1	2260
1	2261
1	2262
1	2263
1	2264
1	2265
1	2266
1	2267
1	2268
1	2269
1	2270
1	419
1	420
1	421
1	422
1	423
1	424
1	425
1	426
1	427
1	428
1	429
1	430
1	431
1	432
1	433
1	434
1	435
1	2271
1	2272
1	2273
1	2274
1	2275
1	2276
1	2277
1	2278
1	2279
1	2280
1	2281
1	2296
1	2297
1	2298
1	2299
1	2300
1	2301
1	2302
1	2303
1	2304
1	2305
1	2306
1	2307
1	2308
1	2309
1	2344
1	2345
1	2346
1	2347
1	2348
1	2349
1	2350
1	2351
1	2353
1	2357
1	2375
1	2376
1	2377
1	2378
1	2379
1	2380
1	2381
1	2382
1	2383
1	2384
1	2385
1	2386
1	2387
1	2388
1	2389
1	2390
1	2391
1	2392
1	2393
1	2394
1	2395
1	2396
1	2397
1	2398
1	2399
1	2400
1	2401
1	2402
1	2403
1	2404
1	2405
1	2664
1	2665
1	2666
1	2667
1	2668
1	2669
1	2670
1	2671
1	2672
1	2673
1	2674
1	2675
1	2676
1	2677
1	2678
1	2679
1	2680
1	2681
1	2682
1	2683
1	2684
1	2685
1	2686
1	2687
1	2688
1	2689
1	2690
1	2691
1	2692
1	2693
1	2694
1	2695
1	2696
1	2697
1	2698
1	2699
1	2700
1	2701
1	2702
1	2703
1	2704
1	2406
1	2407
1	2408
1	2409
1	2410
1	2411
1	2412
1	2413
1	2414
1	2415
1	2416
1	2417
1	2418
1	2419
1	2420
1	2421
1	2422
1	2423
1	2424
1	2425
1	2426
1	2427
1	2428
1	2429
1	2430
1	2431
1	2432
1	2433
1	570
1	573
1	577
1	580
1	581
1	571
1	579
1	582
1	572
1	575
1	578
1	574
1	576
1	3288
1	3289
1	3290
1	3291
1	3292
1	3293
1	3294
1	3295
1	3296
1	3297
1	3298
1	3299
1	2434
1	2435
1	2436
1	2437
1	2438
1	2439
1	2440
1	2441
1	2442
1	2443
1	2444
1	2445
1	2446
1	2447
1	2448
1	2451
1	2455
1	2458
1	2459
1	2506
1	2507
1	2508
1	2509
1	2510
1	2511
1	2512
1	2513
1	2514
1	2515
1	2516
1	2517
1	2518
1	2519
1	2520
1	2521
1	2522
1	2542
1	2543
1	2544
1	2545
1	2546
1	2547
1	2548
1	2549
1	2550
1	2551
1	2552
1	2553
1	2565
1	2566
1	2567
1	2568
1	2569
1	2570
1	2571
1	2926
1	2927
1	2928
1	2929
1	2930
1	2931
1	2932
1	2933
1	2934
1	2935
1	2936
1	2937
1	2938
1	2939
1	2940
1	2941
1	2942
1	2943
1	2944
1	2945
1	2946
1	2947
1	2948
1	2949
1	2950
1	2951
1	2952
1	2953
1	2954
1	2955
1	2956
1	2957
1	2958
1	2959
1	2960
1	2961
1	2962
1	2963
1	3004
1	3005
1	3006
1	3007
1	3008
1	3009
1	3010
1	3011
1	3012
1	3013
1	3014
1	3015
1	3016
1	3017
1	2964
1	2965
1	2966
1	2967
1	2968
1	2969
1	2970
1	2971
1	2972
1	2973
1	2974
1	2975
1	2976
1	2977
1	2978
1	2979
1	2980
1	2981
1	2982
1	2983
1	2984
1	2985
1	2986
1	2987
1	2988
1	2989
1	2990
1	2991
1	2992
1	2993
1	2994
1	2995
1	2996
1	2997
1	2998
1	2999
1	3000
1	3001
1	3002
1	3003
1	3018
1	3019
1	3020
1	3021
1	3022
1	3023
1	3024
1	3025
1	3026
1	3027
1	3028
1	3029
1	3030
1	3031
1	3032
1	3033
1	3034
1	3035
1	3036
1	3037
1	3064
1	3065
1	3066
1	3067
1	3068
1	3069
1	3070
1	3071
1	3072
1	3073
1	3074
1	3075
1	3076
1	3077
1	3078
1	3079
1	3080
1	3052
1	3053
1	3054
1	3055
1	3056
1	3057
1	3058
1	3059
1	3060
1	3061
1	3062
1	3063
1	3081
1	3082
1	3083
1	3084
1	3085
1	3086
1	3087
1	3088
1	3089
1	3090
1	3091
1	3092
1	3093
1	3094
1	3095
1	3096
1	3097
1	3098
1	3099
1	3100
1	3101
1	3102
1	3103
1	3104
1	3105
1	3106
1	3107
1	3108
1	3109
1	3110
1	3111
1	3112
1	3113
1	3114
1	3115
1	3116
1	2731
1	2732
1	2733
1	2734
1	2735
1	2736
1	2737
1	2738
1	2739
1	2740
1	2741
1	2742
1	2743
1	2744
1	2745
1	2746
1	2747
1	2748
1	2749
1	2750
1	111
1	112
1	113
1	114
1	115
1	116
1	117
1	118
1	119
1	120
1	121
1	122
1	2125
1	2126
1	2127
1	2128
1	2129
1	2130
1	2131
1	2132
1	2133
1	2134
1	2135
1	2136
1	2137
1	2138
1	3503
1	360
1	361
1	362
1	363
1	364
1	365
1	366
1	367
1	368
1	369
1	370
1	371
1	372
1	373
3	3250
3	2819
3	2820
3	2821
3	2822
3	2823
3	2824
3	2825
3	2826
3	2827
3	2828
3	2829
3	2830
3	2831
3	2832
3	2833
3	2834
3	2835
3	2836
3	2837
3	2838
3	3226
3	3227
3	3228
3	3229
3	3230
3	3231
3	3232
3	3233
3	3234
3	3235
3	3236
3	3237
3	3238
3	3239
3	3240
3	3241
3	3242
3	3243
3	3244
3	3245
3	3246
3	3247
3	3248
3	3249
3	2839
3	2840
3	2841
3	2842
3	2843
3	2844
3	2845
3	2846
3	2847
3	2848
3	2849
3	2850
3	2851
3	2852
3	2853
3	2854
3	2855
3	2856
3	3166
3	3167
3	3168
3	3171
3	3223
3	2858
3	2861
3	2865
3	2868
3	2871
3	2873
3	2877
3	2880
3	2883
3	2885
3	2888
3	2893
3	2894
3	2898
3	2901
3	2904
3	2906
3	2911
3	2913
3	2915
3	2917
3	2919
3	2921
3	2923
3	2925
3	2859
3	2860
3	2864
3	2867
3	2869
3	2872
3	2878
3	2879
3	2884
3	2887
3	2889
3	2892
3	2896
3	2897
3	2902
3	2905
3	2907
3	2910
3	2914
3	2916
3	2918
3	2920
3	2922
3	2924
3	2857
3	2862
3	2863
3	2866
3	2870
3	2874
3	2875
3	2876
3	2881
3	2882
3	2886
3	2890
3	2891
3	2895
3	2899
3	2903
3	2908
3	2909
3	2912
3	3165
3	3169
3	3170
3	3252
3	3224
3	3251
3	3340
3	3339
3	3338
3	3337
3	3341
3	3345
3	3342
3	3346
3	3343
3	3347
3	3344
3	3348
3	3360
3	3361
3	3362
3	3363
3	3364
3	3172
3	3173
3	3174
3	3175
3	3176
3	3177
3	3178
3	3179
3	3180
3	3181
3	3182
3	3183
3	3184
3	3185
3	3186
3	3187
3	3188
3	3189
3	3190
3	3191
3	3192
3	3193
3	3194
3	3195
3	3196
3	3197
3	3198
3	3199
3	3200
3	3201
3	3202
3	3203
3	3204
3	3205
3	3206
3	3428
3	3207
3	3208
3	3209
3	3210
3	3211
3	3212
3	3429
3	3213
3	3214
3	3215
3	3216
3	3217
3	3218
3	3219
3	3220
3	3221
3	3222
8	3427
8	3357
8	1
8	6
8	7
8	8
8	9
8	10
8	11
8	12
8	13
8	14
8	15
8	16
8	17
8	18
8	19
8	20
8	21
8	22
8	3411
8	3412
8	2
8	3
8	4
8	5
8	23
8	24
8	25
8	26
8	27
8	28
8	29
8	30
8	31
8	32
8	33
8	34
8	35
8	36
8	37
8	3256
8	3350
8	3349
8	38
8	39
8	40
8	41
8	42
8	43
8	44
8	45
8	46
8	47
8	48
8	49
8	50
8	3403
8	51
8	52
8	53
8	54
8	55
8	56
8	57
8	58
8	59
8	60
8	61
8	62
8	3406
8	77
8	78
8	79
8	80
8	81
8	82
8	83
8	84
8	85
8	86
8	87
8	88
8	89
8	90
8	91
8	92
8	93
8	94
8	95
8	96
8	97
8	98
8	99
8	100
8	101
8	102
8	103
8	104
8	105
8	106
8	107
8	108
8	109
8	110
8	3402
8	3389
8	3390
8	3391
8	3392
8	3393
8	3394
8	3395
8	3396
8	3397
8	3398
8	3399
8	3400
8	3401
8	3262
8	382
8	111
8	112
8	113
8	114
8	115
8	116
8	117
8	118
8	119
8	120
8	121
8	122
8	3421
8	3268
8	3413
8	3263
8	123
8	124
8	125
8	126
8	127
8	128
8	129
8	130
8	2572
8	2573
8	2574
8	2575
8	2576
8	2577
8	2578
8	2579
8	2580
8	2581
8	2582
8	2583
8	2584
8	2585
8	2586
8	2587
8	2588
8	2589
8	2590
8	3266
8	131
8	132
8	133
8	134
8	135
8	136
8	137
8	138
8	139
8	140
8	141
8	142
8	143
8	144
8	145
8	146
8	147
8	148
8	149
8	150
8	151
8	152
8	153
8	154
8	155
8	156
8	157
8	158
8	159
8	160
8	161
8	162
8	163
8	164
8	165
8	166
8	167
8	168
8	169
8	170
8	171
8	172
8	173
8	174
8	175
8	176
8	177
8	178
8	179
8	180
8	181
8	182
8	3426
8	3416
8	183
8	184
8	185
8	186
8	187
8	188
8	189
8	190
8	191
8	192
8	193
8	194
8	195
8	196
8	197
8	198
8	199
8	200
8	201
8	202
8	203
8	204
8	515
8	516
8	517
8	518
8	519
8	520
8	521
8	522
8	523
8	524
8	525
8	526
8	527
8	528
8	206
8	208
8	209
8	210
8	211
8	213
8	214
8	215
8	216
8	218
8	219
8	220
8	222
8	223
8	224
8	3336
8	3324
8	3417
8	226
8	228
8	229
8	230
8	231
8	232
8	234
8	236
8	237
8	239
8	240
8	241
8	243
8	3375
8	3376
8	3377
8	3378
8	3379
8	3380
8	3381
8	3382
8	3383
8	3384
8	3385
8	3386
8	3387
8	3388
8	3255
8	301
8	302
8	303
8	304
8	305
8	306
8	307
8	308
8	309
8	311
8	2591
8	2592
8	2593
8	2594
8	2595
8	2596
8	2597
8	2598
8	2599
8	2600
8	2601
8	2602
8	2603
8	2604
8	2605
8	2606
8	2607
8	2608
8	3259
8	675
8	676
8	677
8	678
8	679
8	680
8	681
8	682
8	683
8	684
8	685
8	686
8	687
8	688
8	689
8	690
8	691
8	692
8	693
8	694
8	695
8	696
8	697
8	698
8	699
8	700
8	701
8	702
8	703
8	704
8	705
8	706
8	707
8	708
8	709
8	710
8	711
8	712
8	713
8	714
8	2609
8	2610
8	2611
8	2612
8	2613
8	2614
8	2615
8	2616
8	2617
8	2618
8	2619
8	2620
8	2621
8	2622
8	2623
8	2624
8	2625
8	2626
8	2627
8	2628
8	2629
8	2630
8	2631
8	2632
8	2633
8	2634
8	2635
8	2636
8	2637
8	2638
8	489
8	490
8	491
8	492
8	493
8	494
8	495
8	496
8	497
8	498
8	499
8	500
8	816
8	817
8	818
8	819
8	820
8	821
8	822
8	823
8	824
8	825
8	745
8	746
8	747
8	748
8	749
8	750
8	751
8	752
8	753
8	754
8	755
8	756
8	757
8	758
8	759
8	760
8	620
8	621
8	622
8	623
8	761
8	762
8	763
8	764
8	765
8	766
8	767
8	768
8	769
8	770
8	771
8	772
8	773
8	774
8	775
8	776
8	777
8	778
8	779
8	780
8	781
8	782
8	783
8	784
8	785
8	543
8	544
8	545
8	546
8	547
8	548
8	549
8	786
8	787
8	788
8	789
8	790
8	791
8	792
8	793
8	794
8	795
8	796
8	797
8	798
8	799
8	800
8	801
8	802
8	803
8	804
8	805
8	806
8	807
8	808
8	809
8	810
8	811
8	812
8	813
8	814
8	815
8	826
8	827
8	828
8	829
8	830
8	831
8	832
8	833
8	834
8	835
8	836
8	837
8	838
8	839
8	840
8	841
8	842
8	843
8	844
8	845
8	846
8	847
8	848
8	849
8	850
8	3260
8	3331
8	852
8	853
8	854
8	855
8	858
8	859
8	860
8	862
8	863
8	864
8	865
8	866
8	868
8	869
8	871
8	872
8	873
8	874
8	875
8	876
8	2639
8	2640
8	2641
8	2642
8	2643
8	2644
8	2645
8	2646
8	2647
8	2648
8	2649
8	3225
8	584
8	586
8	587
8	589
8	590
8	591
8	592
8	593
8	594
8	596
8	3405
8	891
8	892
8	893
8	894
8	895
8	896
8	897
8	898
8	899
8	900
8	901
8	902
8	903
8	904
8	905
8	906
8	907
8	908
8	909
8	910
8	911
8	912
8	913
8	914
8	915
8	916
8	917
8	918
8	919
8	920
8	921
8	922
8	3423
8	923
8	924
8	925
8	926
8	927
8	928
8	929
8	930
8	931
8	932
8	933
8	934
8	935
8	936
8	937
8	938
8	939
8	940
8	941
8	942
8	943
8	944
8	945
8	946
8	947
8	948
8	949
8	950
8	951
8	952
8	953
8	954
8	955
8	956
8	957
8	958
8	959
8	960
8	961
8	962
8	963
8	964
8	965
8	966
8	967
8	968
8	969
8	970
8	971
8	972
8	973
8	974
8	975
8	976
8	977
8	981
8	982
8	983
8	984
8	985
8	987
8	988
8	390
8	3273
8	1020
8	1021
8	1022
8	1023
8	1024
8	1025
8	1026
8	1027
8	1028
8	1029
8	1030
8	1031
8	1032
8	989
8	990
8	991
8	992
8	993
8	994
8	995
8	996
8	997
8	998
8	999
8	1000
8	1001
8	1002
8	1003
8	1004
8	1005
8	1006
8	1007
8	1008
8	1009
8	1010
8	1011
8	1012
8	1013
8	1014
8	1015
8	1016
8	1017
8	1018
8	1019
8	1034
8	1035
8	1036
8	1037
8	1038
8	1039
8	1040
8	1041
8	1042
8	1043
8	1044
8	1045
8	1046
8	1047
8	1048
8	1049
8	1050
8	1051
8	1052
8	1053
8	1054
8	1055
8	1056
8	351
8	352
8	353
8	354
8	355
8	356
8	357
8	358
8	359
8	3332
8	1057
8	1058
8	1059
8	1063
8	1064
8	1065
8	1066
8	1067
8	1069
8	1070
8	1071
8	1072
8	624
8	625
8	626
8	627
8	628
8	629
8	630
8	631
8	632
8	633
8	634
8	635
8	636
8	637
8	638
8	639
8	640
8	641
8	642
8	643
8	644
8	645
8	377
8	1088
8	1089
8	1090
8	1091
8	1092
8	1093
8	1094
8	1095
8	1098
8	1099
8	1100
8	1101
8	1105
8	1106
8	1107
8	1108
8	1111
8	1112
8	1113
8	1115
8	1116
8	1118
8	1119
8	1121
8	1122
8	1123
8	1124
8	1125
8	1126
8	1127
8	1128
8	1129
8	1130
8	1131
8	1132
8	501
8	505
8	507
8	509
8	512
8	514
8	1134
8	1137
8	1138
8	1139
8	1140
8	1141
8	1142
8	1145
8	3265
8	468
8	469
8	470
8	471
8	472
8	473
8	474
8	475
8	476
8	477
8	478
8	479
8	480
8	481
8	482
8	483
8	484
8	485
8	486
8	487
8	488
8	1146
8	1147
8	1148
8	1149
8	1150
8	1151
8	1152
8	1153
8	1154
8	1155
8	1156
8	1157
8	1158
8	1159
8	1160
8	1161
8	1162
8	1163
8	1164
8	1165
8	1166
8	1167
8	1168
8	1169
8	1170
8	1171
8	1172
8	1173
8	1174
8	1175
8	1176
8	1177
8	1178
8	1179
8	1180
8	1181
8	1182
8	1183
8	1184
8	1185
8	1186
8	1187
8	3322
8	3407
8	3301
8	3300
8	3302
8	3303
8	3304
8	3305
8	3306
8	3307
8	3308
8	3309
8	3310
8	3311
8	3312
8	3313
8	3314
8	3315
8	3316
8	3317
8	3318
8	1188
8	1189
8	1190
8	1191
8	1192
8	1193
8	1194
8	1195
8	1196
8	1197
8	1198
8	1199
8	1200
8	3329
8	1235
8	1236
8	1237
8	1238
8	1239
8	1240
8	1241
8	1242
8	1243
8	1244
8	1245
8	1246
8	1247
8	1248
8	1249
8	1250
8	1251
8	1252
8	1253
8	1254
8	1255
8	1256
8	1257
8	1258
8	1259
8	1260
8	1261
8	1262
8	1263
8	1264
8	1265
8	1266
8	1267
8	1268
8	1269
8	1272
8	1273
8	1274
8	1275
8	1276
8	1277
8	1278
8	1279
8	1280
8	1281
8	1283
8	1284
8	1285
8	1286
8	1287
8	1288
8	1289
8	1290
8	1291
8	1292
8	1293
8	1294
8	1295
8	1296
8	1297
8	1298
8	1299
8	1300
8	1301
8	1302
8	1303
8	1304
8	1305
8	1306
8	1307
8	1308
8	1309
8	1310
8	1311
8	1312
8	1313
8	1314
8	1315
8	1316
8	1317
8	1318
8	1319
8	1320
8	1321
8	1322
8	1323
8	1324
8	1201
8	1202
8	1203
8	1204
8	1205
8	1206
8	1207
8	1208
8	1209
8	1210
8	1211
8	1325
8	1326
8	1327
8	1328
8	1329
8	1330
8	1331
8	1332
8	1333
8	1334
8	1391
8	1393
8	1388
8	1394
8	1387
8	1392
8	1389
8	1390
8	1335
8	1336
8	1337
8	1338
8	1339
8	1340
8	1341
8	1342
8	1343
8	1344
8	1345
8	1346
8	1347
8	1348
8	1349
8	1350
8	1351
8	1212
8	1213
8	1214
8	1215
8	1216
8	1217
8	1218
8	1219
8	1220
8	1221
8	1222
8	1223
8	1224
8	1225
8	1226
8	1227
8	1228
8	1229
8	1230
8	1231
8	1232
8	1233
8	1234
8	1352
8	1353
8	1354
8	1355
8	1356
8	1357
8	1358
8	1359
8	1360
8	1361
8	1362
8	1363
8	1364
8	1365
8	1366
8	1367
8	1368
8	1369
8	1370
8	1371
8	1372
8	1373
8	1374
8	1375
8	1376
8	1377
8	1378
8	1379
8	1380
8	1381
8	1382
8	1386
8	1383
8	1385
8	1384
8	1406
8	1407
8	1408
8	1409
8	1410
8	1411
8	1412
8	1413
8	1395
8	1396
8	1397
8	1398
8	1399
8	1400
8	1401
8	1402
8	1403
8	1404
8	1405
8	3274
8	3267
8	3261
8	3272
8	1414
8	1415
8	1416
8	1417
8	1418
8	1419
8	1420
8	1421
8	1422
8	1423
8	1424
8	1425
8	1426
8	1427
8	1428
8	1429
8	1430
8	1431
8	1432
8	1433
8	1434
8	1435
8	1436
8	1437
8	1438
8	1439
8	1440
8	1441
8	1442
8	1443
8	1455
8	1456
8	1457
8	1458
8	1459
8	1460
8	1461
8	1462
8	1463
8	1464
8	1465
8	1444
8	1445
8	1446
8	1447
8	1448
8	1449
8	1450
8	1451
8	1452
8	1453
8	1454
8	1466
8	1467
8	1468
8	1469
8	1470
8	1471
8	1472
8	1473
8	1474
8	1475
8	1476
8	1477
8	1478
8	1479
8	1480
8	1481
8	1482
8	1483
8	1484
8	1485
8	1486
8	1487
8	1488
8	1489
8	1490
8	1491
8	1492
8	1493
8	1494
8	1495
8	378
8	1496
8	1497
8	1498
8	1499
8	1500
8	1501
8	1502
8	1503
8	1504
8	1505
8	1506
8	1507
8	1508
8	1509
8	1513
8	1516
8	1517
8	1518
8	1519
8	381
8	1520
8	1521
8	1522
8	1523
8	1528
8	1529
8	1530
8	1531
8	1546
8	1547
8	1548
8	1549
8	1550
8	1551
8	1552
8	1553
8	1554
8	1555
8	1556
8	1557
8	1558
8	1559
8	1560
8	1561
8	3352
8	3358
8	436
8	437
8	438
8	439
8	440
8	441
8	442
8	443
8	444
8	445
8	446
8	447
8	448
8	449
8	450
8	451
8	452
8	453
8	454
8	455
8	1562
8	1563
8	1564
8	1565
8	1566
8	1567
8	1568
8	1569
8	1570
8	1571
8	1572
8	1573
8	1574
8	1575
8	1576
8	337
8	338
8	339
8	340
8	341
8	342
8	343
8	344
8	345
8	346
8	347
8	348
8	349
8	350
8	1577
8	1578
8	1579
8	1580
8	1581
8	1582
8	1583
8	1584
8	1585
8	1586
8	1587
8	1588
8	1589
8	1590
8	1591
8	1592
8	1593
8	1594
8	1595
8	1596
8	1597
8	1598
8	1599
8	1600
8	1601
8	1602
8	1603
8	1604
8	1605
8	1606
8	1607
8	1608
8	1609
8	1610
8	1611
8	1612
8	1613
8	1614
8	1615
8	1616
8	1617
8	1618
8	1619
8	1620
8	1621
8	1622
8	1623
8	1624
8	1625
8	1626
8	1627
8	1628
8	1629
8	1630
8	1631
8	1632
8	1633
8	1634
8	1635
8	1636
8	1637
8	1638
8	1639
8	1640
8	1641
8	1642
8	1643
8	1644
8	1645
8	550
8	551
8	552
8	553
8	554
8	555
8	1646
8	1647
8	1648
8	1649
8	1650
8	1651
8	1652
8	1653
8	1654
8	1655
8	1656
8	1657
8	1658
8	1659
8	1660
8	1661
8	1662
8	1663
8	1664
8	1665
8	1666
8	1667
8	1668
8	1669
8	1670
8	1702
8	1703
8	1704
8	1705
8	1706
8	1707
8	1708
8	1709
8	1710
8	1711
8	1712
8	1713
8	1714
8	1715
8	1716
8	3257
8	3425
8	3420
8	3326
8	3258
8	3356
8	3424
8	374
8	1745
8	1746
8	1747
8	1748
8	1749
8	1750
8	1751
8	1752
8	1753
8	1754
8	1755
8	1762
8	1763
8	1756
8	1764
8	1757
8	1765
8	1766
8	1759
8	1769
8	1770
8	1771
8	1772
8	1773
8	1774
8	1775
8	1776
8	1777
8	1778
8	1779
8	1780
8	1781
8	1782
8	1783
8	1784
8	1785
8	1786
8	1787
8	1788
8	1789
8	1790
8	3270
8	1791
8	1792
8	1793
8	1794
8	1795
8	1796
8	1797
8	1798
8	1799
8	1800
8	1893
8	1894
8	1895
8	1896
8	1897
8	1898
8	1899
8	1900
8	1901
8	1801
8	1802
8	1803
8	1804
8	1805
8	1806
8	1807
8	1808
8	1809
8	1810
8	1811
8	1812
8	408
8	409
8	410
8	411
8	412
8	413
8	414
8	415
8	416
8	417
8	418
8	1813
8	1814
8	1815
8	1816
8	1817
8	1818
8	1819
8	1820
8	1821
8	1822
8	1823
8	1824
8	1825
8	1826
8	1827
8	1828
8	1829
8	1830
8	1831
8	1832
8	1833
8	1834
8	1835
8	1836
8	1837
8	1838
8	1839
8	1840
8	1841
8	1842
8	1843
8	1844
8	1845
8	1846
8	1847
8	1848
8	1849
8	1850
8	1851
8	1852
8	1853
8	1854
8	1855
8	1856
8	1857
8	1858
8	1859
8	1860
8	1861
8	1862
8	1863
8	1864
8	1865
8	1866
8	1867
8	1868
8	1869
8	1870
8	1871
8	1872
8	1873
8	1874
8	1875
8	1876
8	1877
8	1878
8	1879
8	1880
8	1881
8	1882
8	1883
8	1884
8	1885
8	1886
8	1887
8	1888
8	1889
8	1890
8	1891
8	1892
8	597
8	598
8	599
8	600
8	601
8	602
8	603
8	604
8	605
8	606
8	607
8	608
8	609
8	610
8	611
8	612
8	613
8	614
8	615
8	616
8	617
8	618
8	619
8	1902
8	1903
8	1904
8	1905
8	1906
8	1907
8	1908
8	1909
8	1910
8	1911
8	1912
8	1913
8	1914
8	1915
8	1917
8	1919
8	1921
8	1922
8	1923
8	1925
8	1926
8	1928
8	1929
8	1931
8	1934
8	1935
8	1936
8	1937
8	1938
8	1939
8	1940
8	375
8	3327
8	3330
8	385
8	3321
8	383
8	3359
8	1986
8	1987
8	1988
8	1989
8	1990
8	1991
8	1992
8	1993
8	1994
8	1995
8	1996
8	1997
8	1998
8	1999
8	2000
8	2001
8	2002
8	2003
8	2004
8	2005
8	2006
8	2007
8	2008
8	2009
8	2010
8	2011
8	2012
8	2013
8	2014
8	3319
8	2030
8	2032
8	2035
8	2038
8	2039
8	2040
8	2042
8	2043
8	2065
8	2067
8	2068
8	2069
8	2070
8	2071
8	2072
8	2073
8	2074
8	2075
8	2079
8	2080
8	2081
8	2083
8	2084
8	2085
8	2086
8	2087
8	2088
8	2089
8	2090
8	2092
8	3328
8	2093
8	2094
8	2095
8	2096
8	2097
8	2098
8	3276
8	3277
8	3278
8	3279
8	3280
8	3281
8	3282
8	3283
8	3284
8	3285
8	3286
8	3287
8	2099
8	2100
8	2101
8	2102
8	2103
8	2104
8	2105
8	2106
8	2107
8	2108
8	2109
8	2110
8	2111
8	2112
8	2113
8	2114
8	2115
8	2116
8	2117
8	2118
8	2119
8	2120
8	2121
8	2122
8	2123
8	2124
8	2125
8	2126
8	2127
8	2128
8	2129
8	2130
8	2131
8	2132
8	2133
8	2134
8	2135
8	2136
8	2137
8	2138
8	2139
8	2140
8	2141
8	2142
8	2143
8	2144
8	2145
8	2146
8	2147
8	2148
8	2149
8	2150
8	2151
8	2152
8	2153
8	2154
8	2155
8	2156
8	2157
8	2158
8	2159
8	2160
8	2161
8	2162
8	2163
8	2164
8	2165
8	2166
8	2167
8	2168
8	2169
8	2170
8	2171
8	2172
8	2173
8	2174
8	2175
8	2176
8	2177
8	2178
8	2179
8	2180
8	2181
8	2182
8	2183
8	2184
8	2185
8	2186
8	2187
8	2188
8	2189
8	2190
8	2191
8	2192
8	2193
8	2194
8	2195
8	2196
8	2197
8	2198
8	2199
8	2200
8	2201
8	2202
8	2203
8	2204
8	2205
8	2206
8	2207
8	2208
8	2209
8	2210
8	2211
8	2212
8	2213
8	2214
8	2215
8	386
8	3325
8	2216
8	2217
8	2218
8	2219
8	2220
8	2221
8	2222
8	2223
8	2224
8	2225
8	2226
8	2227
8	2228
8	2229
8	2230
8	2231
8	2232
8	2233
8	2234
8	2235
8	2236
8	2237
8	2650
8	2651
8	2652
8	2653
8	2654
8	2655
8	2656
8	2657
8	2658
8	2659
8	2660
8	2661
8	2662
8	2663
8	3353
8	3355
8	3271
8	2254
8	2255
8	2256
8	2257
8	2258
8	2259
8	2260
8	2261
8	2262
8	2263
8	2264
8	2265
8	2266
8	2267
8	2268
8	2269
8	2270
8	419
8	420
8	421
8	422
8	423
8	424
8	425
8	426
8	427
8	428
8	429
8	430
8	431
8	432
8	433
8	434
8	435
8	2271
8	2272
8	2273
8	2274
8	2275
8	2276
8	2277
8	2278
8	2279
8	2280
8	2281
8	2318
8	2319
8	2320
8	2321
8	2322
8	2323
8	2324
8	2325
8	2326
8	2327
8	2328
8	2329
8	2330
8	2331
8	2332
8	2333
8	2285
8	2286
8	2287
8	2288
8	2289
8	2290
8	2291
8	2292
8	2293
8	2294
8	2295
8	3254
8	2296
8	2297
8	2298
8	2299
8	2300
8	2301
8	2302
8	2303
8	2304
8	2305
8	2306
8	2307
8	2308
8	2309
8	2310
8	2311
8	2312
8	2313
8	2314
8	2315
8	2316
8	2317
8	2282
8	2283
8	2284
8	2344
8	2345
8	2346
8	2347
8	2348
8	2349
8	2350
8	2351
8	2353
8	2357
8	2358
8	2359
8	2360
8	2361
8	2362
8	2363
8	2364
8	2365
8	2366
8	2367
8	2368
8	2369
8	2370
8	2371
8	2372
8	2373
8	2374
8	2375
8	2376
8	2377
8	2378
8	2379
8	2380
8	2381
8	2382
8	2383
8	2384
8	2385
8	2386
8	2387
8	2388
8	2389
8	2390
8	2391
8	2392
8	2393
8	2394
8	2395
8	2396
8	2397
8	2398
8	2399
8	2400
8	2401
8	2402
8	2403
8	2404
8	2405
8	3275
8	3404
8	3323
8	2664
8	2665
8	2666
8	2667
8	2668
8	2669
8	2670
8	2671
8	2672
8	2673
8	2674
8	2675
8	2676
8	2677
8	2678
8	2679
8	2680
8	2681
8	2682
8	2683
8	2684
8	2685
8	2686
8	2687
8	2688
8	2689
8	2690
8	2691
8	2692
8	2693
8	2694
8	2695
8	2696
8	2697
8	2698
8	2699
8	2700
8	2701
8	2702
8	2703
8	2704
8	3414
8	2406
8	2407
8	2408
8	2409
8	2410
8	2411
8	2412
8	2413
8	2414
8	2415
8	2416
8	2417
8	2418
8	2419
8	3334
8	2420
8	2421
8	2422
8	2423
8	2424
8	2425
8	2426
8	2427
8	2428
8	2429
8	2430
8	2431
8	2432
8	2433
8	570
8	573
8	577
8	580
8	581
8	571
8	579
8	582
8	572
8	575
8	578
8	574
8	576
8	3410
8	3288
8	3289
8	3290
8	3291
8	3292
8	3293
8	3294
8	3295
8	3296
8	3297
8	3298
8	3299
8	3333
8	2434
8	2435
8	2436
8	2437
8	2438
8	2439
8	2440
8	2441
8	2442
8	2443
8	2444
8	2445
8	2446
8	2447
8	2448
8	2451
8	2455
8	2458
8	2459
8	2472
8	2473
8	2474
8	2475
8	2476
8	2477
8	2478
8	2479
8	2480
8	2481
8	2482
8	2483
8	2484
8	2485
8	2486
8	2487
8	2488
8	2489
8	2490
8	2491
8	2492
8	2493
8	2494
8	2495
8	2496
8	2497
8	2498
8	2499
8	2500
8	2501
8	2502
8	2503
8	2504
8	2505
8	3269
8	2506
8	2507
8	2508
8	2509
8	2510
8	2511
8	2512
8	2513
8	2514
8	2515
8	2516
8	2517
8	2518
8	2519
8	2520
8	2521
8	2522
8	456
8	457
8	458
8	459
8	460
8	461
8	462
8	463
8	464
8	465
8	466
8	467
8	2523
8	2524
8	2525
8	2526
8	2527
8	2528
8	2529
8	2530
8	2531
8	3335
8	2532
8	2533
8	2534
8	2535
8	2536
8	2537
8	2538
8	2539
8	2540
8	2541
8	2542
8	2543
8	2544
8	2545
8	2546
8	2547
8	2548
8	2549
8	2550
8	2551
8	2552
8	2553
8	2554
8	2555
8	2556
8	2557
8	2558
8	2559
8	2560
8	2561
8	2562
8	2563
8	2564
8	2705
8	2706
8	2707
8	2708
8	2709
8	2710
8	2711
8	2712
8	2713
8	2714
8	2715
8	2716
8	2717
8	2718
8	2719
8	2720
8	2721
8	2722
8	2723
8	2724
8	2725
8	2726
8	2727
8	2728
8	2729
8	2730
8	3365
8	3366
8	3367
8	3368
8	3369
8	3370
8	3371
8	3372
8	3373
8	3374
8	2565
8	2566
8	2567
8	2568
8	2569
8	2570
8	2571
8	2751
8	2752
8	2753
8	2757
8	2763
8	2764
8	2766
8	2771
8	2772
8	2774
8	2776
8	2780
8	2926
8	2927
8	2928
8	2929
8	2930
8	2931
8	2932
8	2933
8	2934
8	2935
8	2936
8	2937
8	2938
8	2939
8	2940
8	2941
8	2942
8	2943
8	2944
8	2945
8	2946
8	2947
8	2948
8	2949
8	2950
8	2951
8	2952
8	2953
8	2954
8	2955
8	2956
8	2957
8	2958
8	2959
8	2960
8	2961
8	2962
8	2963
8	3004
8	3005
8	3006
8	3007
8	3008
8	3009
8	3010
8	3011
8	3012
8	3013
8	3014
8	3015
8	3016
8	3017
8	2964
8	2965
8	2966
8	2967
8	2968
8	2969
8	2970
8	2971
8	2972
8	2973
8	2974
8	3253
8	2975
8	2976
8	2977
8	2978
8	2979
8	2980
8	2981
8	2982
8	2983
8	2984
8	2985
8	2986
8	2987
8	2988
8	2989
8	2990
8	2991
8	2992
8	2993
8	2994
8	2995
8	2996
8	2997
8	2998
8	2999
8	3000
8	3001
8	3002
8	3003
8	3018
8	3019
8	3020
8	3021
8	3022
8	3023
8	3024
8	3025
8	3026
8	3027
8	3028
8	3029
8	3030
8	3031
8	3032
8	3033
8	3034
8	3035
8	3036
8	3037
8	3038
8	3039
8	3040
8	3041
8	3042
8	3043
8	3044
8	3045
8	3046
8	3047
8	3048
8	3049
8	3050
8	3051
8	3064
8	3065
8	3066
8	3067
8	3068
8	3069
8	3070
8	3071
8	3072
8	3073
8	3074
8	3075
8	3076
8	3077
8	3078
8	3079
8	3080
8	3052
8	3053
8	3054
8	3055
8	3056
8	3057
8	3058
8	3059
8	3060
8	3061
8	3062
8	3063
8	3081
8	3082
8	3083
8	3084
8	3085
8	3086
8	3087
8	3088
8	3089
8	3090
8	3091
8	3092
8	3093
8	3094
8	3095
8	3096
8	3097
8	3098
8	3099
8	3100
8	3101
8	3102
8	3103
8	360
8	361
8	362
8	363
8	364
8	365
8	366
8	367
8	368
8	369
8	370
8	371
8	372
8	373
8	556
8	557
8	558
8	559
8	560
8	561
8	565
8	566
8	569
8	664
8	665
8	667
8	670
8	672
8	673
8	3104
8	3105
8	3106
8	3107
8	3108
8	3109
8	3110
8	3111
8	3112
8	3113
8	3114
8	3115
8	3116
8	3132
8	3133
8	3134
8	3135
8	3136
8	3137
8	3138
8	3139
8	3140
8	3141
8	3142
8	3143
8	3144
8	3145
8	2731
8	2732
8	2733
8	2734
8	2735
8	2736
8	2737
8	2738
8	2739
8	2740
8	2741
8	2742
8	2743
8	2744
8	2745
8	2746
8	2747
8	2748
8	2749
8	2750
8	3320
8	3264
8	3149
8	3153
8	3155
8	3158
8	3160
8	3162
8	3164
8	3438
8	3436
8	3454
8	3432
8	3443
8	3447
8	3452
8	3441
8	3445
8	3453
8	3439
8	3435
8	3448
8	3437
8	3446
8	3444
8	3433
8	3431
8	3430
8	3455
8	3456
8	3457
8	3458
8	3459
8	3460
8	3461
8	3462
8	3463
8	3464
8	3465
8	3466
8	3467
8	3468
8	3469
8	3470
8	3471
8	3472
8	3473
8	3474
8	3475
8	3476
8	3477
8	3478
8	3482
8	3491
8	3501
8	3500
8	3488
8	3499
8	3497
8	3490
8	3492
8	3483
8	3493
8	3498
8	3502
8	3479
8	3481
8	3503
8	3486
8	3484
9	3402
10	3250
10	2819
10	2820
10	2821
10	2822
10	2823
10	2824
10	2825
10	2826
10	2827
10	2828
10	2829
10	2830
10	2831
10	2832
10	2833
10	2834
10	2835
10	2836
10	2837
10	2838
10	3226
10	3227
10	3228
10	3229
10	3230
10	3231
10	3232
10	3233
10	3234
10	3235
10	3236
10	3237
10	3238
10	3239
10	3240
10	3241
10	3242
10	3243
10	3244
10	3245
10	3246
10	3247
10	3248
10	3249
10	2839
10	2840
10	2841
10	2842
10	2843
10	2844
10	2845
10	2846
10	2847
10	2848
10	2849
10	2850
10	2851
10	2852
10	2853
10	2854
10	2855
10	2856
10	3166
10	3167
10	3168
10	3171
10	3223
10	2858
10	2861
10	2865
10	2868
10	2871
10	2873
10	2877
10	2880
10	2883
10	2885
10	2888
10	2893
10	2894
10	2898
10	2901
10	2904
10	2906
10	2911
10	2913
10	2915
10	2917
10	2919
10	2921
10	2923
10	2925
10	2859
10	2860
10	2864
10	2867
10	2869
10	2872
10	2878
10	2879
10	2884
10	2887
10	2889
10	2892
10	2896
10	2897
10	2902
10	2905
10	2907
10	2910
10	2914
10	2916
10	2918
10	2920
10	2922
10	2924
10	2857
10	2862
10	2863
10	2866
10	2870
10	2874
10	2875
10	2876
10	2881
10	2882
10	2886
10	2890
10	2891
10	2895
10	2899
10	2903
10	2908
10	2909
10	2912
10	3165
10	3169
10	3170
10	3252
10	3224
10	3251
10	3340
10	3339
10	3338
10	3337
10	3341
10	3345
10	3342
10	3346
10	3343
10	3347
10	3344
10	3348
10	3360
10	3361
10	3362
10	3363
10	3364
10	3172
10	3173
10	3174
10	3175
10	3176
10	3177
10	3178
10	3179
10	3180
10	3181
10	3182
10	3183
10	3184
10	3185
10	3186
10	3187
10	3188
10	3189
10	3190
10	3191
10	3192
10	3193
10	3194
10	3195
10	3196
10	3197
10	3198
10	3199
10	3200
10	3201
10	3202
10	3203
10	3204
10	3205
10	3206
10	3207
10	3208
10	3209
10	3210
10	3211
10	3212
10	3213
10	3214
10	3215
10	3216
10	3217
10	3218
10	3219
10	3220
10	3221
10	3222
10	3428
10	3429
11	516
11	523
11	219
11	220
11	215
11	228
11	230
11	236
11	852
11	858
11	864
11	874
11	1088
11	1093
11	1099
11	1105
11	501
11	1518
11	1519
11	1928
11	1921
11	2752
11	2753
12	3479
12	3481
12	3482
12	3483
12	3484
12	3486
12	3488
12	3490
12	3491
12	3492
12	3493
12	3497
12	3498
12	3499
12	3500
12	3501
12	3502
12	3503
12	3430
12	3431
12	3432
12	3433
12	3435
12	3436
12	3437
12	3438
12	3439
12	3441
12	3443
12	3444
12	3445
12	3446
12	3447
12	3448
12	3452
12	3453
12	3454
12	3403
12	3404
12	3405
12	3406
12	3407
12	3410
12	3411
12	3412
12	3413
12	3414
12	3416
12	3417
12	3420
12	3421
12	3423
12	3424
12	3425
12	3426
12	3427
13	3479
13	3481
13	3482
13	3483
13	3484
13	3486
13	3488
13	3490
13	3491
13	3492
13	3493
13	3497
13	3498
13	3499
13	3500
13	3501
13	3502
13	3503
14	3430
14	3431
14	3432
14	3433
14	3435
14	3436
14	3437
14	3438
14	3439
14	3441
14	3443
14	3444
14	3445
14	3446
14	3447
14	3448
14	3452
14	3453
14	3454
15	3403
15	3404
15	3405
15	3406
15	3407
15	3410
15	3411
15	3412
15	3413
15	3414
15	3416
15	3417
15	3420
15	3421
15	3423
15	3424
15	3425
15	3426
15	3427
16	3367
16	52
16	2194
16	2195
16	2198
16	2206
16	2512
16	2516
16	2550
16	2003
16	2004
16	2005
16	2007
16	2010
16	2013
17	1
17	2
17	3
17	4
17	5
17	152
17	160
17	1278
17	1283
17	1392
17	1335
17	1345
17	1380
17	1801
17	1830
17	1837
17	1854
17	1876
17	1880
17	2094
17	2095
17	2096
17	3290
18	597
\.


--
-- TOC entry 2742 (class 0 OID 24795)
-- Dependencies: 182
-- Data for Name: track; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY track (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price) FROM stdin;
1	For Those About To Rock (We Salute You)	1	1	1	Angus Young, Malcolm Young, Brian Johnson	343719	\\x3131313730333334	0.989999999999999991
2	Balls to the Wall	2	2	1		342562	\\x35353130343234	0.989999999999999991
3	Fast As a Shark	3	2	1	F. Baltes, S. Kaufman, U. Dirkscneider & W. Hoffman	230619	\\x33393930393934	0.989999999999999991
4	Restless and Wild	3	2	1	F. Baltes, R.A. Smith-Diesel, S. Kaufman, U. Dirkscneider & W. Hoffman	252051	\\x34333331373739	0.989999999999999991
5	Princess of the Dawn	3	2	1	Deaffy & R.A. Smith-Diesel	375418	\\x36323930353231	0.989999999999999991
6	Put The Finger On You	1	1	1	Angus Young, Malcolm Young, Brian Johnson	205662	\\x36373133343531	0.989999999999999991
7	Let's Get It Up	1	1	1	Angus Young, Malcolm Young, Brian Johnson	233926	\\x37363336353631	0.989999999999999991
8	Inject The Venom	1	1	1	Angus Young, Malcolm Young, Brian Johnson	210834	\\x36383532383630	0.989999999999999991
9	Snowballed	1	1	1	Angus Young, Malcolm Young, Brian Johnson	203102	\\x36353939343234	0.989999999999999991
10	Evil Walks	1	1	1	Angus Young, Malcolm Young, Brian Johnson	263497	\\x38363131323435	0.989999999999999991
11	C.O.D.	1	1	1	Angus Young, Malcolm Young, Brian Johnson	199836	\\x36353636333134	0.989999999999999991
12	Breaking The Rules	1	1	1	Angus Young, Malcolm Young, Brian Johnson	263288	\\x38353936383430	0.989999999999999991
13	Night Of The Long Knives	1	1	1	Angus Young, Malcolm Young, Brian Johnson	205688	\\x36373036333437	0.989999999999999991
14	Spellbound	1	1	1	Angus Young, Malcolm Young, Brian Johnson	270863	\\x38383137303338	0.989999999999999991
15	Go Down	4	1	1	AC/DC	331180	\\x3130383437363131	0.989999999999999991
16	Dog Eat Dog	4	1	1	AC/DC	215196	\\x37303332313632	0.989999999999999991
17	Let There Be Rock	4	1	1	AC/DC	366654	\\x3132303231323631	0.989999999999999991
18	Bad Boy Boogie	4	1	1	AC/DC	267728	\\x38373736313430	0.989999999999999991
19	Problem Child	4	1	1	AC/DC	325041	\\x3130363137313136	0.989999999999999991
20	Overdose	4	1	1	AC/DC	369319	\\x3132303636323934	0.989999999999999991
21	Hell Ain't A Bad Place To Be	4	1	1	AC/DC	254380	\\x38333331323836	0.989999999999999991
22	Whole Lotta Rosie	4	1	1	AC/DC	323761	\\x3130353437313534	0.989999999999999991
23	Walk On Water	5	1	1	Steven Tyler, Joe Perry, Jack Blades, Tommy Shaw	295680	\\x39373139353739	0.989999999999999991
24	Love In An Elevator	5	1	1	Steven Tyler, Joe Perry	321828	\\x3130353532303531	0.989999999999999991
25	Rag Doll	5	1	1	Steven Tyler, Joe Perry, Jim Vallance, Holly Knight	264698	\\x38363735333435	0.989999999999999991
26	What It Takes	5	1	1	Steven Tyler, Joe Perry, Desmond Child	310622	\\x3130313434373330	0.989999999999999991
27	Dude (Looks Like A Lady)	5	1	1	Steven Tyler, Joe Perry, Desmond Child	264855	\\x38363739393430	0.989999999999999991
28	Janie's Got A Gun	5	1	1	Steven Tyler, Tom Hamilton	330736	\\x3130383639333931	0.989999999999999991
29	Cryin'	5	1	1	Steven Tyler, Joe Perry, Taylor Rhodes	309263	\\x3130303536393935	0.989999999999999991
30	Amazing	5	1	1	Steven Tyler, Richie Supa	356519	\\x3131363136313935	0.989999999999999991
31	Blind Man	5	1	1	Steven Tyler, Joe Perry, Taylor Rhodes	240718	\\x37383737343533	0.989999999999999991
32	Deuces Are Wild	5	1	1	Steven Tyler, Jim Vallance	215875	\\x37303734313637	0.989999999999999991
33	The Other Side	5	1	1	Steven Tyler, Jim Vallance	244375	\\x37393833323730	0.989999999999999991
34	Crazy	5	1	1	Steven Tyler, Joe Perry, Desmond Child	316656	\\x3130343032333938	0.989999999999999991
35	Eat The Rich	5	1	1	Steven Tyler, Joe Perry, Jim Vallance	251036	\\x38323632303339	0.989999999999999991
36	Angel	5	1	1	Steven Tyler, Desmond Child	307617	\\x39393839333331	0.989999999999999991
37	Livin' On The Edge	5	1	1	Steven Tyler, Joe Perry, Mark Hudson	381231	\\x3132333734353639	0.989999999999999991
38	All I Really Want	6	1	1	Alanis Morissette & Glenn Ballard	284891	\\x39333735353637	0.989999999999999991
39	You Oughta Know	6	1	1	Alanis Morissette & Glenn Ballard	249234	\\x38313936393136	0.989999999999999991
40	Perfect	6	1	1	Alanis Morissette & Glenn Ballard	188133	\\x36313435343034	0.989999999999999991
41	Hand In My Pocket	6	1	1	Alanis Morissette & Glenn Ballard	221570	\\x37323234323436	0.989999999999999991
42	Right Through You	6	1	1	Alanis Morissette & Glenn Ballard	176117	\\x35373933303832	0.989999999999999991
43	Forgiven	6	1	1	Alanis Morissette & Glenn Ballard	300355	\\x39373533323536	0.989999999999999991
44	You Learn	6	1	1	Alanis Morissette & Glenn Ballard	239699	\\x37383234383337	0.989999999999999991
45	Head Over Feet	6	1	1	Alanis Morissette & Glenn Ballard	267493	\\x38373538303038	0.989999999999999991
46	Mary Jane	6	1	1	Alanis Morissette & Glenn Ballard	280607	\\x39313633353838	0.989999999999999991
47	Ironic	6	1	1	Alanis Morissette & Glenn Ballard	229825	\\x37353938383636	0.989999999999999991
48	Not The Doctor	6	1	1	Alanis Morissette & Glenn Ballard	227631	\\x37363034363031	0.989999999999999991
49	Wake Up	6	1	1	Alanis Morissette & Glenn Ballard	293485	\\x39373033333539	0.989999999999999991
50	You Oughta Know (Alternate)	6	1	1	Alanis Morissette & Glenn Ballard	491885	\\x3136303038363239	0.989999999999999991
51	We Die Young	7	1	1	Jerry Cantrell	152084	\\x34393235333632	0.989999999999999991
52	Man In The Box	7	1	1	Jerry Cantrell, Layne Staley	286641	\\x39333130323732	0.989999999999999991
53	Sea Of Sorrow	7	1	1	Jerry Cantrell	349831	\\x3131333136333238	0.989999999999999991
54	Bleed The Freak	7	1	1	Jerry Cantrell	241946	\\x37383437373136	0.989999999999999991
55	I Can't Remember	7	1	1	Jerry Cantrell, Layne Staley	222955	\\x37333032353530	0.989999999999999991
56	Love, Hate, Love	7	1	1	Jerry Cantrell, Layne Staley	387134	\\x3132353735333936	0.989999999999999991
57	It Ain't Like That	7	1	1	Jerry Cantrell, Michael Starr, Sean Kinney	277577	\\x38393933373933	0.989999999999999991
58	Sunshine	7	1	1	Jerry Cantrell	284969	\\x39323136303537	0.989999999999999991
59	Put You Down	7	1	1	Jerry Cantrell	196231	\\x36343230353330	0.989999999999999991
60	Confusion	7	1	1	Jerry Cantrell, Michael Starr, Layne Staley	344163	\\x3131313833363437	0.989999999999999991
61	I Know Somethin (Bout You)	7	1	1	Jerry Cantrell	261955	\\x38343937373838	0.989999999999999991
62	Real Thing	7	1	1	Jerry Cantrell, Layne Staley	243879	\\x37393337373331	0.989999999999999991
77	Enter Sandman	9	1	3	Apocalyptica	221701	\\x37323836333035	0.989999999999999991
78	Master Of Puppets	9	1	3	Apocalyptica	436453	\\x3134333735333130	0.989999999999999991
79	Harvester Of Sorrow	9	1	3	Apocalyptica	374543	\\x3132333732353336	0.989999999999999991
80	The Unforgiven	9	1	3	Apocalyptica	322925	\\x3130343232343437	0.989999999999999991
81	Sad But True	9	1	3	Apocalyptica	288208	\\x39343035353236	0.989999999999999991
82	Creeping Death	9	1	3	Apocalyptica	308035	\\x3130313130393830	0.989999999999999991
83	Wherever I May Roam	9	1	3	Apocalyptica	369345	\\x3132303333313130	0.989999999999999991
84	Welcome Home (Sanitarium)	9	1	3	Apocalyptica	350197	\\x3131343036343331	0.989999999999999991
85	Cochise	10	1	1	Audioslave/Chris Cornell	222380	\\x35333339393331	0.989999999999999991
86	Show Me How to Live	10	1	1	Audioslave/Chris Cornell	277890	\\x36363732313736	0.989999999999999991
87	Gasoline	10	1	1	Audioslave/Chris Cornell	279457	\\x36373039373933	0.989999999999999991
88	What You Are	10	1	1	Audioslave/Chris Cornell	249391	\\x35393838313836	0.989999999999999991
168	Now Sports	18	1	4		4884	\\x313631323636	0.989999999999999991
89	Like a Stone	10	1	1	Audioslave/Chris Cornell	294034	\\x37303539363234	0.989999999999999991
90	Set It Off	10	1	1	Audioslave/Chris Cornell	263262	\\x36333231303931	0.989999999999999991
91	Shadow on the Sun	10	1	1	Audioslave/Chris Cornell	343457	\\x38323435373933	0.989999999999999991
92	I am the Highway	10	1	1	Audioslave/Chris Cornell	334942	\\x38303431343131	0.989999999999999991
93	Exploder	10	1	1	Audioslave/Chris Cornell	206053	\\x34393438303935	0.989999999999999991
94	Hypnotize	10	1	1	Audioslave/Chris Cornell	206628	\\x34393631383837	0.989999999999999991
95	Bring'em Back Alive	10	1	1	Audioslave/Chris Cornell	329534	\\x37393131363334	0.989999999999999991
96	Light My Way	10	1	1	Audioslave/Chris Cornell	303595	\\x37323839303834	0.989999999999999991
97	Getaway Car	10	1	1	Audioslave/Chris Cornell	299598	\\x37313933313632	0.989999999999999991
98	The Last Remaining Light	10	1	1	Audioslave/Chris Cornell	317492	\\x37363232363135	0.989999999999999991
99	Your Time Has Come	11	1	4	Cornell, Commerford, Morello, Wilk	255529	\\x38323733353932	0.989999999999999991
100	Out Of Exile	11	1	4	Cornell, Commerford, Morello, Wilk	291291	\\x39353036353731	0.989999999999999991
101	Be Yourself	11	1	4	Cornell, Commerford, Morello, Wilk	279484	\\x39313036313630	0.989999999999999991
102	Doesn't Remind Me	11	1	4	Cornell, Commerford, Morello, Wilk	255869	\\x38333537333837	0.989999999999999991
103	Drown Me Slowly	11	1	4	Cornell, Commerford, Morello, Wilk	233691	\\x37363039313738	0.989999999999999991
104	Heaven's Dead	11	1	4	Cornell, Commerford, Morello, Wilk	276688	\\x39303036313538	0.989999999999999991
105	The Worm	11	1	4	Cornell, Commerford, Morello, Wilk	237714	\\x37373130383030	0.989999999999999991
106	Man Or Animal	11	1	4	Cornell, Commerford, Morello, Wilk	233195	\\x37353432393432	0.989999999999999991
107	Yesterday To Tomorrow	11	1	4	Cornell, Commerford, Morello, Wilk	273763	\\x38393434323035	0.989999999999999991
108	Dandelion	11	1	4	Cornell, Commerford, Morello, Wilk	278125	\\x39303033353932	0.989999999999999991
109	#1 Zero	11	1	4	Cornell, Commerford, Morello, Wilk	299102	\\x39373331393838	0.989999999999999991
110	The Curse	11	1	4	Cornell, Commerford, Morello, Wilk	309786	\\x3130303239343036	0.989999999999999991
111	Money	12	1	5	Berry Gordy, Jr./Janie Bradford	147591	\\x32333635383937	0.989999999999999991
112	Long Tall Sally	12	1	5	Enotris Johnson/Little Richard/Robert "Bumps" Blackwell	106396	\\x31373037303834	0.989999999999999991
113	Bad Boy	12	1	5	Larry Williams	116088	\\x31383632313236	0.989999999999999991
114	Twist And Shout	12	1	5	Bert Russell/Phil Medley	161123	\\x32353832353533	0.989999999999999991
115	Please Mr. Postman	12	1	5	Brian Holland/Freddie Gorman/Georgia Dobbins/Robert Bateman/William Garrett	137639	\\x32323036393836	0.989999999999999991
116	C'Mon Everybody	12	1	5	Eddie Cochran/Jerry Capehart	140199	\\x32323437383436	0.989999999999999991
117	Rock 'N' Roll Music	12	1	5	Chuck Berry	141923	\\x32323736373838	0.989999999999999991
118	Slow Down	12	1	5	Larry Williams	163265	\\x32363136393831	0.989999999999999991
119	Roadrunner	12	1	5	Bo Diddley	143595	\\x32333031393839	0.989999999999999991
120	Carol	12	1	5	Chuck Berry	143830	\\x32333036303139	0.989999999999999991
121	Good Golly Miss Molly	12	1	5	Little Richard	106266	\\x31373034393138	0.989999999999999991
122	20 Flight Rock	12	1	5	Ned Fairchild	107807	\\x31323939393630	0.989999999999999991
123	Quadrant	13	1	2	Billy Cobham	261851	\\x38353338313939	0.989999999999999991
124	Snoopy's search-Red baron	13	1	2	Billy Cobham	456071	\\x3135303735363136	0.989999999999999991
125	Spanish moss-"A sound portrait"-Spanish moss	13	1	2	Billy Cobham	248084	\\x38323137383637	0.989999999999999991
126	Moon germs	13	1	2	Billy Cobham	294060	\\x39373134383132	0.989999999999999991
127	Stratus	13	1	2	Billy Cobham	582086	\\x3139313135363830	0.989999999999999991
128	The pleasant pheasant	13	1	2	Billy Cobham	318066	\\x3130363330353738	0.989999999999999991
129	Solo-Panhandler	13	1	2	Billy Cobham	246151	\\x38323330363631	0.989999999999999991
130	Do what cha wanna	13	1	2	George Duke	274155	\\x39303138353635	0.989999999999999991
131	Intro/ Low Down	14	1	3		323683	\\x3130363432393031	0.989999999999999991
132	13 Years Of Grief	14	1	3		246987	\\x38313337343231	0.989999999999999991
133	Stronger Than Death	14	1	3		300747	\\x39383639363437	0.989999999999999991
134	All For You	14	1	3		235833	\\x37373236393438	0.989999999999999991
135	Super Terrorizer	14	1	3		319373	\\x3130353133393035	0.989999999999999991
136	Phoney Smile Fake Hellos	14	1	3		273606	\\x39303131373031	0.989999999999999991
137	Lost My Better Half	14	1	3		284081	\\x39333535333039	0.989999999999999991
138	Bored To Tears	14	1	3		247327	\\x38313330303930	0.989999999999999991
139	A.N.D.R.O.T.A.Z.	14	1	3		266266	\\x38353734373436	0.989999999999999991
140	Born To Booze	14	1	3		282122	\\x39323537333538	0.989999999999999991
141	World Of Trouble	14	1	3		359157	\\x3131383230393332	0.989999999999999991
142	No More Tears	14	1	3		555075	\\x3138303431363239	0.989999999999999991
143	The Begining... At Last	14	1	3		365662	\\x3131393635313039	0.989999999999999991
144	Heart Of Gold	15	1	3		194873	\\x36343137343630	0.989999999999999991
145	Snowblind	15	1	3		420022	\\x3133383432353439	0.989999999999999991
146	Like A Bird	15	1	3		276532	\\x39313135363537	0.989999999999999991
147	Blood In The Wall	15	1	3		284368	\\x39333539343735	0.989999999999999991
148	The Beginning...At Last	15	1	3		271960	\\x38393735383134	0.989999999999999991
149	Black Sabbath	16	1	3		382066	\\x3132343430323030	0.989999999999999991
150	The Wizard	16	1	3		264829	\\x38363436373337	0.989999999999999991
151	Behind The Wall Of Sleep	16	1	3		217573	\\x37313639303439	0.989999999999999991
152	N.I.B.	16	1	3		368770	\\x3132303239333930	0.989999999999999991
153	Evil Woman	16	1	3		204930	\\x36363535313730	0.989999999999999991
154	Sleeping Village	16	1	3		644571	\\x3231313238353235	0.989999999999999991
155	Warning	16	1	3		212062	\\x36383933333633	0.989999999999999991
156	Wheels Of Confusion / The Straightener	17	1	3	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	494524	\\x3136303635383330	0.989999999999999991
157	Tomorrow's Dream	17	1	3	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	192496	\\x36323532303731	0.989999999999999991
158	Changes	17	1	3	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	286275	\\x39313735353137	0.989999999999999991
159	FX	17	1	3	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	103157	\\x33333331373736	0.989999999999999991
160	Supernaut	17	1	3	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	285779	\\x39323435393731	0.989999999999999991
161	Snowblind	17	1	3	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	331676	\\x3130383133333836	0.989999999999999991
162	Cornucopia	17	1	3	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	234814	\\x37363533383830	0.989999999999999991
163	Laguna Sunrise	17	1	3	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	173087	\\x35363731333734	0.989999999999999991
164	St. Vitus Dance	17	1	3	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	149655	\\x34383834393639	0.989999999999999991
165	Under The Sun/Every Day Comes and Goes	17	1	3	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	350458	\\x3131333630343836	0.989999999999999991
166	Smoked Pork	18	1	4		47333	\\x31353439303734	0.989999999999999991
167	Body Count's In The House	18	1	4		204251	\\x36373135343133	0.989999999999999991
169	Body Count	18	1	4		317936	\\x3130343839313339	0.989999999999999991
170	A Statistic	18	1	4		6373	\\x323131393937	0.989999999999999991
171	Bowels Of The Devil	18	1	4		223216	\\x37333234313235	0.989999999999999991
172	The Real Problem	18	1	4		11650	\\x333837333630	0.989999999999999991
173	KKK Bitch	18	1	4		173008	\\x35373039363331	0.989999999999999991
174	D Note	18	1	4		95738	\\x33303637303634	0.989999999999999991
175	Voodoo	18	1	4		300721	\\x39383735393632	0.989999999999999991
176	The Winner Loses	18	1	4		392254	\\x3132383433383231	0.989999999999999991
177	There Goes The Neighborhood	18	1	4		350171	\\x3131343433343731	0.989999999999999991
178	Oprah	18	1	4		6635	\\x323234333133	0.989999999999999991
179	Evil Dick	18	1	4		239020	\\x37383238383733	0.989999999999999991
180	Body Count Anthem	18	1	4		166426	\\x35343633363930	0.989999999999999991
181	Momma's Gotta Die Tonight	18	1	4		371539	\\x3132313232393436	0.989999999999999991
182	Freedom Of Speech	18	1	4		281234	\\x39333337393137	0.989999999999999991
183	King In Crimson	19	1	3	Roy Z	283167	\\x39323138343939	0.989999999999999991
184	Chemical Wedding	19	1	3	Roy Z	246177	\\x38303232373634	0.989999999999999991
185	The Tower	19	1	3	Roy Z	285257	\\x39343335363933	0.989999999999999991
186	Killing Floor	19	1	3	Adrian Smith	269557	\\x38383534323430	0.989999999999999991
187	Book Of Thel	19	1	3	Eddie Casillas/Roy Z	494393	\\x3136303334343034	0.989999999999999991
188	Gates Of Urizen	19	1	3	Roy Z	265351	\\x38363237303034	0.989999999999999991
189	Jerusalem	19	1	3	Roy Z	402390	\\x3133313934343633	0.989999999999999991
190	Trupets Of Jericho	19	1	3	Roy Z	359131	\\x3131383230393038	0.989999999999999991
191	Machine Men	19	1	3	Adrian Smith	341655	\\x3131313338313437	0.989999999999999991
192	The Alchemist	19	1	3	Roy Z	509413	\\x3136353435363537	0.989999999999999991
193	Realword	19	1	3	Roy Z	237531	\\x37383032303935	0.989999999999999991
194	First Time I Met The Blues	20	1	6	Eurreal Montgomery	140434	\\x34363034393935	0.989999999999999991
195	Let Me Love You Baby	20	1	6	Willie Dixon	175386	\\x35373136393934	0.989999999999999991
196	Stone Crazy	20	1	6	Buddy Guy	433397	\\x3134313834393834	0.989999999999999991
197	Pretty Baby	20	1	6	Willie Dixon	237662	\\x37383438323832	0.989999999999999991
198	When My Left Eye Jumps	20	1	6	Al Perkins/Willie Dixon	235311	\\x37363835333633	0.989999999999999991
199	Leave My Girl Alone	20	1	6	Buddy Guy	204721	\\x36383539353138	0.989999999999999991
200	She Suits Me To A Tee	20	1	6	Buddy Guy	136803	\\x34343536333231	0.989999999999999991
201	Keep It To Myself (Aka Keep It To Yourself)	20	1	6	Sonny Boy Williamson [I]	166060	\\x35343837303536	0.989999999999999991
202	My Time After Awhile	20	1	6	Robert Geddins/Ron Badger/Sheldon Feinberg	182491	\\x36303232363938	0.989999999999999991
203	Too Many Ways (Alternate)	20	1	6	Willie Dixon	135053	\\x34343539393436	0.989999999999999991
204	Talkin' 'Bout Women Obviously	20	1	6	Amos Blakemore/Buddy Guy	589531	\\x3139313631333737	0.989999999999999991
206	Prenda Minha	21	1	7	Tradicional	99369	\\x33323235333634	0.989999999999999991
208	Terra	21	1	7	Caetano Veloso	482429	\\x3135383839303534	0.989999999999999991
209	Eclipse Oculto	21	1	7	Caetano Veloso	221936	\\x37333832373033	0.989999999999999991
210	Texto "Verdade Tropical"	21	1	7	Caetano Veloso	84088	\\x32373532313631	0.989999999999999991
211	Bem Devagar	21	1	7	Gilberto Gil	133172	\\x34333333363531	0.989999999999999991
213	Saudosismo	21	1	7	Caetano Veloso	144326	\\x34373236393831	0.989999999999999991
214	Carolina	21	1	7	Chico Buarque	181812	\\x35393234313539	0.989999999999999991
215	Sozinho	21	1	7	Peninha	190589	\\x36323533323030	0.989999999999999991
216	Esse Cara	21	1	7	Caetano Veloso	223111	\\x37323137313236	0.989999999999999991
218	Linha Do Equador	21	1	7	Caetano Veloso - Djavan	299337	\\x3130303033373437	0.989999999999999991
219	Odara	21	1	7	Caetano Veloso	141270	\\x34373034313034	0.989999999999999991
220	A Luz De Tieta	21	1	7	Caetano Veloso	251742	\\x38353037343436	0.989999999999999991
222	Vida Boa	21	1	7	Fausto Nilo - Armandinho	281730	\\x39343131323732	0.989999999999999991
223	Sozinho (Hitmakers Classic Mix)	22	1	7		436636	\\x3134343632303732	0.989999999999999991
224	Sozinho (Hitmakers Classic Radio Edit)	22	1	7		195004	\\x36343535313334	0.989999999999999991
226	Carolina	23	1	7		163056	\\x35333735333935	0.989999999999999991
228	Vai Passar	23	1	7		369763	\\x3132333539313631	0.989999999999999991
229	Samba De Orly	23	1	7		162429	\\x35343331383534	0.989999999999999991
230	Bye, Bye Brasil	23	1	7		283402	\\x39343939353930	0.989999999999999991
231	Atras Da Porta	23	1	7		189675	\\x36313332383433	0.989999999999999991
232	Tatuagem	23	1	7		172120	\\x35363435373033	0.989999999999999991
234	Morena De Angola	23	1	7		186801	\\x36333733393332	0.989999999999999991
236	A Banda	23	1	7		132493	\\x34333439353339	0.989999999999999991
237	Minha Historia	23	1	7		182256	\\x36303239363733	0.989999999999999991
239	Brejo Da Cruz	23	1	7		214099	\\x37323730373439	0.989999999999999991
240	Meu Caro Amigo	23	1	7		260257	\\x38373738313732	0.989999999999999991
241	Geni E O Zepelim	23	1	7		317570	\\x3130333432323236	0.989999999999999991
243	Vai Trabalhar Vagabundo	23	1	7		139154	\\x34363933393431	0.989999999999999991
301	A Sombra Da Maldade	27	1	8	Da Gama/Toni Garrido	285231	\\x39353434333833	0.989999999999999991
302	A Estrada	27	1	8	Da Gama/Lazao/Toni Garrido	282174	\\x39333434343737	0.989999999999999991
303	Falar A Verdade	27	1	8	Bino/Da Gama/Ras Bernardo	244950	\\x38313839303933	0.989999999999999991
304	Firmamento	27	1	8	Harry Lawes/Winston Foster-Vers	225488	\\x37353037383636	0.989999999999999991
305	Pensamento	27	1	8	Bino/Da Gama/Ras Bernardo	192391	\\x36333939373631	0.989999999999999991
306	Realidade Virtual	27	1	8	Bino/Da Gamma/Lazao/Toni Garrido	240300	\\x38303639393334	0.989999999999999991
307	Doutor	27	1	8	Bino/Da Gama/Toni Garrido	178155	\\x35393530393532	0.989999999999999991
308	Na Frente Da TV	27	1	8	Bino/Da Gama/Lazao/Ras Bernardo	289750	\\x39363333363539	0.989999999999999991
309	Downtown	27	1	8	Cidade Negra	239725	\\x38303234333836	0.989999999999999991
311	A Cor Do Sol	27	1	8	Bernardo Vilhena/Da Gama/Lazao	273031	\\x39313432393337	0.989999999999999991
337	You Shook Me	30	1	1	J B Lenoir/Willie Dixon	315951	\\x3130323439393538	0.989999999999999991
338	I Can't Quit You Baby	30	1	1	Willie Dixon	263836	\\x38353831343134	0.989999999999999991
339	Communication Breakdown	30	1	1	Jimmy Page/John Bonham/John Paul Jones	192653	\\x36323837323537	0.989999999999999991
340	Dazed and Confused	30	1	1	Jimmy Page	401920	\\x3133303335373635	0.989999999999999991
341	The Girl I Love She Got Long Black Wavy Hair	30	1	1	Jimmy Page/John Bonham/John Estes/John Paul Jones/Robert Plant	183327	\\x35393935363836	0.989999999999999991
342	What is and Should Never Be	30	1	1	Jimmy Page/Robert Plant	260675	\\x38343937313136	0.989999999999999991
343	Communication Breakdown(2)	30	1	1	Jimmy Page/John Bonham/John Paul Jones	161149	\\x35323631303232	0.989999999999999991
344	Travelling Riverside Blues	30	1	1	Jimmy Page/Robert Johnson/Robert Plant	312032	\\x3130323332353831	0.989999999999999991
345	Whole Lotta Love	30	1	1	Jimmy Page/John Bonham/John Paul Jones/Robert Plant/Willie Dixon	373394	\\x3132323538313735	0.989999999999999991
346	Somethin' Else	30	1	1	Bob Cochran/Sharon Sheeley	127869	\\x34313635363530	0.989999999999999991
347	Communication Breakdown(3)	30	1	1	Jimmy Page/John Bonham/John Paul Jones	185260	\\x36303431313333	0.989999999999999991
348	I Can't Quit You Baby(2)	30	1	1	Willie Dixon	380551	\\x3132333737363135	0.989999999999999991
349	You Shook Me(2)	30	1	1	J B Lenoir/Willie Dixon	619467	\\x3230313338363733	0.989999999999999991
350	How Many More Times	30	1	1	Chester Burnett/Jimmy Page/John Bonham/John Paul Jones/Robert Plant	711836	\\x3233303932393533	0.989999999999999991
351	Debra Kadabra	31	1	1	Frank Zappa	234553	\\x37363439363739	0.989999999999999991
352	Carolina Hard-Core Ecstasy	31	1	1	Frank Zappa	359680	\\x3131373331303631	0.989999999999999991
353	Sam With The Showing Scalp Flat Top	31	1	1	Don Van Vliet	171284	\\x35353732393933	0.989999999999999991
354	Poofter's Froth Wyoming Plans Ahead	31	1	1	Frank Zappa	183902	\\x36303037303139	0.989999999999999991
355	200 Years Old	31	1	1	Frank Zappa	272561	\\x38393132343635	0.989999999999999991
356	Cucamonga	31	1	1	Frank Zappa	144483	\\x34373238353836	0.989999999999999991
357	Advance Romance	31	1	1	Frank Zappa	677694	\\x3232303830303531	0.989999999999999991
358	Man With The Woman Head	31	1	1	Don Van Vliet	88894	\\x32393232303434	0.989999999999999991
359	Muffin Man	31	1	1	Frank Zappa	332878	\\x3130383931363832	0.989999999999999991
360	Vai-Vai 2001	32	1	10		276349	\\x39343032323431	0.989999999999999991
361	X-9 2001	32	1	10		273920	\\x39333130333730	0.989999999999999991
362	Gavioes 2001	32	1	10		282723	\\x39363136363430	0.989999999999999991
363	Nene 2001	32	1	10		284969	\\x39363934353038	0.989999999999999991
364	Rosas De Ouro 2001	32	1	10		284342	\\x39373231303834	0.989999999999999991
365	Mocidade Alegre 2001	32	1	10		282488	\\x39353939393337	0.989999999999999991
366	Camisa Verde 2001	32	1	10		283454	\\x39363333373535	0.989999999999999991
367	Leandro De Itaquera 2001	32	1	10		274808	\\x39343531383435	0.989999999999999991
368	Tucuruvi 2001	32	1	10		287921	\\x39383833333335	0.989999999999999991
369	Aguia De Ouro 2001	32	1	10		284160	\\x39363938373239	0.989999999999999991
370	Ipiranga 2001	32	1	10		248293	\\x38353232353931	0.989999999999999991
371	Morro Da Casa Verde 2001	32	1	10		284708	\\x39373138373738	0.989999999999999991
372	Perola Negra 2001	32	1	10		281626	\\x39363139313936	0.989999999999999991
373	Sao Lucas 2001	32	1	10		296254	\\x3130303230313232	0.989999999999999991
374	Guanabara	33	1	7	Marcos Valle	247614	\\x38343939353931	0.989999999999999991
375	Mas Que Nada	33	1	7	Jorge Ben	248398	\\x38323535323534	0.989999999999999991
377	A Paz	33	1	7	Donato/Gilberto Gil	263183	\\x38363139313733	0.989999999999999991
378	Wave (Vou te Contar)	33	1	7	Antonio Carlos Jobim	271647	\\x39303537353537	0.989999999999999991
381	Pode Parar	33	1	7	Jorge Vercilo/Jota Maranhao	179408	\\x36303436363738	0.989999999999999991
382	Menino do Rio	33	1	7	Caetano Veloso	262713	\\x38373337343839	0.989999999999999991
383	Ando Meio Desligado	33	1	7	Caetano Veloso	195813	\\x36353437363438	0.989999999999999991
385	All Star	33	1	7	Nando Reis	176326	\\x35383931363937	0.989999999999999991
386	Menina Bonita	33	1	7	Alexandre Brazil/Pedro Luis/Rodrigo Cabelo	237087	\\x37393338323436	0.989999999999999991
390	Sambassim (dj patife remix)	33	1	7	Alba Carvalho/Fernando Porto	213655	\\x37323433313636	0.989999999999999991
408	Free Speech For The Dumb	35	1	3	Molaney/Morris/Roberts/Wainwright	155428	\\x35303736303438	0.989999999999999991
409	It's Electric	35	1	3	Harris/Tatler	213995	\\x36393738363031	0.989999999999999991
410	Sabbra Cadabra	35	1	3	Black Sabbath	380342	\\x3132343138313437	0.989999999999999991
411	Turn The Page	35	1	3	Seger	366524	\\x3131393436333237	0.989999999999999991
412	Die Die My Darling	35	1	3	Danzig	149315	\\x34383637363637	0.989999999999999991
413	Loverman	35	1	3	Cave	472764	\\x3135343436393735	0.989999999999999991
414	Mercyful Fate	35	1	3	Diamond/Shermann	671712	\\x3231393432383239	0.989999999999999991
415	Astronomy	35	1	3	A.Bouchard/J.Bouchard/S.Pearlman	397531	\\x3133303635363132	0.989999999999999991
416	Whiskey In The Jar	35	1	3	Traditional	305005	\\x39393433313239	0.989999999999999991
417	Tuesday's Gone	35	1	3	Collins/Van Zandt	545750	\\x3137393030373837	0.989999999999999991
418	The More I See	35	1	3	Molaney/Morris/Roberts/Wainwright	287973	\\x39333738383733	0.989999999999999991
419	A Kind Of Magic	36	1	1	Roger Taylor	262608	\\x38363839363138	0.989999999999999991
420	Under Pressure	36	1	1	Queen & David Bowie	236617	\\x37373339303432	0.989999999999999991
421	Radio GA GA	36	1	1	Roger Taylor	343745	\\x3131333538353733	0.989999999999999991
422	I Want It All	36	1	1	Queen	241684	\\x37383736353634	0.989999999999999991
423	I Want To Break Free	36	1	1	John Deacon	259108	\\x38353532383631	0.989999999999999991
424	Innuendo	36	1	1	Queen	387761	\\x3132363634353931	0.989999999999999991
425	It's A Hard Life	36	1	1	Freddie Mercury	249417	\\x38313132323432	0.989999999999999991
426	Breakthru	36	1	1	Queen	249234	\\x38313530343739	0.989999999999999991
427	Who Wants To Live Forever	36	1	1	Brian May	297691	\\x39353737353737	0.989999999999999991
428	Headlong	36	1	1	Queen	273057	\\x38393231343034	0.989999999999999991
429	The Miracle	36	1	1	Queen	294974	\\x39363731393233	0.989999999999999991
430	I'm Going Slightly Mad	36	1	1	Queen	248032	\\x38313932333339	0.989999999999999991
431	The Invisible Man	36	1	1	Queen	238994	\\x37393230333533	0.989999999999999991
432	Hammer To Fall	36	1	1	Brian May	220316	\\x37323535343034	0.989999999999999991
433	Friends Will Be Friends	36	1	1	Freddie Mercury & John Deacon	248920	\\x38313134353832	0.989999999999999991
434	The Show Must Go On	36	1	1	Queen	263784	\\x38353236373630	0.989999999999999991
435	One Vision	36	1	1	Queen	242599	\\x37393336393238	0.989999999999999991
436	Detroit Rock City	37	1	1	Paul Stanley, B. Ezrin	218880	\\x37313436333732	0.989999999999999991
437	Black Diamond	37	1	1	Paul Stanley	314148	\\x3130323636303037	0.989999999999999991
438	Hard Luck Woman	37	1	1	Paul Stanley	216032	\\x37313039323637	0.989999999999999991
439	Sure Know Something	37	1	1	Paul Stanley, Vincent Poncia	242468	\\x37393339383836	0.989999999999999991
440	Love Gun	37	1	1	Paul Stanley	196257	\\x36343234393135	0.989999999999999991
441	Deuce	37	1	1	Gene Simmons	185077	\\x36303937323130	0.989999999999999991
442	Goin' Blind	37	1	1	Gene Simmons, S. Coronel	216215	\\x37303435333134	0.989999999999999991
443	Shock Me	37	1	1	Ace Frehley	227291	\\x37353239333336	0.989999999999999991
444	Do You Love Me	37	1	1	Paul Stanley, B. Ezrin, K. Fowley	214987	\\x36393736313934	0.989999999999999991
445	She	37	1	1	Gene Simmons, S. Coronel	248346	\\x38323239373334	0.989999999999999991
446	I Was Made For Loving You	37	1	1	Paul Stanley, Vincent Poncia, Desmond Child	271360	\\x39303138303738	0.989999999999999991
447	Shout It Out Loud	37	1	1	Paul Stanley, Gene Simmons, B. Ezrin	219742	\\x37313934343234	0.989999999999999991
448	God Of Thunder	37	1	1	Paul Stanley	255791	\\x38333039303737	0.989999999999999991
449	Calling Dr. Love	37	1	1	Gene Simmons	225332	\\x37333935303334	0.989999999999999991
450	Beth	37	1	1	S. Penridge, Bob Ezrin, Peter Criss	166974	\\x35333630353734	0.989999999999999991
451	Strutter	37	1	1	Paul Stanley, Gene Simmons	192496	\\x36333137303231	0.989999999999999991
452	Rock And Roll All Nite	37	1	1	Paul Stanley, Gene Simmons	173609	\\x35373335393032	0.989999999999999991
453	Cold Gin	37	1	1	Ace Frehley	262243	\\x38363039373833	0.989999999999999991
454	Plaster Caster	37	1	1	Gene Simmons	207333	\\x36383031313136	0.989999999999999991
455	God Gave Rock 'n' Roll To You	37	1	1	Paul Stanley, Gene Simmons, Rus Ballard, Bob Ezrin	320444	\\x3130343431353930	0.989999999999999991
456	Heart of the Night	38	1	2		273737	\\x39303938323633	0.989999999999999991
457	De La Luz	38	1	2		315219	\\x3130353138323834	0.989999999999999991
458	Westwood Moon	38	1	2		295627	\\x39373635383032	0.989999999999999991
459	Midnight	38	1	2		266866	\\x38383531303630	0.989999999999999991
460	Playtime	38	1	2		273580	\\x39303730383830	0.989999999999999991
461	Surrender	38	1	2		287634	\\x39343232393236	0.989999999999999991
462	Valentino's	38	1	2		296124	\\x39383438353435	0.989999999999999991
463	Believe	38	1	2		310778	\\x3130333137313835	0.989999999999999991
464	As We Sleep	38	1	2		316865	\\x3130343239333938	0.989999999999999991
465	When Evening Falls	38	1	2		298135	\\x39383633393432	0.989999999999999991
466	J Squared	38	1	2		288757	\\x39343830373737	0.989999999999999991
467	Best Thing	38	1	2		274259	\\x39303639333934	0.989999999999999991
468	Maria	39	1	4	Billie Joe Armstrong -Words Green Day -Music	167262	\\x35343834373437	0.989999999999999991
469	Poprocks And Coke	39	1	4	Billie Joe Armstrong -Words Green Day -Music	158354	\\x35323433303738	0.989999999999999991
470	Longview	39	1	4	Billie Joe Armstrong -Words Green Day -Music	234083	\\x37373134393339	0.989999999999999991
471	Welcome To Paradise	39	1	4	Billie Joe Armstrong -Words Green Day -Music	224208	\\x37343036303038	0.989999999999999991
472	Basket Case	39	1	4	Billie Joe Armstrong -Words Green Day -Music	181629	\\x35393531373336	0.989999999999999991
473	When I Come Around	39	1	4	Billie Joe Armstrong -Words Green Day -Music	178364	\\x35383339343236	0.989999999999999991
474	She	39	1	4	Billie Joe Armstrong -Words Green Day -Music	134164	\\x34343235313238	0.989999999999999991
475	J.A.R. (Jason Andrew Relva)	39	1	4	Mike Dirnt -Words Green Day -Music	170997	\\x35363435373535	0.989999999999999991
476	Geek Stink Breath	39	1	4	Billie Joe Armstrong -Words Green Day -Music	135888	\\x34343038393833	0.989999999999999991
477	Brain Stew	39	1	4	Billie Joe Armstrong -Words Green Day -Music	193149	\\x36333035353530	0.989999999999999991
478	Jaded	39	1	4	Billie Joe Armstrong -Words Green Day -Music	90331	\\x32393530323234	0.989999999999999991
479	Walking Contradiction	39	1	4	Billie Joe Armstrong -Words Green Day -Music	151170	\\x34393332333636	0.989999999999999991
480	Stuck With Me	39	1	4	Billie Joe Armstrong -Words Green Day -Music	135523	\\x34343331333537	0.989999999999999991
481	Hitchin' A Ride	39	1	4	Billie Joe Armstrong -Words Green Day -Music	171546	\\x35363136383931	0.989999999999999991
482	Good Riddance (Time Of Your Life)	39	1	4	Billie Joe Armstrong -Words Green Day -Music	153600	\\x35303735323431	0.989999999999999991
483	Redundant	39	1	4	Billie Joe Armstrong -Words Green Day -Music	198164	\\x36343831373533	0.989999999999999991
484	Nice Guys Finish Last	39	1	4	Billie Joe Armstrong -Words Green Day -Music	170187	\\x35363034363138	0.989999999999999991
485	Minority	39	1	4	Billie Joe Armstrong -Words Green Day -Music	168803	\\x35353335303631	0.989999999999999991
486	Warning	39	1	4	Billie Joe Armstrong -Words Green Day -Music	221910	\\x37333433313736	0.989999999999999991
487	Waiting	39	1	4	Billie Joe Armstrong -Words Green Day -Music	192757	\\x36333136343330	0.989999999999999991
488	Macy's Day Parade	39	1	4	Billie Joe Armstrong -Words Green Day -Music	213420	\\x37303735353733	0.989999999999999991
489	Into The Light	40	1	1	David Coverdale	76303	\\x32343532363533	0.989999999999999991
490	River Song	40	1	1	David Coverdale	439510	\\x3134333539343738	0.989999999999999991
491	She Give Me ...	40	1	1	David Coverdale	252551	\\x38333835343738	0.989999999999999991
492	Don't You Cry	40	1	1	David Coverdale	347036	\\x3131323639363132	0.989999999999999991
493	Love Is Blind	40	1	1	David Coverdale/Earl Slick	344999	\\x3131343039373230	0.989999999999999991
494	Slave	40	1	1	David Coverdale/Earl Slick	291892	\\x39343235323030	0.989999999999999991
495	Cry For Love	40	1	1	Bossi/David Coverdale/Earl Slick	293015	\\x39353637303735	0.989999999999999991
496	Living On Love	40	1	1	Bossi/David Coverdale/Earl Slick	391549	\\x3132373835383736	0.989999999999999991
497	Midnight Blue	40	1	1	David Coverdale/Earl Slick	298631	\\x39373530393930	0.989999999999999991
498	Too Many Tears	40	1	1	Adrian Vanderberg/David Coverdale	359497	\\x3131383130323338	0.989999999999999991
499	Don't Lie To Me	40	1	1	David Coverdale/Earl Slick	283585	\\x39323838303037	0.989999999999999991
500	Wherever You May Go	40	1	1	David Coverdale	239699	\\x37383033303734	0.989999999999999991
501	Grito De Alerta	41	1	7	Gonzaga Jr.	202213	\\x36353339343232	0.989999999999999991
505	Sangrando	41	1	7	Gonzaga Jr/Gonzaguinha	169717	\\x35343934343036	0.989999999999999991
507	Lindo Lago Do Amor	41	1	7	Gonzaga Jr.	249678	\\x38333533313931	0.989999999999999991
509	Com A Perna No Mundo	41	1	7	Gonzaga Jr.	227448	\\x37373437313038	0.989999999999999991
512	Comportamento Geral	41	1	7	Gonzaga Jr	181577	\\x35393937343434	0.989999999999999991
514	Espere Por Mim, Morena	41	1	7	Gonzaguinha	207072	\\x36373936353233	0.989999999999999991
515	Meia-Lua Inteira	23	1	7		222093	\\x37343636323838	0.989999999999999991
516	Voce e Linda	23	1	7		242938	\\x38303530323638	0.989999999999999991
517	Um Indio	23	1	7		195944	\\x36343533323133	0.989999999999999991
518	Podres Poderes	23	1	7		259761	\\x38363232343935	0.989999999999999991
519	Voce Nao Entende Nada - Cotidiano	23	1	7		421982	\\x3133383835363132	0.989999999999999991
520	O Estrangeiro	23	1	7		374700	\\x3132343732383930	0.989999999999999991
521	Menino Do Rio	23	1	7		147670	\\x34383632323737	0.989999999999999991
522	Qualquer Coisa	23	1	7		193410	\\x36333732343333	0.989999999999999991
523	Sampa	23	1	7		185051	\\x36313531383331	0.989999999999999991
524	Queixa	23	1	7		299676	\\x39393533393632	0.989999999999999991
525	O Leaozinho	23	1	7		184398	\\x36303938313530	0.989999999999999991
526	Fora Da Ordem	23	1	7		354011	\\x3131373436373831	0.989999999999999991
527	Terra	23	1	7		401319	\\x3133323234303535	0.989999999999999991
528	Alegria, Alegria	23	1	7		169221	\\x35343937303235	0.989999999999999991
543	Burn	43	1	1	Coverdale/Lord/Paice	453955	\\x3134373735373038	0.989999999999999991
544	Stormbringer	43	1	1	Coverdale	277133	\\x39303530303232	0.989999999999999991
545	Gypsy	43	1	1	Coverdale/Hughes/Lord/Paice	339173	\\x3131303436393532	0.989999999999999991
546	Lady Double Dealer	43	1	1	Coverdale	233586	\\x37363038373539	0.989999999999999991
547	Mistreated	43	1	1	Coverdale	758648	\\x3234353936323335	0.989999999999999991
548	Smoke On The Water	43	1	1	Gillan/Glover/Lord/Paice	618031	\\x3230313033313235	0.989999999999999991
549	You Fool No One	43	1	1	Coverdale/Lord/Paice	804101	\\x3236333639393636	0.989999999999999991
550	Custard Pie	44	1	1	Jimmy Page/Robert Plant	253962	\\x38333438323537	0.989999999999999991
551	The Rover	44	1	1	Jimmy Page/Robert Plant	337084	\\x3131303131323836	0.989999999999999991
552	In My Time Of Dying	44	1	1	John Bonham/John Paul Jones	666017	\\x3231363736373237	0.989999999999999991
553	Houses Of The Holy	44	1	1	Jimmy Page/Robert Plant	242494	\\x37393732353033	0.989999999999999991
554	Trampled Under Foot	44	1	1	John Paul Jones	336692	\\x3131313534343638	0.989999999999999991
555	Kashmir	44	1	1	John Bonham	508604	\\x3136363836353830	0.989999999999999991
556	Imperatriz	45	1	7	Guga/Marquinho Lessa/Tuninho Professor	339173	\\x3131333438373130	0.989999999999999991
557	Beija-Flor	45	1	7	Caruso/Cleber/Deo/Osmar	327000	\\x3130393931313539	0.989999999999999991
558	Viradouro	45	1	7	Dadinho/Gilbreto Gomes/Gustavo/P.C. Portugal/R. Mocoto	344320	\\x3131343834333632	0.989999999999999991
559	Mocidade	45	1	7	Domenil/J. Brito/Joaozinho/Rap, Marcelo Do	261720	\\x38383137373537	0.989999999999999991
560	Unidos Da Tijuca	45	1	7	Douglas/Neves, Vicente Das/Silva, Gilmar L./Toninho Gentil/Wantuir	338834	\\x3131343430363839	0.989999999999999991
561	Salgueiro	45	1	7	Augusto/Craig Negoescu/Rocco Filho/Saara, Ze Carlos Da	305920	\\x3130323934373431	0.989999999999999991
565	Portela	45	1	7	Flavio Bororo/Paulo Apparicio/Wagner Alves/Zeca Sereno	319608	\\x3130373132323136	0.989999999999999991
566	Caprichosos	45	1	7	Gule/Jorge 101/Lequinho/Luiz Piao	351320	\\x3131383730393536	0.989999999999999991
569	Tuiuti	45	1	7	Claudio Martins/David Lima/Kleber Rodrigues/Livre, Cesare Som	259657	\\x38373439343932	0.989999999999999991
570	(Da Le) Yaleo	46	1	1	Santana	353488	\\x3131373639353037	0.989999999999999991
571	Love Of My Life	46	1	1	Carlos Santana & Dave Matthews	347820	\\x3131363334333337	0.989999999999999991
572	Put Your Lights On	46	1	1	E. Shrody	285178	\\x39333934373639	0.989999999999999991
573	Africa Bamba	46	1	1	I. Toure, S. Tidiane Toure, Carlos Santana & K. Perazzo	282827	\\x39343932343837	0.989999999999999991
574	Smooth	46	1	1	M. Itaal Shur & Rob Thomas	298161	\\x39383637343535	0.989999999999999991
575	Do You Like The Way	46	1	1	L. Hill	354899	\\x3131373431303632	0.989999999999999991
576	Maria Maria	46	1	1	W. Jean, J. Duplessis, Carlos Santana, K. Perazzo & R. Rekow	262635	\\x38363634363031	0.989999999999999991
577	Migra	46	1	1	R. Taha, Carlos Santana & T. Lindsay	329064	\\x3130393633333035	0.989999999999999991
578	Corazon Espinado	46	1	1	F. Olivera	276114	\\x39323036383032	0.989999999999999991
579	Wishing It Was	46	1	1	Eale-Eye Cherry, M. Simpson, J. King & M. Nishita	292832	\\x39373731333438	0.989999999999999991
580	El Farol	46	1	1	Carlos Santana & KC Porter	291160	\\x39353939333533	0.989999999999999991
581	Primavera	46	1	1	KC Porter & JB Eckl	378618	\\x3132353034323334	0.989999999999999991
582	The Calling	46	1	1	Carlos Santana & C. Thompson	747755	\\x3234373033383834	0.989999999999999991
584	Manuel	47	1	7		230269	\\x37363737363731	0.989999999999999991
586	Um Contrato Com Deus	47	1	7		202501	\\x36363336343635	0.989999999999999991
587	Um Jantar Pra Dois	47	1	7		244009	\\x38303231353839	0.989999999999999991
589	Um Love	47	1	7		181603	\\x36303935353234	0.989999999999999991
590	Seis Da Tarde	47	1	7		238445	\\x37393335383938	0.989999999999999991
591	Baixo Rio	47	1	7		198008	\\x36353231363736	0.989999999999999991
592	Sombras Do Meu Destino	47	1	7		280685	\\x39313631353339	0.989999999999999991
593	Do You Have Other Loves?	47	1	7		295235	\\x39363034323733	0.989999999999999991
594	Agora Que O Dia Acordou	47	1	7		323213	\\x3130353732373532	0.989999999999999991
596	A Rua	47	1	7		238027	\\x37393330323634	0.989999999999999991
597	Now's The Time	48	1	2	Miles Davis	197459	\\x36333538383638	0.989999999999999991
598	Jeru	48	1	2	Miles Davis	193410	\\x36323232353336	0.989999999999999991
599	Compulsion	48	1	2	Miles Davis	345025	\\x3131323534343734	0.989999999999999991
600	Tempus Fugit	48	1	2	Miles Davis	231784	\\x37353438343334	0.989999999999999991
601	Walkin'	48	1	2	Miles Davis	807392	\\x3236343131363334	0.989999999999999991
602	'Round Midnight	48	1	2	Miles Davis	357459	\\x3131353930323834	0.989999999999999991
603	Bye Bye Blackbird	48	1	2	Miles Davis	476003	\\x3135353439323234	0.989999999999999991
604	New Rhumba	48	1	2	Miles Davis	277968	\\x39303138303234	0.989999999999999991
605	Generique	48	1	2	Miles Davis	168777	\\x35343337303137	0.989999999999999991
606	Summertime	48	1	2	Miles Davis	200437	\\x36343631333730	0.989999999999999991
607	So What	48	1	2	Miles Davis	564009	\\x3138333630343439	0.989999999999999991
608	The Pan Piper	48	1	2	Miles Davis	233769	\\x37353933373133	0.989999999999999991
609	Someday My Prince Will Come	48	1	2	Miles Davis	544078	\\x3137383930373733	0.989999999999999991
610	My Funny Valentine (Live)	49	1	2	Miles Davis	907520	\\x3239343136373831	0.989999999999999991
611	E.S.P.	49	1	2	Miles Davis	330684	\\x3131303739383636	0.989999999999999991
612	Nefertiti	49	1	2	Miles Davis	473495	\\x3135343738343530	0.989999999999999991
613	Petits Machins (Little Stuff)	49	1	2	Miles Davis	487392	\\x3136313331323732	0.989999999999999991
614	Miles Runs The Voodoo Down	49	1	2	Miles Davis	843964	\\x3237393637393139	0.989999999999999991
615	Little Church (Live)	49	1	2	Miles Davis	196101	\\x36323733323235	0.989999999999999991
616	Black Satin	49	1	2	Miles Davis	316682	\\x3130353239343833	0.989999999999999991
617	Jean Pierre (Live)	49	1	2	Miles Davis	243461	\\x37393535313134	0.989999999999999991
618	Time After Time	49	1	2	Miles Davis	220734	\\x37323932313937	0.989999999999999991
619	Portia	49	1	2	Miles Davis	378775	\\x3132353230313236	0.989999999999999991
620	Space Truckin'	50	1	1	Blackmore/Gillan/Glover/Lord/Paice	1196094	\\x3339323637363133	0.989999999999999991
621	Going Down / Highway Star	50	1	1	Gillan/Glover/Lord/Nix - Blackmore/Paice	913658	\\x3239383436303633	0.989999999999999991
622	Mistreated (Alternate Version)	50	1	1	Blackmore/Coverdale	854700	\\x3237373735343432	0.989999999999999991
623	You Fool No One (Alternate Version)	50	1	1	Blackmore/Coverdale/Lord/Paice	763924	\\x3234383837323039	0.989999999999999991
624	Jeepers Creepers	51	1	2		185965	\\x35393931393033	0.989999999999999991
625	Blue Rythm Fantasy	51	1	2		348212	\\x3131323034303036	0.989999999999999991
626	Drum Boogie	51	1	2		191555	\\x36313835363336	0.989999999999999991
627	Let Me Off Uptown	51	1	2		187637	\\x36303334363835	0.989999999999999991
628	Leave Us Leap	51	1	2		182726	\\x35383938383130	0.989999999999999991
629	Opus No.1	51	1	2		179800	\\x35383436303431	0.989999999999999991
630	Boogie Blues	51	1	2		204199	\\x36363033313533	0.989999999999999991
631	How High The Moon	51	1	2		201430	\\x36353239343837	0.989999999999999991
632	Disc Jockey Jump	51	1	2		193149	\\x36323630383230	0.989999999999999991
633	Up An' Atom	51	1	2		179565	\\x35383232363435	0.989999999999999991
634	Bop Boogie	51	1	2		189596	\\x36303933313234	0.989999999999999991
635	Lemon Drop	51	1	2		194089	\\x36323837353331	0.989999999999999991
636	Coronation Drop	51	1	2		176222	\\x35383939383938	0.989999999999999991
637	Overtime	51	1	2		163030	\\x35343332323336	0.989999999999999991
638	Imagination	51	1	2		289306	\\x39343434333835	0.989999999999999991
639	Don't Take Your Love From Me	51	1	2		282331	\\x39323434323338	0.989999999999999991
640	Midget	51	1	2		217025	\\x37323537363633	0.989999999999999991
641	I'm Coming Virginia	51	1	2		280163	\\x39323039383237	0.989999999999999991
642	Payin' Them Dues Blues	51	1	2		198556	\\x36353336393138	0.989999999999999991
643	Jungle Drums	51	1	2		199627	\\x36353436303633	0.989999999999999991
644	Showcase	51	1	2		201560	\\x36363937353130	0.989999999999999991
645	Swedish Schnapps	51	1	2		191268	\\x36333539373530	0.989999999999999991
664	Marina (Dorival Caymmi)	53	1	7		172643	\\x35353233363238	0.989999999999999991
665	Aquarela (Toquinho)	53	1	7		259944	\\x38343830313430	0.989999999999999991
667	Dona (Roupa Nova)	53	1	7		243356	\\x37393931323935	0.989999999999999991
670	Romaria (Renato Teixeira)	53	1	7		244793	\\x38303333383835	0.989999999999999991
672	Wave (Os Cariocas)	53	1	7		130063	\\x34323938303036	0.989999999999999991
673	Garota de Ipanema (Dick Farney)	53	1	7		174367	\\x35373637343734	0.989999999999999991
675	Susie Q	54	1	1	Hawkins-Lewis-Broadwater	275565	\\x39303433383235	0.989999999999999991
676	I Put A Spell On You	54	1	1	Jay Hawkins	272091	\\x38393433303030	0.989999999999999991
677	Proud Mary	54	1	1	J. C. Fogerty	189022	\\x36323239353930	0.989999999999999991
678	Bad Moon Rising	54	1	1	J. C. Fogerty	140146	\\x34363039383335	0.989999999999999991
679	Lodi	54	1	1	J. C. Fogerty	191451	\\x36323630323134	0.989999999999999991
680	Green River	54	1	1	J. C. Fogerty	154279	\\x35313035383734	0.989999999999999991
681	Commotion	54	1	1	J. C. Fogerty	162899	\\x35333534323532	0.989999999999999991
682	Down On The Corner	54	1	1	J. C. Fogerty	164858	\\x35353231383034	0.989999999999999991
683	Fortunate Son	54	1	1	J. C. Fogerty	140329	\\x34363137353539	0.989999999999999991
684	Travelin' Band	54	1	1	J. C. Fogerty	129358	\\x34323730343134	0.989999999999999991
685	Who'll Stop The Rain	54	1	1	J. C. Fogerty	149394	\\x34383939353739	0.989999999999999991
686	Up Around The Bend	54	1	1	J. C. Fogerty	162429	\\x35333638373031	0.989999999999999991
687	Run Through The Jungle	54	1	1	J. C. Fogerty	186044	\\x36313536353637	0.989999999999999991
688	Lookin' Out My Back Door	54	1	1	J. C. Fogerty	152946	\\x35303334363730	0.989999999999999991
689	Long As I Can See The Light	54	1	1	J. C. Fogerty	213237	\\x36393234303234	0.989999999999999991
690	I Heard It Through The Grapevine	54	1	1	Whitfield-Strong	664894	\\x3231393437383435	0.989999999999999991
691	Have You Ever Seen The Rain?	54	1	1	J. C. Fogerty	160052	\\x35323633363735	0.989999999999999991
692	Hey Tonight	54	1	1	J. C. Fogerty	162847	\\x35333433383037	0.989999999999999991
693	Sweet Hitch-Hiker	54	1	1	J. C. Fogerty	175490	\\x35373136363033	0.989999999999999991
694	Someday Never Comes	54	1	1	J. C. Fogerty	239360	\\x37393435323335	0.989999999999999991
695	Walking On The Water	55	1	1	J.C. Fogerty	281286	\\x39333032313239	0.989999999999999991
696	Suzie-Q, Pt. 2	55	1	1	J.C. Fogerty	244114	\\x37393836363337	0.989999999999999991
697	Born On The Bayou	55	1	1	J.C. Fogerty	316630	\\x3130333631383636	0.989999999999999991
698	Good Golly Miss Molly	55	1	1	J.C. Fogerty	163604	\\x35333438313735	0.989999999999999991
699	Tombstone Shadow	55	1	1	J.C. Fogerty	218880	\\x37323039303830	0.989999999999999991
700	Wrote A Song For Everyone	55	1	1	J.C. Fogerty	296385	\\x39363735383735	0.989999999999999991
701	Night Time Is The Right Time	55	1	1	J.C. Fogerty	190119	\\x36323131313733	0.989999999999999991
702	Cotton Fields	55	1	1	J.C. Fogerty	178181	\\x35393139323234	0.989999999999999991
703	It Came Out Of The Sky	55	1	1	J.C. Fogerty	176718	\\x35383037343734	0.989999999999999991
704	Don't Look Now	55	1	1	J.C. Fogerty	131918	\\x34333636343535	0.989999999999999991
705	The Midnight Special	55	1	1	J.C. Fogerty	253596	\\x38323937343832	0.989999999999999991
706	Before You Accuse Me	55	1	1	J.C. Fogerty	207804	\\x36383135313236	0.989999999999999991
707	My Baby Left Me	55	1	1	J.C. Fogerty	140460	\\x34363333343430	0.989999999999999991
708	Pagan Baby	55	1	1	J.C. Fogerty	385619	\\x3132373133383133	0.989999999999999991
709	(Wish I Could) Hideaway	55	1	1	J.C. Fogerty	228466	\\x37343332393738	0.989999999999999991
710	It's Just A Thought	55	1	1	J.C. Fogerty	237374	\\x37373738333139	0.989999999999999991
711	Molina	55	1	1	J.C. Fogerty	163239	\\x35333930383131	0.989999999999999991
712	Born To Move	55	1	1	J.C. Fogerty	342804	\\x3131323630383134	0.989999999999999991
713	Lookin' For A Reason	55	1	1	J.C. Fogerty	209789	\\x36393333313335	0.989999999999999991
714	Hello Mary Lou	55	1	1	J.C. Fogerty	132832	\\x34343736353633	0.989999999999999991
745	Comin' Home	58	1	1	Bolin/Coverdale/Paice	235781	\\x37363434363034	0.989999999999999991
746	Lady Luck	58	1	1	Cook/Coverdale	168202	\\x35353031333739	0.989999999999999991
747	Gettin' Tighter	58	1	1	Bolin/Hughes	218044	\\x37313736393039	0.989999999999999991
748	Dealer	58	1	1	Bolin/Coverdale	230922	\\x37353931303636	0.989999999999999991
749	I Need Love	58	1	1	Bolin/Coverdale	263836	\\x38373031303634	0.989999999999999991
750	Drifter	58	1	1	Bolin/Coverdale	242834	\\x38303031353035	0.989999999999999991
751	Love Child	58	1	1	Bolin/Coverdale	188160	\\x36313733383036	0.989999999999999991
752	This Time Around / Owed to 'G' [Instrumental]	58	1	1	Bolin/Hughes/Lord	370102	\\x3131393935363739	0.989999999999999991
753	You Keep On Moving	58	1	1	Coverdale/Hughes	319111	\\x3130343437383638	0.989999999999999991
754	Speed King	59	1	1	Blackmore, Gillan, Glover, Lord, Paice	264385	\\x38353837353738	0.989999999999999991
755	Bloodsucker	59	1	1	Blackmore, Gillan, Glover, Lord, Paice	256261	\\x38333434343035	0.989999999999999991
756	Child In Time	59	1	1	Blackmore, Gillan, Glover, Lord, Paice	620460	\\x3230323330303839	0.989999999999999991
757	Flight Of The Rat	59	1	1	Blackmore, Gillan, Glover, Lord, Paice	478302	\\x3135353633393637	0.989999999999999991
758	Into The Fire	59	1	1	Blackmore, Gillan, Glover, Lord, Paice	210259	\\x36383439333130	0.989999999999999991
759	Living Wreck	59	1	1	Blackmore, Gillan, Glover, Lord, Paice	274886	\\x38393933303536	0.989999999999999991
1095	Pela Internet (Live)	86	1	7		263471	\\x38383034343031	0.989999999999999991
760	Hard Lovin' Man	59	1	1	Blackmore, Gillan, Glover, Lord, Paice	431203	\\x3133393331313739	0.989999999999999991
761	Fireball	60	1	1	Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice	204721	\\x36373134383037	0.989999999999999991
762	No No No	60	1	1	Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice	414902	\\x3133363436363036	0.989999999999999991
763	Strange Kind Of Woman	60	1	1	Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice	247092	\\x38303732303336	0.989999999999999991
764	Anyone's Daughter	60	1	1	Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice	284682	\\x39333534343830	0.989999999999999991
765	The Mule	60	1	1	Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice	322063	\\x3130363338333930	0.989999999999999991
766	Fools	60	1	1	Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice	500427	\\x3136323739333636	0.989999999999999991
767	No One Came	60	1	1	Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice	385880	\\x3132363433383133	0.989999999999999991
768	Knocking At Your Back Door	61	1	1	Richie Blackmore, Ian Gillian, Roger Glover	424829	\\x3133373739333332	0.989999999999999991
769	Bad Attitude	61	1	1	Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord	307905	\\x3130303335313830	0.989999999999999991
770	Child In Time (Son Of Aleric - Instrumental)	61	1	1	Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice	602880	\\x3139373132373533	0.989999999999999991
771	Nobody's Home	61	1	1	Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice	243017	\\x37393239343933	0.989999999999999991
772	Black Night	61	1	1	Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice	368770	\\x3132303538393036	0.989999999999999991
773	Perfect Strangers	61	1	1	Richie Blackmore, Ian Gillian, Roger Glover	321149	\\x3130343435333533	0.989999999999999991
774	The Unwritten Law	61	1	1	Richie Blackmore, Ian Gillian, Roger Glover, Ian Paice	295053	\\x39373430333631	0.989999999999999991
844	Groovus Interruptus	68	1	2	Jim Beard	319373	\\x3130363032313636	0.989999999999999991
775	Call Of The Wild	61	1	1	Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord	293851	\\x39353735323935	0.989999999999999991
776	Hush	61	1	1	South	213054	\\x36393434393238	0.989999999999999991
777	Smoke On The Water	61	1	1	Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice	464378	\\x3135313830383439	0.989999999999999991
778	Space Trucking	61	1	1	Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice	341185	\\x3131313232313833	0.989999999999999991
779	Highway Star	62	1	1	Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover	368770	\\x3132303132343532	0.989999999999999991
780	Maybe I'm A Leo	62	1	1	Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover	290455	\\x39353032363436	0.989999999999999991
781	Pictures Of Home	62	1	1	Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover	303777	\\x39393033383335	0.989999999999999991
782	Never Before	62	1	1	Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover	239830	\\x37383332373930	0.989999999999999991
783	Smoke On The Water	62	1	1	Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover	340871	\\x3131323436343936	0.989999999999999991
784	Lazy	62	1	1	Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover	442096	\\x3134333937363731	0.989999999999999991
785	Space Truckin'	62	1	1	Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover	272796	\\x38393831303330	0.989999999999999991
786	Vavoom : Ted The Mechanic	63	1	1	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	257384	\\x38353130373535	0.989999999999999991
787	Loosen My Strings	63	1	1	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	359680	\\x3131373032323332	0.989999999999999991
788	Soon Forgotten	63	1	1	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	287791	\\x39343031333833	0.989999999999999991
789	Sometimes I Feel Like Screaming	63	1	1	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	451840	\\x3134373839343130	0.989999999999999991
790	Cascades : I'm Not Your Lover	63	1	1	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	283689	\\x39323039363933	0.989999999999999991
791	The Aviator	63	1	1	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	320992	\\x3130353332303533	0.989999999999999991
792	Rosa's Cantina	63	1	1	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	312372	\\x3130333233383034	0.989999999999999991
793	A Castle Full Of Rascals	63	1	1	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	311693	\\x3130313539353636	0.989999999999999991
794	A Touch Away	63	1	1	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	276323	\\x39303938353631	0.989999999999999991
795	Hey Cisco	63	1	1	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	354089	\\x3131363030303239	0.989999999999999991
796	Somebody Stole My Guitar	63	1	1	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	249443	\\x38313830343231	0.989999999999999991
797	The Purpendicular Waltz	63	1	1	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	283924	\\x39323939313331	0.989999999999999991
798	King Of Dreams	64	1	1	Blackmore, Glover, Turner	328385	\\x3130373333383437	0.989999999999999991
799	The Cut Runs Deep	64	1	1	Blackmore, Glover, Turner, Lord, Paice	342752	\\x3131313931363530	0.989999999999999991
800	Fire In The Basement	64	1	1	Blackmore, Glover, Turner, Lord, Paice	283977	\\x39323637353530	0.989999999999999991
801	Truth Hurts	64	1	1	Blackmore, Glover, Turner	314827	\\x3130323234363132	0.989999999999999991
802	Breakfast In Bed	64	1	1	Blackmore, Glover, Turner	317126	\\x3130333233383034	0.989999999999999991
803	Love Conquers All	64	1	1	Blackmore, Glover, Turner	227186	\\x37333238353136	0.989999999999999991
804	Fortuneteller	64	1	1	Blackmore, Glover, Turner, Lord, Paice	349335	\\x3131333639363731	0.989999999999999991
805	Too Much Is Not Enough	64	1	1	Turner, Held, Greenwood	257724	\\x38333832383030	0.989999999999999991
806	Wicked Ways	64	1	1	Blackmore, Glover, Turner, Lord, Paice	393691	\\x3132383236353832	0.989999999999999991
807	Stormbringer	65	1	1	D.Coverdale/R.Blackmore/Ritchie Blackmore	246413	\\x38303434383634	0.989999999999999991
808	Love Don't Mean a Thing	65	1	1	D.Coverdale/G.Hughes/Glenn Hughes/I.Paice/Ian Paice/J.Lord/John Lord/R.Blackmore/Ritchie Blackmore	263862	\\x38363735303236	0.989999999999999991
809	Holy Man	65	1	1	D.Coverdale/G.Hughes/Glenn Hughes/J.Lord/John Lord	270236	\\x38383138303933	0.989999999999999991
810	Hold On	65	1	1	D.Coverdal/G.Hughes/Glenn Hughes/I.Paice/Ian Paice/J.Lord/John Lord	306860	\\x3130303232343238	0.989999999999999991
811	Lady Double Dealer	65	1	1	D.Coverdale/R.Blackmore/Ritchie Blackmore	201482	\\x36353534333330	0.989999999999999991
812	You Can't Do it Right (With the One You Love)	65	1	1	D.Coverdale/G.Hughes/Glenn Hughes/R.Blackmore/Ritchie Blackmore	203755	\\x36373039353739	0.989999999999999991
813	High Ball Shooter	65	1	1	D.Coverdale/G.Hughes/Glenn Hughes/I.Paice/Ian Paice/J.Lord/John Lord/R.Blackmore/Ritchie Blackmore	267833	\\x38373732343731	0.989999999999999991
814	The Gypsy	65	1	1	D.Coverdale/G.Hughes/Glenn Hughes/I.Paice/Ian Paice/J.Lord/John Lord/R.Blackmore/Ritchie Blackmore	242886	\\x37393436363134	0.989999999999999991
815	Soldier Of Fortune	65	1	1	D.Coverdale/R.Blackmore/Ritchie Blackmore	193750	\\x36333135333231	0.989999999999999991
816	The Battle Rages On	66	1	1	ian paice/jon lord	356963	\\x3131363236323238	0.989999999999999991
817	Lick It Up	66	1	1	roger glover	240274	\\x37373932363034	0.989999999999999991
818	Anya	66	1	1	jon lord/roger glover	392437	\\x3132373534393231	0.989999999999999991
819	Talk About Love	66	1	1	roger glover	247823	\\x38303732313731	0.989999999999999991
820	Time To Kill	66	1	1	roger glover	351033	\\x3131333534373432	0.989999999999999991
821	Ramshackle Man	66	1	1	roger glover	334445	\\x3130383734363739	0.989999999999999991
822	A Twist In The Tail	66	1	1	roger glover	257462	\\x38343133313033	0.989999999999999991
823	Nasty Piece Of Work	66	1	1	jon lord/roger glover	276662	\\x39303736393937	0.989999999999999991
824	Solitaire	66	1	1	roger glover	282226	\\x39313537303231	0.989999999999999991
825	One Man's Meat	66	1	1	roger glover	278804	\\x39303638393630	0.989999999999999991
826	Pour Some Sugar On Me	67	1	1		292519	\\x39353138383432	0.989999999999999991
827	Photograph	67	1	1		248633	\\x38313038353037	0.989999999999999991
828	Love Bites	67	1	1		346853	\\x3131333035373931	0.989999999999999991
829	Let's Get Rocked	67	1	1		296019	\\x39373234313530	0.989999999999999991
830	Two Steps Behind [Acoustic Version]	67	1	1		259787	\\x38353233333838	0.989999999999999991
831	Animal	67	1	1		244741	\\x37393835313333	0.989999999999999991
832	Heaven Is	67	1	1		214021	\\x36393838313238	0.989999999999999991
833	Rocket	67	1	1		247248	\\x38303932343633	0.989999999999999991
834	When Love & Hate Collide	67	1	1		257280	\\x38333634363333	0.989999999999999991
835	Action	67	1	1		220604	\\x37313330383330	0.989999999999999991
836	Make Love Like A Man	67	1	1		255660	\\x38333039373235	0.989999999999999991
837	Armageddon It	67	1	1		322455	\\x3130353232333532	0.989999999999999991
838	Have You Ever Needed Someone So Bad	67	1	1		319320	\\x3130343030303230	0.989999999999999991
839	Rock Of Ages	67	1	1		248424	\\x38313530333138	0.989999999999999991
840	Hysteria	67	1	1		355056	\\x3131363232373338	0.989999999999999991
841	Bringin' On The Heartbreak	67	1	1		272457	\\x38383533333234	0.989999999999999991
842	Roll Call	68	1	2	Jim Beard	321358	\\x3130363533343934	0.989999999999999991
843	Otay	68	1	2	John Scofield, Robert Aries, Milton Chambers and Gary Grainger	423653	\\x3134313736303833	0.989999999999999991
845	Paris On Mine	68	1	2	Jon Herington	368875	\\x3132303539353037	0.989999999999999991
846	In Time	68	1	2	Sylvester Stewart	368953	\\x3132323837313033	0.989999999999999991
847	Plan B	68	1	2	Dean Brown, Dennis Chambers & Jim Beard	272039	\\x39303332333135	0.989999999999999991
848	Outbreak	68	1	2	Jim Beard & Jon Herington	659226	\\x3231363835383037	0.989999999999999991
849	Baltimore, DC	68	1	2	John Scofield	346932	\\x3131333934343733	0.989999999999999991
850	Talkin Loud and Saying Nothin	68	1	2	James Brown & Bobby Byrd	360411	\\x3131393934383539	0.989999999999999991
852	Meu Bem-Querer	69	1	7		255608	\\x38333330303437	0.989999999999999991
853	Cigano	69	1	7		304692	\\x3130303337333632	0.989999999999999991
854	Boa Noite	69	1	7		338755	\\x3131323833353832	0.989999999999999991
855	Fato Consumado	69	1	7		211565	\\x37303138353836	0.989999999999999991
858	Esquinas	69	1	7		280999	\\x39303936373236	0.989999999999999991
859	Se...	69	1	7		286432	\\x39343133373737	0.989999999999999991
860	Eu Te Devoro	69	1	7		311614	\\x3130333132373735	0.989999999999999991
862	Acelerou	69	1	7		284081	\\x39333936393432	0.989999999999999991
863	Um Amor Puro	69	1	7		327784	\\x3130363837333131	0.989999999999999991
864	Samurai	70	1	7	Djavan	330997	\\x3130383732373837	0.989999999999999991
865	Nem Um Dia	70	1	7	Djavan	337423	\\x3131313831343436	0.989999999999999991
866	Oceano	70	1	7	Djavan	217338	\\x37303236343431	0.989999999999999991
868	Serrado	70	1	7	Djavan	295314	\\x39383432323430	0.989999999999999991
869	Flor De Lis	70	1	7	Djavan	236355	\\x37383031313038	0.989999999999999991
871	Azul	70	1	7	Djavan	253962	\\x38333831303239	0.989999999999999991
872	Seduzir	70	1	7	Djavan	277524	\\x39313633323533	0.989999999999999991
873	A Carta	70	1	7	Djavan - Gabriel, O Pensador	347297	\\x3131343933343633	0.989999999999999991
874	Sina	70	1	7	Djavan	268173	\\x38393036353339	0.989999999999999991
875	Acelerou	70	1	7	Djavan	284133	\\x39333931343339	0.989999999999999991
876	Um Amor Puro	70	1	7	Djavan	327105	\\x3130363634363938	0.989999999999999991
891	Layla	72	1	6	Clapton/Gordon	430733	\\x3134313135373932	0.989999999999999991
892	Badge	72	1	6	Clapton/Harrison	163552	\\x35333232393432	0.989999999999999991
893	I Feel Free	72	1	6	Bruce/Clapton	174576	\\x35373235363834	0.989999999999999991
894	Sunshine Of Your Love	72	1	6	Bruce/Clapton	252891	\\x38323235383839	0.989999999999999991
895	Crossroads	72	1	6	Clapton/Robert Johnson Arr: Eric Clapton	253335	\\x38323733353430	0.989999999999999991
896	Strange Brew	72	1	6	Clapton/Collins/Pappalardi	167810	\\x35343839373837	0.989999999999999991
897	White Room	72	1	6	Bruce/Clapton	301583	\\x39383732363036	0.989999999999999991
898	Bell Bottom Blues	72	1	6	Clapton	304744	\\x39393436363831	0.989999999999999991
899	Cocaine	72	1	6	Cale/Clapton	215928	\\x37313338333939	0.989999999999999991
900	I Shot The Sheriff	72	1	6	Marley	263862	\\x38373338393733	0.989999999999999991
901	After Midnight	72	1	6	Clapton/J. J. Cale	191320	\\x36343630393431	0.989999999999999991
902	Swing Low Sweet Chariot	72	1	6	Clapton/Trad. Arr. Clapton	208143	\\x36383936323838	0.989999999999999991
903	Lay Down Sally	72	1	6	Clapton/Levy	231732	\\x37373734323037	0.989999999999999991
904	Knockin On Heavens Door	72	1	6	Clapton/Dylan	264411	\\x38373538383139	0.989999999999999991
905	Wonderful Tonight	72	1	6	Clapton	221387	\\x37333236393233	0.989999999999999991
906	Let It Grow	72	1	6	Clapton	297064	\\x39373432353638	0.989999999999999991
907	Promises	72	1	6	Clapton/F.eldman/Linn	180401	\\x36303036313534	0.989999999999999991
908	I Can't Stand It	72	1	6	Clapton	249730	\\x38323731393830	0.989999999999999991
909	Signe	73	1	6	Eric Clapton	193515	\\x36343735303432	0.989999999999999991
910	Before You Accuse Me	73	1	6	Eugene McDaniel	224339	\\x37343536383037	0.989999999999999991
911	Hey Hey	73	1	6	Big Bill Broonzy	196466	\\x36353433343837	0.989999999999999991
912	Tears In Heaven	73	1	6	Eric Clapton, Will Jennings	274729	\\x39303332383335	0.989999999999999991
913	Lonely Stranger	73	1	6	Eric Clapton	328724	\\x3130383934343036	0.989999999999999991
914	Nobody Knows You When You're Down & Out	73	1	6	Jimmy Cox	231836	\\x37363639393232	0.989999999999999991
915	Layla	73	1	6	Eric Clapton, Jim Gordon	285387	\\x39343930353432	0.989999999999999991
916	Running On Faith	73	1	6	Jerry Lynn Williams	378984	\\x3132353336323735	0.989999999999999991
917	Walkin' Blues	73	1	6	Robert Johnson	226429	\\x37343335313932	0.989999999999999991
918	Alberta	73	1	6	Traditional	222406	\\x37343132393735	0.989999999999999991
919	San Francisco Bay Blues	73	1	6	Jesse Fuller	203363	\\x36373234303231	0.989999999999999991
920	Malted Milk	73	1	6	Robert Johnson	216528	\\x37303936373831	0.989999999999999991
921	Old Love	73	1	6	Eric Clapton, Robert Cray	472920	\\x3135373830373437	0.989999999999999991
922	Rollin' And Tumblin'	73	1	6	McKinley Morgenfield (Muddy Waters)	251768	\\x38343037333535	0.989999999999999991
923	Collision	74	1	4	Jon Hudson/Mike Patton	204303	\\x36363536353936	0.989999999999999991
924	Stripsearch	74	1	4	Jon Hudson/Mike Bordin/Mike Patton	270106	\\x38383631313139	0.989999999999999991
925	Last Cup Of Sorrow	74	1	4	Bill Gould/Mike Patton	251663	\\x38323231323437	0.989999999999999991
926	Naked In Front Of The Computer	74	1	4	Mike Patton	128757	\\x34323235303737	0.989999999999999991
927	Helpless	74	1	4	Bill Gould/Mike Bordin/Mike Patton	326217	\\x3130373533313335	0.989999999999999991
928	Mouth To Mouth	74	1	4	Bill Gould/Jon Hudson/Mike Bordin/Mike Patton	228493	\\x37353035383837	0.989999999999999991
929	Ashes To Ashes	74	1	4	Bill Gould/Jon Hudson/Mike Bordin/Mike Patton/Roddy Bottum	217391	\\x37303933373436	0.989999999999999991
930	She Loves Me Not	74	1	4	Bill Gould/Mike Bordin/Mike Patton	209867	\\x36383837353434	0.989999999999999991
931	Got That Feeling	74	1	4	Mike Patton	140852	\\x34363433323237	0.989999999999999991
932	Paths Of Glory	74	1	4	Bill Gould/Jon Hudson/Mike Bordin/Mike Patton/Roddy Bottum	257253	\\x38343336333030	0.989999999999999991
933	Home Sick Home	74	1	4	Mike Patton	119040	\\x33383938393736	0.989999999999999991
934	Pristina	74	1	4	Bill Gould/Mike Patton	232698	\\x37343937333631	0.989999999999999991
935	Land Of Sunshine	75	1	4		223921	\\x37333533353637	0.989999999999999991
936	Caffeine	75	1	4		267937	\\x38373437333637	0.989999999999999991
937	Midlife Crisis	75	1	4		263235	\\x38363238383431	0.989999999999999991
938	RV	75	1	4		223242	\\x37323838313632	0.989999999999999991
939	Smaller And Smaller	75	1	4		310831	\\x3130313830313033	0.989999999999999991
940	Everything's Ruined	75	1	4		273658	\\x39303130393137	0.989999999999999991
941	Malpractice	75	1	4		241371	\\x37393030363833	0.989999999999999991
942	Kindergarten	75	1	4		270680	\\x38383533363437	0.989999999999999991
943	Be Aggressive	75	1	4		222432	\\x37323938303237	0.989999999999999991
944	A Small Victory	75	1	4		297168	\\x39373333353732	0.989999999999999991
945	Crack Hitler	75	1	4		279144	\\x39313632343335	0.989999999999999991
946	Jizzlobber	75	1	4		398341	\\x3132393236313430	0.989999999999999991
947	Midnight Cowboy	75	1	4		251924	\\x38323432363236	0.989999999999999991
948	Easy	75	1	4		185835	\\x36303733303038	0.989999999999999991
949	Get Out	76	1	1	Mike Bordin, Billy Gould, Mike Patton	137482	\\x34353234393732	0.989999999999999991
950	Ricochet	76	1	1	Mike Bordin, Billy Gould, Mike Patton	269400	\\x38383038383132	0.989999999999999991
951	Evidence	76	1	1	Mike Bordin, Billy Gould, Mike Patton, Trey Spruance	293590	\\x39363236313336	0.989999999999999991
952	The Gentle Art Of Making Enemies	76	1	1	Mike Bordin, Billy Gould, Mike Patton	209319	\\x36393038363039	0.989999999999999991
953	Star A.D.	76	1	1	Mike Bordin, Billy Gould, Mike Patton	203807	\\x36373437363538	0.989999999999999991
954	Cuckoo For Caca	76	1	1	Mike Bordin, Billy Gould, Mike Patton, Trey Spruance	222902	\\x37333838333639	0.989999999999999991
955	Caralho Voador	76	1	1	Mike Bordin, Billy Gould, Mike Patton, Trey Spruance	242102	\\x38303239303534	0.989999999999999991
956	Ugly In The Morning	76	1	1	Mike Bordin, Billy Gould, Mike Patton	186435	\\x36323234393937	0.989999999999999991
957	Digging The Grave	76	1	1	Mike Bordin, Billy Gould, Mike Patton	185129	\\x36313039323539	0.989999999999999991
958	Take This Bottle	76	1	1	Mike Bordin, Billy Gould, Mike Patton, Trey Spruance	298997	\\x39373739393731	0.989999999999999991
959	King For A Day	76	1	1	Mike Bordin, Billy Gould, Mike Patton, Trey Spruance	395859	\\x3133313633373333	0.989999999999999991
960	What A Day	76	1	1	Mike Bordin, Billy Gould, Mike Patton	158275	\\x35323033343330	0.989999999999999991
961	The Last To Know	76	1	1	Mike Bordin, Billy Gould, Mike Patton	267833	\\x38373336373736	0.989999999999999991
962	Just A Man	76	1	1	Mike Bordin, Billy Gould, Mike Patton	336666	\\x3131303331323534	0.989999999999999991
963	Absolute Zero	76	1	1	Mike Bordin, Billy Gould, Mike Patton	181995	\\x35393239343237	0.989999999999999991
964	From Out Of Nowhere	77	1	4	Faith No More	202527	\\x36353837383032	0.989999999999999991
965	Epic	77	1	4	Faith No More	294008	\\x39363331323936	0.989999999999999991
966	Falling To Pieces	77	1	4	Faith No More	316055	\\x3130333333313233	0.989999999999999991
967	Surprise! You're Dead!	77	1	4	Faith No More	147226	\\x34383233303336	0.989999999999999991
968	Zombie Eaters	77	1	4	Faith No More	360881	\\x3131383335333637	0.989999999999999991
969	The Real Thing	77	1	4	Faith No More	493635	\\x3136323333303830	0.989999999999999991
970	Underwater Love	77	1	4	Faith No More	231993	\\x37363334333837	0.989999999999999991
971	The Morning After	77	1	4	Faith No More	223764	\\x37333535383938	0.989999999999999991
972	Woodpecker From Mars	77	1	4	Faith No More	340532	\\x3131313734323530	0.989999999999999991
973	War Pigs	77	1	4	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	464770	\\x3135323637383032	0.989999999999999991
974	Edge Of The World	77	1	4	Faith No More	250357	\\x38323335363037	0.989999999999999991
975	Deixa Entrar	78	1	7		33619	\\x31303935303132	0.989999999999999991
976	Falamansa Song	78	1	7		237165	\\x37393231333133	0.989999999999999991
977	Xote Dos Milagres	78	1	7		269557	\\x38383937373738	0.989999999999999991
981	Zeca Violeiro	78	1	7		143673	\\x34373831393439	0.989999999999999991
982	Avisa	78	1	7		355030	\\x3131383434333230	0.989999999999999991
983	Principiando/Decolagem	78	1	7		116767	\\x33393233373839	0.989999999999999991
984	Asas	78	1	7		231915	\\x37373131363639	0.989999999999999991
985	Medo De Escuro	78	1	7		213760	\\x37303536333233	0.989999999999999991
987	Minha Gata	78	1	7		181838	\\x36303339353032	0.989999999999999991
988	Desaforo	78	1	7		174524	\\x35383533353631	0.989999999999999991
989	In Your Honor	79	1	1	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett	230191	\\x37343638343633	0.989999999999999991
990	No Way Back	79	1	1	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett	196675	\\x36343231343030	0.989999999999999991
991	Best Of You	79	1	1	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett	255712	\\x38333633343637	0.989999999999999991
992	DOA	79	1	1	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett	252186	\\x38323332333432	0.989999999999999991
993	Hell	79	1	1	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett	117080	\\x33383139323535	0.989999999999999991
994	The Last Song	79	1	1	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett	199523	\\x36343936373432	0.989999999999999991
995	Free Me	79	1	1	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett	278700	\\x39313039333430	0.989999999999999991
996	Resolve	79	1	1	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett	288731	\\x39343136313836	0.989999999999999991
997	The Deepest Blues Are Black	79	1	1	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett	238419	\\x37373335343733	0.989999999999999991
998	End Over End	79	1	1	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett	352078	\\x3131333935323936	0.989999999999999991
999	Still	80	1	1	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS	313182	\\x3130333233313537	0.989999999999999991
1000	What If I Do?	80	1	1	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS	302994	\\x39393239373939	0.989999999999999991
1001	Miracle	80	1	1	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS	209684	\\x36383737393934	0.989999999999999991
1002	Another Round	80	1	1	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS	265848	\\x38373532363730	0.989999999999999991
1003	Friend Of A Friend	80	1	1	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS	193280	\\x36333535303838	0.989999999999999991
1004	Over And Out	80	1	1	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS	316264	\\x3130343238333832	0.989999999999999991
1005	On The Mend	80	1	1	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS	271908	\\x39303731393937	0.989999999999999991
1006	Virginia Moon	80	1	1	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS	229198	\\x37343934363339	0.989999999999999991
1007	Cold Day In The Sun	80	1	1	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS	200724	\\x36353936363137	0.989999999999999991
1008	Razor	80	1	1	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS	293276	\\x39373231333733	0.989999999999999991
1009	All My Life	81	1	4	Foo Fighters	263653	\\x38363635353435	0.989999999999999991
1010	Low	81	1	4	Foo Fighters	268120	\\x38383437313936	0.989999999999999991
1011	Have It All	81	1	4	Foo Fighters	298057	\\x39373239323932	0.989999999999999991
1012	Times Like These	81	1	4	Foo Fighters	266370	\\x38363234363931	0.989999999999999991
1013	Disenchanted Lullaby	81	1	4	Foo Fighters	273528	\\x38393139313131	0.989999999999999991
1014	Tired Of You	81	1	4	Foo Fighters	311353	\\x3130303934373433	0.989999999999999991
1015	Halo	81	1	4	Foo Fighters	306442	\\x3130303236333731	0.989999999999999991
1016	Lonely As You	81	1	4	Foo Fighters	277185	\\x39303232363238	0.989999999999999991
1017	Overdrive	81	1	4	Foo Fighters	270550	\\x38373933313837	0.989999999999999991
1018	Burn Away	81	1	4	Foo Fighters	298396	\\x39363738303733	0.989999999999999991
1019	Come Back	81	1	4	Foo Fighters	469968	\\x3135333731393830	0.989999999999999991
1020	Doll	82	1	1	Dave, Taylor, Nate, Chris	83487	\\x32373032353732	0.989999999999999991
1021	Monkey Wrench	82	1	1	Dave, Taylor, Nate, Chris	231523	\\x37353237353331	0.989999999999999991
1022	Hey, Johnny Park!	82	1	1	Dave, Taylor, Nate, Chris	248528	\\x38303739343830	0.989999999999999991
1023	My Poor Brain	82	1	1	Dave, Taylor, Nate, Chris	213446	\\x36393733373436	0.989999999999999991
1024	Wind Up	82	1	1	Dave, Taylor, Nate, Chris	152163	\\x34393530363637	0.989999999999999991
1025	Up In Arms	82	1	1	Dave, Taylor, Nate, Chris	135732	\\x34343036323237	0.989999999999999991
1026	My Hero	82	1	1	Dave, Taylor, Nate, Chris	260101	\\x38343732333635	0.989999999999999991
1027	See You	82	1	1	Dave, Taylor, Nate, Chris	146782	\\x34383838313733	0.989999999999999991
1028	Enough Space	82	1	1	Dave Grohl	157387	\\x35313639323830	0.989999999999999991
1029	February Stars	82	1	1	Dave, Taylor, Nate, Chris	289306	\\x39333434383735	0.989999999999999991
1030	Everlong	82	1	1	Dave Grohl	250749	\\x38323730383136	0.989999999999999991
1031	Walking After You	82	1	1	Dave Grohl	303856	\\x39383938393932	0.989999999999999991
1032	New Way Home	82	1	1	Dave, Taylor, Nate, Chris	342230	\\x3131323035363634	0.989999999999999991
1034	Strangers In The Night	83	1	12	berthold kaempfert/charles singleton/eddie snyder	155794	\\x35303535323935	0.989999999999999991
1035	New York, New York	83	1	12	fred ebb/john kander	206001	\\x36373037393933	0.989999999999999991
1036	I Get A Kick Out Of You	83	1	12	cole porter	194429	\\x36333332343431	0.989999999999999991
1037	Something Stupid	83	1	12	carson c. parks	158615	\\x35323130363433	0.989999999999999991
1038	Moon River	83	1	12	henry mancini/johnny mercer	198922	\\x36333935383038	0.989999999999999991
1039	What Now My Love	83	1	12	carl sigman/gilbert becaud/pierre leroyer	149995	\\x34393133333833	0.989999999999999991
1040	Summer Love	83	1	12	hans bradtke/heinz meier/johnny mercer	174994	\\x35363933323432	0.989999999999999991
1041	For Once In My Life	83	1	12	orlando murden/ronald miller	171154	\\x35353537353337	0.989999999999999991
1042	Love And Marriage	83	1	12	jimmy van heusen/sammy cahn	89730	\\x32393330353936	0.989999999999999991
1043	They Can't Take That Away From Me	83	1	12	george gershwin/ira gershwin	161227	\\x35323430303433	0.989999999999999991
1044	My Kind Of Town	83	1	12	jimmy van heusen/sammy cahn	188499	\\x36313139393135	0.989999999999999991
1045	Fly Me To The Moon	83	1	12	bart howard	149263	\\x34383536393534	0.989999999999999991
1046	I've Got You Under My Skin	83	1	12	cole porter	210808	\\x36383833373837	0.989999999999999991
1047	The Best Is Yet To Come	83	1	12	carolyn leigh/cy coleman	173583	\\x35363333373330	0.989999999999999991
1048	It Was A Very Good Year	83	1	12	ervin drake	266605	\\x38353534303636	0.989999999999999991
1049	Come Fly With Me	83	1	12	jimmy van heusen/sammy cahn	190458	\\x36323331303239	0.989999999999999991
1050	That's Life	83	1	12	dean kay thompson/kelly gordon	187010	\\x36303935373237	0.989999999999999991
1051	The Girl From Ipanema	83	1	12	antonio carlos jobim/norman gimbel/vinicius de moraes	193750	\\x36343130363734	0.989999999999999991
1052	The Lady Is A Tramp	83	1	12	lorenz hart/richard rodgers	184111	\\x35393837333732	0.989999999999999991
1053	Bad, Bad Leroy Brown	83	1	12	jim croce	169900	\\x35353438353831	0.989999999999999991
1054	Mack The Knife	83	1	12	bert brecht/kurt weill/marc blitzstein	292075	\\x39353431303532	0.989999999999999991
1055	Loves Been Good To Me	83	1	12	rod mckuen	203964	\\x36363435333635	0.989999999999999991
1056	L.A. Is My Lady	83	1	12	alan bergman/marilyn bergman/peggy lipton jones/quincy jones	193175	\\x36333738353131	0.989999999999999991
1057	Entrando Na Sua (Intro)	84	1	7		179252	\\x35383430303237	0.989999999999999991
1058	Nervosa	84	1	7		229537	\\x37363830343231	0.989999999999999991
1059	Funk De Bamba (Com Fernanda Abreu)	84	1	7		237191	\\x37383636313635	0.989999999999999991
1063	Funk Hum	84	1	7		244453	\\x38303834343735	0.989999999999999991
1064	Forty Days (Com DJ Hum)	84	1	7		221727	\\x37333437313732	0.989999999999999991
1065	Balada Da Paula	84	1	7	Emerson Villani	322821	\\x3130363033373137	0.989999999999999991
1066	Dujji	84	1	7		324597	\\x3130383333393335	0.989999999999999991
1067	Meu Guarda-Chuva	84	1	7		248528	\\x38323136363235	0.989999999999999991
1069	Whistle Stop	84	1	7		526132	\\x3137353333363634	0.989999999999999991
1070	16 Toneladas	84	1	7		191634	\\x36333930383835	0.989999999999999991
1071	Divirta-Se (Saindo Da Sua)	84	1	7		74919	\\x32343339323036	0.989999999999999991
1072	Forty Days Instrumental	84	1	7		292493	\\x39353834333137	0.989999999999999991
1088	Palco (Live)	86	1	7		238315	\\x38303236363232	0.989999999999999991
1089	Is This Love (Live)	86	1	7		295262	\\x39383139373539	0.989999999999999991
1090	Stir It Up (Live)	86	1	7		282409	\\x39353934373338	0.989999999999999991
1091	Refavela (Live)	86	1	7		236695	\\x37393835333035	0.989999999999999991
1092	Vendedor De Caranguejo (Live)	86	1	7		248842	\\x38333538313238	0.989999999999999991
1093	Quanta (Live)	86	1	7		357485	\\x3131373734383635	0.989999999999999991
1094	Estrela (Live)	86	1	7		285309	\\x39343336343131	0.989999999999999991
1098	Copacabana (Live)	86	1	7		289671	\\x39363733363732	0.989999999999999991
1099	A Novidade (Live)	86	1	7		316969	\\x3130353038303030	0.989999999999999991
1100	Ghandi (Live)	86	1	7		222458	\\x37343831393530	0.989999999999999991
1101	De Ouro E Marfim (Live)	86	1	7		234971	\\x37383338343533	0.989999999999999991
1105	A Novidade	73	1	7	Gilberto Gil	324780	\\x3130373635363030	0.989999999999999991
1106	Tenho Sede	73	1	7	Gilberto Gil	261616	\\x38373038313134	0.989999999999999991
1107	Refazenda	73	1	7	Gilberto Gil	218305	\\x37323337373834	0.989999999999999991
1108	Realce	73	1	7	Gilberto Gil	264489	\\x38383437363132	0.989999999999999991
1111	A Paz	73	1	7	Gilberto Gil	293093	\\x39353933303634	0.989999999999999991
1112	Beira Mar	73	1	7	Gilberto Gil	295444	\\x39353937393934	0.989999999999999991
1113	Sampa	73	1	7	Gilberto Gil	225697	\\x37343639393035	0.989999999999999991
1115	Tempo Rei	73	1	7	Gilberto Gil	302733	\\x3130303139323639	0.989999999999999991
1116	Expresso 2222	73	1	7	Gilberto Gil	284760	\\x39363930353737	0.989999999999999991
1118	Palco	73	1	7	Gilberto Gil	270550	\\x39303439393031	0.989999999999999991
1119	Toda Menina Baiana	73	1	7	Gilberto Gil	278177	\\x39333531303030	0.989999999999999991
1121	Straight Out Of Line	88	1	3	Sully Erna	259213	\\x38353131383737	0.989999999999999991
1122	Faceless	88	1	3	Sully Erna	216006	\\x36393932343137	0.989999999999999991
1123	Changes	88	1	3	Sully Erna; Tony Rombola	260022	\\x38343535383335	0.989999999999999991
1124	Make Me Believe	88	1	3	Sully Erna	248607	\\x38303735303530	0.989999999999999991
1125	I Stand Alone	88	1	3	Sully Erna	246125	\\x38303137303431	0.989999999999999991
1126	Re-Align	88	1	3	Sully Erna	260884	\\x38353133383931	0.989999999999999991
1127	I Fucking Hate You	88	1	3	Sully Erna	247170	\\x38303539363432	0.989999999999999991
1128	Releasing The Demons	88	1	3	Sully Erna	252760	\\x38323736333732	0.989999999999999991
1129	Dead And Broken	88	1	3	Sully Erna	251454	\\x38323036363131	0.989999999999999991
1130	I Am	88	1	3	Sully Erna	239516	\\x37383033323730	0.989999999999999991
1131	The Awakening	88	1	3	Sully Erna	89547	\\x33303335323531	0.989999999999999991
1132	Serenity	88	1	3	Sully Erna; Tony Rombola	274834	\\x39313732393736	0.989999999999999991
1134	Jesus Of Suburbia / City Of The Damned / I Don't Care / Dearly Beloved / Tales Of Another Broken Home	89	1	4	Billie Joe Armstrong/Green Day	548336	\\x3137383735323039	0.989999999999999991
1137	Are We The Waiting	89	1	4	Green Day	163004	\\x35333238333239	0.989999999999999991
1138	St. Jimmy	89	1	4	Green Day	175307	\\x35373136353839	0.989999999999999991
1139	Give Me Novacaine	89	1	4	Green Day	205871	\\x36373532343835	0.989999999999999991
1140	She's A Rebel	89	1	4	Green Day	120528	\\x33393031323236	0.989999999999999991
1141	Extraordinary Girl	89	1	4	Green Day	214021	\\x36393735313737	0.989999999999999991
1142	Letterbomb	89	1	4	Green Day	246151	\\x37393830393032	0.989999999999999991
1145	Whatsername	89	1	4	Green Day	252316	\\x38323434383433	0.989999999999999991
1146	Welcome to the Jungle	90	2	1		273552	\\x34353338343531	0.989999999999999991
1147	It's So Easy	90	2	1		202824	\\x33333934303139	0.989999999999999991
1148	Nightrain	90	2	1		268537	\\x34343537323833	0.989999999999999991
1149	Out Ta Get Me	90	2	1		263893	\\x34333832313437	0.989999999999999991
1150	Mr. Brownstone	90	2	1		228924	\\x33383136333233	0.989999999999999991
1151	Paradise City	90	2	1		406347	\\x36363837313233	0.989999999999999991
1152	My Michelle	90	2	1		219961	\\x33363731323939	0.989999999999999991
1153	Think About You	90	2	1		231640	\\x33383630323735	0.989999999999999991
1154	Sweet Child O' Mine	90	2	1		356424	\\x35383739333437	0.989999999999999991
1155	You're Crazy	90	2	1		197135	\\x33333031393731	0.989999999999999991
1156	Anything Goes	90	2	1		206400	\\x33343531383931	0.989999999999999991
1157	Rocket Queen	90	2	1		375349	\\x36313835353339	0.989999999999999991
1158	Right Next Door to Hell	91	2	1		182321	\\x33313735393530	0.989999999999999991
1159	Dust N' Bones	91	2	1		298374	\\x35303533373432	0.989999999999999991
1160	Live and Let Die	91	2	1		184016	\\x33323033333930	0.989999999999999991
1161	Don't Cry (Original)	91	2	1		284744	\\x34383333323539	0.989999999999999991
1162	Perfect Crime	91	2	1		143637	\\x32353530303330	0.989999999999999991
1163	You Ain't the First	91	2	1		156268	\\x32373534343134	0.989999999999999991
1164	Bad Obsession	91	2	1		328282	\\x35353337363738	0.989999999999999991
1165	Back off Bitch	91	2	1		303436	\\x35313335363632	0.989999999999999991
1166	Double Talkin' Jive	91	2	1		203637	\\x33353230383632	0.989999999999999991
1167	November Rain	91	2	1		537540	\\x38393233353636	0.989999999999999991
1168	The Garden	91	2	1		322175	\\x35343338383632	0.989999999999999991
1169	Garden of Eden	91	2	1		161539	\\x32383339363934	0.989999999999999991
1170	Don't Damn Me	91	2	1		318901	\\x35333835383836	0.989999999999999991
1171	Bad Apples	91	2	1		268351	\\x34353637393636	0.989999999999999991
1172	Dead Horse	91	2	1		257600	\\x34333934303134	0.989999999999999991
1173	Coma	91	2	1		616511	\\x3130323031333432	0.989999999999999991
1174	Civil War	92	1	3	Duff McKagan/Slash/W. Axl Rose	461165	\\x3135303436353739	0.989999999999999991
1175	14 Years	92	1	3	Izzy Stradlin'/W. Axl Rose	261355	\\x38353433363634	0.989999999999999991
1176	Yesterdays	92	1	3	Billy/Del James/W. Axl Rose/West Arkeen	196205	\\x36333938343839	0.989999999999999991
1177	Knockin' On Heaven's Door	92	1	3	Bob Dylan	336457	\\x3130393836373136	0.989999999999999991
1178	Get In The Ring	92	1	3	Duff McKagan/Slash/W. Axl Rose	341054	\\x3131313334313035	0.989999999999999991
1179	Shotgun Blues	92	1	3	W. Axl Rose	203206	\\x36363233393136	0.989999999999999991
1180	Breakdown	92	1	3	W. Axl Rose	424960	\\x3133393738323834	0.989999999999999991
1181	Pretty Tied Up	92	1	3	Izzy Stradlin'	287477	\\x39343038373534	0.989999999999999991
1182	Locomotive	92	1	3	Slash/W. Axl Rose	522396	\\x3137323336383432	0.989999999999999991
1183	So Fine	92	1	3	Duff McKagan	246491	\\x38303339343834	0.989999999999999991
1184	Estranged	92	1	3	W. Axl Rose	563800	\\x3138333433373837	0.989999999999999991
1185	You Could Be Mine	92	1	3	Izzy Stradlin'/W. Axl Rose	343875	\\x3131323037333535	0.989999999999999991
1186	Don't Cry	92	1	3	Izzy Stradlin'/W. Axl Rose	284238	\\x39323232343538	0.989999999999999991
1187	My World	92	1	3	W. Axl Rose	84532	\\x32373634303435	0.989999999999999991
1188	Colibri	93	1	2	Richard Bull	361012	\\x3132303535333239	0.989999999999999991
1189	Love Is The Colour	93	1	2	R. Carless	251585	\\x38343139313635	0.989999999999999991
1190	Magnetic Ocean	93	1	2	Patrick Claher/Richard Bull	321123	\\x3130373230373431	0.989999999999999991
1191	Deep Waters	93	1	2	Richard Bull	396460	\\x3133303735333539	0.989999999999999991
1192	L'Arc En Ciel De Miles	93	1	2	Kevin Robinson/Richard Bull	242390	\\x38303533393937	0.989999999999999991
1193	Gypsy	93	1	2	Kevin Robinson	330997	\\x3131303833333734	0.989999999999999991
1194	Journey Into Sunlight	93	1	2	Jean Paul Maunick	249756	\\x38323431313737	0.989999999999999991
1195	Sunchild	93	1	2	Graham Harvey	259970	\\x38353933313433	0.989999999999999991
1196	Millenium	93	1	2	Maxton Gig Beesley Jnr.	379167	\\x3132353131393339	0.989999999999999991
1197	Thinking 'Bout Tomorrow	93	1	2	Fayyaz Virgi/Richard Bull	355395	\\x3131383635333834	0.989999999999999991
1198	Jacob's Ladder	93	1	2	Julian Crampton	367647	\\x3132323031353935	0.989999999999999991
1199	She Wears Black	93	1	2	G Harvey/R Hope-Taylor	528666	\\x3137363137393434	0.989999999999999991
1200	Dark Side Of The Cog	93	1	2	Jean Paul Maunick	377155	\\x3132343931313232	0.989999999999999991
1201	Different World	94	2	1		258692	\\x34333833373634	0.989999999999999991
1202	These Colours Don't Run	94	2	1		412152	\\x36383833353030	0.989999999999999991
1203	Brighter Than a Thousand Suns	94	2	1		526255	\\x38373231343930	0.989999999999999991
1204	The Pilgrim	94	2	1		307593	\\x35313732313434	0.989999999999999991
1205	The Longest Day	94	2	1		467810	\\x37373835373438	0.989999999999999991
1206	Out of the Shadows	94	2	1		336896	\\x35363437333033	0.989999999999999991
1207	The Reincarnation of Benjamin Breeg	94	2	1		442106	\\x37333637373336	0.989999999999999991
1208	For the Greater Good of God	94	2	1		564893	\\x39333637333238	0.989999999999999991
1209	Lord of Light	94	2	1		444614	\\x37333933363938	0.989999999999999991
1210	The Legacy	94	2	1		562966	\\x39333134323837	0.989999999999999991
1211	Hallowed Be Thy Name (Live) [Non Album Bonus Track]	94	2	1		431262	\\x37323035383136	0.989999999999999991
1212	The Number Of The Beast	95	1	3	Steve Harris	294635	\\x34373138383937	0.989999999999999991
1213	The Trooper	95	1	3	Steve Harris	235311	\\x33373636323732	0.989999999999999991
1214	Prowler	95	1	3	Steve Harris	255634	\\x34303931393034	0.989999999999999991
1215	Transylvania	95	1	3	Steve Harris	265874	\\x34323535373434	0.989999999999999991
1216	Remember Tomorrow	95	1	3	Paul Di'Anno/Steve Harris	352731	\\x35363438343338	0.989999999999999991
1217	Where Eagles Dare	95	1	3	Steve Harris	289358	\\x34363330353238	0.989999999999999991
1218	Sanctuary	95	1	3	David Murray/Paul Di'Anno/Steve Harris	293250	\\x34363934303136	0.989999999999999991
1219	Running Free	95	1	3	Paul Di'Anno/Steve Harris	228937	\\x33363633383732	0.989999999999999991
1220	Run To The Hilss	95	1	3	Steve Harris	237557	\\x33383033313336	0.989999999999999991
1221	2 Minutes To Midnight	95	1	3	Adrian Smith/Bruce Dickinson	337423	\\x35343030353736	0.989999999999999991
1222	Iron Maiden	95	1	3	Steve Harris	324623	\\x35313935373736	0.989999999999999991
1223	Hallowed Be Thy Name	95	1	3	Steve Harris	471849	\\x37353530393736	0.989999999999999991
1224	Be Quick Or Be Dead	96	1	3	Bruce Dickinson/Janick Gers	196911	\\x33313531383732	0.989999999999999991
1225	From Here To Eternity	96	1	3	Steve Harris	259866	\\x34313539343838	0.989999999999999991
1226	Can I Play With Madness	96	1	3	Adrian Smith/Bruce Dickinson/Steve Harris	282488	\\x34353231393834	0.989999999999999991
1227	Wasting Love	96	1	3	Bruce Dickinson/Janick Gers	347846	\\x35353636343634	0.989999999999999991
1228	Tailgunner	96	1	3	Bruce Dickinson/Steve Harris	249469	\\x33393933363030	0.989999999999999991
1229	The Evil That Men Do	96	1	3	Adrian Smith/Bruce Dickinson/Steve Harris	325929	\\x35323136323536	0.989999999999999991
1230	Afraid To Shoot Strangers	96	1	3	Steve Harris	407980	\\x36353239303234	0.989999999999999991
1231	Bring Your Daughter... To The Slaughter	96	1	3	Bruce Dickinson	317727	\\x35303835313834	0.989999999999999991
1232	Heaven Can Wait	96	1	3	Steve Harris	448574	\\x37313738323430	0.989999999999999991
1233	The Clairvoyant	96	1	3	Steve Harris	269871	\\x34333139323332	0.989999999999999991
1234	Fear Of The Dark	96	1	3	Steve Harris	431333	\\x36393036303738	0.989999999999999991
1235	The Wicker Man	97	1	1	Adrian Smith/Bruce Dickinson/Steve Harris	275539	\\x3131303232343634	0.989999999999999991
1236	Ghost Of The Navigator	97	1	1	Bruce Dickinson/Janick Gers/Steve Harris	410070	\\x3136343034363038	0.989999999999999991
1237	Brave New World	97	1	1	Bruce Dickinson/David Murray/Steve Harris	378984	\\x3135313631343732	0.989999999999999991
1238	Blood Brothers	97	1	1	Steve Harris	434442	\\x3137333739343536	0.989999999999999991
1239	The Mercenary	97	1	1	Janick Gers/Steve Harris	282488	\\x3131333030393932	0.989999999999999991
1240	Dream Of Mirrors	97	1	1	Janick Gers/Steve Harris	561162	\\x3232343438323536	0.989999999999999991
1241	The Fallen Angel	97	1	1	Adrian Smith/Steve Harris	240718	\\x39363239383234	0.989999999999999991
1242	The Nomad	97	1	1	David Murray/Steve Harris	546115	\\x3231383436313434	0.989999999999999991
1243	Out Of The Silent Planet	97	1	1	Bruce Dickinson/Janick Gers/Steve Harris	385541	\\x3135343233363136	0.989999999999999991
1244	The Thin Line Between Love & Hate	97	1	1	David Murray/Steve Harris	506801	\\x3230323733323830	0.989999999999999991
1245	Wildest Dreams	98	1	13	Adrian Smith/Steve Harris	232777	\\x39333132333834	0.989999999999999991
1246	Rainmaker	98	1	13	Bruce Dickinson/David Murray/Steve Harris	228623	\\x39313436343936	0.989999999999999991
1247	No More Lies	98	1	13	Steve Harris	441782	\\x3137363732333230	0.989999999999999991
1248	Montsegur	98	1	13	Bruce Dickinson/Janick Gers/Steve Harris	350484	\\x3134303230373336	0.989999999999999991
1249	Dance Of Death	98	1	13	Janick Gers/Steve Harris	516649	\\x3230363730373237	0.989999999999999991
1250	Gates Of Tomorrow	98	1	13	Bruce Dickinson/Janick Gers/Steve Harris	312032	\\x3132343832363838	0.989999999999999991
1251	New Frontier	98	1	13	Adrian Smith/Bruce Dickinson/Nicko McBrain	304509	\\x3132313831363332	0.989999999999999991
1252	Paschendale	98	1	13	Adrian Smith/Steve Harris	508107	\\x3230333236353238	0.989999999999999991
1253	Face In The Sand	98	1	13	Adrian Smith/Bruce Dickinson/Steve Harris	391105	\\x3135363438393438	0.989999999999999991
1254	Age Of Innocence	98	1	13	David Murray/Steve Harris	370468	\\x3134383233343738	0.989999999999999991
1255	Journeyman	98	1	13	Bruce Dickinson/David Murray/Steve Harris	427023	\\x3137303832343936	0.989999999999999991
1256	Be Quick Or Be Dead	99	1	1	Bruce Dickinson/Janick Gers	204512	\\x38313831383838	0.989999999999999991
1257	From Here To Eternity	99	1	1	Steve Harris	218357	\\x38373339303338	0.989999999999999991
1258	Afraid To Shoot Strangers	99	1	1	Steve Harris	416496	\\x3136363634353839	0.989999999999999991
1259	Fear Is The Key	99	1	1	Bruce Dickinson/Janick Gers	335307	\\x3133343134353238	0.989999999999999991
1260	Childhood's End	99	1	1	Steve Harris	280607	\\x3131323235323136	0.989999999999999991
1261	Wasting Love	99	1	1	Bruce Dickinson/Janick Gers	350981	\\x3134303431323136	0.989999999999999991
1262	The Fugitive	99	1	1	Steve Harris	294112	\\x3131373635383838	0.989999999999999991
1263	Chains Of Misery	99	1	1	Bruce Dickinson/David Murray	217443	\\x38373030303332	0.989999999999999991
1264	The Apparition	99	1	1	Janick Gers/Steve Harris	234605	\\x39333836313132	0.989999999999999991
1265	Judas Be My Guide	99	1	1	Bruce Dickinson/David Murray	188786	\\x37353533313532	0.989999999999999991
1266	Weekend Warrior	99	1	1	Janick Gers/Steve Harris	339748	\\x3133353934363738	0.989999999999999991
1267	Fear Of The Dark	99	1	1	Steve Harris	436976	\\x3137343833373839	0.989999999999999991
1268	01 - Prowler	100	1	6	Steve Harris	236173	\\x35363638393932	0.989999999999999991
1503	Lords of Karma	121	2	1	J. Satriani	288227	\\x34383039323739	0.989999999999999991
1269	02 - Sanctuary	100	1	6	David Murray/Paul Di'Anno/Steve Harris	196284	\\x34373132353736	0.989999999999999991
1272	05 - Phantom of the Opera	100	1	6	Steve Harris	428016	\\x3130323736383732	0.989999999999999991
1273	06 - Transylvania	100	1	6	Steve Harris	259343	\\x36323236303438	0.989999999999999991
1274	07 - Strange World	100	1	6	Steve Harris	332460	\\x37393831313834	0.989999999999999991
1275	08 - Charlotte the Harlot	100	1	6	Murray  Dave	252708	\\x36303636333034	0.989999999999999991
1276	09 - Iron Maiden	100	1	6	Steve Harris	216058	\\x35313839383931	0.989999999999999991
1277	The Ides Of March	101	1	13	Steve Harris	105926	\\x32353433373434	0.989999999999999991
1278	Wrathchild	101	1	13	Steve Harris	174471	\\x34313838323838	0.989999999999999991
1279	Murders In The Rue Morgue	101	1	13	Steve Harris	258377	\\x36323035373836	0.989999999999999991
1280	Another Life	101	1	13	Steve Harris	203049	\\x34383734333638	0.989999999999999991
1281	Genghis Khan	101	1	13	Steve Harris	187141	\\x34343933343430	0.989999999999999991
1283	Killers	101	1	13	Steve Harris	300956	\\x37323237343430	0.989999999999999991
1284	Prodigal Son	101	1	13	Steve Harris	372349	\\x38393337363030	0.989999999999999991
1285	Purgatory	101	1	13	Steve Harris	200150	\\x34383034373336	0.989999999999999991
1286	Drifter	101	1	13	Steve Harris	288757	\\x36393334363630	0.989999999999999991
1287	Intro- Churchill S Speech	102	1	13		48013	\\x31313534343838	0.989999999999999991
1288	Aces High	102	1	13		276375	\\x36363335313837	0.989999999999999991
1289	2 Minutes To Midnight	102	1	3	Smith/Dickinson	366550	\\x38373939333830	0.989999999999999991
1290	The Trooper	102	1	3	Harris	268878	\\x36343535323535	0.989999999999999991
1291	Revelations	102	1	3	Dickinson	371826	\\x38393236303231	0.989999999999999991
1292	Flight Of Icarus	102	1	3	Smith/Dickinson	229982	\\x35353231373434	0.989999999999999991
1293	Rime Of The Ancient Mariner	102	1	3		789472	\\x3138393439353138	0.989999999999999991
1294	Powerslave	102	1	3		454974	\\x3130393231353637	0.989999999999999991
1295	The Number Of The Beast	102	1	3	Harris	275121	\\x36363035303934	0.989999999999999991
1296	Hallowed Be Thy Name	102	1	3	Harris	451422	\\x3130383336333034	0.989999999999999991
1297	Iron Maiden	102	1	3	Harris	261955	\\x36323839313137	0.989999999999999991
1298	Run To The Hills	102	1	3	Harris	231627	\\x35353631323431	0.989999999999999991
1299	Running Free	102	1	3	Harris/Di Anno	204617	\\x34393132393836	0.989999999999999991
1300	Wrathchild	102	1	13	Steve Harris	183666	\\x34343130313831	0.989999999999999991
1301	Acacia Avenue	102	1	13		379872	\\x39313139313138	0.989999999999999991
1302	Children Of The Damned	102	1	13	Steve Harris	278177	\\x36363738343436	0.989999999999999991
1303	Die With Your Boots On	102	1	13	Adrian Smith/Bruce Dickinson/Steve Harris	314174	\\x37353432333637	0.989999999999999991
1304	Phantom Of The Opera	102	1	13	Steve Harris	441155	\\x3130353839393137	0.989999999999999991
1305	Be Quick Or Be Dead	103	1	1		233142	\\x35353939383533	0.989999999999999991
1306	The Number Of The Beast	103	1	1		294008	\\x37303630363235	0.989999999999999991
1307	Wrathchild	103	1	1		174106	\\x34313832393633	0.989999999999999991
1308	From Here To Eternity	103	1	1		284447	\\x36383331313633	0.989999999999999991
1309	Can I Play With Madness	103	1	1		213106	\\x35313138393935	0.989999999999999991
1310	Wasting Love	103	1	1		336953	\\x38303931333031	0.989999999999999991
1311	Tailgunner	103	1	1		247640	\\x35393437373935	0.989999999999999991
1312	The Evil That Men Do	103	1	1		478145	\\x3131343739393133	0.989999999999999991
1313	Afraid To Shoot Strangers	103	1	1		412525	\\x39393035303438	0.989999999999999991
1314	Fear Of The Dark	103	1	1		431542	\\x3130333631343532	0.989999999999999991
1315	Bring Your Daughter... To The Slaughter...	104	1	1		376711	\\x39303435353332	0.989999999999999991
1316	The Clairvoyant	104	1	1		262426	\\x36333032363438	0.989999999999999991
1317	Heaven Can Wait	104	1	1		440555	\\x3130353737373433	0.989999999999999991
1318	Run To The Hills	104	1	1		235859	\\x35363635303532	0.989999999999999991
1319	2 Minutes To Midnight	104	1	1	Adrian Smith/Bruce Dickinson	338233	\\x38313232303330	0.989999999999999991
1320	Iron Maiden	104	1	1		494602	\\x3131383734383735	0.989999999999999991
1321	Hallowed Be Thy Name	104	1	1		447791	\\x3130373531343130	0.989999999999999991
1322	The Trooper	104	1	1		232672	\\x35353838353630	0.989999999999999991
1323	Sanctuary	104	1	1		318511	\\x37363438363739	0.989999999999999991
1324	Running Free	104	1	1		474017	\\x3131333830383531	0.989999999999999991
1325	Tailgunner	105	1	3	Bruce Dickinson/Steve Harris	255582	\\x34303839383536	0.989999999999999991
1326	Holy Smoke	105	1	3	Bruce Dickinson/Steve Harris	229459	\\x33363732303634	0.989999999999999991
1327	No Prayer For The Dying	105	1	3	Steve Harris	263941	\\x34323235303234	0.989999999999999991
1328	Public Enema Number One	105	1	3	Bruce Dickinson/David Murray	254197	\\x34303731353837	0.989999999999999991
1329	Fates Warning	105	1	3	David Murray/Steve Harris	250853	\\x34303138303838	0.989999999999999991
1330	The Assassin	105	1	3	Steve Harris	258768	\\x34313431303536	0.989999999999999991
1331	Run Silent Run Deep	105	1	3	Bruce Dickinson/Steve Harris	275408	\\x34343037323936	0.989999999999999991
1332	Hooks In You	105	1	3	Adrian Smith/Bruce Dickinson	247510	\\x33393630383332	0.989999999999999991
1333	Bring Your Daughter... ...To The Slaughter	105	1	3	Bruce Dickinson	284238	\\x34353438363038	0.989999999999999991
1334	Mother Russia	105	1	3	Steve Harris	332617	\\x35333232373532	0.989999999999999991
1335	Where Eagles Dare	106	1	3	Steve Harris	369554	\\x35393134363234	0.989999999999999991
1336	Revelations	106	1	3	Bruce Dickinson	408607	\\x36353339323634	0.989999999999999991
1337	Flight Of The Icarus	106	1	3	Adrian Smith/Bruce Dickinson	230269	\\x33363836343030	0.989999999999999991
1338	Die With Your Boots On	106	1	3	Adrian Smith/Bruce Dickinson/Steve Harris	325694	\\x35323132313630	0.989999999999999991
1339	The Trooper	106	1	3	Steve Harris	251454	\\x34303234333230	0.989999999999999991
1340	Still Life	106	1	3	David Murray/Steve Harris	294347	\\x34373130343030	0.989999999999999991
1341	Quest For Fire	106	1	3	Steve Harris	221309	\\x33353433303430	0.989999999999999991
1342	Sun And Steel	106	1	3	Adrian Smith/Bruce Dickinson	206367	\\x33333036333234	0.989999999999999991
1343	To Tame A Land	106	1	3	Steve Harris	445283	\\x37313239323634	0.989999999999999991
1344	Aces High	107	1	3	Harris	269531	\\x36343732303838	0.989999999999999991
1345	2 Minutes To Midnight	107	1	3	Smith/Dickinson	359810	\\x38363338383039	0.989999999999999991
1346	Losfer Words	107	1	3	Steve Harris	252891	\\x36303734373536	0.989999999999999991
1347	Flash of The Blade	107	1	3	Dickinson	242729	\\x35383238383631	0.989999999999999991
1348	Duelists	107	1	3	Steve Harris	366471	\\x38383030363836	0.989999999999999991
1349	Back in the Village	107	1	3	Dickinson/Smith	320548	\\x37363936353138	0.989999999999999991
1350	Powerslave	107	1	3	Dickinson	407823	\\x39373931313036	0.989999999999999991
1351	Rime of the Ancient Mariner	107	1	3	Harris	816509	\\x3139353939353737	0.989999999999999991
1352	Intro	108	1	3		115931	\\x34363338383438	0.989999999999999991
1353	The Wicker Man	108	1	3	Adrian Smith/Bruce Dickinson/Steve Harris	281782	\\x3131323732333230	0.989999999999999991
1354	Ghost Of The Navigator	108	1	3	Bruce Dickinson/Janick Gers/Steve Harris	408607	\\x3136333435323136	0.989999999999999991
1355	Brave New World	108	1	3	Bruce Dickinson/David Murray/Steve Harris	366785	\\x3134363736313438	0.989999999999999991
1356	Wrathchild	108	1	3	Steve Harris	185808	\\x37343334333638	0.989999999999999991
1357	2 Minutes To Midnight	108	1	3	Adrian Smith/Bruce Dickinson	386821	\\x3135343734383136	0.989999999999999991
1358	Blood Brothers	108	1	3	Steve Harris	435513	\\x3137343232343634	0.989999999999999991
1359	Sign Of The Cross	108	1	3	Steve Harris	649116	\\x3235393636373230	0.989999999999999991
1360	The Mercenary	108	1	3	Janick Gers/Steve Harris	282697	\\x3131333039313834	0.989999999999999991
1361	The Trooper	108	1	3	Steve Harris	273528	\\x3130393432353932	0.989999999999999991
1362	Dream Of Mirrors	109	1	1	Janick Gers/Steve Harris	578324	\\x3233313334333336	0.989999999999999991
1363	The Clansman	109	1	1	Steve Harris	559203	\\x3232333730343332	0.989999999999999991
1364	The Evil That Men Do	109	1	3	Adrian Smith/Bruce Dickinson/Steve Harris	280737	\\x3131323331333630	0.989999999999999991
1365	Fear Of The Dark	109	1	1	Steve Harris	460695	\\x3138343330303830	0.989999999999999991
1366	Iron Maiden	109	1	1	Steve Harris	351869	\\x3134303736303332	0.989999999999999991
1367	The Number Of The Beast	109	1	1	Steve Harris	300434	\\x3132303232313037	0.989999999999999991
1368	Hallowed Be Thy Name	109	1	1	Steve Harris	443977	\\x3137373630333834	0.989999999999999991
1369	Sanctuary	109	1	1	David Murray/Paul Di'Anno/Steve Harris	317335	\\x3132363935363830	0.989999999999999991
1370	Run To The Hills	109	1	1	Steve Harris	292179	\\x3131363838303634	0.989999999999999991
1371	Moonchild	110	1	3	Adrian Smith; Bruce Dickinson	340767	\\x38313739313531	0.989999999999999991
1372	Infinite Dreams	110	1	3	Steve Harris	369005	\\x38383538363639	0.989999999999999991
1373	Can I Play With Madness	110	1	3	Adrian Smith; Bruce Dickinson; Steve Harris	211043	\\x35303637383637	0.989999999999999991
1374	The Evil That Men Do	110	1	3	Adrian Smith; Bruce Dickinson; Steve Harris	273998	\\x36353738393330	0.989999999999999991
1452	Were Do We Go From Here	117	1	14	Jay Kay	313626	\\x3130353034313538	0.989999999999999991
1375	Seventh Son of a Seventh Son	110	1	3	Steve Harris	593580	\\x3134323439303030	0.989999999999999991
1376	The Prophecy	110	1	3	Dave Murray; Steve Harris	305475	\\x37333334343530	0.989999999999999991
1377	The Clairvoyant	110	1	3	Adrian Smith; Bruce Dickinson; Steve Harris	267023	\\x36343131353130	0.989999999999999991
1378	Only the Good Die Young	110	1	3	Bruce Dickinson; Harris	280894	\\x36373434343331	0.989999999999999991
1379	Caught Somewhere in Time	111	1	3	Steve Harris	445779	\\x3130373031313439	0.989999999999999991
1380	Wasted Years	111	1	3	Adrian Smith	307565	\\x37333834333538	0.989999999999999991
1381	Sea of Madness	111	1	3	Adrian Smith	341995	\\x38323130363935	0.989999999999999991
1382	Heaven Can Wait	111	1	3	Steve Harris	441417	\\x3130353936343331	0.989999999999999991
1383	Stranger in a Strange Land	111	1	3	Adrian Smith	344502	\\x38323730383939	0.989999999999999991
1384	Alexander the Great	111	1	3	Steve Harris	515631	\\x3132333737373432	0.989999999999999991
1385	De Ja Vu	111	1	3	David Murray/Steve Harris	296176	\\x37313133303335	0.989999999999999991
1386	The Loneliness of the Long Dis	111	1	3	Steve Harris	391314	\\x39333933353938	0.989999999999999991
1387	22 Acacia Avenue	112	1	3	Adrian Smith/Steve Harris	395572	\\x35353432353136	0.989999999999999991
1388	Children of the Damned	112	1	3	Steve Harris	274364	\\x33383435363331	0.989999999999999991
1389	Gangland	112	1	3	Adrian Smith/Clive Burr/Steve Harris	228440	\\x33323032383636	0.989999999999999991
1390	Hallowed Be Thy Name	112	1	3	Steve Harris	428669	\\x36303036313037	0.989999999999999991
1391	Invaders	112	1	3	Steve Harris	203180	\\x32383439313831	0.989999999999999991
1392	Run to the Hills	112	1	3	Steve Harris	228884	\\x33323039313234	0.989999999999999991
1393	The Number Of The Beast	112	1	1	Steve Harris	293407	\\x3131373337323136	0.989999999999999991
1394	The Prisoner	112	1	3	Adrian Smith/Steve Harris	361299	\\x35303632393036	0.989999999999999991
1395	Sign Of The Cross	113	1	1	Steve Harris	678008	\\x3237313231373932	0.989999999999999991
1396	Lord Of The Flies	113	1	1	Janick Gers/Steve Harris	303699	\\x3132313438383634	0.989999999999999991
1397	Man On The Edge	113	1	1	Blaze Bayley/Janick Gers	253413	\\x3130313337373238	0.989999999999999991
1398	Fortunes Of War	113	1	1	Steve Harris	443977	\\x3137373630333834	0.989999999999999991
1399	Look For The Truth	113	1	1	Blaze Bayley/Janick Gers/Steve Harris	310230	\\x3132343131303038	0.989999999999999991
1400	The Aftermath	113	1	1	Blaze Bayley/Janick Gers/Steve Harris	380786	\\x3135323333313532	0.989999999999999991
1401	Judgement Of Heaven	113	1	1	Steve Harris	312476	\\x3132353031313230	0.989999999999999991
1402	Blood On The World's Hands	113	1	1	Steve Harris	357799	\\x3134333133363030	0.989999999999999991
1403	The Edge Of Darkness	113	1	1	Blaze Bayley/Janick Gers/Steve Harris	399333	\\x3135393734353238	0.989999999999999991
1404	2 A.M.	113	1	1	Blaze Bayley/Janick Gers/Steve Harris	337658	\\x3133353131303837	0.989999999999999991
1405	The Unbeliever	113	1	1	Janick Gers/Steve Harris	490422	\\x3139363137393230	0.989999999999999991
1406	Futureal	114	1	1	Blaze Bayley/Steve Harris	175777	\\x37303332393630	0.989999999999999991
1407	The Angel And The Gambler	114	1	1	Steve Harris	592744	\\x3233373131383732	0.989999999999999991
1408	Lightning Strikes Twice	114	1	1	David Murray/Steve Harris	290377	\\x3131363136333834	0.989999999999999991
1409	The Clansman	114	1	1	Steve Harris	539689	\\x3231353932333237	0.989999999999999991
1410	When Two Worlds Collide	114	1	1	Blaze Bayley/David Murray/Steve Harris	377312	\\x3135303933383838	0.989999999999999991
1411	The Educated Fool	114	1	1	Steve Harris	404767	\\x3136313931363136	0.989999999999999991
1412	Don't Look To The Eyes Of A Stranger	114	1	1	Steve Harris	483657	\\x3139333437353834	0.989999999999999991
1413	Como Estais Amigos	114	1	1	Blaze Bayley/Janick Gers	330292	\\x3133323133383234	0.989999999999999991
1414	Please Please Please	115	1	14	James Brown/Johnny Terry	165067	\\x35333934353835	0.989999999999999991
1415	Think	115	1	14	Lowman Pauling	166739	\\x35353133323038	0.989999999999999991
1416	Night Train	115	1	14	Jimmy Forrest/Lewis C. Simpkins/Oscar Washington	212401	\\x37303237333737	0.989999999999999991
1417	Out Of Sight	115	1	14	Ted Wright	143725	\\x34373131333233	0.989999999999999991
1418	Papa's Got A Brand New Bag Pt.1	115	1	14	James Brown	127399	\\x34313734343230	0.989999999999999991
1419	I Got You (I Feel Good)	115	1	14	James Brown	167392	\\x35343638343732	0.989999999999999991
1420	It's A Man's Man's Man's World	115	1	14	Betty Newsome/James Brown	168228	\\x35353431363131	0.989999999999999991
1421	Cold Sweat	115	1	14	Alfred Ellis/James Brown	172408	\\x35363433323133	0.989999999999999991
1422	Say It Loud, I'm Black And I'm Proud Pt.1	115	1	14	Alfred Ellis/James Brown	167392	\\x35343738313137	0.989999999999999991
1504	Midnight	121	2	1	J. Satriani	102630	\\x31383531373533	0.989999999999999991
1423	Get Up (I Feel Like Being A) Sex Machine	115	1	14	Bobby Byrd/James Brown/Ron Lenhoff	316551	\\x3130343938303331	0.989999999999999991
1424	Hey America	115	1	14	Addie William Jones/Nat Jones	218226	\\x37313837383537	0.989999999999999991
1425	Make It Funky Pt.1	115	1	14	Charles Bobbitt/James Brown	196231	\\x36353037373832	0.989999999999999991
1426	I'm A Greedy Man Pt.1	115	1	14	Charles Bobbitt/James Brown	217730	\\x37323531323131	0.989999999999999991
1427	Get On The Good Foot	115	1	14	Fred Wesley/James Brown/Joseph Mims	215902	\\x37313832373336	0.989999999999999991
1428	Get Up Offa That Thing	115	1	14	Deanna Brown/Deidra Jenkins/Yamma Brown	250723	\\x38333535393839	0.989999999999999991
1429	It's Too Funky In Here	115	1	14	Brad Shapiro/George Jackson/Robert Miller/Walter Shaw	239072	\\x37393733393739	0.989999999999999991
1430	Living In America	115	1	14	Charlie Midnight/Dan Hartman	282880	\\x39343332333436	0.989999999999999991
1431	I'm Real	115	1	14	Full Force/James Brown	334236	\\x3131313833343537	0.989999999999999991
1432	Hot Pants Pt.1	115	1	14	Fred Wesley/James Brown	188212	\\x36323935313130	0.989999999999999991
1433	Soul Power (Live)	115	1	14	James Brown	260728	\\x38353933323036	0.989999999999999991
1434	When You Gonna Learn (Digeridoo)	116	1	1	Jay Kay/Kay, Jay	230635	\\x37363535343832	0.989999999999999991
1435	Too Young To Die	116	1	1	Smith, Toby	365818	\\x3132333931363630	0.989999999999999991
1436	Hooked Up	116	1	1	Smith, Toby	275879	\\x39333031363837	0.989999999999999991
1437	If I Like It, I Do It	116	1	1	Gelder, Nick van	293093	\\x39383438323037	0.989999999999999991
1438	Music Of The Wind	116	1	1	Smith, Toby	383033	\\x3132383730323339	0.989999999999999991
1439	Emergency On Planet Earth	116	1	1	Smith, Toby	245263	\\x38313137323138	0.989999999999999991
1440	Whatever It Is, I Just Can't Stop	116	1	1	Jay Kay/Kay, Jay	247222	\\x38323439343533	0.989999999999999991
1441	Blow Your Mind	116	1	1	Smith, Toby	512339	\\x3137303839313736	0.989999999999999991
1442	Revolution 1993	116	1	1	Smith, Toby	616829	\\x3230383136383732	0.989999999999999991
1443	Didgin' Out	116	1	1	Buchanan, Wallis	157100	\\x35323633353535	0.989999999999999991
1444	Canned Heat	117	1	14	Jay Kay	331964	\\x3131303432303337	0.989999999999999991
1445	Planet Home	117	1	14	Jay Kay/Toby Smith	284447	\\x39353636323337	0.989999999999999991
1446	Black Capricorn Day	117	1	14	Jay Kay	341629	\\x3131343737323331	0.989999999999999991
1447	Soul Education	117	1	14	Jay Kay/Toby Smith	255477	\\x38353735343335	0.989999999999999991
1448	Failling	117	1	14	Jay Kay/Toby Smith	225227	\\x37353033393939	0.989999999999999991
1449	Destitute Illusions	117	1	14	Derrick McKenzie/Jay Kay/Toby Smith	340218	\\x3131343532363531	0.989999999999999991
1450	Supersonic	117	1	14	Jay Kay	315872	\\x3130363939323635	0.989999999999999991
1451	Butterfly	117	1	14	Jay Kay/Toby Smith	268852	\\x38393437333536	0.989999999999999991
1453	King For A Day	117	1	14	Jay Kay/Toby Smith	221544	\\x37333335363933	0.989999999999999991
1454	Deeper Underground	117	1	14	Toby Smith	281808	\\x39333531323737	0.989999999999999991
1455	Just Another Story	118	1	15	Toby Smith	529684	\\x3137353832383138	0.989999999999999991
1456	Stillness In Time	118	1	15	Toby Smith	257097	\\x38363434323930	0.989999999999999991
1457	Half The Man	118	1	15	Toby Smith	289854	\\x39353737363739	0.989999999999999991
1458	Light Years	118	1	15	Toby Smith	354560	\\x3131373936323434	0.989999999999999991
1459	Manifest Destiny	118	1	15	Toby Smith	382197	\\x3132363736393632	0.989999999999999991
1460	The Kids	118	1	15	Toby Smith	309995	\\x3130333334353239	0.989999999999999991
1461	Mr. Moon	118	1	15	Stuard Zender/Toby Smith	329534	\\x3131303433353539	0.989999999999999991
1462	Scam	118	1	15	Stuart Zender	422321	\\x3134303139373035	0.989999999999999991
1463	Journey To Arnhemland	118	1	15	Toby Smith/Wallis Buchanan	322455	\\x3130383433383332	0.989999999999999991
1464	Morning Glory	118	1	15	J. Kay/Jay Kay	384130	\\x3132373737323130	0.989999999999999991
1465	Space Cowboy	118	1	15	J. Kay/Jay Kay	385697	\\x3132393036353230	0.989999999999999991
1466	Last Chance	119	1	4	C. Cester/C. Muncey	112352	\\x33363833313330	0.989999999999999991
1467	Are You Gonna Be My Girl	119	1	4	C. Muncey/N. Cester	213890	\\x36393932333234	0.989999999999999991
1468	Rollover D.J.	119	1	4	C. Cester/N. Cester	196702	\\x36343036353137	0.989999999999999991
1469	Look What You've Done	119	1	4	N. Cester	230974	\\x37353137303833	0.989999999999999991
1470	Get What You Need	119	1	4	C. Cester/C. Muncey/N. Cester	247719	\\x38303433373635	0.989999999999999991
1471	Move On	119	1	4	C. Cester/N. Cester	260623	\\x38353139333533	0.989999999999999991
1472	Radio Song	119	1	4	C. Cester/C. Muncey/N. Cester	272117	\\x38383731353039	0.989999999999999991
1473	Get Me Outta Here	119	1	4	C. Cester/N. Cester	176274	\\x35373239303938	0.989999999999999991
1474	Cold Hard Bitch	119	1	4	C. Cester/C. Muncey/N. Cester	243278	\\x37393239363130	0.989999999999999991
1475	Come Around Again	119	1	4	C. Muncey/N. Cester	270497	\\x38383732343035	0.989999999999999991
1476	Take It Or Leave It	119	1	4	C. Muncey/N. Cester	142889	\\x34363433333730	0.989999999999999991
1477	Lazy Gun	119	1	4	C. Cester/N. Cester	282174	\\x39313836323835	0.989999999999999991
1478	Timothy	119	1	4	C. Cester	270341	\\x38383536353037	0.989999999999999991
1479	Foxy Lady	120	1	1	Jimi Hendrix	199340	\\x36343830383936	0.989999999999999991
1480	Manic Depression	120	1	1	Jimi Hendrix	222302	\\x37323839323732	0.989999999999999991
1481	Red House	120	1	1	Jimi Hendrix	224130	\\x37323835383531	0.989999999999999991
1482	Can You See Me	120	1	1	Jimi Hendrix	153077	\\x34393837303638	0.989999999999999991
1483	Love Or Confusion	120	1	1	Jimi Hendrix	193123	\\x36333239343038	0.989999999999999991
1484	I Don't Live Today	120	1	1	Jimi Hendrix	235311	\\x37363631323134	0.989999999999999991
1485	May This Be Love	120	1	1	Jimi Hendrix	191216	\\x36323430303238	0.989999999999999991
1486	Fire	120	1	1	Jimi Hendrix	164989	\\x35333833303735	0.989999999999999991
1487	Third Stone From The Sun	120	1	1	Jimi Hendrix	404453	\\x3133313836393735	0.989999999999999991
1488	Remember	120	1	1	Jimi Hendrix	168150	\\x35353039363133	0.989999999999999991
1489	Are You Experienced?	120	1	1	Jimi Hendrix	254537	\\x38323932343937	0.989999999999999991
1490	Hey Joe	120	1	1	Billy Roberts	210259	\\x36383730303534	0.989999999999999991
1491	Stone Free	120	1	1	Jimi Hendrix	216293	\\x37303032333331	0.989999999999999991
1492	Purple Haze	120	1	1	Jimi Hendrix	171572	\\x35353937303536	0.989999999999999991
1493	51st Anniversary	120	1	1	Jimi Hendrix	196388	\\x36333938303434	0.989999999999999991
1494	The Wind Cries Mary	120	1	1	Jimi Hendrix	200463	\\x36353430363338	0.989999999999999991
1495	Highway Chile	120	1	1	Jimi Hendrix	212453	\\x36383837393439	0.989999999999999991
1496	Surfing with the Alien	121	2	1		263707	\\x34343138353034	0.989999999999999991
1497	Ice 9	121	2	1		239721	\\x34303336323135	0.989999999999999991
1498	Crushing Day	121	2	1		314768	\\x35323332313538	0.989999999999999991
1499	Always With Me, Always With You	121	2	1		202035	\\x33343335373737	0.989999999999999991
1500	Satch Boogie	121	2	1		193560	\\x33333030363534	0.989999999999999991
1501	Hill of the Skull	121	2	1	J. Satriani	108435	\\x31393434373338	0.989999999999999991
1502	Circles	121	2	1		209071	\\x33353438353533	0.989999999999999991
1505	Echo	121	2	1	J. Satriani	337570	\\x35353935353537	0.989999999999999991
1506	Engenho De Dentro	122	1	7		310073	\\x3130323131343733	0.989999999999999991
1507	Alcohol	122	1	7		355239	\\x3132303130343738	0.989999999999999991
1508	Mama Africa	122	1	7		283062	\\x39343838333136	0.989999999999999991
1509	Salve Simpatia	122	1	7		343484	\\x3131333134373536	0.989999999999999991
1513	Charles Anjo 45	122	1	7		389276	\\x3133303232383333	0.989999999999999991
1516	Que Maravilha	122	1	7		338076	\\x3130393936363536	0.989999999999999991
1517	Santa Clara Clareou	122	1	7		380081	\\x3132353234373235	0.989999999999999991
1518	Filho Maravilha	122	1	7		227526	\\x37343938323539	0.989999999999999991
1519	Taj Mahal	122	1	7		289750	\\x39353032383938	0.989999999999999991
1520	Rapidamente	123	1	7		252238	\\x38343730313037	0.989999999999999991
1521	As Dores do Mundo	123	1	7	Hyldon	255477	\\x38353337303932	0.989999999999999991
1522	Vou Pra Ai	123	1	7		300878	\\x3130303533373138	0.989999999999999991
1523	My Brother	123	1	7		253231	\\x38343331383231	0.989999999999999991
1528	A Tarde	123	1	7		266919	\\x38383336313237	0.989999999999999991
1529	Always Be All Right	123	1	7		128078	\\x34323939363736	0.989999999999999991
1530	Sem Sentido	123	1	7		250462	\\x38323932313038	0.989999999999999991
1531	Onibusfobia	123	1	7		315977	\\x3130343734393034	0.989999999999999991
1546	The Green Manalishi	125	1	3		205792	\\x36373230373839	0.989999999999999991
1547	Living After Midnight	125	1	3		213289	\\x37303536373835	0.989999999999999991
1548	Breaking The Law (Live)	125	1	3		144195	\\x34373238323436	0.989999999999999991
1549	Hot Rockin'	125	1	3		197328	\\x36353039313739	0.989999999999999991
1550	Heading Out To The Highway (Live)	125	1	3		276427	\\x39303036303232	0.989999999999999991
1551	The Hellion	125	1	3		41900	\\x31333531393933	0.989999999999999991
1552	Electric Eye	125	1	3		222197	\\x37323331333638	0.989999999999999991
1553	You've Got Another Thing Comin'	125	1	3		305162	\\x39393632353538	0.989999999999999991
1554	Turbo Lover	125	1	3		335542	\\x3131303638383636	0.989999999999999991
1555	Freewheel Burning	125	1	3		265952	\\x38373133353939	0.989999999999999991
1556	Some Heads Are Gonna Roll	125	1	3		249939	\\x38313938363137	0.989999999999999991
1557	Metal Meltdown	125	1	3		290664	\\x39333930363436	0.989999999999999991
1558	Ram It Down	125	1	3		292179	\\x39353534303233	0.989999999999999991
1559	Diamonds And Rust (Live)	125	1	3		219350	\\x37313633313437	0.989999999999999991
1560	Victim Of Change (Live)	125	1	3		430942	\\x3134303637353132	0.989999999999999991
1561	Tyrant (Live)	125	1	3		282253	\\x39313930353336	0.989999999999999991
1562	Comin' Home	126	1	1	Paul Stanley, Ace Frehley	172068	\\x35363631313230	0.989999999999999991
1563	Plaster Caster	126	1	1	Gene Simmons	198060	\\x36353238373139	0.989999999999999991
1564	Goin' Blind	126	1	1	Gene Simmons, Stephen Coronel	217652	\\x37313637353233	0.989999999999999991
1565	Do You Love Me	126	1	1	Paul Stanley, Bob Ezrin, Kim Fowley	193619	\\x36333433313131	0.989999999999999991
1566	Domino	126	1	1	Gene Simmons	226377	\\x37343838313931	0.989999999999999991
1567	Sure Know Something	126	1	1	Paul Stanley, Vincent Poncia	254354	\\x38333735313930	0.989999999999999991
1568	A World Without Heroes	126	1	1	Paul Stanley, Gene Simmons, Bob Ezrin, Lewis Reed	177815	\\x35383332353234	0.989999999999999991
1569	Rock Bottom	126	1	1	Paul Stanley, Ace Frehley	200594	\\x36353630383138	0.989999999999999991
1570	See You Tonight	126	1	1	Gene Simmons	146494	\\x34383137353231	0.989999999999999991
1571	I Still Love You	126	1	1	Paul Stanley	369815	\\x3132303836313435	0.989999999999999991
1572	Every Time I Look At You	126	1	1	Paul Stanley, Vincent Cusano	283898	\\x39323930393438	0.989999999999999991
1573	2,000 Man	126	1	1	Mick Jagger, Keith Richard	312450	\\x3130323932383239	0.989999999999999991
1574	Beth	126	1	1	Peter Criss, Stan Penridge, Bob Ezrin	170187	\\x35353737383037	0.989999999999999991
1575	Nothin' To Lose	126	1	1	Gene Simmons	222354	\\x37333531343630	0.989999999999999991
1576	Rock And Roll All Nite	126	1	1	Paul Stanley, Gene Simmons	259631	\\x38353439323936	0.989999999999999991
1577	Immigrant Song	127	1	1	Robert Plant	201247	\\x36343537373636	0.989999999999999991
1578	Heartbreaker	127	1	1	John Bonham/John Paul Jones/Robert Plant	316081	\\x3130313739363537	0.989999999999999991
1579	Since I've Been Loving You	127	1	1	John Paul Jones/Robert Plant	416365	\\x3133343731393539	0.989999999999999991
1580	Black Dog	127	1	1	John Paul Jones/Robert Plant	317622	\\x3130323637353732	0.989999999999999991
1581	Dazed And Confused	127	1	1	Jimmy Page/Led Zeppelin	1116734	\\x3336303532323437	0.989999999999999991
1582	Stairway To Heaven	127	1	1	Robert Plant	529658	\\x3137303530343835	0.989999999999999991
1583	Going To California	127	1	1	Robert Plant	234605	\\x37363436373439	0.989999999999999991
1584	That's The Way	127	1	1	Robert Plant	343431	\\x3131323438343535	0.989999999999999991
1585	Whole Lotta Love (Medley)	127	1	1	Arthur Crudup/Bernard Besman/Bukka White/Doc Pomus/John Bonham/John Lee Hooker/John Paul Jones/Mort Shuman/Robert Plant/Willie Dixon	825103	\\x3236373432353435	0.989999999999999991
1586	Thank You	127	1	1	Robert Plant	398262	\\x3132383331383236	0.989999999999999991
1587	We're Gonna Groove	128	1	1	Ben E.King/James Bethea	157570	\\x35313830393735	0.989999999999999991
1588	Poor Tom	128	1	1	Jimmy Page/Robert Plant	182491	\\x36303136323230	0.989999999999999991
1589	I Can't Quit You Baby	128	1	1	Willie Dixon	258168	\\x38343337303938	0.989999999999999991
1590	Walter's Walk	128	1	1	Jimmy Page, Robert Plant	270785	\\x38373132343939	0.989999999999999991
1591	Ozone Baby	128	1	1	Jimmy Page, Robert Plant	215954	\\x37303739353838	0.989999999999999991
1592	Darlene	128	1	1	Jimmy Page, Robert Plant, John Bonham, John Paul Jones	307226	\\x3130303738313937	0.989999999999999991
1593	Bonzo's Montreux	128	1	1	John Bonham	258925	\\x38353537343437	0.989999999999999991
1594	Wearing And Tearing	128	1	1	Jimmy Page, Robert Plant	330004	\\x3130373031353930	0.989999999999999991
1595	The Song Remains The Same	129	1	1	Jimmy Page/Jimmy Page & Robert Plant/Robert Plant	330004	\\x3130373038393530	0.989999999999999991
1596	The Rain Song	129	1	1	Jimmy Page/Jimmy Page & Robert Plant/Robert Plant	459180	\\x3135303239383735	0.989999999999999991
1597	Over The Hills And Far Away	129	1	1	Jimmy Page/Jimmy Page & Robert Plant/Robert Plant	290089	\\x39353532383239	0.989999999999999991
1598	The Crunge	129	1	1	John Bonham/John Paul Jones	197407	\\x36343630323132	0.989999999999999991
1599	Dancing Days	129	1	1	Jimmy Page/Jimmy Page & Robert Plant/Robert Plant	223216	\\x37323530313034	0.989999999999999991
1600	D'Yer Mak'er	129	1	1	John Bonham/John Paul Jones	262948	\\x38363435393335	0.989999999999999991
1601	No Quarter	129	1	1	John Paul Jones	420493	\\x3133363536353137	0.989999999999999991
1602	The Ocean	129	1	1	John Bonham/John Paul Jones	271098	\\x38383436343639	0.989999999999999991
1603	In The Evening	130	1	1	Jimmy Page, Robert Plant & John Paul Jones	410566	\\x3133333939373334	0.989999999999999991
1604	South Bound Saurez	130	1	1	John Paul Jones & Robert Plant	254406	\\x38343230343237	0.989999999999999991
1705	Again	141	1	1	Lenny Kravitz	228989	\\x37343930343736	0.989999999999999991
1605	Fool In The Rain	130	1	1	Jimmy Page, Robert Plant & John Paul Jones	372950	\\x3132333731343333	0.989999999999999991
1606	Hot Dog	130	1	1	Jimmy Page & Robert Plant	197198	\\x36353336313637	0.989999999999999991
1607	Carouselambra	130	1	1	John Paul Jones, Jimmy Page & Robert Plant	634435	\\x3230383538333135	0.989999999999999991
1608	All My Love	130	1	1	Robert Plant & John Paul Jones	356284	\\x3131363834383632	0.989999999999999991
1609	I'm Gonna Crawl	130	1	1	Jimmy Page, Robert Plant & John Paul Jones	329639	\\x3130373337363635	0.989999999999999991
1610	Black Dog	131	1	1	Jimmy Page, Robert Plant, John Paul Jones	296672	\\x39363630353838	0.989999999999999991
1611	Rock & Roll	131	1	1	Jimmy Page, Robert Plant, John Paul Jones, John Bonham	220917	\\x37313432313237	0.989999999999999991
1612	The Battle Of Evermore	131	1	1	Jimmy Page, Robert Plant	351555	\\x3131353235363839	0.989999999999999991
1613	Stairway To Heaven	131	1	1	Jimmy Page, Robert Plant	481619	\\x3135373036373637	0.989999999999999991
1614	Misty Mountain Hop	131	1	1	Jimmy Page, Robert Plant, John Paul Jones	278857	\\x39303932373939	0.989999999999999991
1615	Four Sticks	131	1	1	Jimmy Page, Robert Plant	284447	\\x39343831333031	0.989999999999999991
1616	Going To California	131	1	1	Jimmy Page, Robert Plant	215693	\\x37303638373337	0.989999999999999991
1617	When The Levee Breaks	131	1	1	Jimmy Page, Robert Plant, John Paul Jones, John Bonham, Memphis Minnie	427702	\\x3133393132313037	0.989999999999999991
1618	Good Times Bad Times	132	1	1	Jimmy Page/John Bonham/John Paul Jones	166164	\\x35343634303737	0.989999999999999991
1619	Babe I'm Gonna Leave You	132	1	1	Jimmy Page/Robert Plant	401475	\\x3133313839333132	0.989999999999999991
1620	You Shook Me	132	1	1	J. B. Lenoir/Willie Dixon	388179	\\x3132363433303637	0.989999999999999991
1621	Dazed and Confused	132	1	1	Jimmy Page	386063	\\x3132363130333236	0.989999999999999991
1622	Your Time Is Gonna Come	132	1	1	Jimmy Page/John Paul Jones	274860	\\x39303131363533	0.989999999999999991
1623	Black Mountain Side	132	1	1	Jimmy Page	132702	\\x34343430363032	0.989999999999999991
1624	Communication Breakdown	132	1	1	Jimmy Page/John Bonham/John Paul Jones	150230	\\x34383939353534	0.989999999999999991
1625	I Can't Quit You Baby	132	1	1	Willie Dixon	282671	\\x39323532373333	0.989999999999999991
1626	How Many More Times	132	1	1	Jimmy Page/John Bonham/John Paul Jones	508055	\\x3136353431333634	0.989999999999999991
1627	Whole Lotta Love	133	1	1	Jimmy Page, Robert Plant, John Paul Jones, John Bonham	334471	\\x3131303236323433	0.989999999999999991
1628	What Is And What Should Never Be	133	1	1	Jimmy Page, Robert Plant	287973	\\x39333639333835	0.989999999999999991
1629	The Lemon Song	133	1	1	Jimmy Page, Robert Plant, John Paul Jones, John Bonham	379141	\\x3132343633343936	0.989999999999999991
1630	Thank You	133	1	1	Jimmy Page, Robert Plant	287791	\\x39333337333932	0.989999999999999991
1631	Heartbreaker	133	1	1	Jimmy Page, Robert Plant, John Paul Jones, John Bonham	253988	\\x38333837353630	0.989999999999999991
1632	Living Loving Maid (She's Just A Woman)	133	1	1	Jimmy Page, Robert Plant	159216	\\x35323139383139	0.989999999999999991
1633	Ramble On	133	1	1	Jimmy Page, Robert Plant	275591	\\x39313939373130	0.989999999999999991
1634	Moby Dick	133	1	1	John Bonham, John Paul Jones, Jimmy Page	260728	\\x38363634323130	0.989999999999999991
1635	Bring It On Home	133	1	1	Jimmy Page, Robert Plant	259970	\\x38343934373331	0.989999999999999991
1636	Immigrant Song	134	1	1	Jimmy Page, Robert Plant	144875	\\x34373836343631	0.989999999999999991
1637	Friends	134	1	1	Jimmy Page, Robert Plant	233560	\\x37363934323230	0.989999999999999991
1638	Celebration Day	134	1	1	Jimmy Page, Robert Plant, John Paul Jones	209528	\\x36383731303738	0.989999999999999991
1639	Since I've Been Loving You	134	1	1	Jimmy Page, Robert Plant, John Paul Jones	444055	\\x3134343832343630	0.989999999999999991
1640	Out On The Tiles	134	1	1	Jimmy Page, Robert Plant, John Bonham	246047	\\x38303630333530	0.989999999999999991
1641	Gallows Pole	134	1	1	Traditional	296228	\\x39373537313531	0.989999999999999991
1642	Tangerine	134	1	1	Jimmy Page	189675	\\x36323030383933	0.989999999999999991
1643	That's The Way	134	1	1	Jimmy Page, Robert Plant	337345	\\x3131323032343939	0.989999999999999991
1644	Bron-Y-Aur Stomp	134	1	1	Jimmy Page, Robert Plant, John Paul Jones	259500	\\x38363734353038	0.989999999999999991
1645	Hats Off To (Roy) Harper	134	1	1	Traditional	219376	\\x37323336363430	0.989999999999999991
1646	In The Light	135	1	1	John Paul Jones/Robert Plant	526785	\\x3137303333303436	0.989999999999999991
1647	Bron-Yr-Aur	135	1	1	Jimmy Page	126641	\\x34313530373436	0.989999999999999991
1648	Down By The Seaside	135	1	1	Robert Plant	316186	\\x3130333731323832	0.989999999999999991
1649	Ten Years Gone	135	1	1	Robert Plant	393116	\\x3132373536333636	0.989999999999999991
1650	Night Flight	135	1	1	John Paul Jones/Robert Plant	217547	\\x37313630363437	0.989999999999999991
1651	The Wanton Song	135	1	1	Robert Plant	249887	\\x38313830393838	0.989999999999999991
1789	Praise	146	1	14	Marvin Gaye	235833	\\x37383339313739	0.989999999999999991
1652	Boogie With Stu	135	1	1	Ian Stewart/John Bonham/John Paul Jones/Mrs. Valens/Robert Plant	233273	\\x37363537303836	0.989999999999999991
1653	Black Country Woman	135	1	1	Robert Plant	273084	\\x38393531373332	0.989999999999999991
1654	Sick Again	135	1	1	Robert Plant	283036	\\x39323739323633	0.989999999999999991
1655	Achilles Last Stand	136	1	1	Jimmy Page/Robert Plant	625502	\\x3230353933393535	0.989999999999999991
1656	For Your Life	136	1	1	Jimmy Page/Robert Plant	384391	\\x3132363333333832	0.989999999999999991
1657	Royal Orleans	136	1	1	John Bonham/John Paul Jones	179591	\\x35393330303237	0.989999999999999991
1658	Nobody's Fault But Mine	136	1	1	Jimmy Page/Robert Plant	376215	\\x3132323337383539	0.989999999999999991
1659	Candy Store Rock	136	1	1	Jimmy Page/Robert Plant	252055	\\x38333937343233	0.989999999999999991
1660	Hots On For Nowhere	136	1	1	Jimmy Page/Robert Plant	284107	\\x39333432333432	0.989999999999999991
1661	Tea For One	136	1	1	Jimmy Page/Robert Plant	566752	\\x3138343735323634	0.989999999999999991
1662	Rock & Roll	137	1	1	John Bonham/John Paul Jones/Robert Plant	242442	\\x37383937303635	0.989999999999999991
1663	Celebration Day	137	1	1	John Paul Jones/Robert Plant	230034	\\x37343738343837	0.989999999999999991
1664	The Song Remains The Same	137	1	1	Robert Plant	353358	\\x3131343635303333	0.989999999999999991
1665	Rain Song	137	1	1	Robert Plant	505808	\\x3136323733373035	0.989999999999999991
1666	Dazed And Confused	137	1	1	Jimmy Page	1612329	\\x3532343930353534	0.989999999999999991
1667	No Quarter	138	1	1	John Paul Jones/Robert Plant	749897	\\x3234333939323835	0.989999999999999991
1668	Stairway To Heaven	138	1	1	Robert Plant	657293	\\x3231333534373636	0.989999999999999991
1669	Moby Dick	138	1	1	John Bonham/John Paul Jones	766354	\\x3235333435383431	0.989999999999999991
1670	Whole Lotta Love	138	1	1	John Bonham/John Paul Jones/Robert Plant/Willie Dixon	863895	\\x3238313931343337	0.989999999999999991
1702	Are You Gonna Go My Way	141	1	1	Craig Ross/Lenny Kravitz	211591	\\x36393035313335	0.989999999999999991
1703	Fly Away	141	1	1	Lenny Kravitz	221962	\\x37333232303835	0.989999999999999991
1704	Rock And Roll Is Dead	141	1	1	Lenny Kravitz	204199	\\x36363830333132	0.989999999999999991
1706	It Ain't Over 'Til It's Over	141	1	1	Lenny Kravitz	242703	\\x38303738393336	0.989999999999999991
1707	Can't Get You Off My Mind	141	1	1	Lenny Kravitz	273815	\\x38393337313530	0.989999999999999991
1708	Mr. Cab Driver	141	1	1	Lenny Kravitz	230321	\\x37363638303834	0.989999999999999991
1709	American Woman	141	1	1	B. Cummings/G. Peterson/M.J. Kale/R. Bachman	261773	\\x38353338303233	0.989999999999999991
1710	Stand By My Woman	141	1	1	Henry Kirssch/Lenny Kravitz/S. Pasch A. Krizan	259683	\\x38343437363131	0.989999999999999991
1711	Always On The Run	141	1	1	Lenny Kravitz/Slash	232515	\\x37353933333937	0.989999999999999991
1712	Heaven Help	141	1	1	Gerry DeVeaux/Terry Britten	190354	\\x36323232303932	0.989999999999999991
1713	I Belong To You	141	1	1	Lenny Kravitz	257123	\\x38343737393830	0.989999999999999991
1714	Believe	141	1	1	Henry Hirsch/Lenny Kravitz	295131	\\x39363631393738	0.989999999999999991
1715	Let Love Rule	141	1	1	Lenny Kravitz	342648	\\x3131323938303835	0.989999999999999991
1716	Black Velveteen	141	1	1	Lenny Kravitz	290899	\\x39353331333031	0.989999999999999991
1745	Pseudo Silk Kimono	144	1	1	Kelly, Mosley, Rothery, Trewaves	134739	\\x34333334303338	0.989999999999999991
1746	Kayleigh	144	1	1	Kelly, Mosley, Rothery, Trewaves	234605	\\x37373136303035	0.989999999999999991
1747	Lavender	144	1	1	Kelly, Mosley, Rothery, Trewaves	153417	\\x34393939383134	0.989999999999999991
1748	Bitter Suite: Brief Encounter / Lost Weekend / Blue Angel	144	1	1	Kelly, Mosley, Rothery, Trewaves	356493	\\x3131373931303638	0.989999999999999991
1749	Heart Of Lothian: Wide Boy / Curtain Call	144	1	1	Kelly, Mosley, Rothery, Trewaves	366053	\\x3131383933373233	0.989999999999999991
1750	Waterhole (Expresso Bongo)	144	1	1	Kelly, Mosley, Rothery, Trewaves	133093	\\x34333738383335	0.989999999999999991
1751	Lords Of The Backstage	144	1	1	Kelly, Mosley, Rothery, Trewaves	112875	\\x33373431333139	0.989999999999999991
1752	Blind Curve: Vocal Under A Bloodlight / Passing Strangers / Mylo / Perimeter Walk / Threshold	144	1	1	Kelly, Mosley, Rothery, Trewaves	569704	\\x3138353738393935	0.989999999999999991
1753	Childhoods End?	144	1	1	Kelly, Mosley, Rothery, Trewaves	272796	\\x39303135333636	0.989999999999999991
1754	White Feather	144	1	1	Kelly, Mosley, Rothery, Trewaves	143595	\\x34373131373736	0.989999999999999991
1755	Arrepio	145	1	7	Carlinhos Brown	136254	\\x34353131333930	0.989999999999999991
1756	Magamalabares	145	1	7	Carlinhos Brown	215875	\\x37313833373537	0.989999999999999991
1757	Chuva No Brejo	145	1	7	Morais	145606	\\x34383537373631	0.989999999999999991
1759	Tempos Modernos	145	1	7	Lulu Santos	183066	\\x36303636323334	0.989999999999999991
1762	Panis Et Circenses	145	1	7	Caetano Veloso e Gilberto Gil	192339	\\x36333138333733	0.989999999999999991
1763	De Noite Na Cama	145	1	7	Caetano Veloso e Gilberto Gil	209005	\\x37303132363538	0.989999999999999991
1764	Beija Eu	145	1	7	Caetano Veloso e Gilberto Gil	197276	\\x36353132353434	0.989999999999999991
1765	Give Me Love	145	1	7	Caetano Veloso e Gilberto Gil	249808	\\x38313936333331	0.989999999999999991
1766	Ainda Lembro	145	1	7	Caetano Veloso e Gilberto Gil	218801	\\x37323131323437	0.989999999999999991
1769	Ao Meu Redor	145	1	7	Caetano Veloso e Gilberto Gil	275591	\\x39313538383334	0.989999999999999991
1770	Bem Leve	145	1	7	Caetano Veloso e Gilberto Gil	159190	\\x35323436383335	0.989999999999999991
1771	Segue O Seco	145	1	7	Caetano Veloso e Gilberto Gil	178207	\\x35393232303138	0.989999999999999991
1772	O Xote Das Meninas	145	1	7	Caetano Veloso e Gilberto Gil	291866	\\x39353533323238	0.989999999999999991
1773	Wherever I Lay My Hat	146	1	14		136986	\\x34343737333231	0.989999999999999991
1774	Get My Hands On Some Lovin'	146	1	14		149054	\\x34383630333830	0.989999999999999991
1775	No Good Without You	146	1	14	William "Mickey" Stevenson	161410	\\x35323539323138	0.989999999999999991
1776	You've Been A Long Time Coming	146	1	14	Brian Holland/Eddie Holland/Lamont Dozier	137221	\\x34343337393439	0.989999999999999991
1777	When I Had Your Love	146	1	14	Robert Rogers/Warren "Pete" Moore/William "Mickey" Stevenson	152424	\\x34393732383135	0.989999999999999991
1778	You're What's Happening (In The World Today)	146	1	14	Allen Story/George Gordy/Robert Gordy	142027	\\x34363331313034	0.989999999999999991
1779	Loving You Is Sweeter Than Ever	146	1	14	Ivy Hunter/Stevie Wonder	166295	\\x35333737353436	0.989999999999999991
1780	It's A Bitter Pill To Swallow	146	1	14	Smokey Robinson/Warren "Pete" Moore	194821	\\x36343737383832	0.989999999999999991
1781	Seek And You Shall Find	146	1	14	Ivy Hunter/William "Mickey" Stevenson	223451	\\x37333036373139	0.989999999999999991
1782	Gonna Keep On Tryin' Till I Win Your Love	146	1	14	Barrett Strong/Norman Whitfield	176404	\\x35373839393435	0.989999999999999991
1783	Gonna Give Her All The Love I've Got	146	1	14	Barrett Strong/Norman Whitfield	210886	\\x36383933363033	0.989999999999999991
1784	I Wish It Would Rain	146	1	14	Barrett Strong/Norman Whitfield/Roger Penzabene	172486	\\x35363437333237	0.989999999999999991
1785	Abraham, Martin And John	146	1	14	Dick Holler	273057	\\x38383838323036	0.989999999999999991
1786	Save The Children	146	1	14	Al Cleveland/Marvin Gaye/Renaldo Benson	194821	\\x36333432303231	0.989999999999999991
1787	You Sure Love To Ball	146	1	14	Marvin Gaye	218540	\\x37323137383732	0.989999999999999991
1788	Ego Tripping Out	146	1	14	Marvin Gaye	314514	\\x3130333833383837	0.989999999999999991
1790	Heavy Love Affair	146	1	14	Marvin Gaye	227892	\\x37353232323332	0.989999999999999991
1791	Down Under	147	1	1		222171	\\x37333636313432	0.989999999999999991
1792	Overkill	147	1	1		225410	\\x37343038363532	0.989999999999999991
1793	Be Good Johnny	147	1	1		216320	\\x37313339383134	0.989999999999999991
1794	Everything I Need	147	1	1		216476	\\x37313037363235	0.989999999999999991
1795	Down by the Sea	147	1	1		408163	\\x3133333134393030	0.989999999999999991
1796	Who Can It Be Now?	147	1	1		202396	\\x36363832383530	0.989999999999999991
1797	It's a Mistake	147	1	1		273371	\\x38393739393635	0.989999999999999991
1798	Dr. Heckyll & Mr. Jive	147	1	1		278465	\\x39313130343033	0.989999999999999991
1799	Shakes and Ladders	147	1	1		198008	\\x36353630373533	0.989999999999999991
1800	No Sign of Yesterday	147	1	1		362004	\\x3131383239303131	0.989999999999999991
1801	Enter Sandman	148	1	3	James Hetfield, Lars Ulrich and Kirk Hammett	332251	\\x3130383532303032	0.989999999999999991
1802	Sad But True	148	1	3	Ulrich	324754	\\x3130353431323538	0.989999999999999991
1803	Holier Than Thou	148	1	3	Ulrich	227892	\\x37343632303131	0.989999999999999991
1804	The Unforgiven	148	1	3	James Hetfield, Lars Ulrich and Kirk Hammett	387082	\\x3132363436383836	0.989999999999999991
1805	Wherever I May Roam	148	1	3	Ulrich	404323	\\x3133313631313639	0.989999999999999991
1806	Don't Tread On Me	148	1	3	Ulrich	240483	\\x37383237393037	0.989999999999999991
1807	Through The Never	148	1	3	James Hetfield, Lars Ulrich and Kirk Hammett	244375	\\x38303234303437	0.989999999999999991
1808	Nothing Else Matters	148	1	3	Ulrich	388832	\\x3132363036323431	0.989999999999999991
1809	Of Wolf And Man	148	1	3	James Hetfield, Lars Ulrich and Kirk Hammett	256835	\\x38333339373835	0.989999999999999991
1810	The God That Failed	148	1	3	Ulrich	308610	\\x3130303535393539	0.989999999999999991
2013	On A Plain	164	1	1	Kurt Cobain	196440	\\x36333930363335	0.989999999999999991
1811	My Friend Of Misery	148	1	3	James Hetfield, Lars Ulrich and Jason Newsted	409547	\\x3133323933353135	0.989999999999999991
1812	The Struggle Within	148	1	3	Ulrich	234240	\\x37363534303532	0.989999999999999991
1813	Helpless	149	1	3	Harris/Tatler	398315	\\x3132393737393032	0.989999999999999991
1814	The Small Hours	149	1	3	Holocaust	403435	\\x3133323135313333	0.989999999999999991
1815	The Wait	149	1	3	Killing Joke	295418	\\x39363838343138	0.989999999999999991
1816	Crash Course In Brain Surgery	149	1	3	Bourge/Phillips/Shelley	190406	\\x36323333373239	0.989999999999999991
1817	Last Caress/Green Hell	149	1	3	Danzig	209972	\\x36383534333133	0.989999999999999991
1818	Am I Evil?	149	1	3	Harris/Tatler	470256	\\x3135333837323139	0.989999999999999991
1819	Blitzkrieg	149	1	3	Jones/Sirotto/Smith	216685	\\x37303930303138	0.989999999999999991
1820	Breadfan	149	1	3	Bourge/Phillips/Shelley	341551	\\x3131313030313330	0.989999999999999991
1821	The Prince	149	1	3	Harris/Tatler	265769	\\x38363234343932	0.989999999999999991
1822	Stone Cold Crazy	149	1	3	Deacon/May/Mercury/Taylor	137717	\\x34353134383330	0.989999999999999991
1823	So What	149	1	3	Culmer/Exalt	189152	\\x36313632383934	0.989999999999999991
1824	Killing Time	149	1	3	Sweet Savage	183693	\\x36303231313937	0.989999999999999991
1825	Overkill	149	1	3	Clarke/Kilmister/Tayler	245133	\\x37393731333330	0.989999999999999991
1826	Damage Case	149	1	3	Clarke/Farren/Kilmister/Tayler	220212	\\x37323132393937	0.989999999999999991
1827	Stone Dead Forever	149	1	3	Clarke/Kilmister/Tayler	292127	\\x39353536303630	0.989999999999999991
1828	Too Late Too Late	149	1	3	Clarke/Kilmister/Tayler	192052	\\x36323736323931	0.989999999999999991
1829	Hit The Lights	150	1	3	James Hetfield, Lars Ulrich	257541	\\x38333537303838	0.989999999999999991
1830	The Four Horsemen	150	1	3	James Hetfield, Lars Ulrich, Dave Mustaine	433188	\\x3134313738313338	0.989999999999999991
1831	Motorbreath	150	1	3	James Hetfield	188395	\\x36313533393333	0.989999999999999991
1832	Jump In The Fire	150	1	3	James Hetfield, Lars Ulrich, Dave Mustaine	281573	\\x39313335373535	0.989999999999999991
1833	(Anesthesia) Pulling Teeth	150	1	3	Cliff Burton	254955	\\x38323334373130	0.989999999999999991
1834	Whiplash	150	1	3	James Hetfield, Lars Ulrich	249208	\\x38313032383339	0.989999999999999991
1835	Phantom Lord	150	1	3	James Hetfield, Lars Ulrich, Dave Mustaine	302053	\\x39383137313433	0.989999999999999991
1836	No Remorse	150	1	3	James Hetfield, Lars Ulrich	386795	\\x3132363732313636	0.989999999999999991
1837	Seek & Destroy	150	1	3	James Hetfield, Lars Ulrich	415817	\\x3133343532333031	0.989999999999999991
1838	Metal Militia	150	1	3	James Hetfield, Lars Ulrich, Dave Mustaine	311327	\\x3130313431373835	0.989999999999999991
1839	Ain't My Bitch	151	1	3	James Hetfield, Lars Ulrich	304457	\\x39393331303135	0.989999999999999991
1840	2 X 4	151	1	3	James Hetfield, Lars Ulrich, Kirk Hammett	328254	\\x3130373332323531	0.989999999999999991
1841	The House Jack Built	151	1	3	James Hetfield, Lars Ulrich, Kirk Hammett	398942	\\x3133303035313532	0.989999999999999991
1842	Until It Sleeps	151	1	3	James Hetfield, Lars Ulrich	269740	\\x38383337333934	0.989999999999999991
1843	King Nothing	151	1	3	James Hetfield, Lars Ulrich, Kirk Hammett	328097	\\x3130363831343737	0.989999999999999991
1844	Hero Of The Day	151	1	3	James Hetfield, Lars Ulrich, Kirk Hammett	261982	\\x38353430323938	0.989999999999999991
1845	Bleeding Me	151	1	3	James Hetfield, Lars Ulrich, Kirk Hammett	497998	\\x3136323439343230	0.989999999999999991
1846	Cure	151	1	3	James Hetfield, Lars Ulrich	294347	\\x39363438363135	0.989999999999999991
1847	Poor Twisted Me	151	1	3	James Hetfield, Lars Ulrich	240065	\\x37383534333439	0.989999999999999991
1848	Wasted My Hate	151	1	3	James Hetfield, Lars Ulrich, Kirk Hammett	237296	\\x37373632333030	0.989999999999999991
1849	Mama Said	151	1	3	James Hetfield, Lars Ulrich	319764	\\x3130353038333130	0.989999999999999991
1850	Thorn Within	151	1	3	James Hetfield, Lars Ulrich, Kirk Hammett	351738	\\x3131343836363836	0.989999999999999991
1851	Ronnie	151	1	3	James Hetfield, Lars Ulrich	317204	\\x3130333930393437	0.989999999999999991
1852	The Outlaw Torn	151	1	3	James Hetfield, Lars Ulrich	588721	\\x3139323836323631	0.989999999999999991
1853	Battery	152	1	3	J.Hetfield/L.Ulrich	312424	\\x3130323239353737	0.989999999999999991
1854	Master Of Puppets	152	1	3	K.Hammett	515239	\\x3136383933373230	0.989999999999999991
1855	The Thing That Should Not Be	152	1	3	K.Hammett	396199	\\x3132393532333638	0.989999999999999991
1856	Welcome Home (Sanitarium)	152	1	3	K.Hammett	387186	\\x3132363739393635	0.989999999999999991
1857	Disposable Heroes	152	1	3	J.Hetfield/L.Ulrich	496718	\\x3136313335353630	0.989999999999999991
1858	Leper Messiah	152	1	3	C.Burton	347428	\\x3131333130343334	0.989999999999999991
1859	Orion	152	1	3	K.Hammett	500062	\\x3136333738343737	0.989999999999999991
1860	Damage Inc.	152	1	3	K.Hammett	330919	\\x3130373235303239	0.989999999999999991
1861	Fuel	153	1	3	Hetfield, Ulrich, Hammett	269557	\\x38383736383131	0.989999999999999991
1862	The Memory Remains	153	1	3	Hetfield, Ulrich	279353	\\x39313130373330	0.989999999999999991
1863	Devil's Dance	153	1	3	Hetfield, Ulrich	318955	\\x3130343134383332	0.989999999999999991
1864	The Unforgiven II	153	1	3	Hetfield, Ulrich, Hammett	395520	\\x3132383836343734	0.989999999999999991
1865	Better Than You	153	1	3	Hetfield, Ulrich	322899	\\x3130353439303730	0.989999999999999991
1866	Slither	153	1	3	Hetfield, Ulrich, Hammett	313103	\\x3130313939373839	0.989999999999999991
1867	Carpe Diem Baby	153	1	3	Hetfield, Ulrich, Hammett	372480	\\x3132313730363933	0.989999999999999991
1868	Bad Seed	153	1	3	Hetfield, Ulrich, Hammett	245394	\\x38303139353836	0.989999999999999991
1869	Where The Wild Things Are	153	1	3	Hetfield, Ulrich, Newsted	414380	\\x3133353731323830	0.989999999999999991
1870	Prince Charming	153	1	3	Hetfield, Ulrich	365061	\\x3132303039343132	0.989999999999999991
1871	Low Man's Lyric	153	1	3	Hetfield, Ulrich	457639	\\x3134383535353833	0.989999999999999991
1872	Attitude	153	1	3	Hetfield, Ulrich	315898	\\x3130333335373334	0.989999999999999991
1873	Fixxxer	153	1	3	Hetfield, Ulrich, Hammett	496065	\\x3136313930303431	0.989999999999999991
1874	Fight Fire With Fire	154	1	3	Metallica	285753	\\x39343230383536	0.989999999999999991
1875	Ride The Lightning	154	1	3	Metallica	397740	\\x3133303535383834	0.989999999999999991
1876	For Whom The Bell Tolls	154	1	3	Metallica	311719	\\x3130313539373235	0.989999999999999991
1877	Fade To Black	154	1	3	Metallica	414824	\\x3133353331393534	0.989999999999999991
1878	Trapped Under Ice	154	1	3	Metallica	244532	\\x37393735393432	0.989999999999999991
1879	Escape	154	1	3	Metallica	264359	\\x38363532333332	0.989999999999999991
1880	Creeping Death	154	1	3	Metallica	396878	\\x3132393535353933	0.989999999999999991
1881	The Call Of Ktulu	154	1	3	Metallica	534883	\\x3137343836323430	0.989999999999999991
1882	Frantic	155	1	3	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	350458	\\x3131353130383439	0.989999999999999991
1883	St. Anger	155	1	3	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	441234	\\x3134333633373739	0.989999999999999991
1884	Some Kind Of Monster	155	1	3	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	505626	\\x3136353537343937	0.989999999999999991
1885	Dirty Window	155	1	3	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	324989	\\x3130363730363034	0.989999999999999991
1886	Invisible Kid	155	1	3	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	510197	\\x3136353931383030	0.989999999999999991
1887	My World	155	1	3	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	345626	\\x3131323533373536	0.989999999999999991
1888	Shoot Me Again	155	1	3	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	430210	\\x3134303933353531	0.989999999999999991
1889	Sweet Amber	155	1	3	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	327235	\\x3130363136353935	0.989999999999999991
1890	The Unnamed Feeling	155	1	3	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	429479	\\x3134303134353832	0.989999999999999991
1891	Purify	155	1	3	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	314017	\\x3130323332353337	0.989999999999999991
1892	All Within My Hands	155	1	3	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	527986	\\x3137313632373431	0.989999999999999991
1893	Blackened	156	1	3	James Hetfield, Lars Ulrich & Jason Newsted	403382	\\x3133323534383734	0.989999999999999991
1894	...And Justice For All	156	1	3	James Hetfield, Lars Ulrich & Kirk Hammett	585769	\\x3139323632303838	0.989999999999999991
1895	Eye Of The Beholder	156	1	3	James Hetfield, Lars Ulrich & Kirk Hammett	385828	\\x3132373437383934	0.989999999999999991
1896	One	156	1	3	James Hetfield & Lars Ulrich	446484	\\x3134363935373231	0.989999999999999991
1897	The Shortest Straw	156	1	3	James Hetfield and Lars Ulrich	395389	\\x3133303133393930	0.989999999999999991
1898	Harvester Of Sorrow	156	1	3	James Hetfield and Lars Ulrich	345547	\\x3131333737333339	0.989999999999999991
1899	The Frayed Ends Of Sanity	156	1	3	James Hetfield, Lars Ulrich and Kirk Hammett	464039	\\x3135313938393836	0.989999999999999991
1900	To Live Is To Die	156	1	3	James Hetfield, Lars Ulrich and Cliff Burton	588564	\\x3139323433373935	0.989999999999999991
1901	Dyers Eve	156	1	3	James Hetfield, Lars Ulrich and Kirk Hammett	313991	\\x3130333032383238	0.989999999999999991
1902	Springsville	157	1	2	J. Carisi	207725	\\x36373736323139	0.989999999999999991
1903	The Maids Of Cadiz	157	1	2	L. Delibes	233534	\\x37353035323735	0.989999999999999991
1904	The Duke	157	1	2	Dave Brubeck	214961	\\x36393737363236	0.989999999999999991
1905	My Ship	157	1	2	Ira Gershwin, Kurt Weill	268016	\\x38353831313434	0.989999999999999991
1906	Miles Ahead	157	1	2	Miles Davis, Gil Evans	209893	\\x36383037373037	0.989999999999999991
1907	Blues For Pablo	157	1	2	Gil Evans	318328	\\x3130323138333938	0.989999999999999991
1908	New Rhumba	157	1	2	A. Jamal	276871	\\x38393830343030	0.989999999999999991
1909	The Meaning Of The Blues	157	1	2	R. Troup, L. Worth	168594	\\x35333935343132	0.989999999999999991
1910	Lament	157	1	2	J.J. Johnson	134191	\\x34323933333934	0.989999999999999991
1911	I Don't Wanna Be Kissed (By Anyone But You)	157	1	2	H. Spina, J. Elliott	191320	\\x36323139343837	0.989999999999999991
1912	Springsville (Alternate Take)	157	1	2	J. Carisi	196388	\\x36333832303739	0.989999999999999991
1913	Blues For Pablo (Alternate Take)	157	1	2	Gil Evans	212558	\\x36393030363139	0.989999999999999991
1914	The Meaning Of The Blues/Lament (Alternate Take)	157	1	2	J.J. Johnson/R. Troup, L. Worth	309786	\\x39393132333837	0.989999999999999991
1915	I Don't Wanna Be Kissed (By Anyone But You) (Alternate Take)	157	1	2	H. Spina, J. Elliott	192078	\\x36323534373936	0.989999999999999991
1917	A Noite Do Meu Bem	158	1	7	Dolores Duran	220081	\\x37313235323235	0.989999999999999991
1919	Cuitelinho	158	1	7	Folclore	209397	\\x36383033393730	0.989999999999999991
1921	Nos Bailes Da Vida	158	1	7	Milton Nascimento, Fernando Brant	275748	\\x39313236313730	0.989999999999999991
1922	Menestrel Das Alagoas	158	1	7	Milton Nascimento, Fernando Brant	199758	\\x36353432323839	0.989999999999999991
1923	Brasil	158	1	7	Milton Nascimento, Fernando Brant	155428	\\x35323532353630	0.989999999999999991
1925	Um Gosto De Sol	158	1	7	Milton Nascimento, Ronaldo Bastos	307200	\\x39383933383735	0.989999999999999991
1926	Solar	158	1	7	Milton Nascimento, Fernando Brant	156212	\\x35303938323838	0.989999999999999991
1928	Maria, Maria	158	1	7	Milton Nascimento, Fernando Brant	72463	\\x32333731353433	0.989999999999999991
1929	Minas	159	1	7	Milton Nascimento, Caetano Veloso	152293	\\x34393231303536	0.989999999999999991
1931	Beijo Partido	159	1	7	Toninho Horta	229564	\\x37353036393639	0.989999999999999991
1934	Ponta de Areia	159	1	7	Milton Nascimento, Fernando Brant	272796	\\x38383734323835	0.989999999999999991
1935	Trastevere	159	1	7	Milton Nascimento, Ronaldo Bastos	265665	\\x38373038333939	0.989999999999999991
1936	Idolatrada	159	1	7	Milton Nascimento, Fernando Brant	286249	\\x39343236313533	0.989999999999999991
1937	Leila (Venha Ser Feliz)	159	1	7	Milton Nascimento	209737	\\x36383938353037	0.989999999999999991
1938	Paula E Bebeto	159	1	7	Milton Nascimento, Caetano Veloso	135732	\\x34353833393536	0.989999999999999991
1939	Simples	159	1	7	Nelson Angelo	133093	\\x34333236333333	0.989999999999999991
1940	Norwegian Wood	159	1	7	John Lennon, Paul McCartney	413910	\\x3133353230333832	0.989999999999999991
1986	Intro	163	1	1	Kurt Cobain	52218	\\x31363838353237	0.989999999999999991
1987	School	163	1	1	Kurt Cobain	160235	\\x35323334383835	0.989999999999999991
1988	Drain You	163	1	1	Kurt Cobain	215196	\\x37303133313735	0.989999999999999991
1989	Aneurysm	163	1	1	Nirvana	271516	\\x38383632353435	0.989999999999999991
1990	Smells Like Teen Spirit	163	1	1	Nirvana	287190	\\x39343235323135	0.989999999999999991
1991	Been A Son	163	1	1	Kurt Cobain	127555	\\x34313730333639	0.989999999999999991
1992	Lithium	163	1	1	Kurt Cobain	250017	\\x38313438383030	0.989999999999999991
1993	Sliver	163	1	1	Kurt Cobain	116218	\\x33373834353637	0.989999999999999991
1994	Spank Thru	163	1	1	Kurt Cobain	190354	\\x36313836343837	0.989999999999999991
1995	Scentless Apprentice	163	1	1	Nirvana	211200	\\x36383938313737	0.989999999999999991
1996	Heart-Shaped Box	163	1	1	Kurt Cobain	281887	\\x39323130393832	0.989999999999999991
1997	Milk It	163	1	1	Kurt Cobain	225724	\\x37343036393435	0.989999999999999991
1998	Negative Creep	163	1	1	Kurt Cobain	163761	\\x35333534383534	0.989999999999999991
1999	Polly	163	1	1	Kurt Cobain	149995	\\x34383835333331	0.989999999999999991
2000	Breed	163	1	1	Kurt Cobain	208378	\\x36373539303830	0.989999999999999991
2001	Tourette's	163	1	1	Kurt Cobain	115591	\\x33373533323436	0.989999999999999991
2002	Blew	163	1	1	Kurt Cobain	216346	\\x37303936393336	0.989999999999999991
2003	Smells Like Teen Spirit	164	1	1	Kurt Cobain	301296	\\x39383233383437	0.989999999999999991
2004	In Bloom	164	1	1	Kurt Cobain	254928	\\x38333237303737	0.989999999999999991
2005	Come As You Are	164	1	1	Kurt Cobain	219219	\\x37313233333537	0.989999999999999991
2006	Breed	164	1	1	Kurt Cobain	183928	\\x35393834383132	0.989999999999999991
2007	Lithium	164	1	1	Kurt Cobain	256992	\\x38343034373435	0.989999999999999991
2008	Polly	164	1	1	Kurt Cobain	177031	\\x35373838343037	0.989999999999999991
2009	Territorial Pissings	164	1	1	Kurt Cobain	143281	\\x34363133383830	0.989999999999999991
2010	Drain You	164	1	1	Kurt Cobain	223973	\\x37323733343430	0.989999999999999991
2011	Lounge Act	164	1	1	Kurt Cobain	156786	\\x35303933363335	0.989999999999999991
2012	Stay Away	164	1	1	Kurt Cobain	212636	\\x36393536343034	0.989999999999999991
2014	Something In The Way	164	1	1	Kurt Cobain	230556	\\x37343732313638	0.989999999999999991
2030	Requebra	166	1	7		240744	\\x38303130383131	0.989999999999999991
2032	Olodum - Alegria Geral	166	1	7		233404	\\x37373534323435	0.989999999999999991
2035	Todo Amor (Asas Da Liberdade)	166	1	7		245133	\\x38313231343334	0.989999999999999991
2038	Cartao Postal	166	1	7		211565	\\x37303832333031	0.989999999999999991
2039	Jeito Faceiro	166	1	7		217286	\\x37323333363038	0.989999999999999991
2040	Revolta Olodum	166	1	7		230191	\\x37353537303635	0.989999999999999991
2042	Protesto Do Olodum (Ao Vivo)	166	1	7		206001	\\x36373636313034	0.989999999999999991
2043	Olodum - Smile (Instrumental)	166	1	7		235833	\\x37383731343039	0.989999999999999991
2065	Trac Trac	168	1	7	Fito Paez/Herbert Vianna	231653	\\x37363338323536	0.989999999999999991
2067	Mensagen De Amor (2000)	168	1	7	Herbert Vianna	183588	\\x36303631333234	0.989999999999999991
2068	Lourinha Bombril	168	1	7	Bahiano/Diego Blanco/Herbert Vianna	159895	\\x35333031383832	0.989999999999999991
2069	La Bella Luna	168	1	7	Herbert Vianna	192653	\\x36343238353938	0.989999999999999991
2070	Busca Vida	168	1	7	Herbert Vianna	176431	\\x35373938363633	0.989999999999999991
2071	Uma Brasileira	168	1	7	Carlinhos Brown/Herbert Vianna	217573	\\x37323830353734	0.989999999999999991
2072	Luis Inacio (300 Picaretas)	168	1	7	Herbert Vianna	198191	\\x36353736373930	0.989999999999999991
2073	Saber Amar	168	1	7	Herbert Vianna	202788	\\x36373233373333	0.989999999999999991
2074	Ela Disse Adeus	168	1	7	Herbert Vianna	226298	\\x37363038393939	0.989999999999999991
2075	O Amor Nao Sabe Esperar	168	1	7	Herbert Vianna	241084	\\x38303432353334	0.989999999999999991
2079	Cinema Mudo	169	1	7		227918	\\x37363132313638	0.989999999999999991
2080	Alagados	169	1	7		302393	\\x3130323535343633	0.989999999999999991
2081	Lanterna Dos Afogados	169	1	7		190197	\\x36323634333138	0.989999999999999991
2083	Vital E Sua Moto	169	1	7		210207	\\x36393032383738	0.989999999999999991
2084	O Beco	169	1	7		189178	\\x36323933313834	0.989999999999999991
2085	Meu Erro	169	1	7		208431	\\x36383933353333	0.989999999999999991
2086	Perplexo	169	1	7		161175	\\x35333535303133	0.989999999999999991
2087	Me Liga	169	1	7		229590	\\x37353635393132	0.989999999999999991
2088	Quase Um Segundo	169	1	7		275644	\\x38393731333535	0.989999999999999991
2089	Selvagem	169	1	7		245890	\\x38313431303834	0.989999999999999991
2090	Romance Ideal	169	1	7		250070	\\x38323630343737	0.989999999999999991
2092	SKA	169	1	7		148871	\\x34393433353430	0.989999999999999991
2093	Bark at the Moon	170	2	1	O. Osbourne	257252	\\x34363031323234	0.989999999999999991
2094	I Don't Know	171	2	1	B. Daisley, O. Osbourne & R. Rhoads	312980	\\x35353235333339	0.989999999999999991
2095	Crazy Train	171	2	1	B. Daisley, O. Osbourne & R. Rhoads	295960	\\x35323535303833	0.989999999999999991
2096	Flying High Again	172	2	1	L. Kerslake, O. Osbourne, R. Daisley & R. Rhoads	290851	\\x35313739353939	0.989999999999999991
2097	Mama, I'm Coming Home	173	2	1	L. Kilmister, O. Osbourne & Z. Wylde	251586	\\x34333032333930	0.989999999999999991
2098	No More Tears	173	2	1	J. Purdell, M. Inez, O. Osbourne, R. Castillo & Z. Wylde	444358	\\x37333632393634	0.989999999999999991
2099	I Don't Know	174	1	3	O. Osbourne, R. Daisley, R. Rhoads	283088	\\x39323037383639	0.989999999999999991
2100	Crazy Train	174	1	3	O. Osbourne, R. Daisley, R. Rhoads	322716	\\x3130353137343038	0.989999999999999991
2101	Believer	174	1	3	O. Osbourne, R. Daisley, R. Rhoads	308897	\\x3130303033373934	0.989999999999999991
2102	Mr. Crowley	174	1	3	O. Osbourne, R. Daisley, R. Rhoads	344241	\\x3131313834313330	0.989999999999999991
2103	Flying High Again	174	1	3	O. Osbourne, R. Daisley, R. Rhoads, L. Kerslake	261224	\\x38343831383232	0.989999999999999991
2104	Relvelation (Mother Earth)	174	1	3	O. Osbourne, R. Daisley, R. Rhoads	349440	\\x3131333637383636	0.989999999999999991
2105	Steal Away (The Night)	174	1	3	O. Osbourne, R. Daisley, R. Rhoads	485720	\\x3135393435383036	0.989999999999999991
2106	Suicide Solution (With Guitar Solo)	174	1	3	O. Osbourne, R. Daisley, R. Rhoads	467069	\\x3135313139393338	0.989999999999999991
2107	Iron Man	174	1	3	A. F. Iommi, W. Ward, T. Butler, J. Osbourne	172120	\\x35363039373939	0.989999999999999991
2108	Children Of The Grave	174	1	3	A. F. Iommi, W. Ward, T. Butler, J. Osbourne	357067	\\x3131363236373430	0.989999999999999991
2109	Paranoid	174	1	3	A. F. Iommi, W. Ward, T. Butler, J. Osbourne	176352	\\x35373239383133	0.989999999999999991
2110	Goodbye To Romance	174	1	3	O. Osbourne, R. Daisley, R. Rhoads	334393	\\x3130383431333337	0.989999999999999991
2111	No Bone Movies	174	1	3	O. Osbourne, R. Daisley, R. Rhoads	249208	\\x38303935313939	0.989999999999999991
2112	Dee	174	1	3	R. Rhoads	261302	\\x38353535393633	0.989999999999999991
2113	Shining In The Light	175	1	1	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	240796	\\x37393531363838	0.989999999999999991
2114	When The World Was Young	175	1	1	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	373394	\\x3132313938393330	0.989999999999999991
2115	Upon A Golden Horse	175	1	1	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	232359	\\x37353934383239	0.989999999999999991
2116	Blue Train	175	1	1	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	405028	\\x3133313730333931	0.989999999999999991
2117	Please Read The Letter	175	1	1	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	262112	\\x38363033333732	0.989999999999999991
2118	Most High	175	1	1	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	336535	\\x3130393939323033	0.989999999999999991
2119	Heart In Your Hand	175	1	1	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	230896	\\x37353938303139	0.989999999999999991
2120	Walking Into Clarksdale	175	1	1	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	318511	\\x3130333936333135	0.989999999999999991
2121	Burning Up	175	1	1	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	321619	\\x3130353235313336	0.989999999999999991
2122	When I Was A Child	175	1	1	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	345626	\\x3131323439343536	0.989999999999999991
2123	House Of Love	175	1	1	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	335699	\\x3130393930383830	0.989999999999999991
2124	Sons Of Freedom	175	1	1	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	246465	\\x38303837393434	0.989999999999999991
2125	United Colours	176	1	10	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	330266	\\x3130393339313331	0.989999999999999991
2126	Slug	176	1	10	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	281469	\\x39323935393530	0.989999999999999991
2127	Your Blue Room	176	1	10	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	328228	\\x3130383637383630	0.989999999999999991
2128	Always Forever Now	176	1	10	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	383764	\\x3132373237393238	0.989999999999999991
2129	A Different Kind Of Blue	176	1	10	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	120816	\\x33383834313333	0.989999999999999991
2130	Beach Sequence	176	1	10	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	212297	\\x36393238323539	0.989999999999999991
2131	Miss Sarajevo	176	1	10	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	340767	\\x3131303634383834	0.989999999999999991
2132	Ito Okashi	176	1	10	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	205087	\\x36353732383133	0.989999999999999991
2133	One Minute Warning	176	1	10	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	279693	\\x39333335343533	0.989999999999999991
2134	Corpse (These Chains Are Way Too Long)	176	1	10	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	214909	\\x36393230343531	0.989999999999999991
2135	Elvis Ate America	176	1	10	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	180166	\\x35383531303533	0.989999999999999991
2136	Plot 180	176	1	10	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	221596	\\x37323533373239	0.989999999999999991
2137	Theme From The Swan	176	1	10	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	203911	\\x36363338303736	0.989999999999999991
2138	Theme From Let's Go Native	176	1	10	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	186723	\\x36313739373737	0.989999999999999991
2139	Wrathchild	177	1	1	Steve Harris	170396	\\x35343939333930	0.989999999999999991
2140	Killers	177	1	1	Paul Di'Anno/Steve Harris	309995	\\x3130303039363937	0.989999999999999991
2141	Prowler	177	1	1	Steve Harris	240274	\\x37373832393633	0.989999999999999991
2142	Murders In The Rue Morgue	177	1	1	Steve Harris	258638	\\x38333630393939	0.989999999999999991
2143	Women In Uniform	177	1	1	Greg Macainsh	189936	\\x36313339363531	0.989999999999999991
2144	Remember Tomorrow	177	1	1	Paul Di'Anno/Steve Harris	326426	\\x3130353737393736	0.989999999999999991
2145	Sanctuary	177	1	1	David Murray/Paul Di'Anno/Steve Harris	198844	\\x36343233353433	0.989999999999999991
2146	Running Free	177	1	1	Paul Di'Anno/Steve Harris	199706	\\x36343833343936	0.989999999999999991
2147	Phantom Of The Opera	177	1	1	Steve Harris	418168	\\x3133353835353330	0.989999999999999991
2148	Iron Maiden	177	1	1	Steve Harris	235232	\\x37363030303737	0.989999999999999991
2149	Corduroy	178	1	1	Pearl Jam & Eddie Vedder	305293	\\x39393931313036	0.989999999999999991
2150	Given To Fly	178	1	1	Eddie Vedder & Mike McCready	233613	\\x37363738333437	0.989999999999999991
2151	Hail, Hail	178	1	1	Stone Gossard & Eddie Vedder & Jeff Ament & Mike McCready	223764	\\x37333634323036	0.989999999999999991
2152	Daughter	178	1	1	Dave Abbruzzese & Jeff Ament & Stone Gossard & Mike McCready & Eddie Vedder	407484	\\x3133343230363937	0.989999999999999991
2153	Elderly Woman Behind The Counter In A Small Town	178	1	1	Dave Abbruzzese & Jeff Ament & Stone Gossard & Mike McCready & Eddie Vedder	229328	\\x37353039333034	0.989999999999999991
2154	Untitled	178	1	1	Pearl Jam	122801	\\x33393537313431	0.989999999999999991
2155	MFC	178	1	1	Eddie Vedder	148192	\\x34383137363635	0.989999999999999991
2156	Go	178	1	1	Dave Abbruzzese & Jeff Ament & Stone Gossard & Mike McCready & Eddie Vedder	161541	\\x35323930383130	0.989999999999999991
2157	Red Mosquito	178	1	1	Jeff Ament & Stone Gossard & Jack Irons & Mike McCready & Eddie Vedder	242991	\\x37393434393233	0.989999999999999991
2158	Even Flow	178	1	1	Stone Gossard & Eddie Vedder	317100	\\x3130333934323339	0.989999999999999991
2159	Off He Goes	178	1	1	Eddie Vedder	343222	\\x3131323435313039	0.989999999999999991
2160	Nothingman	178	1	1	Jeff Ament & Eddie Vedder	278595	\\x39313037303137	0.989999999999999991
2161	Do The Evolution	178	1	1	Eddie Vedder & Stone Gossard	225462	\\x37333737323836	0.989999999999999991
2162	Better Man	178	1	1	Eddie Vedder	246204	\\x38303139353633	0.989999999999999991
2163	Black	178	1	1	Stone Gossard & Eddie Vedder	415712	\\x3133353830303039	0.989999999999999991
2164	F*Ckin' Up	178	1	1	Neil Young	377652	\\x3132333630383933	0.989999999999999991
2165	Life Wasted	179	1	4	Stone Gossard	234344	\\x37363130313639	0.989999999999999991
2166	World Wide Suicide	179	1	4	Eddie Vedder	209188	\\x36383835393038	0.989999999999999991
2167	Comatose	179	1	4	Mike McCready & Stone Gossard	139990	\\x34353734353136	0.989999999999999991
2168	Severed Hand	179	1	4	Eddie Vedder	270341	\\x38383137343338	0.989999999999999991
2169	Marker In The Sand	179	1	4	Mike McCready	263235	\\x38363536353738	0.989999999999999991
2170	Parachutes	179	1	4	Stone Gossard	216555	\\x37303734393733	0.989999999999999991
2171	Unemployable	179	1	4	Matt Cameron & Mike McCready	184398	\\x36303636353432	0.989999999999999991
2172	Big Wave	179	1	4	Jeff Ament	178573	\\x35383538373838	0.989999999999999991
2173	Gone	179	1	4	Eddie Vedder	249547	\\x38313538323034	0.989999999999999991
2174	Wasted Reprise	179	1	4	Stone Gossard	53733	\\x31373331303230	0.989999999999999991
2175	Army Reserve	179	1	4	Jeff Ament	225567	\\x37333933373731	0.989999999999999991
2176	Come Back	179	1	4	Eddie Vedder & Mike McCready	329743	\\x3130373638373031	0.989999999999999991
2177	Inside Job	179	1	4	Eddie Vedder & Mike McCready	428643	\\x3134303036393234	0.989999999999999991
2178	Can't Keep	180	1	1	Eddie Vedder	219428	\\x37323135373133	0.989999999999999991
2179	Save You	180	1	1	Eddie Vedder/Jeff Ament/Matt Cameron/Mike McCready/Stone Gossard	230112	\\x37363039313130	0.989999999999999991
2180	Love Boat Captain	180	1	1	Eddie Vedder	276453	\\x39303136373839	0.989999999999999991
2181	Cropduster	180	1	1	Matt Cameron	231888	\\x37353838393238	0.989999999999999991
2182	Ghost	180	1	1	Jeff Ament	195108	\\x36333833373732	0.989999999999999991
2183	I Am Mine	180	1	1	Eddie Vedder	215719	\\x37303836393031	0.989999999999999991
2184	Thumbing My Way	180	1	1	Eddie Vedder	250226	\\x38323031343337	0.989999999999999991
2185	You Are	180	1	1	Matt Cameron	270863	\\x38393338343039	0.989999999999999991
2186	Get Right	180	1	1	Matt Cameron	158589	\\x35323233333435	0.989999999999999991
2187	Green Disease	180	1	1	Eddie Vedder	161253	\\x35333735383138	0.989999999999999991
2188	Help Help	180	1	1	Jeff Ament	215092	\\x37303333303032	0.989999999999999991
2189	Bushleager	180	1	1	Stone Gossard	237479	\\x37383439373537	0.989999999999999991
2190	1/2 Full	180	1	1	Jeff Ament	251010	\\x38313937323139	0.989999999999999991
2191	Arc	180	1	1	Pearl Jam	65593	\\x32303939343231	0.989999999999999991
2192	All or None	180	1	1	Stone Gossard	277655	\\x39313034373238	0.989999999999999991
2193	Once	181	1	1	Stone Gossard	231758	\\x37353631353535	0.989999999999999991
2194	Evenflow	181	1	1	Stone Gossard	293720	\\x39363232303137	0.989999999999999991
2195	Alive	181	1	1	Stone Gossard	341080	\\x3131313736363233	0.989999999999999991
2196	Why Go	181	1	1	Jeff Ament	200254	\\x36353339323837	0.989999999999999991
2197	Black	181	1	1	Dave Krusen/Stone Gossard	343823	\\x3131323133333134	0.989999999999999991
2198	Jeremy	181	1	1	Jeff Ament	318981	\\x3130343437323232	0.989999999999999991
2199	Oceans	181	1	1	Jeff Ament/Stone Gossard	162194	\\x35323832333638	0.989999999999999991
2200	Porch	181	1	1	Eddie Vedder	210520	\\x36383737343735	0.989999999999999991
2201	Garden	181	1	1	Jeff Ament/Stone Gossard	299154	\\x39373430373338	0.989999999999999991
2202	Deep	181	1	1	Jeff Ament/Stone Gossard	258324	\\x38343332343937	0.989999999999999991
2203	Release	181	1	1	Jeff Ament/Mike McCready/Stone Gossard	546063	\\x3137383032363733	0.989999999999999991
2204	Go	182	1	1	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	193123	\\x36333531393230	0.989999999999999991
2205	Animal	182	1	1	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	169325	\\x35353033343539	0.989999999999999991
2206	Daughter	182	1	1	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	235598	\\x37383234353836	0.989999999999999991
2207	Glorified G	182	1	1	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	206968	\\x36373732313136	0.989999999999999991
2208	Dissident	182	1	1	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	215510	\\x37303334353030	0.989999999999999991
2209	W.M.A.	182	1	1	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	359262	\\x3132303337323631	0.989999999999999991
2210	Blood	182	1	1	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	170631	\\x35353531343738	0.989999999999999991
2211	Rearviewmirror	182	1	1	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	284186	\\x39333231303533	0.989999999999999991
2212	Rats	182	1	1	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	255425	\\x38333431393334	0.989999999999999991
2213	Elderly Woman Behind The Counter In A Small Town	182	1	1	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	196336	\\x36343939333938	0.989999999999999991
2214	Leash	182	1	1	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	189257	\\x36313931353630	0.989999999999999991
2215	Indifference	182	1	1	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	302053	\\x39373536313333	0.989999999999999991
2216	Johnny B. Goode	141	1	8		243200	\\x38303932303234	0.989999999999999991
2217	Don't Look Back	141	1	8		221100	\\x37333434303233	0.989999999999999991
2218	Jah Seh No	141	1	8		276871	\\x39313334343736	0.989999999999999991
2219	I'm The Toughest	141	1	8		230191	\\x37363537353934	0.989999999999999991
2220	Nothing But Love	141	1	8		221570	\\x37333335323238	0.989999999999999991
2221	Buk-In-Hamm Palace	141	1	8		265665	\\x38393634333639	0.989999999999999991
2222	Bush Doctor	141	1	8		239751	\\x37393432323939	0.989999999999999991
2223	Wanted Dread And Alive	141	1	8		260310	\\x38363730393333	0.989999999999999991
2224	Mystic Man	141	1	8		353671	\\x3131383132313730	0.989999999999999991
2225	Coming In Hot	141	1	8		213054	\\x37313039343134	0.989999999999999991
2226	Pick Myself Up	141	1	8		234684	\\x37373838323535	0.989999999999999991
2227	Crystal Ball	141	1	8		309733	\\x3130333139323936	0.989999999999999991
2228	Equal Rights Downpresser Man	141	1	8		366733	\\x3132303836353234	0.989999999999999991
2229	Speak To Me/Breathe	183	1	1	Mason/Waters, Gilmour, Wright	234213	\\x37363331333035	0.989999999999999991
2230	On The Run	183	1	1	Gilmour, Waters	214595	\\x37323036333030	0.989999999999999991
2231	Time	183	1	1	Mason, Waters, Wright, Gilmour	425195	\\x3133393535343236	0.989999999999999991
2232	The Great Gig In The Sky	183	1	1	Wright, Waters	284055	\\x39313437353633	0.989999999999999991
2233	Money	183	1	1	Waters	391888	\\x3132393330303730	0.989999999999999991
2234	Us And Them	183	1	1	Waters, Wright	461035	\\x3135303030323939	0.989999999999999991
2235	Any Colour You Like	183	1	1	Gilmour, Mason, Wright, Waters	205740	\\x36373037393839	0.989999999999999991
2236	Brain Damage	183	1	1	Waters	230556	\\x37343937363535	0.989999999999999991
2237	Eclipse	183	1	1	Waters	125361	\\x34303635323939	0.989999999999999991
2254	Bohemian Rhapsody	185	1	1	Mercury, Freddie	358948	\\x3131363139383638	0.989999999999999991
2255	Another One Bites The Dust	185	1	1	Deacon, John	216946	\\x37313732333535	0.989999999999999991
2256	Killer Queen	185	1	1	Mercury, Freddie	182099	\\x35393637373439	0.989999999999999991
2257	Fat Bottomed Girls	185	1	1	May, Brian	204695	\\x36363330303431	0.989999999999999991
2258	Bicycle Race	185	1	1	Mercury, Freddie	183823	\\x36303132343039	0.989999999999999991
2259	You're My Best Friend	185	1	1	Deacon, John	172225	\\x35363032313733	0.989999999999999991
2260	Don't Stop Me Now	185	1	1	Mercury, Freddie	211826	\\x36383936363636	0.989999999999999991
2261	Save Me	185	1	1	May, Brian	228832	\\x37343434363234	0.989999999999999991
2262	Crazy Little Thing Called Love	185	1	1	Mercury, Freddie	164231	\\x35343335353031	0.989999999999999991
2263	Somebody To Love	185	1	1	Mercury, Freddie	297351	\\x39363530353230	0.989999999999999991
2264	Now I'm Here	185	1	1	May, Brian	255346	\\x38333238333132	0.989999999999999991
2265	Good Old-Fashioned Lover Boy	185	1	1	Mercury, Freddie	175960	\\x35373437353036	0.989999999999999991
2266	Play The Game	185	1	1	Mercury, Freddie	213368	\\x36393135383332	0.989999999999999991
2267	Flash	185	1	1	May, Brian	168489	\\x35343634393836	0.989999999999999991
2268	Seven Seas Of Rhye	185	1	1	Mercury, Freddie	170553	\\x35353339393537	0.989999999999999991
2269	We Will Rock You	185	1	1	Deacon, John/May, Brian	122880	\\x34303236393535	0.989999999999999991
2270	We Are The Champions	185	1	1	Mercury, Freddie	180950	\\x35383830323331	0.989999999999999991
2271	We Will Rock You	186	1	1	May	122671	\\x34303236383135	0.989999999999999991
2272	We Are The Champions	186	1	1	Mercury	182883	\\x35393339373934	0.989999999999999991
2273	Sheer Heart Attack	186	1	1	Taylor	207386	\\x36363432363835	0.989999999999999991
2274	All Dead, All Dead	186	1	1	May	190119	\\x36313434383738	0.989999999999999991
2275	Spread Your Wings	186	1	1	Deacon	275356	\\x38393336393932	0.989999999999999991
2276	Fight From The Inside	186	1	1	Taylor	184737	\\x36303738303031	0.989999999999999991
2277	Get Down, Make Love	186	1	1	Mercury	231235	\\x37353039333333	0.989999999999999991
2278	Sleep On The Sidewalk	186	1	1	May	187428	\\x36303939383430	0.989999999999999991
2279	Who Needs You	186	1	1	Deacon	186958	\\x36323932393639	0.989999999999999991
2280	It's Late	186	1	1	May	386194	\\x3132353139333838	0.989999999999999991
2281	My Melancholy Blues	186	1	1	Mercury	206471	\\x36363931383338	0.989999999999999991
2282	Shiny Happy People	187	1	4	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	226298	\\x37343735333233	0.989999999999999991
2283	Me In Honey	187	1	4	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	246674	\\x38313934373531	0.989999999999999991
2284	Radio Song	187	1	4	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	255477	\\x38343231313732	0.989999999999999991
2285	Pop Song 89	188	1	4	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	185730	\\x36313332323138	0.989999999999999991
2286	Get Up	188	1	4	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	160235	\\x35323634333736	0.989999999999999991
2287	You Are The Everything	188	1	4	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	226298	\\x37333733313831	0.989999999999999991
2288	Stand	188	1	4	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	192862	\\x36333439303930	0.989999999999999991
2289	World Leader Pretend	188	1	4	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	259761	\\x38353337323832	0.989999999999999991
2290	The Wrong Child	188	1	4	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	216633	\\x37303635303630	0.989999999999999991
2291	Orange Crush	188	1	4	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	231706	\\x37373432383934	0.989999999999999991
2292	Turn You Inside-Out	188	1	4	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	257358	\\x38333935363731	0.989999999999999991
2293	Hairshirt	188	1	4	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	235911	\\x37373533383037	0.989999999999999991
2294	I Remember California	188	1	4	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	304013	\\x39393530333131	0.989999999999999991
2295	Untitled	188	1	4	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	191503	\\x36333332343236	0.989999999999999991
2296	How The West Was Won And Where It Got Us	189	1	1	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	271151	\\x38393934323931	0.989999999999999991
2297	The Wake-Up Bomb	189	1	1	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	308532	\\x3130303737333337	0.989999999999999991
2298	New Test Leper	189	1	1	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	326791	\\x3130383636343437	0.989999999999999991
2299	Undertow	189	1	1	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	309498	\\x3130313331303035	0.989999999999999991
2300	E-Bow The Letter	189	1	1	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	324963	\\x3130373134353736	0.989999999999999991
2301	Leave	189	1	1	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	437968	\\x3134343333333635	0.989999999999999991
2302	Departure	189	1	1	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	209423	\\x36383138343235	0.989999999999999991
2303	Bittersweet Me	189	1	1	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	245812	\\x38313134373138	0.989999999999999991
2304	Be Mine	189	1	1	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	333087	\\x3130373930353431	0.989999999999999991
2305	Binky The Doormat	189	1	1	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	301688	\\x39393530333230	0.989999999999999991
2306	Zither	189	1	1	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	154148	\\x35303332393632	0.989999999999999991
2307	So Fast, So Numb	189	1	1	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	252682	\\x38333431323233	0.989999999999999991
2308	Low Desert	189	1	1	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	212062	\\x36393839323838	0.989999999999999991
2309	Electrolite	189	1	1	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	245315	\\x38303531313939	0.989999999999999991
2310	Losing My Religion	187	1	4	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	269035	\\x38383835363732	0.989999999999999991
2311	Low	187	1	4	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	296777	\\x39363333383630	0.989999999999999991
2312	Near Wild Heaven	187	1	4	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	199862	\\x36363130303039	0.989999999999999991
2313	Endgame	187	1	4	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	230687	\\x37363634343739	0.989999999999999991
2314	Belong	187	1	4	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	247013	\\x38323139333735	0.989999999999999991
2315	Half A World Away	187	1	4	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	208431	\\x36383337323833	0.989999999999999991
2316	Texarkana	187	1	4	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	220081	\\x37323630363831	0.989999999999999991
2317	Country Feedback	187	1	4	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	249782	\\x38313738393433	0.989999999999999991
2318	Carnival Of Sorts	190	1	4	R.E.M.	233482	\\x37363639363538	0.989999999999999991
2319	Radio Free Aurope	190	1	4	R.E.M.	245315	\\x38313633343930	0.989999999999999991
2320	Perfect Circle	190	1	4	R.E.M.	208509	\\x36383938303637	0.989999999999999991
2321	Talk About The Passion	190	1	4	R.E.M.	203206	\\x36373235343335	0.989999999999999991
2322	So Central Rain	190	1	4	R.E.M.	194768	\\x36343134353530	0.989999999999999991
2323	Don't Go Back To Rockville	190	1	4	R.E.M.	272352	\\x39303130373135	0.989999999999999991
2324	Pretty Persuasion	190	1	4	R.E.M.	229929	\\x37353737373534	0.989999999999999991
2325	Green Grow The Rushes	190	1	4	R.E.M.	225671	\\x37343232343235	0.989999999999999991
2326	Can't Get There From Here	190	1	4	R.E.M.	220630	\\x37323835393336	0.989999999999999991
2327	Driver 8	190	1	4	R.E.M.	204747	\\x36373739303736	0.989999999999999991
2328	Fall On Me	190	1	4	R.E.M.	172016	\\x35363736383131	0.989999999999999991
2329	I Believe	190	1	4	R.E.M.	227709	\\x37353432393239	0.989999999999999991
2330	Cuyahoga	190	1	4	R.E.M.	260623	\\x38353931303537	0.989999999999999991
2331	The One I Love	190	1	4	R.E.M.	197355	\\x36343935313235	0.989999999999999991
2332	The Finest Worksong	190	1	4	R.E.M.	229276	\\x37353734383536	0.989999999999999991
2333	It's The End Of The World As We Know It (And I Feel Fine)	190	1	4	R.E.M.	244819	\\x37393938393837	0.989999999999999991
2344	Maluco Beleza	192	1	1		203206	\\x36363238303637	0.989999999999999991
2345	O Dia Em Que A Terra Parou	192	1	1		261720	\\x38353836363738	0.989999999999999991
2346	No Fundo Do Quintal Da Escola	192	1	1		177606	\\x35383336393533	0.989999999999999991
2347	O Segredo Do Universo	192	1	1		192679	\\x36333135313837	0.989999999999999991
2348	As Profecias	192	1	1		232515	\\x37363537373332	0.989999999999999991
2349	Mata Virgem	192	1	1		142602	\\x34363930303239	0.989999999999999991
2350	Sapato 36	192	1	1		196702	\\x36353037333031	0.989999999999999991
2351	Todo Mundo Explica	192	1	1		134896	\\x34343439373732	0.989999999999999991
2353	Diamante De Mendigo	192	1	1		206053	\\x36373735313031	0.989999999999999991
2357	Rock Das Aranhas (Ao Vivo) (Live)	192	1	1		231836	\\x37353931393435	0.989999999999999991
2358	The Power Of Equality	193	1	4	Anthony Kiedis/Chad Smith/Flea/John Frusciante	243591	\\x38313438323636	0.989999999999999991
2359	If You Have To Ask	193	1	4	Anthony Kiedis/Chad Smith/Flea/John Frusciante	216790	\\x37313939313735	0.989999999999999991
2360	Breaking The Girl	193	1	4	Anthony Kiedis/Chad Smith/Flea/John Frusciante	295497	\\x39383035353236	0.989999999999999991
2361	Funky Monks	193	1	4	Anthony Kiedis/Chad Smith/Flea/John Frusciante	323395	\\x3130373038313638	0.989999999999999991
2362	Suck My Kiss	193	1	4	Anthony Kiedis/Chad Smith/Flea/John Frusciante	217234	\\x37313239313337	0.989999999999999991
2363	I Could Have Lied	193	1	4	Anthony Kiedis/Chad Smith/Flea/John Frusciante	244506	\\x38303838323434	0.989999999999999991
2364	Mellowship Slinky In B Major	193	1	4	Anthony Kiedis/Chad Smith/Flea/John Frusciante	240091	\\x37393731333834	0.989999999999999991
2365	The Righteous & The Wicked	193	1	4	Anthony Kiedis/Chad Smith/Flea/John Frusciante	248084	\\x38313334303936	0.989999999999999991
2366	Give It Away	193	1	4	Anthony Kiedis/Chad Smith/Flea/John Frusciante	283010	\\x39333038393937	0.989999999999999991
2367	Blood Sugar Sex Magik	193	1	4	Anthony Kiedis/Chad Smith/Flea/John Frusciante	271229	\\x38393430353733	0.989999999999999991
2368	Under The Bridge	193	1	4	Anthony Kiedis/Chad Smith/Flea/John Frusciante	264359	\\x38363832373136	0.989999999999999991
2369	Naked In The Rain	193	1	4	Anthony Kiedis/Chad Smith/Flea/John Frusciante	265717	\\x38373234363734	0.989999999999999991
2370	Apache Rose Peacock	193	1	4	Anthony Kiedis/Chad Smith/Flea/John Frusciante	282226	\\x39333132353838	0.989999999999999991
2371	The Greeting Song	193	1	4	Anthony Kiedis/Chad Smith/Flea/John Frusciante	193593	\\x36333436353037	0.989999999999999991
2372	My Lovely Man	193	1	4	Anthony Kiedis/Chad Smith/Flea/John Frusciante	279118	\\x39323230313134	0.989999999999999991
2373	Sir Psycho Sexy	193	1	4	Anthony Kiedis/Chad Smith/Flea/John Frusciante	496692	\\x3136333534333632	0.989999999999999991
2374	They're Red Hot	193	1	4	Robert Johnson	71941	\\x32333832323230	0.989999999999999991
2375	By The Way	194	1	1	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	218017	\\x37313937343330	0.989999999999999991
2376	Universally Speaking	194	1	1	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	259213	\\x38353031393034	0.989999999999999991
2377	This Is The Place	194	1	1	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	257906	\\x38343639373635	0.989999999999999991
2378	Dosed	194	1	1	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	312058	\\x3130323335363131	0.989999999999999991
2379	Don't Forget Me	194	1	1	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	277995	\\x39313037303731	0.989999999999999991
2380	The Zephyr Song	194	1	1	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	232960	\\x37363930333132	0.989999999999999991
2381	Can't Stop	194	1	1	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	269400	\\x38383732343739	0.989999999999999991
2382	I Could Die For You	194	1	1	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	193906	\\x36333333333131	0.989999999999999991
2383	Midnight	194	1	1	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	295810	\\x39373032343530	0.989999999999999991
2384	Throw Away Your Television	194	1	1	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	224574	\\x37343833353236	0.989999999999999991
2385	Cabron	194	1	1	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	218592	\\x37343538383634	0.989999999999999991
2386	Tear	194	1	1	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	317413	\\x3130333935353030	0.989999999999999991
2387	On Mercury	194	1	1	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	208509	\\x36383334373632	0.989999999999999991
2388	Minor Thing	194	1	1	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	217835	\\x37313438313135	0.989999999999999991
2389	Warm Tape	194	1	1	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	256653	\\x38333538323030	0.989999999999999991
2390	Venice Queen	194	1	1	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	369110	\\x3132323830333831	0.989999999999999991
2391	Around The World	195	1	1	Anthony Kiedis/Chad Smith/Flea/John Frusciante	238837	\\x37383539313637	0.989999999999999991
2392	Parallel Universe	195	1	1	Red Hot Chili Peppers	270654	\\x38393538353139	0.989999999999999991
2393	Scar Tissue	195	1	1	Red Hot Chili Peppers	217469	\\x37313533373434	0.989999999999999991
2394	Otherside	195	1	1	Red Hot Chili Peppers	255973	\\x38333537393839	0.989999999999999991
2395	Get On Top	195	1	1	Red Hot Chili Peppers	198164	\\x36353837383833	0.989999999999999991
2396	Californication	195	1	1	Red Hot Chili Peppers	321671	\\x3130353638393939	0.989999999999999991
2397	Easily	195	1	1	Red Hot Chili Peppers	231418	\\x37353034353334	0.989999999999999991
2398	Porcelain	195	1	1	Anthony Kiedis/Chad Smith/Flea/John Frusciante	163787	\\x35323738373933	0.989999999999999991
2399	Emit Remmus	195	1	1	Red Hot Chili Peppers	240300	\\x37393031373137	0.989999999999999991
2400	I Like Dirt	195	1	1	Red Hot Chili Peppers	157727	\\x35323235393137	0.989999999999999991
2401	This Velvet Glove	195	1	1	Red Hot Chili Peppers	225280	\\x37343830353337	0.989999999999999991
2402	Savior	195	1	1	Anthony Kiedis/Chad Smith/Flea/John Frusciante	292493	\\x39353531383835	0.989999999999999991
2403	Purple Stain	195	1	1	Red Hot Chili Peppers	253440	\\x38333539393731	0.989999999999999991
2404	Right On Time	195	1	1	Red Hot Chili Peppers	112613	\\x33373232323139	0.989999999999999991
2405	Road Trippin'	195	1	1	Red Hot Chili Peppers	205635	\\x36363835383331	0.989999999999999991
2406	The Spirit Of Radio	196	1	1	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	299154	\\x39383632303132	0.989999999999999991
2407	The Trees	196	1	1	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	285126	\\x39333435343733	0.989999999999999991
2408	Something For Nothing	196	1	1	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	240770	\\x37383938333935	0.989999999999999991
2409	Freewill	196	1	1	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	324362	\\x3130363934313130	0.989999999999999991
2410	Xanadu	196	1	1	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	667428	\\x3231373533313638	0.989999999999999991
2411	Bastille Day	196	1	1	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	280528	\\x39323634373639	0.989999999999999991
2412	By-Tor And The Snow Dog	196	1	1	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	519888	\\x3137303736333937	0.989999999999999991
2413	Anthem	196	1	1	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	264515	\\x38363933333433	0.989999999999999991
2414	Closer To The Heart	196	1	1	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	175412	\\x35373637303035	0.989999999999999991
2669	Get Off Of My Cloud	216	1	1	Jagger/Richards	176013	\\x35373139353134	0.989999999999999991
2415	2112 Overture	196	1	1	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	272718	\\x38383938303636	0.989999999999999991
2416	The Temples Of Syrinx	196	1	1	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	133459	\\x34333630313633	0.989999999999999991
2417	La Villa Strangiato	196	1	1	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	577488	\\x3139313337383535	0.989999999999999991
2418	Fly By Night	196	1	1	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	202318	\\x36363833303631	0.989999999999999991
2419	Finding My Way	196	1	1	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	305528	\\x39393835373031	0.989999999999999991
2420	Jingo	197	1	1	M.Babatunde Olantunji	592953	\\x3139373336343935	0.989999999999999991
2421	El Corazon Manda	197	1	1	E.Weiss	713534	\\x3233353139353833	0.989999999999999991
2422	La Puesta Del Sol	197	1	1	E.Weiss	628062	\\x3230363134363231	0.989999999999999991
2423	Persuasion	197	1	1	Carlos Santana	318432	\\x3130333534373531	0.989999999999999991
2424	As The Years Go by	197	1	1	Albert King	233064	\\x37353636383239	0.989999999999999991
2425	Soul Sacrifice	197	1	1	Carlos Santana	296437	\\x39383031313230	0.989999999999999991
2426	Fried Neckbones And Home Fries	197	1	1	W.Correa	638563	\\x3230393339363436	0.989999999999999991
2427	Santana Jam	197	1	1	Carlos Santana	882834	\\x3239323037313030	0.989999999999999991
2428	Evil Ways	198	1	1		475402	\\x3135323839323335	0.989999999999999991
2429	We've Got To Get Together/Jingo	198	1	1		1070027	\\x3334363138323232	0.989999999999999991
2430	Rock Me	198	1	1		94720	\\x33303337353936	0.989999999999999991
2431	Just Ain't Good Enough	198	1	1		850259	\\x3237343839303637	0.989999999999999991
2432	Funky Piano	198	1	1		934791	\\x3330323030373330	0.989999999999999991
2433	The Way You Do To Mer	198	1	1		618344	\\x3230303238373032	0.989999999999999991
2434	Holding Back The Years	141	1	1	Mick Hucknall and Neil Moss	270053	\\x38383333323230	0.989999999999999991
2435	Money's Too Tight To Mention	141	1	1	John and William Valentine	268408	\\x38383631393231	0.989999999999999991
2436	The Right Thing	141	1	1	Mick Hucknall	262687	\\x38363234303633	0.989999999999999991
2437	It's Only Love	141	1	1	Jimmy and Vella Cameron	232594	\\x37363539303137	0.989999999999999991
2438	A New Flame	141	1	1	Mick Hucknall	237662	\\x37383232383735	0.989999999999999991
2439	You've Got It	141	1	1	Mick Hucknall and Lamont Dozier	235232	\\x37373132383435	0.989999999999999991
2440	If You Don't Know Me By Now	141	1	1	Kenny Gamble and Leon Huff	206524	\\x36373132363334	0.989999999999999991
2441	Stars	141	1	1	Mick Hucknall	248137	\\x38313934393036	0.989999999999999991
2442	Something Got Me Started	141	1	1	Mick Hucknall and Fritz McIntyre	239595	\\x37393937313339	0.989999999999999991
2443	Thrill Me	141	1	1	Mick Hucknall and Fritz McIntyre	303934	\\x3130303334373131	0.989999999999999991
2444	Your Mirror	141	1	1	Mick Hucknall	240666	\\x37383933383231	0.989999999999999991
2445	For Your Babies	141	1	1	Mick Hucknall	256992	\\x38343038383033	0.989999999999999991
2446	So Beautiful	141	1	1	Mick Hucknall	298083	\\x39383337383332	0.989999999999999991
2447	Angel	141	1	1	Carolyn Franklin and Sonny Saunders	240561	\\x37383830323536	0.989999999999999991
2448	Fairground	141	1	1	Mick Hucknall	263888	\\x38373933303934	0.989999999999999991
2451	Ela Desapareceu	199	1	1	Chico Amaral/Samuel Rosa	250122	\\x38323839323030	0.989999999999999991
2455	Maquinarama	199	1	1	Chico Amaral/Samuel Rosa	245629	\\x38323133373130	0.989999999999999991
2458	Fica	199	1	1	Chico Amaral/Samuel Rosa	272169	\\x38393830393732	0.989999999999999991
2459	Ali	199	1	1	Nando Reis/Samuel Rosa	306390	\\x3130313130333531	0.989999999999999991
2472	Lucky 13	201	1	4	Billy Corgan	189387	\\x36323030363137	0.989999999999999991
2473	Aeroplane Flies High	201	1	4	Billy Corgan	473391	\\x3135343038333239	0.989999999999999991
2474	Because You Are	201	1	4	Billy Corgan	226403	\\x37343035313337	0.989999999999999991
2475	Slow Dawn	201	1	4	Billy Corgan	192339	\\x36323639303537	0.989999999999999991
2476	Believe	201	1	4	James Iha	192940	\\x36333230363532	0.989999999999999991
2477	My Mistake	201	1	4	Billy Corgan	240901	\\x37383433343737	0.989999999999999991
2478	Marquis In Spades	201	1	4	Billy Corgan	192731	\\x36333034373839	0.989999999999999991
2479	Here's To The Atom Bomb	201	1	4	Billy Corgan	266893	\\x38373633313430	0.989999999999999991
2480	Sparrow	201	1	4	Billy Corgan	176822	\\x35363936393839	0.989999999999999991
2481	Waiting	201	1	4	Billy Corgan	228336	\\x37363237363431	0.989999999999999991
2482	Saturnine	201	1	4	Billy Corgan	229877	\\x37353233353032	0.989999999999999991
2483	Rock On	201	1	4	David Cook	366471	\\x3132313333383235	0.989999999999999991
2484	Set The Ray To Jerry	201	1	4	Billy Corgan	249364	\\x38323135313834	0.989999999999999991
2485	Winterlong	201	1	4	Billy Corgan	299389	\\x39363730363136	0.989999999999999991
2486	Soot & Stars	201	1	4	Billy Corgan	399986	\\x3132383636353537	0.989999999999999991
2487	Blissed & Gone	201	1	4	Billy Corgan	286302	\\x39333035393938	0.989999999999999991
2488	Siva	202	1	4	Billy Corgan	261172	\\x38353736363232	0.989999999999999991
2489	Rhinocerous	202	1	4	Billy Corgan	353462	\\x3131353236363834	0.989999999999999991
2490	Drown	202	1	4	Billy Corgan	270497	\\x38383833343936	0.989999999999999991
2491	Cherub Rock	202	1	4	Billy Corgan	299389	\\x39373836373339	0.989999999999999991
2492	Today	202	1	4	Billy Corgan	202213	\\x36353936393333	0.989999999999999991
2493	Disarm	202	1	4	Billy Corgan	198556	\\x36353038323439	0.989999999999999991
2494	Landslide	202	1	4	Stevie Nicks	190275	\\x36313837373534	0.989999999999999991
2495	Bullet With Butterfly Wings	202	1	4	Billy Corgan	257306	\\x38343331373437	0.989999999999999991
2496	1979	202	1	4	Billy Corgan	263653	\\x38373238343730	0.989999999999999991
2497	Zero	202	1	4	Billy Corgan	161123	\\x35323637313736	0.989999999999999991
2498	Tonight, Tonight	202	1	4	Billy Corgan	255686	\\x38333531353433	0.989999999999999991
2499	Eye	202	1	4	Billy Corgan	294530	\\x39373834323031	0.989999999999999991
2500	Ava Adore	202	1	4	Billy Corgan	261433	\\x38353930343132	0.989999999999999991
2501	Perfect	202	1	4	Billy Corgan	203023	\\x36373334363336	0.989999999999999991
2502	The Everlasting Gaze	202	1	4	Billy Corgan	242155	\\x37383434343034	0.989999999999999991
2503	Stand Inside Your Love	202	1	4	Billy Corgan	253753	\\x38323730313133	0.989999999999999991
2504	Real Love	202	1	4	Billy Corgan	250697	\\x38303235383936	0.989999999999999991
2505	[Untitled]	202	1	4	Billy Corgan	231784	\\x37363839373133	0.989999999999999991
2506	Nothing To Say	203	1	1	Chris Cornell/Kim Thayil	238027	\\x37373434383333	0.989999999999999991
2507	Flower	203	1	1	Chris Cornell/Kim Thayil	208822	\\x36383330373332	0.989999999999999991
2508	Loud Love	203	1	1	Chris Cornell	297456	\\x39363630393533	0.989999999999999991
2509	Hands All Over	203	1	1	Chris Cornell/Kim Thayil	362475	\\x3131383933313038	0.989999999999999991
2510	Get On The Snake	203	1	1	Chris Cornell/Kim Thayil	225123	\\x37333133373434	0.989999999999999991
2511	Jesus Christ Pose	203	1	1	Ben Shepherd/Chris Cornell/Kim Thayil/Matt Cameron	352966	\\x3131373339383836	0.989999999999999991
2512	Outshined	203	1	1	Chris Cornell	312476	\\x3130323734363239	0.989999999999999991
2513	Rusty Cage	203	1	1	Chris Cornell	267728	\\x38373739343835	0.989999999999999991
2514	Spoonman	203	1	1	Chris Cornell	248476	\\x38323839393036	0.989999999999999991
2515	The Day I Tried To Live	203	1	1	Chris Cornell	321175	\\x3130353037313337	0.989999999999999991
2516	Black Hole Sun	203	1	1	Soundgarden	320365	\\x3130343235323239	0.989999999999999991
2517	Fell On Black Days	203	1	1	Chris Cornell	282331	\\x39323536303832	0.989999999999999991
2518	Pretty Noose	203	1	1	Chris Cornell	253570	\\x38333137393331	0.989999999999999991
2519	Burden In My Hand	203	1	1	Chris Cornell	292153	\\x39363539393131	0.989999999999999991
2520	Blow Up The Outside World	203	1	1	Chris Cornell	347898	\\x3131333739353237	0.989999999999999991
2521	Ty Cobb	203	1	1	Ben Shepherd/Chris Cornell	188786	\\x36323333313336	0.989999999999999991
2522	Bleed Together	203	1	1	Chris Cornell	232202	\\x37353937303734	0.989999999999999991
2523	Morning Dance	204	1	2	Jay Beckenstein	238759	\\x38313031393739	0.989999999999999991
2524	Jubilee	204	1	2	Jeremy Wall	275147	\\x39313531383436	0.989999999999999991
2525	Rasul	204	1	2	Jeremy Wall	238315	\\x37383534373337	0.989999999999999991
2526	Song For Lorraine	204	1	2	Jay Beckenstein	240091	\\x38313031373233	0.989999999999999991
2527	Starburst	204	1	2	Jeremy Wall	291500	\\x39373638333939	0.989999999999999991
2528	Heliopolis	204	1	2	Jay Beckenstein	338729	\\x3131333635363535	0.989999999999999991
2529	It Doesn't Matter	204	1	2	Chet Catallo	270027	\\x39303334313737	0.989999999999999991
2530	Little Linda	204	1	2	Jeremy Wall	264019	\\x38393538373433	0.989999999999999991
2531	End Of Romanticism	204	1	2	Rick Strauss	320078	\\x3130353533313535	0.989999999999999991
2532	The House Is Rockin'	205	1	6	Doyle Bramhall/Stevie Ray Vaughan	144352	\\x34373036323533	0.989999999999999991
2533	Crossfire	205	1	6	B. Carter/C. Layton/R. Ellsworth/R. Wynans/T. Shannon	251219	\\x38323338303333	0.989999999999999991
2534	Tightrope	205	1	6	Doyle Bramhall/Stevie Ray Vaughan	281155	\\x39323534393036	0.989999999999999991
2535	Let Me Love You Baby	205	1	6	Willie Dixon	164127	\\x35333738343535	0.989999999999999991
2536	Leave My Girl Alone	205	1	6	B. Guy	256365	\\x38343338303231	0.989999999999999991
2537	Travis Walk	205	1	6	Stevie Ray Vaughan	140826	\\x34363530393739	0.989999999999999991
2538	Wall Of Denial	205	1	6	Doyle Bramhall/Stevie Ray Vaughan	336927	\\x3131303835393135	0.989999999999999991
2539	Scratch-N-Sniff	205	1	6	Doyle Bramhall/Stevie Ray Vaughan	163422	\\x35333533363237	0.989999999999999991
2540	Love Me Darlin'	205	1	6	C. Burnett	201586	\\x36363530383639	0.989999999999999991
2541	Riviera Paradise	205	1	6	Stevie Ray Vaughan	528692	\\x3137323332373736	0.989999999999999991
2542	Dead And Bloated	206	1	1	R. DeLeo/Weiland	310386	\\x3130313730343333	0.989999999999999991
2543	Sex Type Thing	206	1	1	D. DeLeo/Kretz/Weiland	218723	\\x37313032303634	0.989999999999999991
2544	Wicked Garden	206	1	1	D. DeLeo/R. DeLeo/Weiland	245368	\\x37393839353035	0.989999999999999991
2545	No Memory	206	1	1	Dean Deleo	80613	\\x32363630383539	0.989999999999999991
2546	Sin	206	1	1	R. DeLeo/Weiland	364800	\\x3132303138383233	0.989999999999999991
2547	Naked Sunday	206	1	1	D. DeLeo/Kretz/R. DeLeo/Weiland	229720	\\x37343434323031	0.989999999999999991
2548	Creep	206	1	1	R. DeLeo/Weiland	333191	\\x3130383934393838	0.989999999999999991
2549	Piece Of Pie	206	1	1	R. DeLeo/Weiland	324623	\\x3130363035323331	0.989999999999999991
2550	Plush	206	1	1	R. DeLeo/Weiland	314017	\\x3130323239383438	0.989999999999999991
2551	Wet My Bed	206	1	1	R. DeLeo/Weiland	96914	\\x33313938363237	0.989999999999999991
2552	Crackerman	206	1	1	Kretz/R. DeLeo/Weiland	194403	\\x36333137333631	0.989999999999999991
2553	Where The River Goes	206	1	1	D. DeLeo/Kretz/Weiland	505991	\\x3136343638393034	0.989999999999999991
2554	Soldier Side - Intro	207	1	3	Dolmayan, John/Malakian, Daron/Odadjian, Shavo	63764	\\x32303536303739	0.989999999999999991
2555	B.Y.O.B.	207	1	3	Tankian, Serj	255555	\\x38343037393335	0.989999999999999991
2556	Revenga	207	1	3	Tankian, Serj	228127	\\x37353033383035	0.989999999999999991
2557	Cigaro	207	1	3	Tankian, Serj	131787	\\x34333231373035	0.989999999999999991
2558	Radio/Video	207	1	3	Dolmayan, John/Malakian, Daron/Odadjian, Shavo	249312	\\x38323234393137	0.989999999999999991
2559	This Cocaine Makes Me Feel Like I'm On This Song	207	1	3	Tankian, Serj	128339	\\x34313835313933	0.989999999999999991
2560	Violent Pornography	207	1	3	Dolmayan, John/Malakian, Daron/Odadjian, Shavo	211435	\\x36393835393630	0.989999999999999991
2561	Question!	207	1	3	Tankian, Serj	200698	\\x36363136333938	0.989999999999999991
2562	Sad Statue	207	1	3	Tankian, Serj	205897	\\x36373333343439	0.989999999999999991
2563	Old School Hollywood	207	1	3	Dolmayan, John/Malakian, Daron/Odadjian, Shavo	176953	\\x35383330323538	0.989999999999999991
2564	Lost in Hollywood	207	1	3	Tankian, Serj	320783	\\x3130353335313538	0.989999999999999991
2565	The Sun Road	208	1	1	Terry Bozzio, Steve Stevens, Tony Levin	880640	\\x3239303038343037	0.989999999999999991
2566	Dark Corners	208	1	1	Terry Bozzio, Steve Stevens, Tony Levin	513541	\\x3136383339323233	0.989999999999999991
2567	Duende	208	1	1	Terry Bozzio, Steve Stevens, Tony Levin	447582	\\x3134393536373731	0.989999999999999991
2568	Black Light Syndrome	208	1	1	Terry Bozzio, Steve Stevens, Tony Levin	526471	\\x3137333030383335	0.989999999999999991
2569	Falling in Circles	208	1	1	Terry Bozzio, Steve Stevens, Tony Levin	549093	\\x3138323633323438	0.989999999999999991
2570	Book of Hours	208	1	1	Terry Bozzio, Steve Stevens, Tony Levin	583366	\\x3139343634373236	0.989999999999999991
2571	Chaos-Control	208	1	1	Terry Bozzio, Steve Stevens, Tony Levin	529841	\\x3137343535353638	0.989999999999999991
2572	Midnight From The Inside Out	209	1	6	Chris Robinson/Rich Robinson	286981	\\x39343432313537	0.989999999999999991
2573	Sting Me	209	1	6	Chris Robinson/Rich Robinson	268094	\\x38383133353631	0.989999999999999991
2574	Thick & Thin	209	1	6	Chris Robinson/Rich Robinson	222720	\\x37323834333737	0.989999999999999991
2575	Greasy Grass River	209	1	6	Chris Robinson/Rich Robinson	218749	\\x37313537303435	0.989999999999999991
2576	Sometimes Salvation	209	1	6	Chris Robinson/Rich Robinson	389146	\\x3132373439343234	0.989999999999999991
2577	Cursed Diamonds	209	1	6	Chris Robinson/Rich Robinson	368300	\\x3132303437393738	0.989999999999999991
2578	Miracle To Me	209	1	6	Chris Robinson/Rich Robinson	372636	\\x3132323232313136	0.989999999999999991
2579	Wiser Time	209	1	6	Chris Robinson/Rich Robinson	459990	\\x3135313631393037	0.989999999999999991
2580	Girl From A Pawnshop	209	1	6	Chris Robinson/Rich Robinson	404688	\\x3133323530383438	0.989999999999999991
2581	Cosmic Fiend	209	1	6	Chris Robinson/Rich Robinson	308401	\\x3130313135353536	0.989999999999999991
2582	Black Moon Creeping	210	1	6	Chris Robinson/Rich Robinson	359314	\\x3131373430383836	0.989999999999999991
2583	High Head Blues	210	1	6	Chris Robinson/Rich Robinson	371879	\\x3132323237393938	0.989999999999999991
2584	Title Song	210	1	6	Chris Robinson/Rich Robinson	505521	\\x3136353031333136	0.989999999999999991
2585	She Talks To Angels	210	1	6	Chris Robinson/Rich Robinson	361978	\\x3131383337333432	0.989999999999999991
2586	Twice As Hard	210	1	6	Chris Robinson/Rich Robinson	275565	\\x39303038303637	0.989999999999999991
2587	Lickin'	210	1	6	Chris Robinson/Rich Robinson	314409	\\x3130333331323136	0.989999999999999991
2588	Soul Singing	210	1	6	Chris Robinson/Rich Robinson	233639	\\x37363732343839	0.989999999999999991
2589	Hard To Handle	210	1	6	A.Isbell/A.Jones/O.Redding	206994	\\x36373836333034	0.989999999999999991
2590	Remedy	210	1	6	Chris Robinson/Rich Robinson	337084	\\x3131303439303938	0.989999999999999991
2591	White Riot	211	1	4	Joe Strummer/Mick Jones	118726	\\x33393232383139	0.989999999999999991
2592	Remote Control	211	1	4	Joe Strummer/Mick Jones	180297	\\x35393439363437	0.989999999999999991
2593	Complete Control	211	1	4	Joe Strummer/Mick Jones	192653	\\x36323732303831	0.989999999999999991
2594	Clash City Rockers	211	1	4	Joe Strummer/Mick Jones	227500	\\x37353535303534	0.989999999999999991
2595	(White Man) In Hammersmith Palais	211	1	4	Joe Strummer/Mick Jones	240640	\\x37383833353332	0.989999999999999991
2596	Tommy Gun	211	1	4	Joe Strummer/Mick Jones	195526	\\x36333939383732	0.989999999999999991
2597	English Civil War	211	1	4	Mick Jones/Traditional arr. Joe Strummer	156708	\\x35313131323236	0.989999999999999991
2598	I Fought The Law	211	1	4	Sonny Curtis	159764	\\x35323435323538	0.989999999999999991
2599	London Calling	211	1	4	Joe Strummer/Mick Jones	199706	\\x36353639303037	0.989999999999999991
2600	Train In Vain	211	1	4	Joe Strummer/Mick Jones	189675	\\x36333239383737	0.989999999999999991
2601	Bankrobber	211	1	4	Joe Strummer/Mick Jones	272431	\\x39303637333233	0.989999999999999991
2602	The Call Up	211	1	4	The Clash	324336	\\x3130373436393337	0.989999999999999991
2603	Hitsville UK	211	1	4	The Clash	261433	\\x38363036383837	0.989999999999999991
2604	The Magnificent Seven	211	1	4	The Clash	268486	\\x38383839383231	0.989999999999999991
2605	This Is Radio Clash	211	1	4	The Clash	249756	\\x38333636353733	0.989999999999999991
2606	Know Your Rights	211	1	4	The Clash	217678	\\x37313935373236	0.989999999999999991
2607	Rock The Casbah	211	1	4	The Clash	222145	\\x37333631353030	0.989999999999999991
2608	Should I Stay Or Should I Go	211	1	4	The Clash	187219	\\x36313838363838	0.989999999999999991
2609	War (The Process)	212	1	1	Billy Duffy/Ian Astbury	252630	\\x38323534383432	0.989999999999999991
2610	The Saint	212	1	1	Billy Duffy/Ian Astbury	216215	\\x37303631353834	0.989999999999999991
2611	Rise	212	1	1	Billy Duffy/Ian Astbury	219088	\\x37313036313935	0.989999999999999991
2612	Take The Power	212	1	1	Billy Duffy/Ian Astbury	235755	\\x37363530303132	0.989999999999999991
2613	Breathe	212	1	1	Billy Duffy/Ian Astbury/Marti Frederiksen/Mick Jones	299781	\\x39373432333631	0.989999999999999991
2614	Nico	212	1	1	Billy Duffy/Ian Astbury	289488	\\x39343132333233	0.989999999999999991
2615	American Gothic	212	1	1	Billy Duffy/Ian Astbury	236878	\\x37373339383430	0.989999999999999991
2616	Ashes And Ghosts	212	1	1	Billy Duffy/Bob Rock/Ian Astbury	300591	\\x39373837363932	0.989999999999999991
2617	Shape The Sky	212	1	1	Billy Duffy/Ian Astbury	209789	\\x36383835363437	0.989999999999999991
2618	Speed Of Light	212	1	1	Billy Duffy/Bob Rock/Ian Astbury	262817	\\x38353633333532	0.989999999999999991
2619	True Believers	212	1	1	Billy Duffy/Ian Astbury	308009	\\x39393831333539	0.989999999999999991
2620	My Bridges Burn	212	1	1	Billy Duffy/Ian Astbury	231862	\\x37353731333730	0.989999999999999991
2621	She Sells Sanctuary	213	1	1		253727	\\x38333638363334	0.989999999999999991
2622	Fire Woman	213	1	1		312790	\\x3130313936393935	0.989999999999999991
2623	Lil' Evil	213	1	1		165825	\\x35343139363535	0.989999999999999991
2624	Spirit Walker	213	1	1		230060	\\x37353535383937	0.989999999999999991
2625	The Witch	213	1	1		258768	\\x38373235343033	0.989999999999999991
2626	Revolution	213	1	1		256026	\\x38333731323534	0.989999999999999991
2627	Wild Hearted Son	213	1	1		266893	\\x38363730353530	0.989999999999999991
2628	Love Removal Machine	213	1	1		257619	\\x38343132313637	0.989999999999999991
2629	Rain	213	1	1		236669	\\x37373838343631	0.989999999999999991
2630	Edie (Ciao Baby)	213	1	1		241632	\\x37383436313737	0.989999999999999991
2631	Heart Of Soul	213	1	1		274207	\\x38393637323537	0.989999999999999991
2632	Love	213	1	1		326739	\\x3130373239383234	0.989999999999999991
2633	Wild Flower	213	1	1		215536	\\x37303834333231	0.989999999999999991
2634	Go West	213	1	1		238158	\\x37373737373439	0.989999999999999991
2635	Resurrection Joe	213	1	1		255451	\\x38353332383430	0.989999999999999991
2636	Sun King	213	1	1		368431	\\x3132303130383635	0.989999999999999991
2637	Sweet Soul Sister	213	1	1		212009	\\x36383839383833	0.989999999999999991
2638	Earth Mofo	213	1	1		282200	\\x39323034353831	0.989999999999999991
2639	Break on Through	214	1	1	Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison	149342	\\x34393433313434	0.989999999999999991
2640	Soul Kitchen	214	1	1	Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison	215066	\\x37303430383635	0.989999999999999991
2641	The Crystal Ship	214	1	1	Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison	154853	\\x35303532363538	0.989999999999999991
2642	Twentienth Century Fox	214	1	1	Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison	153913	\\x35303639323131	0.989999999999999991
2643	Alabama Song	214	1	1	Weill-Brecht	200097	\\x36353633343131	0.989999999999999991
2644	Light My Fire	214	1	1	Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison	428329	\\x3133393633333531	0.989999999999999991
2645	Back Door Man	214	1	1	Willie Dixon, C. Burnett	214360	\\x37303335363336	0.989999999999999991
2646	I Looked At You	214	1	1	Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison	142080	\\x34363633393838	0.989999999999999991
2647	End Of The Night	214	1	1	Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison	172695	\\x35353839373332	0.989999999999999991
2648	Take It As It Comes	214	1	1	Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison	137168	\\x34353132363536	0.989999999999999991
2649	The End	214	1	1	Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison	701831	\\x3232393237333336	0.989999999999999991
2650	Roxanne	215	1	1	G M Sumner	192992	\\x36333330313539	0.989999999999999991
2651	Can't Stand Losing You	215	1	1	G M Sumner	181159	\\x35393731393833	0.989999999999999991
2652	Message in a Bottle	215	1	1	G M Sumner	291474	\\x39363437383239	0.989999999999999991
2653	Walking on the Moon	215	1	1	G M Sumner	302080	\\x3130303139383631	0.989999999999999991
2654	Don't Stand so Close to Me	215	1	1	G M Sumner	241031	\\x37393536363538	0.989999999999999991
2655	De Do Do Do, De Da Da Da	215	1	1	G M Sumner	247196	\\x38323237303735	0.989999999999999991
2656	Every Little Thing She Does is Magic	215	1	1	G M Sumner	261120	\\x38363436383533	0.989999999999999991
2657	Invisible Sun	215	1	1	G M Sumner	225593	\\x37333034333230	0.989999999999999991
2658	Spirit's in the Material World	215	1	1	G M Sumner	181133	\\x35393836363232	0.989999999999999991
2659	Every Breath You Take	215	1	1	G M Sumner	254615	\\x38333634353230	0.989999999999999991
2660	King Of Pain	215	1	1	G M Sumner	300512	\\x39383830333033	0.989999999999999991
2661	Wrapped Around Your Finger	215	1	1	G M Sumner	315454	\\x3130333631343930	0.989999999999999991
2662	Don't Stand So Close to Me '86	215	1	1	G M Sumner	293590	\\x39363336363833	0.989999999999999991
2663	Message in a Bottle (new classic rock mix)	215	1	1	G M Sumner	290951	\\x39363430333439	0.989999999999999991
2664	Time Is On My Side	216	1	1	Jerry Ragavoy	179983	\\x35383535383336	0.989999999999999991
2665	Heart Of Stone	216	1	1	Jagger/Richards	164493	\\x35333239353338	0.989999999999999991
2666	Play With Fire	216	1	1	Nanker Phelge	132022	\\x34323635323937	0.989999999999999991
2667	Satisfaction	216	1	1	Jagger/Richards	226612	\\x37333938373636	0.989999999999999991
2668	As Tears Go By	216	1	1	Jagger/Richards/Oldham	164284	\\x35333537333530	0.989999999999999991
2670	Mother's Little Helper	216	1	1	Jagger/Richards	167549	\\x35343232343334	0.989999999999999991
2671	19th Nervous Breakdown	216	1	1	Jagger/Richards	237923	\\x37373432393834	0.989999999999999991
2672	Paint It Black	216	1	1	Jagger/Richards	226063	\\x37343432383838	0.989999999999999991
2673	Under My Thumb	216	1	1	Jagger/Richards	221387	\\x37333731373939	0.989999999999999991
2674	Ruby Tuesday	216	1	1	Jagger/Richards	197459	\\x36343333343637	0.989999999999999991
2675	Let's Spend The Night Together	216	1	1	Jagger/Richards	217495	\\x37313337303438	0.989999999999999991
2676	Intro	217	1	1	Jagger/Richards	49737	\\x31363138353931	0.989999999999999991
2677	You Got Me Rocking	217	1	1	Jagger/Richards	205766	\\x36373334333835	0.989999999999999991
2678	Gimmie Shelters	217	1	1	Jagger/Richards	382119	\\x3132353238373634	0.989999999999999991
2679	Flip The Switch	217	1	1	Jagger/Richards	252421	\\x38333336353931	0.989999999999999991
2680	Memory Motel	217	1	1	Jagger/Richards	365844	\\x3131393832343331	0.989999999999999991
2681	Corinna	217	1	1	Jesse Ed Davis III/Taj Mahal	257488	\\x38343439343731	0.989999999999999991
2682	Saint Of Me	217	1	1	Jagger/Richards	325694	\\x3130373235313630	0.989999999999999991
2683	Wainting On A Friend	217	1	1	Jagger/Richards	302497	\\x39393738303436	0.989999999999999991
2684	Sister Morphine	217	1	1	Faithfull/Jagger/Richards	376215	\\x3132333435323839	0.989999999999999991
2685	Live With Me	217	1	1	Jagger/Richards	234893	\\x37373039303036	0.989999999999999991
2686	Respectable	217	1	1	Jagger/Richards	215693	\\x37303939363639	0.989999999999999991
2687	Thief In The Night	217	1	1	De Beauport/Jagger/Richards	337266	\\x3130393532373536	0.989999999999999991
2688	The Last Time	217	1	1	Jagger/Richards	287294	\\x39343938373538	0.989999999999999991
2689	Out Of Control	217	1	1	Jagger/Richards	479242	\\x3135373439323839	0.989999999999999991
2690	Love Is Strong	218	1	1	Jagger/Richards	230896	\\x37363339373734	0.989999999999999991
2691	You Got Me Rocking	218	1	1	Jagger/Richards	215928	\\x37313632313539	0.989999999999999991
2692	Sparks Will Fly	218	1	1	Jagger/Richards	196466	\\x36343932383437	0.989999999999999991
2693	The Worst	218	1	1	Jagger/Richards	144613	\\x34373530303934	0.989999999999999991
2694	New Faces	218	1	1	Jagger/Richards	172146	\\x35363839313232	0.989999999999999991
2695	Moon Is Up	218	1	1	Jagger/Richards	222119	\\x37333636333136	0.989999999999999991
2696	Out Of Tears	218	1	1	Jagger/Richards	327418	\\x3130363737323336	0.989999999999999991
2697	I Go Wild	218	1	1	Jagger/Richards	264019	\\x38363330383333	0.989999999999999991
2698	Brand New Car	218	1	1	Jagger/Richards	256052	\\x38343539333434	0.989999999999999991
2699	Sweethearts Together	218	1	1	Jagger/Richards	285492	\\x39353530343539	0.989999999999999991
2700	Suck On The Jugular	218	1	1	Jagger/Richards	268225	\\x38393230353636	0.989999999999999991
2701	Blinded By Rainbows	218	1	1	Jagger/Richards	273946	\\x38393731333433	0.989999999999999991
2702	Baby Break It Down	218	1	1	Jagger/Richards	249417	\\x38313937333039	0.989999999999999991
2703	Thru And Thru	218	1	1	Jagger/Richards	375092	\\x3132313735343036	0.989999999999999991
2704	Mean Disposition	218	1	1	Jagger/Richards	249155	\\x38323733363032	0.989999999999999991
2705	Walking Wounded	219	1	4	The Tea Party	277968	\\x39313834333435	0.989999999999999991
2706	Temptation	219	1	4	The Tea Party	205087	\\x36373131393433	0.989999999999999991
2707	The Messenger	219	1	4	Daniel Lanois	212062	\\x36393735343337	0.989999999999999991
2708	Psychopomp	219	1	4	The Tea Party	315559	\\x3130323935313939	0.989999999999999991
2709	Sister Awake	219	1	4	The Tea Party	343875	\\x3131323939343037	0.989999999999999991
2710	The Bazaar	219	1	4	The Tea Party	222458	\\x37323435363931	0.989999999999999991
2711	Save Me (Remix)	219	1	4	The Tea Party	396303	\\x3133303533383339	0.989999999999999991
2712	Fire In The Head	219	1	4	The Tea Party	306337	\\x3130303035363735	0.989999999999999991
2713	Release	219	1	4	The Tea Party	244114	\\x38303134363036	0.989999999999999991
2714	Heaven Coming Down	219	1	4	The Tea Party	241867	\\x37383436343539	0.989999999999999991
2715	The River (Remix)	219	1	4	The Tea Party	343170	\\x3131313933323638	0.989999999999999991
2716	Babylon	219	1	4	The Tea Party	169795	\\x35353638383038	0.989999999999999991
2717	Waiting On A Sign	219	1	4	The Tea Party	261903	\\x38353538353930	0.989999999999999991
2718	Life Line	219	1	4	The Tea Party	277786	\\x39303832373733	0.989999999999999991
2719	Paint It Black	219	1	4	Keith Richards/Mick Jagger	214752	\\x37313031353732	0.989999999999999991
2720	Temptation	220	1	4	The Tea Party	205244	\\x36373139343635	0.989999999999999991
2721	Army Ants	220	1	4	The Tea Party	215405	\\x37303735383338	0.989999999999999991
2722	Psychopomp	220	1	4	The Tea Party	317231	\\x3130333531373738	0.989999999999999991
2723	Gyroscope	220	1	4	The Tea Party	177711	\\x35383130333233	0.989999999999999991
2724	Alarum	220	1	4	The Tea Party	298187	\\x39373132353435	0.989999999999999991
2725	Release	220	1	4	The Tea Party	266292	\\x38373235383234	0.989999999999999991
2726	Transmission	220	1	4	The Tea Party	317257	\\x3130333531313532	0.989999999999999991
2727	Babylon	220	1	4	The Tea Party	292466	\\x39363031373836	0.989999999999999991
2728	Pulse	220	1	4	The Tea Party	250253	\\x38313833383732	0.989999999999999991
2729	Emerald	220	1	4	The Tea Party	289750	\\x39353433373839	0.989999999999999991
2730	Aftermath	220	1	4	The Tea Party	343745	\\x3131303835363037	0.989999999999999991
2731	I Can't Explain	221	1	1	Pete Townshend	125152	\\x34303832383936	0.989999999999999991
2732	Anyway, Anyhow, Anywhere	221	1	1	Pete Townshend, Roger Daltrey	161253	\\x35323334313733	0.989999999999999991
2733	My Generation	221	1	1	John Entwistle/Pete Townshend	197825	\\x36343436363334	0.989999999999999991
2734	Substitute	221	1	1	Pete Townshend	228022	\\x37343039393935	0.989999999999999991
2735	I'm A Boy	221	1	1	Pete Townshend	157126	\\x35313230363035	0.989999999999999991
2736	Boris The Spider	221	1	1	John Entwistle	149472	\\x34383335323032	0.989999999999999991
2737	Happy Jack	221	1	1	Pete Townshend	132310	\\x34333533303633	0.989999999999999991
2738	Pictures Of Lily	221	1	1	Pete Townshend	164414	\\x35333239373531	0.989999999999999991
2739	I Can See For Miles	221	1	1	Pete Townshend	262791	\\x38363034393839	0.989999999999999991
2740	Magic Bus	221	1	1	Pete Townshend	197224	\\x36343532373030	0.989999999999999991
2741	Pinball Wizard	221	1	1	John Entwistle/Pete Townshend	181890	\\x36303535353830	0.989999999999999991
2742	The Seeker	221	1	1	Pete Townshend	204643	\\x36373336383636	0.989999999999999991
2743	Baba O'Riley	221	1	1	John Entwistle/Pete Townshend	309472	\\x3130313431363630	0.989999999999999991
2744	Won't Get Fooled Again (Full Length Version)	221	1	1	John Entwistle/Pete Townshend	513750	\\x3136383535353231	0.989999999999999991
2745	Let's See Action	221	1	1	Pete Townshend	243513	\\x38303738343138	0.989999999999999991
2746	5.15	221	1	1	Pete Townshend	289619	\\x39343538353439	0.989999999999999991
2747	Join Together	221	1	1	Pete Townshend	262556	\\x38363032343835	0.989999999999999991
2748	Squeeze Box	221	1	1	Pete Townshend	161280	\\x35323536353038	0.989999999999999991
2749	Who Are You (Single Edit Version)	221	1	1	John Entwistle/Pete Townshend	299232	\\x39393030343639	0.989999999999999991
2750	You Better You Bet	221	1	1	Pete Townshend	338520	\\x3131313630383737	0.989999999999999991
2751	Primavera	222	1	7	Genival Cassiano/Silvio Rochael	126615	\\x34313532363034	0.989999999999999991
2752	Chocolate	222	1	7	Tim Maia	194690	\\x36343131353837	0.989999999999999991
2753	Azul Da Cor Do Mar	222	1	7	Tim Maia	197955	\\x36343735303037	0.989999999999999991
2757	New Love	222	1	7	Tim Maia	237897	\\x37373836383234	0.989999999999999991
2763	Compadre	222	1	7	Tim Maia	171389	\\x35363331343436	0.989999999999999991
2764	Over Again	222	1	7	Tim Maia	200489	\\x36363132363334	0.989999999999999991
2766	O Que Me Importa	223	1	7		153155	\\x34393737383532	0.989999999999999991
2771	A Festa Do Santo Reis	223	1	7		159791	\\x35323034393935	0.989999999999999991
2772	I Don't Know What To Do With Myself	223	1	7		221387	\\x37323531343738	0.989999999999999991
2774	Nosso Adeus	223	1	7		206471	\\x36373933323730	0.989999999999999991
2776	Preciso Ser Amado	223	1	7		174001	\\x35363138383935	0.989999999999999991
2780	Formigueiro	223	1	7		252943	\\x38343535313332	0.989999999999999991
2819	Battlestar Galactica: The Story So Far	226	3	18		2622250	\\x343930373530333933	1.98999999999999999
2820	Occupation / Precipice	227	3	19		5286953	\\x31303534343233393436	1.98999999999999999
2821	Exodus, Pt. 1	227	3	19		2621708	\\x343735303739343431	1.98999999999999999
2822	Exodus, Pt. 2	227	3	19		2618000	\\x343636383230303231	1.98999999999999999
2823	Collaborators	227	3	19		2626626	\\x343833343834393131	1.98999999999999999
2824	Torn	227	3	19		2631291	\\x343935323632353835	1.98999999999999999
2825	A Measure of Salvation	227	3	18		2563938	\\x343839373135353534	1.98999999999999999
2826	Hero	227	3	18		2713755	\\x353036383936393539	1.98999999999999999
2827	Unfinished Business	227	3	18		2622038	\\x353238343939313630	1.98999999999999999
2828	The Passage	227	3	18		2623875	\\x343930333735373630	1.98999999999999999
2829	The Eye of Jupiter	227	3	18		2618750	\\x353137393039353837	1.98999999999999999
2830	Rapture	227	3	18		2624541	\\x353038343036313533	1.98999999999999999
2831	Taking a Break from All Your Worries	227	3	18		2624207	\\x343932373030313633	1.98999999999999999
2832	The Woman King	227	3	18		2626376	\\x353532383933343437	1.98999999999999999
2833	A Day In the Life	227	3	18		2620245	\\x343632383138323331	1.98999999999999999
2834	Dirty Hands	227	3	18		2627961	\\x353337363438363134	1.98999999999999999
2835	Maelstrom	227	3	18		2622372	\\x353134313534323735	1.98999999999999999
2836	The Son Also Rises	227	3	18		2621830	\\x343939323538343938	1.98999999999999999
2837	Crossroads, Pt. 1	227	3	20		2622622	\\x343836323333353234	1.98999999999999999
2838	Crossroads, Pt. 2	227	3	20		2869953	\\x343937333335373036	1.98999999999999999
2839	Genesis	228	3	19		2611986	\\x353135363731303830	1.98999999999999999
2840	Don't Look Back	228	3	21		2571154	\\x343933363238373735	1.98999999999999999
2841	One Giant Leap	228	3	21		2607649	\\x353231363136323436	1.98999999999999999
2842	Collision	228	3	21		2605480	\\x353236313832333232	1.98999999999999999
2843	Hiros	228	3	21		2533575	\\x343838383335343534	1.98999999999999999
2844	Better Halves	228	3	21		2573031	\\x353439333533343831	1.98999999999999999
2845	Nothing to Hide	228	3	19		2605647	\\x353130303538313831	1.98999999999999999
2846	Seven Minutes to Midnight	228	3	21		2613988	\\x353135353930363832	1.98999999999999999
2847	Homecoming	228	3	21		2601351	\\x353136303135333339	1.98999999999999999
2848	Six Months Ago	228	3	19		2602852	\\x353035313333383639	1.98999999999999999
2849	Fallout	228	3	21		2594761	\\x353031313435343430	1.98999999999999999
2850	The Fix	228	3	21		2600266	\\x353037303236333233	1.98999999999999999
2851	Distractions	228	3	21		2590382	\\x353337313131323839	1.98999999999999999
2852	Run!	228	3	21		2602602	\\x353432393336363737	1.98999999999999999
2853	Unexpected	228	3	21		2598139	\\x353131373737373538	1.98999999999999999
2854	Company Man	228	3	21		2601226	\\x343933313638313335	1.98999999999999999
2855	Company Man	228	3	21		2601101	\\x353033373836333136	1.98999999999999999
2856	Parasite	228	3	21		2602727	\\x343837343631353230	1.98999999999999999
2857	A Tale of Two Cities	229	3	19		2636970	\\x353133363931363532	1.98999999999999999
2858	Lost (Pilot, Part 1) [Premiere]	230	3	19		2548875	\\x323137313234383636	1.98999999999999999
2859	Man of Science, Man of Faith (Premiere)	231	3	19		2612250	\\x353433333432303238	1.98999999999999999
2860	Adrift	231	3	19		2564958	\\x353032363633393935	1.98999999999999999
2861	Lost (Pilot, Part 2)	230	3	19		2436583	\\x323034393935383736	1.98999999999999999
2862	The Glass Ballerina	229	3	21		2637458	\\x353335373239323136	1.98999999999999999
2863	Further Instructions	229	3	19		2563980	\\x353032303431303139	1.98999999999999999
2864	Orientation	231	3	19		2609083	\\x353030363030343334	1.98999999999999999
2865	Tabula Rasa	230	3	19		2627105	\\x323130353236343130	1.98999999999999999
2866	Every Man for Himself	229	3	21		2637387	\\x353133383033353436	1.98999999999999999
2867	Everybody Hates Hugo	231	3	19		2609192	\\x343938313633313435	1.98999999999999999
2868	Walkabout	230	3	19		2587370	\\x323037373438313938	1.98999999999999999
2869	...And Found	231	3	19		2563833	\\x353030333330353438	1.98999999999999999
2870	The Cost of Living	229	3	19		2637500	\\x353035363437313932	1.98999999999999999
2871	White Rabbit	230	3	19		2571965	\\x323031363534363036	1.98999999999999999
2872	Abandoned	231	3	19		2587041	\\x353337333438373131	1.98999999999999999
2873	House of the Rising Sun	230	3	19		2590032	\\x323130333739353235	1.98999999999999999
2874	I Do	229	3	19		2627791	\\x353034363736383235	1.98999999999999999
2875	Not In Portland	229	3	21		2637303	\\x343939303631323334	1.98999999999999999
2876	Not In Portland	229	3	21		2637345	\\x353130353436383437	1.98999999999999999
2877	The Moth	230	3	19		2631327	\\x323238383936333936	1.98999999999999999
2878	The Other 48 Days	231	3	19		2610625	\\x353335323536373533	1.98999999999999999
2879	Collision	231	3	19		2564916	\\x343735363536353434	1.98999999999999999
2880	Confidence Man	230	3	19		2615244	\\x323233373536343735	1.98999999999999999
2881	Flashes Before Your Eyes	229	3	21		2636636	\\x353337373630373535	1.98999999999999999
2882	Lost Survival Guide	229	3	21		2632590	\\x343836363735303633	1.98999999999999999
2883	Solitary	230	3	19		2612894	\\x323037303435313738	1.98999999999999999
2884	What Kate Did	231	3	19		2610250	\\x343834353833393838	1.98999999999999999
2885	Raised By Another	230	3	19		2590459	\\x323233363233383130	1.98999999999999999
2886	Stranger In a Strange Land	229	3	21		2636428	\\x353035303536303231	1.98999999999999999
2887	The 23rd Psalm	231	3	19		2610416	\\x343837343031363034	1.98999999999999999
2888	All the Best Cowboys Have Daddy Issues	230	3	19		2555492	\\x323131373433363531	1.98999999999999999
2889	The Hunting Party	231	3	21		2611333	\\x353230333530333634	1.98999999999999999
2890	Tricia Tanaka Is Dead	229	3	21		2635010	\\x353438313937313632	1.98999999999999999
2891	Enter 77	229	3	21		2629796	\\x353137353231343232	1.98999999999999999
2892	Fire + Water	231	3	21		2600333	\\x343838343538363935	1.98999999999999999
2893	Whatever the Case May Be	230	3	19		2616410	\\x313833383637313835	1.98999999999999999
2894	Hearts and Minds	230	3	19		2619462	\\x323037363037343636	1.98999999999999999
2895	Par Avion	229	3	21		2629879	\\x353137303739363432	1.98999999999999999
2896	The Long Con	231	3	19		2679583	\\x353138333736363336	1.98999999999999999
2897	One of Them	231	3	21		2698791	\\x353432333332333839	1.98999999999999999
2898	Special	230	3	19		2618530	\\x323139393631393637	1.98999999999999999
2899	The Man from Tallahassee	229	3	21		2637637	\\x353530383933353536	1.98999999999999999
2901	Homecoming	230	3	19		2515882	\\x323130363735323231	1.98999999999999999
2902	Maternity Leave	231	3	21		2780416	\\x353535323434323134	1.98999999999999999
2903	Left Behind	229	3	21		2635343	\\x353338343931393634	1.98999999999999999
2904	Outlaws	230	3	19		2619887	\\x323036353030393339	1.98999999999999999
2905	The Whole Truth	231	3	21		2610125	\\x343935343837303134	1.98999999999999999
2906	...In Translation	230	3	19		2604575	\\x323135343431393833	1.98999999999999999
2907	Lockdown	231	3	21		2610250	\\x353433383836303536	1.98999999999999999
2908	One of Us	229	3	21		2638096	\\x353032333837323736	1.98999999999999999
2909	Catch-22	229	3	21		2561394	\\x343839373733333939	1.98999999999999999
2910	Dave	231	3	19		2825166	\\x353734333235383239	1.98999999999999999
2911	Numbers	230	3	19		2609772	\\x323134373039313433	1.98999999999999999
2912	D.O.C.	229	3	21		2616032	\\x353138353536363431	1.98999999999999999
2913	Deus Ex Machina	230	3	19		2582009	\\x323134393936373332	1.98999999999999999
2914	S.O.S.	231	3	19		2639541	\\x353137393739323639	1.98999999999999999
2915	Do No Harm	230	3	19		2618487	\\x323132303339333039	1.98999999999999999
2916	Two for the Road	231	3	21		2610958	\\x353032343034353538	1.98999999999999999
2917	The Greater Good	230	3	19		2617784	\\x323134313330323733	1.98999999999999999
2918	"?"	231	3	19		2782333	\\x353238323237303839	1.98999999999999999
2919	Born to Run	230	3	19		2618619	\\x323133373732303537	1.98999999999999999
2920	Three Minutes	231	3	19		2763666	\\x353331353536383533	1.98999999999999999
2921	Exodus (Part 1)	230	3	19		2620747	\\x323133313037373434	1.98999999999999999
2922	Live Together, Die Alone, Pt. 1	231	3	21		2478041	\\x343537333634393430	1.98999999999999999
2923	Exodus (Part 2) [Season Finale]	230	3	19		2605557	\\x323038363637303539	1.98999999999999999
2924	Live Together, Die Alone, Pt. 2	231	3	19		2656531	\\x353033363139323635	1.98999999999999999
2925	Exodus (Part 3) [Season Finale]	230	3	19		2619869	\\x313937393337373835	1.98999999999999999
2926	Zoo Station	232	1	1	U2	276349	\\x39303536393032	0.989999999999999991
2927	Even Better Than The Real Thing	232	1	1	U2	221361	\\x37323739333932	0.989999999999999991
2928	One	232	1	1	U2	276192	\\x39313538383932	0.989999999999999991
2929	Until The End Of The World	232	1	1	U2	278700	\\x39313332343835	0.989999999999999991
2930	Who's Gonna Ride Your Wild Horses	232	1	1	U2	316551	\\x3130333034333639	0.989999999999999991
2931	So Cruel	232	1	1	U2	349492	\\x3131353237363134	0.989999999999999991
2932	The Fly	232	1	1	U2	268982	\\x38383235333939	0.989999999999999991
2933	Mysterious Ways	232	1	1	U2	243826	\\x38303632303537	0.989999999999999991
2934	Tryin' To Throw Your Arms Around The World	232	1	1	U2	232463	\\x37363132313234	0.989999999999999991
2935	Ultraviolet (Light My Way)	232	1	1	U2	330788	\\x3130373534363331	0.989999999999999991
2936	Acrobat	232	1	1	U2	270288	\\x38383234373233	0.989999999999999991
2937	Love Is Blindness	232	1	1	U2	263497	\\x38353331373636	0.989999999999999991
2938	Beautiful Day	233	1	1	Adam Clayton, Bono, Larry Mullen, The Edge	248163	\\x38303536373233	0.989999999999999991
2939	Stuck In A Moment You Can't Get Out Of	233	1	1	Adam Clayton, Bono, Larry Mullen, The Edge	272378	\\x38393937333636	0.989999999999999991
2940	Elevation	233	1	1	Adam Clayton, Bono, Larry Mullen, The Edge	227552	\\x37343739343134	0.989999999999999991
2941	Walk On	233	1	1	Adam Clayton, Bono, Larry Mullen, The Edge	296280	\\x39383030383631	0.989999999999999991
2942	Kite	233	1	1	Adam Clayton, Bono, Larry Mullen, The Edge	266893	\\x38373635373631	0.989999999999999991
2943	In A Little While	233	1	1	Adam Clayton, Bono, Larry Mullen, The Edge	219271	\\x37313839363437	0.989999999999999991
2944	Wild Honey	233	1	1	Adam Clayton, Bono, Larry Mullen, The Edge	226768	\\x37343636303639	0.989999999999999991
2945	Peace On Earth	233	1	1	Adam Clayton, Bono, Larry Mullen, The Edge	288496	\\x39343736313731	0.989999999999999991
2946	When I Look At The World	233	1	1	Adam Clayton, Bono, Larry Mullen, The Edge	257776	\\x38353030343931	0.989999999999999991
2947	New York	233	1	1	Adam Clayton, Bono, Larry Mullen, The Edge	330370	\\x3130383632333233	0.989999999999999991
2948	Grace	233	1	1	Adam Clayton, Bono, Larry Mullen, The Edge	330657	\\x3130383737313438	0.989999999999999991
2949	The Three Sunrises	234	1	1	U2	234788	\\x37373137393930	0.989999999999999991
2950	Spanish Eyes	234	1	1	U2	196702	\\x36333932373130	0.989999999999999991
2951	Sweetest Thing	234	1	1	U2	185103	\\x36313534383936	0.989999999999999991
2952	Love Comes Tumbling	234	1	1	U2	282671	\\x39333238383032	0.989999999999999991
2953	Bass Trap	234	1	1	U2	213289	\\x36383334313037	0.989999999999999991
2954	Dancing Barefoot	234	1	1	Ivan Kral/Patti Smith	287895	\\x39343838323934	0.989999999999999991
2955	Everlasting Love	234	1	1	Buzz Cason/Mac Gayden	202631	\\x36373038393332	0.989999999999999991
2956	Unchained Melody	234	1	1	Alex North/Hy Zaret	294164	\\x39353937353638	0.989999999999999991
2957	Walk To The Water	234	1	1	U2	289253	\\x39353233333336	0.989999999999999991
2958	Luminous Times (Hold On To Love)	234	1	1	Brian Eno/U2	277760	\\x39303135353133	0.989999999999999991
2959	Hallelujah Here She Comes	234	1	1	U2	242364	\\x38303237303238	0.989999999999999991
2960	Silver And Gold	234	1	1	Bono	279875	\\x39313939373436	0.989999999999999991
2961	Endless Deep	234	1	1	U2	179879	\\x35383939303730	0.989999999999999991
2962	A Room At The Heartbreak Hotel	234	1	1	U2	274546	\\x39303135343136	0.989999999999999991
2963	Trash, Trampoline And The Party Girl	234	1	1	U2	153965	\\x35303833353233	0.989999999999999991
2964	Vertigo	235	1	1	Adam Clayton, Bono, Larry Mullen & The Edge	194612	\\x36333239353032	0.989999999999999991
2965	Miracle Drug	235	1	1	Adam Clayton, Bono, Larry Mullen & The Edge	239124	\\x37373630393136	0.989999999999999991
2966	Sometimes You Can't Make It On Your Own	235	1	1	Adam Clayton, Bono, Larry Mullen & The Edge	308976	\\x3130313132383633	0.989999999999999991
2967	Love And Peace Or Else	235	1	1	Adam Clayton, Bono, Larry Mullen & The Edge	290690	\\x39343736373233	0.989999999999999991
2968	City Of Blinding Lights	235	1	1	Adam Clayton, Bono, Larry Mullen & The Edge	347951	\\x3131343332303236	0.989999999999999991
2969	All Because Of You	235	1	1	Adam Clayton, Bono, Larry Mullen & The Edge	219141	\\x37313938303134	0.989999999999999991
2970	A Man And A Woman	235	1	1	Adam Clayton, Bono, Larry Mullen & The Edge	270132	\\x38393338323835	0.989999999999999991
2971	Crumbs From Your Table	235	1	1	Adam Clayton, Bono, Larry Mullen & The Edge	303568	\\x39383932333439	0.989999999999999991
2972	One Step Closer	235	1	1	Adam Clayton, Bono, Larry Mullen & The Edge	231680	\\x37353132393132	0.989999999999999991
2973	Original Of The Species	235	1	1	Adam Clayton, Bono, Larry Mullen & The Edge	281443	\\x39323330303431	0.989999999999999991
2974	Yahweh	235	1	1	Adam Clayton, Bono, Larry Mullen & The Edge	262034	\\x38363336393938	0.989999999999999991
2975	Discotheque	236	1	1	Bono, The Edge, Adam Clayton, and Larry Mullen	319582	\\x3130343432323036	0.989999999999999991
2976	Do You Feel Loved	236	1	1	Bono, The Edge, Adam Clayton, and Larry Mullen	307539	\\x3130313232363934	0.989999999999999991
2977	Mofo	236	1	1	Bono, The Edge, Adam Clayton, and Larry Mullen	349178	\\x3131353833303432	0.989999999999999991
2978	If God Will Send His Angels	236	1	1	Bono, The Edge, Adam Clayton, and Larry Mullen	322533	\\x3130353633333239	0.989999999999999991
2979	Staring At The Sun	236	1	1	Bono, The Edge, Adam Clayton, and Larry Mullen	276924	\\x39303832383338	0.989999999999999991
2980	Last Night On Earth	236	1	1	Bono, The Edge, Adam Clayton, and Larry Mullen	285753	\\x39343031303137	0.989999999999999991
2981	Gone	236	1	1	Bono, The Edge, Adam Clayton, and Larry Mullen	266866	\\x38373436333031	0.989999999999999991
2982	Miami	236	1	1	Bono, The Edge, Adam Clayton, and Larry Mullen	293041	\\x39373431363033	0.989999999999999991
2983	The Playboy Mansion	236	1	1	Bono, The Edge, Adam Clayton, and Larry Mullen	280555	\\x39323734313434	0.989999999999999991
2984	If You Wear That Velvet Dress	236	1	1	Bono, The Edge, Adam Clayton, and Larry Mullen	315167	\\x3130323237333333	0.989999999999999991
2985	Please	236	1	1	Bono, The Edge, Adam Clayton, and Larry Mullen	302602	\\x39393039343834	0.989999999999999991
2986	Wake Up Dead Man	236	1	1	Bono, The Edge, Adam Clayton, and Larry Mullen	292832	\\x39353135393033	0.989999999999999991
2987	Helter Skelter	237	1	1	Lennon, John/McCartney, Paul	187350	\\x36303937363336	0.989999999999999991
2988	Van Diemen's Land	237	1	1	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	186044	\\x35393930323830	0.989999999999999991
2989	Desire	237	1	1	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	179226	\\x35383734353335	0.989999999999999991
2990	Hawkmoon 269	237	1	1	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	382458	\\x3132343934393837	0.989999999999999991
2991	All Along The Watchtower	237	1	1	Dylan, Bob	264568	\\x38363233353732	0.989999999999999991
2992	I Still Haven't Found What I'm Looking for	237	1	1	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	353567	\\x3131353432323437	0.989999999999999991
2993	Freedom For My People	237	1	1	Mabins, Macie/Magee, Sterling/Robinson, Bobby	38164	\\x31323439373634	0.989999999999999991
2994	Silver And Gold	237	1	1	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	349831	\\x3131343530313934	0.989999999999999991
2995	Pride (In The Name Of Love)	237	1	1	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	267807	\\x38383036333631	0.989999999999999991
2996	Angel Of Harlem	237	1	1	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	229276	\\x37343938303232	0.989999999999999991
3072	Why Can't This Be Love	243	1	1	Van Halen	227761	\\x37343537363535	0.989999999999999991
2997	Love Rescue Me	237	1	1	Bono/Clayton, Adam/Dylan, Bob/Mullen Jr., Larry/The Edge	384522	\\x3132353038373136	0.989999999999999991
2998	When Love Comes To Town	237	1	1	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	255869	\\x38333430393534	0.989999999999999991
2999	Heartland	237	1	1	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	303360	\\x39383637373438	0.989999999999999991
3000	God Part II	237	1	1	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	195604	\\x36343937353730	0.989999999999999991
3001	The Star Spangled Banner	237	1	1	Hendrix, Jimi	43232	\\x31333835383130	0.989999999999999991
3002	Bullet The Blue Sky	237	1	1	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	337005	\\x3130393933363037	0.989999999999999991
3003	All I Want Is You	237	1	1	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	390243	\\x3132373239383230	0.989999999999999991
3004	Pride (In The Name Of Love)	238	1	1	U2	230243	\\x37353439303835	0.989999999999999991
3005	New Year's Day	238	1	1	U2	258925	\\x38343931383138	0.989999999999999991
3006	With Or Without You	238	1	1	U2	299023	\\x39373635313838	0.989999999999999991
3007	I Still Haven't Found What I'm Looking For	238	1	1	U2	280764	\\x39333036373337	0.989999999999999991
3008	Sunday Bloody Sunday	238	1	1	U2	282174	\\x39323639363638	0.989999999999999991
3009	Bad	238	1	1	U2	351817	\\x3131363238303538	0.989999999999999991
3010	Where The Streets Have No Name	238	1	1	U2	276218	\\x39303432333035	0.989999999999999991
3011	I Will Follow	238	1	1	U2	218253	\\x37313834383235	0.989999999999999991
3012	The Unforgettable Fire	238	1	1	U2	295183	\\x39363834363634	0.989999999999999991
3013	Sweetest Thing	238	1	1	U2 & Daragh O'Toole	183066	\\x36303731333835	0.989999999999999991
3014	Desire	238	1	1	U2	179853	\\x35383933323036	0.989999999999999991
3015	When Love Comes To Town	238	1	1	U2	258194	\\x38343739353235	0.989999999999999991
3016	Angel Of Harlem	238	1	1	U2	230217	\\x37353237333339	0.989999999999999991
3017	All I Want Is You	238	1	1	U2 & Van Dyke Parks	591986	\\x3139323032323532	0.989999999999999991
3018	Sunday Bloody Sunday	239	1	1	U2	278204	\\x39313430383439	0.989999999999999991
3019	Seconds	239	1	1	U2	191582	\\x36333532313231	0.989999999999999991
3020	New Year's Day	239	1	1	U2	336274	\\x3131303534373332	0.989999999999999991
3021	Like A Song...	239	1	1	U2	287294	\\x39333635333739	0.989999999999999991
3022	Drowning Man	239	1	1	U2	254458	\\x38343537303636	0.989999999999999991
3023	The Refugee	239	1	1	U2	221283	\\x37333734303433	0.989999999999999991
3024	Two Hearts Beat As One	239	1	1	U2	243487	\\x37393938333233	0.989999999999999991
3025	Red Light	239	1	1	U2	225854	\\x37343533373034	0.989999999999999991
3026	Surrender	239	1	1	U2	333505	\\x3131323231343036	0.989999999999999991
3027	"40"	239	1	1	U2	157962	\\x35323531373637	0.989999999999999991
3028	Zooropa	240	1	1	U2; Bono	392359	\\x3132383037393739	0.989999999999999991
3029	Babyface	240	1	1	U2; Bono	241998	\\x37393432353733	0.989999999999999991
3030	Numb	240	1	1	U2; Edge, The	260284	\\x38353737383631	0.989999999999999991
3031	Lemon	240	1	1	U2; Bono	418324	\\x3133393838383738	0.989999999999999991
3032	Stay (Faraway, So Close!)	240	1	1	U2; Bono	298475	\\x39373835343830	0.989999999999999991
3033	Daddy's Gonna Pay For Your Crashed Car	240	1	1	U2; Bono	320287	\\x3130363039353831	0.989999999999999991
3034	Some Days Are Better Than Others	240	1	1	U2; Bono	257436	\\x38343137363930	0.989999999999999991
3035	The First Time	240	1	1	U2; Bono	225697	\\x37323437363531	0.989999999999999991
3036	Dirty Day	240	1	1	U2; Bono & Edge, The	324440	\\x3130363532383737	0.989999999999999991
3037	The Wanderer	240	1	1	U2; Bono	283951	\\x39323538373137	0.989999999999999991
3038	Breakfast In Bed	241	1	8		196179	\\x36353133333235	0.989999999999999991
3039	Where Did I Go Wrong	241	1	8		226742	\\x37343835303534	0.989999999999999991
3040	I Would Do For You	241	1	8		334524	\\x3131313933363032	0.989999999999999991
3041	Homely Girl	241	1	8		203833	\\x36373930373838	0.989999999999999991
3042	Here I Am (Come And Take Me)	241	1	8		242102	\\x38313036323439	0.989999999999999991
3043	Kingston Town	241	1	8		226951	\\x37363338323336	0.989999999999999991
3044	Wear You To The Ball	241	1	8		213342	\\x37313539353237	0.989999999999999991
3045	(I Can't Help) Falling In Love With You	241	1	8		207568	\\x36393035363233	0.989999999999999991
3046	Higher Ground	241	1	8		260179	\\x38363635323434	0.989999999999999991
3047	Bring Me Your Cup	241	1	8		341498	\\x3131333436313134	0.989999999999999991
3048	C'est La Vie	241	1	8		270053	\\x39303331363631	0.989999999999999991
3049	Reggae Music	241	1	8		245106	\\x38323033393331	0.989999999999999991
3050	Superstition	241	1	8		319582	\\x3130373238303939	0.989999999999999991
3051	Until My Dying Day	241	1	8		235807	\\x37383836313935	0.989999999999999991
3052	Where Have All The Good Times Gone?	242	1	1	Ray Davies	186723	\\x36303633393337	0.989999999999999991
3053	Hang 'Em High	242	1	1	Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony	210259	\\x36383732333134	0.989999999999999991
3054	Cathedral	242	1	1	Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony	82860	\\x32363530393938	0.989999999999999991
3055	Secrets	242	1	1	Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony	206968	\\x36383033323535	0.989999999999999991
3056	Intruder	242	1	1	Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony	100153	\\x33323832313432	0.989999999999999991
3057	(Oh) Pretty Woman	242	1	1	Bill Dees/Roy Orbison	174680	\\x35363635383238	0.989999999999999991
3058	Dancing In The Street	242	1	1	Ivy Jo Hunter/Marvin Gaye/William Stevenson	225985	\\x37343631343939	0.989999999999999991
3059	Little Guitars (Intro)	242	1	1	Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony	42240	\\x31343339353330	0.989999999999999991
3060	Little Guitars	242	1	1	Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony	228806	\\x37343533303433	0.989999999999999991
3061	Big Bad Bill (Is Sweet William Now)	242	1	1	Jack Yellen/Milton Ager	165146	\\x35343839363039	0.989999999999999991
3062	The Full Bug	242	1	1	Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony	201116	\\x36353531303133	0.989999999999999991
3063	Happy Trails	242	1	1	Dale Evans	65488	\\x32313131313431	0.989999999999999991
3064	Eruption	243	1	1	Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony	102164	\\x33323732383931	0.989999999999999991
3065	Ain't Talkin' 'bout Love	243	1	1	Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony	228336	\\x37353639353036	0.989999999999999991
3066	Runnin' With The Devil	243	1	1	Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony	215902	\\x37303631393031	0.989999999999999991
3067	Dance the Night Away	243	1	1	Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony	185965	\\x36303837343333	0.989999999999999991
3068	And the Cradle Will Rock...	243	1	1	Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony	213968	\\x37303131343032	0.989999999999999991
3069	Unchained	243	1	1	Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony	208953	\\x36373737303738	0.989999999999999991
3070	Jump	243	1	1	Edward Van Halen, Alex Van Halen, David Lee Roth	241711	\\x37393131303930	0.989999999999999991
3071	Panama	243	1	1	Edward Van Halen, Alex Van Halen, David Lee Roth	211853	\\x36393231373834	0.989999999999999991
3073	Dreams	243	1	1	Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, Sammy Hagar	291813	\\x39353034313139	0.989999999999999991
3074	When It's Love	243	1	1	Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, Sammy Hagar	338991	\\x3131303439393636	0.989999999999999991
3075	Poundcake	243	1	1	Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, Sammy Hagar	321854	\\x3130333636393738	0.989999999999999991
3076	Right Now	243	1	1	Van Halen	321828	\\x3130353033333532	0.989999999999999991
3077	Can't Stop Loving You	243	1	1	Van Halen	248502	\\x38313037383936	0.989999999999999991
3078	Humans Being	243	1	1	Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, Sammy Hagar	308950	\\x3130303134363833	0.989999999999999991
3079	Can't Get This Stuff No More	243	1	1	Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, David Lee Roth	315376	\\x3130333535373533	0.989999999999999991
3080	Me Wise Magic	243	1	1	Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, David Lee Roth	366053	\\x3132303133343637	0.989999999999999991
3081	Runnin' With The Devil	244	1	1	Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth	216032	\\x37303536383633	0.989999999999999991
3082	Eruption	244	1	1	Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth	102556	\\x33323836303236	0.989999999999999991
3083	You Really Got Me	244	1	1	Ray Davies	158589	\\x35313934303932	0.989999999999999991
3084	Ain't Talkin' 'Bout Love	244	1	1	Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth	230060	\\x37363137323834	0.989999999999999991
3085	I'm The One	244	1	1	Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth	226507	\\x37333733393232	0.989999999999999991
3086	Jamie's Cryin'	244	1	1	Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth	210546	\\x36393436303836	0.989999999999999991
3195	Take Your Daughter to Work Day	250	3	19		1268333	\\x323533343531303132	1.98999999999999999
3087	Atomic Punk	244	1	1	Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth	182073	\\x35393038383631	0.989999999999999991
3088	Feel Your Love Tonight	244	1	1	Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth	222850	\\x37323933363038	0.989999999999999991
3089	Little Dreamer	244	1	1	Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth	203258	\\x36363438313232	0.989999999999999991
3090	Ice Cream Man	244	1	1	John Brim	200306	\\x36353733313435	0.989999999999999991
3091	On Fire	244	1	1	Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth	180636	\\x35383739323335	0.989999999999999991
3092	Neworld	245	1	1	Van Halen	105639	\\x33343935383937	0.989999999999999991
3093	Without You	245	1	1	Van Halen	390295	\\x3132363139353538	0.989999999999999991
3094	One I Want	245	1	1	Van Halen	330788	\\x3130373433393730	0.989999999999999991
3095	From Afar	245	1	1	Van Halen	324414	\\x3130353234353534	0.989999999999999991
3096	Dirty Water Dog	245	1	1	Van Halen	327392	\\x3130373039323032	0.989999999999999991
3097	Once	245	1	1	Van Halen	462837	\\x3135333738303832	0.989999999999999991
3098	Fire in the Hole	245	1	1	Van Halen	331728	\\x3130383436373638	0.989999999999999991
3099	Josephina	245	1	1	Van Halen	342491	\\x3131313631353231	0.989999999999999991
3100	Year to the Day	245	1	1	Van Halen	514612	\\x3136363231333333	0.989999999999999991
3101	Primary	245	1	1	Van Halen	86987	\\x32383132353535	0.989999999999999991
3102	Ballot or the Bullet	245	1	1	Van Halen	342282	\\x3131323132393535	0.989999999999999991
3103	How Many Say I	245	1	1	Van Halen	363937	\\x3131373136383535	0.989999999999999991
3104	Sucker Train Blues	246	1	1	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	267859	\\x38373338373830	0.989999999999999991
3105	Do It For The Kids	246	1	1	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	235911	\\x37363933333331	0.989999999999999991
3106	Big Machine	246	1	1	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	265613	\\x38363733343432	0.989999999999999991
3107	Illegal I Song	246	1	1	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	257750	\\x38343833333437	0.989999999999999991
3108	Spectacle	246	1	1	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	221701	\\x37323532383736	0.989999999999999991
3109	Fall To Pieces	246	1	1	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	270889	\\x38383233303936	0.989999999999999991
3110	Headspace	246	1	1	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	223033	\\x37323337393836	0.989999999999999991
3111	Superhuman	246	1	1	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	255921	\\x38333635333238	0.989999999999999991
3112	Set Me Free	246	1	1	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	247954	\\x38303533333838	0.989999999999999991
3113	You Got No Right	246	1	1	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	335412	\\x3130393931303934	0.989999999999999991
3114	Slither	246	1	1	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	248398	\\x38313138373835	0.989999999999999991
3115	Dirty Little Thing	246	1	1	Dave Kushner, Duff, Keith Nelson, Matt Sorum, Scott Weiland & Slash	237844	\\x37373332393832	0.989999999999999991
3116	Loving The Alien	246	1	1	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	348786	\\x3131343132373632	0.989999999999999991
3132	Still Of The Night	141	1	3	Sykes	398210	\\x3133303433383137	0.989999999999999991
3133	Here I Go Again	141	1	3	Marsden	233874	\\x37363532343733	0.989999999999999991
3134	Is This Love	141	1	3	Sykes	283924	\\x39323632333630	0.989999999999999991
3135	Love Ain't No Stranger	141	1	3	Galley	259395	\\x38343930343238	0.989999999999999991
3136	Looking For Love	141	1	3	Sykes	391941	\\x3132373639383437	0.989999999999999991
3137	Now You're Gone	141	1	3	Vandenberg	251141	\\x38313632313933	0.989999999999999991
3138	Slide It In	141	1	3	Coverdale	202475	\\x36363135313532	0.989999999999999991
3139	Slow An' Easy	141	1	3	Moody	367255	\\x3131393631333332	0.989999999999999991
3140	Judgement Day	141	1	3	Vandenberg	317074	\\x3130333236393937	0.989999999999999991
3141	You're Gonna Break My Hart Again	141	1	3	Sykes	250853	\\x38313736383437	0.989999999999999991
3142	The Deeper The Love	141	1	3	Vandenberg	262791	\\x38363036353034	0.989999999999999991
3143	Crying In The Rain	141	1	3	Coverdale	337005	\\x3130393331393231	0.989999999999999991
3144	Fool For Your Loving	141	1	3	Marsden/Moody	250801	\\x38313239383230	0.989999999999999991
3145	Sweet Lady Luck	141	1	3	Vandenberg	273737	\\x38393139313633	0.989999999999999991
3149	Vivo Isolado Do Mundo	248	1	7	Alcides Dias Lopes	180035	\\x36303733393935	0.989999999999999991
3153	Rugas	248	1	7	Augusto Garcez/Nelson Cavaquinho	140930	\\x34373033313832	0.989999999999999991
3155	Sem Essa de Malandro Agulha	248	1	7	Aldir Blanc/Jayme Vignoli	158484	\\x35333332363638	0.989999999999999991
3158	Saudade Louca	248	1	7	Acyr Marques/Arlindo Cruz/Franco	243591	\\x38313336343735	0.989999999999999991
3160	Sapopemba e Maxambomba	248	1	7	Nei Lopes/Wilson Moreira	245394	\\x38323638373132	0.989999999999999991
3162	Lua de Ogum	248	1	7	Ratinho/Zeca Pagodinho	168463	\\x35373139313239	0.989999999999999991
3164	Verdade	248	1	7	Carlinhos Santana/Nelson Rufino	332826	\\x3131313230373038	0.989999999999999991
3165	The Brig	229	3	21		2617325	\\x343838393139353433	1.98999999999999999
3166	.07%	228	3	21		2585794	\\x353431373135313939	1.98999999999999999
3167	Five Years Gone	228	3	21		2587712	\\x353330353531383930	1.98999999999999999
3168	The Hard Part	228	3	21		2601017	\\x343735393936363131	1.98999999999999999
3169	The Man Behind the Curtain	229	3	21		2615990	\\x343933393531303831	1.98999999999999999
3170	Greatest Hits	229	3	21		2617117	\\x353232313032393136	1.98999999999999999
3171	Landslide	228	3	21		2600725	\\x353138363737383631	1.98999999999999999
3172	The Office: An American Workplace (Pilot)	249	3	19		1380833	\\x323930343832333631	1.98999999999999999
3173	Diversity Day	249	3	19		1306416	\\x323537383739373136	1.98999999999999999
3174	Health Care	249	3	19		1321791	\\x323630343933353737	1.98999999999999999
3175	The Alliance	249	3	19		1317125	\\x323636323033313632	1.98999999999999999
3176	Basketball	249	3	19		1323541	\\x323637343634313830	1.98999999999999999
3177	Hot Girl	249	3	19		1325458	\\x323637383336353736	1.98999999999999999
3178	The Dundies	250	3	19		1253541	\\x323436383435353736	1.98999999999999999
3179	Sexual Harassment	250	3	19		1294541	\\x323733303639313436	1.98999999999999999
3180	Office Olympics	250	3	19		1290458	\\x323536323437363233	1.98999999999999999
3181	The Fire	250	3	19		1288166	\\x323636383536303137	1.98999999999999999
3182	Halloween	250	3	19		1315333	\\x323439323035323039	1.98999999999999999
3183	The Fight	250	3	19		1320028	\\x323737313439343537	1.98999999999999999
3184	The Client	250	3	19		1299341	\\x323533383336373838	1.98999999999999999
3185	Performance Review	250	3	19		1292458	\\x323536313433383232	1.98999999999999999
3186	Email Surveillance	250	3	19		1328870	\\x323635313031313133	1.98999999999999999
3187	Christmas Party	250	3	19		1282115	\\x323630383931333030	1.98999999999999999
3188	Booze Cruise	250	3	19		1267958	\\x323532353138303231	1.98999999999999999
3189	The Injury	250	3	19		1275275	\\x323533393132373632	1.98999999999999999
3190	The Secret	250	3	19		1264875	\\x323533313433323030	1.98999999999999999
3191	The Carpet	250	3	19		1264375	\\x323536343737303131	1.98999999999999999
3192	Boys and Girls	250	3	19		1278333	\\x323535323435373239	1.98999999999999999
3193	Valentine's Day	250	3	19		1270375	\\x323533353532373130	1.98999999999999999
3194	Dwight's Speech	250	3	19		1278041	\\x323535303031373238	1.98999999999999999
3196	Michael's Birthday	250	3	19		1237791	\\x323437323338333938	1.98999999999999999
3197	Drug Testing	250	3	19		1278625	\\x323434363236393237	1.98999999999999999
3198	Conflict Resolution	250	3	19		1274583	\\x323533383038363538	1.98999999999999999
3199	Casino Night - Season Finale	250	3	19		1712791	\\x333237363432343538	1.98999999999999999
3200	Gay Witch Hunt	251	3	19		1326534	\\x323736393432363337	1.98999999999999999
3201	The Convention	251	3	19		1297213	\\x323535313137303535	1.98999999999999999
3202	The Coup	251	3	19		1276526	\\x323637323035353031	1.98999999999999999
3203	Grief Counseling	251	3	19		1282615	\\x323536393132383333	1.98999999999999999
3204	The Initiation	251	3	19		1280113	\\x323531373238323537	1.98999999999999999
3205	Diwali	251	3	19		1279904	\\x323532373236363434	1.98999999999999999
3206	Branch Closing	251	3	19		1822781	\\x333538373631373836	1.98999999999999999
3207	The Merger	251	3	19		1801926	\\x333435393630363331	1.98999999999999999
3208	The Convict	251	3	22		1273064	\\x323438383633343237	1.98999999999999999
3209	A Benihana Christmas, Pts. 1 & 2	251	3	22		2519436	\\x353135333031373532	1.98999999999999999
3210	Back from Vacation	251	3	22		1271688	\\x323435333738373439	1.98999999999999999
3211	Traveling Salesmen	251	3	22		1289039	\\x323530383232363937	1.98999999999999999
3212	Producer's Cut: The Return	251	3	22		1700241	\\x333337323139393830	1.98999999999999999
3213	Ben Franklin	251	3	22		1271938	\\x323634313638303830	1.98999999999999999
3214	Phyllis's Wedding	251	3	22		1271521	\\x323538353631303534	1.98999999999999999
3215	Business School	251	3	22		1302093	\\x323534343032363035	1.98999999999999999
3216	Cocktails	251	3	22		1272522	\\x323539303131393039	1.98999999999999999
3217	The Negotiation	251	3	22		1767851	\\x333731363633373139	1.98999999999999999
3218	Safety Training	251	3	22		1271229	\\x323533303534353334	1.98999999999999999
3219	Product Recall	251	3	22		1268268	\\x323531323038363130	1.98999999999999999
3220	Women's Appreciation	251	3	22		1732649	\\x333338373738383434	1.98999999999999999
3221	Beach Games	251	3	22		1676134	\\x333333363731313439	1.98999999999999999
3222	The Job	251	3	22		2541875	\\x353031303630313338	1.98999999999999999
3223	How to Stop an Exploding Man	228	3	21		2687103	\\x343837383831313539	1.98999999999999999
3224	Through a Looking Glass	229	3	21		5088838	\\x31303539353436313430	1.98999999999999999
3225	Your Time Is Gonna Come	252	2	1	Page, Jones	310774	\\x35313236353633	0.989999999999999991
3226	Battlestar Galactica, Pt. 1	253	3	20		2952702	\\x353431333539343337	1.98999999999999999
3227	Battlestar Galactica, Pt. 2	253	3	20		2956081	\\x353231333837393234	1.98999999999999999
3228	Battlestar Galactica, Pt. 3	253	3	20		2927802	\\x353534353039303333	1.98999999999999999
3229	Lost Planet of the Gods, Pt. 1	253	3	20		2922547	\\x353337383132373131	1.98999999999999999
3230	Lost Planet of the Gods, Pt. 2	253	3	20		2914664	\\x353334333433393835	1.98999999999999999
3231	The Lost Warrior	253	3	20		2920045	\\x353538383732313930	1.98999999999999999
3232	The Long Patrol	253	3	20		2925008	\\x353133313232323137	1.98999999999999999
3233	The Gun On Ice Planet Zero, Pt. 1	253	3	20		2907615	\\x353430393830313936	1.98999999999999999
3234	The Gun On Ice Planet Zero, Pt. 2	253	3	20		2924341	\\x353436353432323831	1.98999999999999999
3235	The Magnificent Warriors	253	3	20		2924716	\\x353730313532323332	1.98999999999999999
3236	The Young Lords	253	3	20		2863571	\\x353837303531373335	1.98999999999999999
3237	The Living Legend, Pt. 1	253	3	20		2924507	\\x353033363431303037	1.98999999999999999
3238	The Living Legend, Pt. 2	253	3	20		2923298	\\x353135363332373534	1.98999999999999999
3239	Fire In Space	253	3	20		2926593	\\x353336373834373537	1.98999999999999999
3240	War of the Gods, Pt. 1	253	3	20		2922630	\\x353035373631333433	1.98999999999999999
3241	War of the Gods, Pt. 2	253	3	20		2923381	\\x343837383939363932	1.98999999999999999
3242	The Man With Nine Lives	253	3	20		2956998	\\x353737383239383034	1.98999999999999999
3243	Murder On the Rising Star	253	3	20		2935894	\\x353531373539393836	1.98999999999999999
3244	Greetings from Earth, Pt. 1	253	3	20		2960293	\\x353336383234353538	1.98999999999999999
3245	Greetings from Earth, Pt. 2	253	3	20		2903778	\\x353237383432383630	1.98999999999999999
3246	Baltar's Escape	253	3	20		2922088	\\x353235353634323234	1.98999999999999999
3247	Experiment In Terra	253	3	20		2923548	\\x353437393832353536	1.98999999999999999
3248	Take the Celestra	253	3	20		2927677	\\x353132333831323839	1.98999999999999999
3249	The Hand of God	253	3	20		2924007	\\x353336353833303739	1.98999999999999999
3250	Pilot	254	3	19		2484567	\\x343932363730313032	1.98999999999999999
3251	Through the Looking Glass, Pt. 2	229	3	21		2617117	\\x353530393433333533	1.98999999999999999
3252	Through the Looking Glass, Pt. 1	229	3	21		2610860	\\x343933323131383039	1.98999999999999999
3253	Instant Karma	255	2	9		193188	\\x33313530303930	0.989999999999999991
3254	#9 Dream	255	2	9		278312	\\x34353036343235	0.989999999999999991
3255	Mother	255	2	9		287740	\\x34363536363630	0.989999999999999991
3256	Give Peace a Chance	255	2	9		274644	\\x34343438303235	0.989999999999999991
3257	Cold Turkey	255	2	9		281424	\\x34353536303033	0.989999999999999991
3258	Whatever Gets You Thru the Night	255	2	9		215084	\\x33343939303138	0.989999999999999991
3259	I'm Losing You	255	2	9		240719	\\x33393037343637	0.989999999999999991
3260	Gimme Some Truth	255	2	9		232778	\\x33373830383037	0.989999999999999991
3261	Oh, My Love	255	2	9		159473	\\x32363132373838	0.989999999999999991
3262	Imagine	255	2	9		192329	\\x33313336323731	0.989999999999999991
3263	Nobody Told Me	255	2	9		210348	\\x33343233333935	0.989999999999999991
3264	Jealous Guy	255	2	9		239094	\\x33383831363230	0.989999999999999991
3265	Working Class Hero	255	2	9		265449	\\x34333031343330	0.989999999999999991
3266	Power to the People	255	2	9		213018	\\x33343636303239	0.989999999999999991
3267	Imagine	255	2	9		219078	\\x33353632353432	0.989999999999999991
3268	Beautiful Boy	255	2	9		227995	\\x33373034363432	0.989999999999999991
3269	Isolation	255	2	9		156059	\\x32353538333939	0.989999999999999991
3270	Watching the Wheels	255	2	9		198645	\\x33323337303633	0.989999999999999991
3271	Grow Old With Me	255	2	9		149093	\\x32343437343533	0.989999999999999991
3272	Gimme Some Truth	255	2	9		187546	\\x33303630303833	0.989999999999999991
3273	[Just Like] Starting Over	255	2	9		215549	\\x33353036333038	0.989999999999999991
3274	God	255	2	9		260410	\\x34323231313335	0.989999999999999991
3275	Real Love	255	2	9		236911	\\x33383436363538	0.989999999999999991
3276	Sympton of the Universe	256	2	1		340890	\\x35343839333133	0.989999999999999991
3277	Snowblind	256	2	1		295960	\\x34373733313731	0.989999999999999991
3278	Black Sabbath	256	2	1		364180	\\x35383630343535	0.989999999999999991
3279	Fairies Wear Boots	256	2	1		392764	\\x36333135393136	0.989999999999999991
3280	War Pigs	256	2	1		515435	\\x38323730313934	0.989999999999999991
3281	The Wizard	256	2	1		282678	\\x34353631373936	0.989999999999999991
3282	N.I.B.	256	2	1		335248	\\x35333939343536	0.989999999999999991
3283	Sweet Leaf	256	2	1		354706	\\x35373039373030	0.989999999999999991
3284	Never Say Die	256	2	1		258343	\\x34313733373939	0.989999999999999991
3285	Sabbath, Bloody Sabbath	256	2	1		333622	\\x35333733363333	0.989999999999999991
3286	Iron Man/Children of the Grave	256	2	1		552308	\\x38383538363136	0.989999999999999991
3287	Paranoid	256	2	1		189171	\\x33303731303432	0.989999999999999991
3288	Rock You Like a Hurricane	257	2	1		255766	\\x34333030393733	0.989999999999999991
3289	No One Like You	257	2	1		240325	\\x34303530323539	0.989999999999999991
3290	The Zoo	257	2	1		332740	\\x35353530373739	0.989999999999999991
3291	Loving You Sunday Morning	257	2	1		339125	\\x35363534343933	0.989999999999999991
3292	Still Loving You	257	2	1		390674	\\x36343931343434	0.989999999999999991
3293	Big City Nights	257	2	1		251865	\\x34323337363531	0.989999999999999991
3294	Believe in Love	257	2	1		325774	\\x35343337363531	0.989999999999999991
3295	Rhythm of Love	257	2	1		231246	\\x33393032383334	0.989999999999999991
3296	I Can't Explain	257	2	1		205332	\\x33343832303939	0.989999999999999991
3297	Tease Me Please Me	257	2	1		287229	\\x34383131383934	0.989999999999999991
3298	Wind of Change	257	2	1		315325	\\x35323638303032	0.989999999999999991
3299	Send Me an Angel	257	2	1		273041	\\x34353831343932	0.989999999999999991
3300	Jump Around	258	1	17	E. Schrody/L. Muggerud	217835	\\x38373135363533	0.989999999999999991
3301	Salutations	258	1	17	E. Schrody/L. Dimant	69120	\\x32373637303437	0.989999999999999991
3302	Put Your Head Out	258	1	17	E. Schrody/L. Freese/L. Muggerud	182230	\\x37323931343733	0.989999999999999991
3303	Top O' The Morning To Ya	258	1	17	E. Schrody/L. Dimant	216633	\\x38363637353939	0.989999999999999991
3304	Commercial 1	258	1	17	L. Muggerud	7941	\\x333139383838	0.989999999999999991
3305	House And The Rising Sun	258	1	17	E. Schrody/J. Vasquez/L. Dimant	219402	\\x38373738333639	0.989999999999999991
3306	Shamrocks And Shenanigans	258	1	17	E. Schrody/L. Dimant	218331	\\x38373335353138	0.989999999999999991
3307	House Of Pain Anthem	258	1	17	E. Schrody/L. Dimant	155611	\\x36323236373133	0.989999999999999991
3308	Danny Boy, Danny Boy	258	1	17	E. Schrody/L. Muggerud	114520	\\x34353833303931	0.989999999999999991
3309	Guess Who's Back	258	1	17	E. Schrody/L. Muggerud	238393	\\x39353337393934	0.989999999999999991
3310	Commercial 2	258	1	17	L. Muggerud	21211	\\x383530363938	0.989999999999999991
3311	Put On Your Shit Kickers	258	1	17	E. Schrody/L. Muggerud	190432	\\x37363139353639	0.989999999999999991
3312	Come And Get Some Of This	258	1	17	E. Schrody/L. Muggerud/R. Medrano	170475	\\x36383231323739	0.989999999999999991
3313	Life Goes On	258	1	17	E. Schrody/R. Medrano	163030	\\x36353233343538	0.989999999999999991
3314	One For The Road	258	1	17	E. Schrody/L. Dimant/L. Muggerud	170213	\\x36383130383230	0.989999999999999991
3315	Feel It	258	1	17	E. Schrody/R. Medrano	239908	\\x39353938353838	0.989999999999999991
3316	All My Love	258	1	17	E. Schrody/L. Dimant	200620	\\x38303237303635	0.989999999999999991
3317	Jump Around (Pete Rock Remix)	258	1	17	E. Schrody/L. Muggerud	236120	\\x39343437313031	0.989999999999999991
3318	Shamrocks And Shenanigans (Boom Shalock Lock Boom/Butch Vig Mix)	258	1	17	E. Schrody/L. Dimant	237035	\\x39343833373035	0.989999999999999991
3319	Instinto Colectivo	259	1	15		300564	\\x3132303234383735	0.989999999999999991
3320	Chapa o Coco	259	1	15		143830	\\x35373535343738	0.989999999999999991
3321	Prostituta	259	1	15		359000	\\x3134333632333037	0.989999999999999991
3322	Eu So Queria Sumir	259	1	15		269740	\\x3130373931393231	0.989999999999999991
3323	Tres Reis	259	1	15		304143	\\x3132313638303135	0.989999999999999991
3324	Um Lugar ao Sol	259	1	15		212323	\\x38343935323137	0.989999999999999991
3325	Batalha Naval	259	1	15		285727	\\x3131343331333832	0.989999999999999991
3326	Todo o Carnaval tem seu Fim	259	1	15		237426	\\x39343939333731	0.989999999999999991
3327	O Misterio do Samba	259	1	15		226142	\\x39303437393730	0.989999999999999991
3328	Armadura	259	1	15		232881	\\x39333137353333	0.989999999999999991
3329	Na Ladeira	259	1	15		221570	\\x38383635303939	0.989999999999999991
3330	Carimbo	259	1	15		328751	\\x3133313532333134	0.989999999999999991
3331	Catimbo	259	1	15		254484	\\x3130313831363932	0.989999999999999991
3332	Funk de Bamba	259	1	15		237322	\\x39343935313834	0.989999999999999991
3333	Chega no Suingue	259	1	15		221805	\\x38383734353039	0.989999999999999991
3334	Mun-Ra	259	1	15		274651	\\x3130393838333338	0.989999999999999991
3335	Freestyle Love	259	1	15		318484	\\x3132373431363830	0.989999999999999991
3336	War Pigs	260	4	23		234013	\\x38303532333734	0.989999999999999991
3337	Past, Present, and Future	261	3	21		2492867	\\x343930373936313834	1.98999999999999999
3338	The Beginning of the End	261	3	21		2611903	\\x353236383635303530	1.98999999999999999
3339	LOST Season 4 Trailer	261	3	21		112712	\\x3230383331383138	1.98999999999999999
3340	LOST In 8:15	261	3	21		497163	\\x3938343630363735	1.98999999999999999
3341	Confirmed Dead	261	3	21		2611986	\\x353132313638343630	1.98999999999999999
3342	The Economist	261	3	21		2609025	\\x353136393334393134	1.98999999999999999
3343	Eggtown	261	3	19		2608817	\\x353031303631323430	1.98999999999999999
3344	The Constant	261	3	21		2611569	\\x353230323039333633	1.98999999999999999
3345	The Other Woman	261	3	21		2605021	\\x353133323436363633	1.98999999999999999
3346	Ji Yeon	261	3	19		2588797	\\x353036343538383538	1.98999999999999999
3347	Meet Kevin Johnson	261	3	19		2612028	\\x353034313332393831	1.98999999999999999
3348	The Shape of Things to Come	261	3	21		2591299	\\x353032323834323636	1.98999999999999999
3349	Amanda	262	5	2	Luca Gusella	246503	\\x34303131363135	0.989999999999999991
3350	Despertar	262	5	2	Andrea Dulbecco	307385	\\x34383231343835	0.989999999999999991
3352	Distance	264	5	15	Karsh Kale/Vishal Vaid	327122	\\x35333237343633	0.989999999999999991
3353	I Guess You're Right	265	5	1	Darius "Take One" Minwalla/Jon Auer/Ken Stringfellow/Matt Harris	212044	\\x33343533383439	0.989999999999999991
3355	Love Comes	265	5	1	Darius "Take One" Minwalla/Jon Auer/Ken Stringfellow/Matt Harris	199923	\\x33323430363039	0.989999999999999991
3356	Muita Bobeira	266	5	7	Luciana Souza	172710	\\x32373735303731	0.989999999999999991
3357	OAM's Blues	267	5	2	Aaron Goldberg	266936	\\x34323932303238	0.989999999999999991
3358	One Step Beyond	264	5	15	Karsh Kale	366085	\\x36303334303938	0.989999999999999991
3359	Symphony No. 3 in E-flat major, Op. 55, "Eroica" - Scherzo: Allegro Vivace	268	5	24	Ludwig van Beethoven	356426	\\x35383137323136	0.989999999999999991
3360	Something Nice Back Home	261	3	21		2612779	\\x343834373131333533	1.98999999999999999
3361	Cabin Fever	261	3	21		2612028	\\x343737373333393432	1.98999999999999999
3362	There's No Place Like Home, Pt. 1	261	3	21		2609526	\\x353232393139313839	1.98999999999999999
3363	There's No Place Like Home, Pt. 2	261	3	21		2497956	\\x353233373438393230	1.98999999999999999
3364	There's No Place Like Home, Pt. 3	261	3	21		2582957	\\x343836313631373636	1.98999999999999999
3365	Say Hello 2 Heaven	269	2	23		384497	\\x36343737323137	0.989999999999999991
3366	Reach Down	269	2	23		672773	\\x3131313537373835	0.989999999999999991
3367	Hunger Strike	269	2	23		246292	\\x34323333323132	0.989999999999999991
3368	Pushin Forward Back	269	2	23		225278	\\x33383932303636	0.989999999999999991
3369	Call Me a Dog	269	2	23		304458	\\x35313737363132	0.989999999999999991
3370	Times of Trouble	269	2	23		342539	\\x35373935393531	0.989999999999999991
3371	Wooden Jesus	269	2	23		250565	\\x34333032363033	0.989999999999999991
3372	Your Savior	269	2	23		244226	\\x34313939363236	0.989999999999999991
3373	Four Walled World	269	2	23		414474	\\x36393634303438	0.989999999999999991
3374	All Night Thing	269	2	23		231803	\\x33393937393832	0.989999999999999991
3375	No Such Thing	270	2	23	Chris Cornell	224837	\\x33363931323732	0.989999999999999991
3376	Poison Eye	270	2	23	Chris Cornell	237120	\\x33383930303337	0.989999999999999991
3377	Arms Around Your Love	270	2	23	Chris Cornell	214016	\\x33353136323234	0.989999999999999991
3378	Safe and Sound	270	2	23	Chris Cornell	256764	\\x34323037373639	0.989999999999999991
3379	She'll Never Be Your Man	270	2	23	Chris Cornell	204078	\\x33333535373135	0.989999999999999991
3380	Ghosts	270	2	23	Chris Cornell	231547	\\x33373939373435	0.989999999999999991
3381	Killing Birds	270	2	23	Chris Cornell	218498	\\x33353838373736	0.989999999999999991
3382	Billie Jean	270	2	23	Michael Jackson	281401	\\x34363036343038	0.989999999999999991
3383	Scar On the Sky	270	2	23	Chris Cornell	220193	\\x33363136363138	0.989999999999999991
3384	Your Soul Today	270	2	23	Chris Cornell	205959	\\x33333835373232	0.989999999999999991
3385	Finally Forever	270	2	23	Chris Cornell	217035	\\x33353635303938	0.989999999999999991
3386	Silence the Voices	270	2	23	Chris Cornell	267376	\\x34333739353937	0.989999999999999991
3387	Disappearing Act	270	2	23	Chris Cornell	273320	\\x34343736323033	0.989999999999999991
3388	You Know My Name	270	2	23	Chris Cornell	240255	\\x33393430363531	0.989999999999999991
3389	Revelations	271	2	23		252376	\\x34313131303531	0.989999999999999991
3390	One and the Same	271	2	23		217732	\\x33353539303430	0.989999999999999991
3391	Sound of a Gun	271	2	23		260154	\\x34323334393930	0.989999999999999991
3392	Until We Fall	271	2	23		230758	\\x33373636363035	0.989999999999999991
3393	Original Fire	271	2	23		218916	\\x33353737383231	0.989999999999999991
3394	Broken City	271	2	23		228366	\\x33373238393535	0.989999999999999991
3395	Somedays	271	2	23		213831	\\x33343937313736	0.989999999999999991
3396	Shape of Things to Come	271	2	23		274597	\\x34343635333939	0.989999999999999991
3397	Jewel of the Summertime	271	2	23		233242	\\x33383036313033	0.989999999999999991
3398	Wide Awake	271	2	23		266308	\\x34333333303530	0.989999999999999991
3399	Nothing Left to Say But Goodbye	271	2	23		213041	\\x33343834333335	0.989999999999999991
3400	Moth	271	2	23		298049	\\x34383338383834	0.989999999999999991
3401	Show Me How to Live (Live at the Quart Festival)	271	2	23		301974	\\x34393031353430	0.989999999999999991
3402	Band Members Discuss Tracks from "Revelations"	271	3	23		294294	\\x3631313138383931	0.989999999999999991
3403	Intoitus: Adorate Deum	272	2	24	Anonymous	245317	\\x34313233353331	0.989999999999999991
3404	Miserere mei, Deus	273	2	24	Gregorio Allegri	501503	\\x38323835393431	0.989999999999999991
3405	Canon and Gigue in D Major: I. Canon	274	2	24	Johann Pachelbel	271788	\\x34343338333933	0.989999999999999991
3406	Concerto No. 1 in E Major, RV 269 "Spring": I. Allegro	275	2	24	Antonio Vivaldi	199086	\\x33333437383130	0.989999999999999991
3407	Concerto for 2 Violins in D Minor, BWV 1043: I. Vivace	276	2	24	Johann Sebastian Bach	193722	\\x33313932383930	0.989999999999999991
3410	The Messiah: Behold, I Tell You a Mystery... The Trumpet Shall Sound	279	2	24	George Frideric Handel	582029	\\x39353533313430	0.989999999999999991
3411	Solomon HWV 67: The Arrival of the Queen of Sheba	280	2	24	George Frideric Handel	197135	\\x33323437393134	0.989999999999999991
3412	"Eine Kleine Nachtmusik" Serenade In G, K. 525: I. Allegro	281	2	24	Wolfgang Amadeus Mozart	348971	\\x35373630313239	0.989999999999999991
3413	Concerto for Clarinet in A Major, K. 622: II. Adagio	282	2	24	Wolfgang Amadeus Mozart	394482	\\x36343734393830	0.989999999999999991
3414	Symphony No. 104 in D Major "London": IV. Finale: Spiritoso	283	4	24	Franz Joseph Haydn	306687	\\x3130303835383637	0.989999999999999991
3416	Ave Maria	285	2	24	Franz Schubert	338243	\\x35363035363438	0.989999999999999991
3417	Nabucco: Chorus, "Va, Pensiero, Sull'ali Dorate"	286	2	24	Giuseppe Verdi	274504	\\x34343938353833	0.989999999999999991
3420	The Nutcracker, Op. 71a, Act II: Scene 14: Pas de deux: Dance of the Prince & the Sugar-Plum Fairy	289	2	24	Peter Ilyich Tchaikovsky	304226	\\x35313834323839	0.989999999999999991
3421	Nimrod (Adagio) from Variations On an Original Theme, Op. 36 "Enigma"	290	2	24	Edward Elgar	250031	\\x34313234373037	0.989999999999999991
3423	Jupiter, the Bringer of Jollity	292	2	24	Gustav Holst	522099	\\x38353437383736	0.989999999999999991
3424	Turandot, Act III, Nessun dorma!	293	2	24	Giacomo Puccini	176911	\\x32393230383930	0.989999999999999991
3425	Adagio for Strings from the String Quartet, Op. 11	294	2	24	Samuel Barber	596519	\\x39353835353937	0.989999999999999991
3426	Carmina Burana: O Fortuna	295	2	24	Carl Orff	156710	\\x32363330323933	0.989999999999999991
3427	Fanfare for the Common Man	296	2	24	Aaron Copland	198064	\\x33323131323435	0.989999999999999991
3428	Branch Closing	251	3	22		1814855	\\x333630333331333531	1.98999999999999999
3429	The Return	251	3	22		1705080	\\x333433383737333230	1.98999999999999999
3430	Toccata and Fugue in D Minor, BWV 565: I. Toccata	297	2	24	Johann Sebastian Bach	153901	\\x32363439393338	0.989999999999999991
3431	Symphony No.1 in D Major, Op.25 "Classical", Allegro Con Brio	298	2	24	Sergei Prokofiev	254001	\\x34313935353432	0.989999999999999991
3432	Scheherazade, Op. 35: I. The Sea and Sindbad's Ship	299	2	24	Nikolai Rimsky-Korsakov	545203	\\x38393136333133	0.989999999999999991
3433	Concerto No.2 in F Major, BWV1047, I. Allegro	300	2	24	Johann Sebastian Bach	307244	\\x35303634353533	0.989999999999999991
3435	Cavalleria Rusticana \\ Act \\ Intermezzo Sinfonico	302	2	24	Pietro Mascagni	243436	\\x34303031323736	0.989999999999999991
3436	Karelia Suite, Op.11: 2. Ballade (Tempo Di Menuetto)	303	2	24	Jean Sibelius	406000	\\x35393038343535	0.989999999999999991
3437	Piano Sonata No. 14 in C Sharp Minor, Op. 27, No. 2, "Moonlight": I. Adagio sostenuto	304	2	24	Ludwig van Beethoven	391000	\\x36333138373430	0.989999999999999991
3438	Fantasia On Greensleeves	280	2	24	Ralph Vaughan Williams	268066	\\x34353133313930	0.989999999999999991
3439	Das Lied Von Der Erde, Von Der Jugend	305	2	24	Gustav Mahler	223583	\\x33373030323036	0.989999999999999991
3441	Two Fanfares for Orchestra: II. Short Ride in a Fast Machine	307	2	24	John Adams	254930	\\x34333130383936	0.989999999999999991
3443	Missa Papae Marcelli: Kyrie	309	2	24	Giovanni Pierluigi da Palestrina	240666	\\x34323434313439	0.989999999999999991
3444	Romeo et Juliette: No. 11 - Danse des Chevaliers	310	2	24		275015	\\x34353139323339	0.989999999999999991
3445	On the Beautiful Blue Danube	311	2	24	Johann Strauss II	526696	\\x38363130323235	0.989999999999999991
3446	Symphonie Fantastique, Op. 14: V. Songe d'une nuit du sabbat	312	2	24	Hector Berlioz	561967	\\x39313733333434	0.989999999999999991
3447	Carmen: Overture	313	2	24	Georges Bizet	132932	\\x32313839303032	0.989999999999999991
3448	Lamentations of Jeremiah, First Set \\ Incipit Lamentatio	314	2	24	Thomas Tallis	69194	\\x31323038303830	0.989999999999999991
3452	SCRIABIN: Prelude in B Major, Op. 11, No. 11	318	4	24		101293	\\x33383139353335	0.989999999999999991
3453	Pavan, Lachrimae Antiquae	319	2	24	John Dowland	253281	\\x34323131343935	0.989999999999999991
3454	Symphony No. 41 in C Major, K. 551, "Jupiter": IV. Molto allegro	320	2	24	Wolfgang Amadeus Mozart	362933	\\x36313733323639	0.989999999999999991
3455	Rehab	321	2	14		213240	\\x33343136383738	0.989999999999999991
3456	You Know I'm No Good	321	2	14		256946	\\x34313333363934	0.989999999999999991
3457	Me & Mr. Jones	321	2	14		151706	\\x32343439343338	0.989999999999999991
3458	Just Friends	321	2	14		191933	\\x33303938393036	0.989999999999999991
3459	Back to Black	321	2	14	Mark Ronson	240320	\\x33383532393533	0.989999999999999991
3460	Love Is a Losing Game	321	2	14		154386	\\x32353039343039	0.989999999999999991
3461	Tears Dry On Their Own	321	2	14	Nickolas Ashford & Valerie Simpson	185293	\\x32393936353938	0.989999999999999991
3462	Wake Up Alone	321	2	14	Paul O'duffy	221413	\\x33353736373733	0.989999999999999991
3463	Some Unholy War	321	2	14		141520	\\x32333034343635	0.989999999999999991
3464	He Can Only Hold Her	321	2	14	Richard Poindexter & Robert Poindexter	166680	\\x32363636353331	0.989999999999999991
3465	You Know I'm No Good (feat. Ghostface Killah)	321	2	14		202320	\\x33323630363538	0.989999999999999991
3466	Rehab (Hot Chip Remix)	321	2	14		418293	\\x36363730363030	0.989999999999999991
3467	Intro / Stronger Than Me	322	2	9		234200	\\x33383332313635	0.989999999999999991
3468	You Sent Me Flying / Cherry	322	2	9		409906	\\x36363537353137	0.989999999999999991
3469	F**k Me Pumps	322	2	9	Salaam Remi	200253	\\x33333234333433	0.989999999999999991
3470	I Heard Love Is Blind	322	2	9		129666	\\x32313930383331	0.989999999999999991
3471	(There Is) No Greater Love (Teo Licks)	322	2	9	Isham Jones & Marty Symes	167933	\\x32373733353037	0.989999999999999991
3472	In My Bed	322	2	9	Salaam Remi	315960	\\x35323131373734	0.989999999999999991
3473	Take the Box	322	2	9	Luke Smith	199160	\\x33323831353236	0.989999999999999991
3474	October Song	322	2	9	Matt Rowe & Stefan Skarbek	204846	\\x33333538313235	0.989999999999999991
3475	What Is It About Men	322	2	9	Delroy "Chris" Cooper, Donovan Jackson, Earl Chinna Smith, Felix Howard, Gordon Williams, Luke Smith, Paul Watson & Wilburn Squiddley Cole	209573	\\x33343236313036	0.989999999999999991
3476	Help Yourself	322	2	9	Freddy James, Jimmy hogarth & Larry Stock	300884	\\x35303239323636	0.989999999999999991
3477	Amy Amy Amy (Outro)	322	2	9	Astor Campbell, Delroy "Chris" Cooper, Donovan Jackson, Dorothy Fields, Earl Chinna Smith, Felix Howard, Gordon Williams, James Moody, Jimmy McHugh, Matt Rowe, Salaam Remi & Stefan Skarbek	663426	\\x3130353634373034	0.989999999999999991
3478	Slowness	323	2	23		215386	\\x33363434373933	0.989999999999999991
3479	Prometheus Overture, Op. 43	324	4	24	Ludwig van Beethoven	339567	\\x3130383837393331	0.989999999999999991
3481	A Midsummer Night's Dream, Op.61 Incidental Music: No.7 Notturno	326	2	24		387826	\\x36343937383637	0.989999999999999991
3482	Suite No. 3 in D, BWV 1068: III. Gavotte I & II	327	2	24	Johann Sebastian Bach	225933	\\x33383437313634	0.989999999999999991
3483	Concert pour 4 Parties de V**les, H. 545: I. Prelude	328	2	24	Marc-Antoine Charpentier	110266	\\x31393733353539	0.989999999999999991
3484	Adios nonino	329	2	24	Astor Piazzolla	289388	\\x34373831333834	0.989999999999999991
3486	Act IV, Symphony	331	2	24	Henry Purcell	364296	\\x35393837363935	0.989999999999999991
3488	Music for the Funeral of Queen Mary: VI. "Thou Knowest, Lord, the Secrets of Our Hearts"	333	2	24	Henry Purcell	142081	\\x32333635393330	0.989999999999999991
3490	Partita in E Major, BWV 1006A: I. Prelude	335	2	24	Johann Sebastian Bach	285673	\\x34373434393239	0.989999999999999991
3491	Le Sacre Du Printemps: I.iv. Spring Rounds	336	2	24	Igor Stravinsky	234746	\\x34303732323035	0.989999999999999991
3492	Sing Joyfully	314	2	24	William Byrd	133768	\\x32323536343834	0.989999999999999991
3493	Metopes, Op. 29: Calypso	337	2	24	Karol Szymanowski	333669	\\x35353438373535	0.989999999999999991
3497	Erlkonig, D.328	341	2	24		261849	\\x34333037393037	0.989999999999999991
3498	Concerto for Violin, Strings and Continuo in G Major, Op. 3, No. 9: I. Allegro	342	4	24	Pietro Antonio Locatelli	493573	\\x3136343534393337	0.989999999999999991
3499	Pini Di Roma (Pinien Von Rom) \\ I Pini Della Via Appia	343	2	24		286741	\\x34373138393530	0.989999999999999991
3500	String Quartet No. 12 in C Minor, D. 703 "Quartettsatz": II. Andante - Allegro assai	344	2	24	Franz Schubert	139200	\\x32323833313331	0.989999999999999991
3501	L'orfeo, Act 3, Sinfonia (Orchestra)	345	2	24	Claudio Monteverdi	66639	\\x31313839303632	0.989999999999999991
3502	Quintet for Horn, Violin, 2 Violas, and Cello in E Flat Major, K. 407/386c: III. Allegro	346	2	24	Wolfgang Amadeus Mozart	221331	\\x33363635313134	0.989999999999999991
3503	Koyaanisqatsi	347	2	10	Philip Glass	206005	\\x33333035313634	0.989999999999999991
\.


--
-- TOC entry 2796 (class 0 OID 0)
-- Dependencies: 181
-- Name: track_track_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('track_track_id_seq', 1, false);


--
-- TOC entry 2590 (class 2606 OID 24771)
-- Name: album_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user; Tablespace: 
--

ALTER TABLE ONLY album
    ADD CONSTRAINT album_pkey PRIMARY KEY (album_id);


--
-- TOC entry 2588 (class 2606 OID 24763)
-- Name: artist_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user; Tablespace: 
--

ALTER TABLE ONLY artist
    ADD CONSTRAINT artist_pkey PRIMARY KEY (artist_id);


--
-- TOC entry 2604 (class 2606 OID 24862)
-- Name: customer_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user; Tablespace: 
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 2602 (class 2606 OID 24849)
-- Name: employee_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user; Tablespace: 
--

ALTER TABLE ONLY employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);


--
-- TOC entry 2594 (class 2606 OID 24792)
-- Name: genre_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user; Tablespace: 
--

ALTER TABLE ONLY genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (genre_id);


--
-- TOC entry 2608 (class 2606 OID 24888)
-- Name: invoice_line_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user; Tablespace: 
--

ALTER TABLE ONLY invoice_line
    ADD CONSTRAINT invoice_line_pkey PRIMARY KEY (invoice_line_id);


--
-- TOC entry 2606 (class 2606 OID 24875)
-- Name: invoice_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user; Tablespace: 
--

ALTER TABLE ONLY invoice
    ADD CONSTRAINT invoice_pkey PRIMARY KEY (invoice_id);


--
-- TOC entry 2592 (class 2606 OID 24784)
-- Name: media_type_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user; Tablespace: 
--

ALTER TABLE ONLY media_type
    ADD CONSTRAINT media_type_pkey PRIMARY KEY (media_type_id);


--
-- TOC entry 2600 (class 2606 OID 24831)
-- Name: pk_playlist_track; Type: CONSTRAINT; Schema: public; Owner: admin_user; Tablespace: 
--

ALTER TABLE ONLY playlist_track
    ADD CONSTRAINT pk_playlist_track PRIMARY KEY (playlist_id, track_id);


--
-- TOC entry 2598 (class 2606 OID 24826)
-- Name: playlist_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user; Tablespace: 
--

ALTER TABLE ONLY playlist
    ADD CONSTRAINT playlist_pkey PRIMARY KEY (playlist_id);


--
-- TOC entry 2596 (class 2606 OID 24803)
-- Name: track_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user; Tablespace: 
--

ALTER TABLE ONLY track
    ADD CONSTRAINT track_pkey PRIMARY KEY (track_id);


--
-- TOC entry 2610 (class 2606 OID 24804)
-- Name: fk_album_track; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY track
    ADD CONSTRAINT fk_album_track FOREIGN KEY (album_id) REFERENCES album(album_id);


--
-- TOC entry 2609 (class 2606 OID 24772)
-- Name: fk_artist_album; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY album
    ADD CONSTRAINT fk_artist_album FOREIGN KEY (artist_id) REFERENCES artist(artist_id);


--
-- TOC entry 2617 (class 2606 OID 24876)
-- Name: fk_customer_invoice; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY invoice
    ADD CONSTRAINT fk_customer_invoice FOREIGN KEY (customer_id) REFERENCES customer(customer_id);


--
-- TOC entry 2616 (class 2606 OID 24863)
-- Name: fk_employee_customer; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT fk_employee_customer FOREIGN KEY (support_rep_id) REFERENCES employee(employee_id);


--
-- TOC entry 2615 (class 2606 OID 24850)
-- Name: fk_employee_employee; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY employee
    ADD CONSTRAINT fk_employee_employee FOREIGN KEY (reports_to) REFERENCES employee(employee_id);


--
-- TOC entry 2612 (class 2606 OID 24814)
-- Name: fk_genre_track; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY track
    ADD CONSTRAINT fk_genre_track FOREIGN KEY (genre_id) REFERENCES genre(genre_id);


--
-- TOC entry 2619 (class 2606 OID 24894)
-- Name: fk_invoice_invoice_line; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY invoice_line
    ADD CONSTRAINT fk_invoice_invoice_line FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id);


--
-- TOC entry 2611 (class 2606 OID 24809)
-- Name: fk_media_type_track; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY track
    ADD CONSTRAINT fk_media_type_track FOREIGN KEY (media_type_id) REFERENCES media_type(media_type_id);


--
-- TOC entry 2613 (class 2606 OID 24832)
-- Name: fk_playlist_playlist_track; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY playlist_track
    ADD CONSTRAINT fk_playlist_playlist_track FOREIGN KEY (playlist_id) REFERENCES playlist(playlist_id);


--
-- TOC entry 2618 (class 2606 OID 24889)
-- Name: fk_track_invoice_line; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY invoice_line
    ADD CONSTRAINT fk_track_invoice_line FOREIGN KEY (track_id) REFERENCES track(track_id);


--
-- TOC entry 2614 (class 2606 OID 24837)
-- Name: fk_track_playlist_track; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY playlist_track
    ADD CONSTRAINT fk_track_playlist_track FOREIGN KEY (track_id) REFERENCES track(track_id);


--
-- TOC entry 2760 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 2762 (class 0 OID 0)
-- Dependencies: 176
-- Name: album; Type: ACL; Schema: public; Owner: admin_user
--

REVOKE ALL ON TABLE album FROM PUBLIC;
REVOKE ALL ON TABLE album FROM admin_user;
GRANT ALL ON TABLE album TO admin_user;
GRANT SELECT ON TABLE album TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE album TO operator_user;


--
-- TOC entry 2764 (class 0 OID 0)
-- Dependencies: 174
-- Name: artist; Type: ACL; Schema: public; Owner: admin_user
--

REVOKE ALL ON TABLE artist FROM PUBLIC;
REVOKE ALL ON TABLE artist FROM admin_user;
GRANT ALL ON TABLE artist TO admin_user;
GRANT SELECT ON TABLE artist TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE artist TO operator_user;


--
-- TOC entry 2766 (class 0 OID 0)
-- Dependencies: 189
-- Name: customer; Type: ACL; Schema: public; Owner: admin_user
--

REVOKE ALL ON TABLE customer FROM PUBLIC;
REVOKE ALL ON TABLE customer FROM admin_user;
GRANT ALL ON TABLE customer TO admin_user;
GRANT SELECT ON TABLE customer TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE customer TO operator_user;


--
-- TOC entry 2768 (class 0 OID 0)
-- Dependencies: 187
-- Name: employee; Type: ACL; Schema: public; Owner: admin_user
--

REVOKE ALL ON TABLE employee FROM PUBLIC;
REVOKE ALL ON TABLE employee FROM admin_user;
GRANT ALL ON TABLE employee TO admin_user;
GRANT SELECT ON TABLE employee TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE employee TO operator_user;


--
-- TOC entry 2770 (class 0 OID 0)
-- Dependencies: 180
-- Name: genre; Type: ACL; Schema: public; Owner: admin_user
--

REVOKE ALL ON TABLE genre FROM PUBLIC;
REVOKE ALL ON TABLE genre FROM admin_user;
GRANT ALL ON TABLE genre TO admin_user;
GRANT SELECT ON TABLE genre TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE genre TO operator_user;


--
-- TOC entry 2772 (class 0 OID 0)
-- Dependencies: 191
-- Name: invoice; Type: ACL; Schema: public; Owner: admin_user
--

REVOKE ALL ON TABLE invoice FROM PUBLIC;
REVOKE ALL ON TABLE invoice FROM admin_user;
GRANT ALL ON TABLE invoice TO admin_user;
GRANT SELECT ON TABLE invoice TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE invoice TO operator_user;


--
-- TOC entry 2774 (class 0 OID 0)
-- Dependencies: 193
-- Name: invoice_line; Type: ACL; Schema: public; Owner: admin_user
--

REVOKE ALL ON TABLE invoice_line FROM PUBLIC;
REVOKE ALL ON TABLE invoice_line FROM admin_user;
GRANT ALL ON TABLE invoice_line TO admin_user;
GRANT SELECT ON TABLE invoice_line TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE invoice_line TO operator_user;


--
-- TOC entry 2776 (class 0 OID 0)
-- Dependencies: 178
-- Name: media_type; Type: ACL; Schema: public; Owner: admin_user
--

REVOKE ALL ON TABLE media_type FROM PUBLIC;
REVOKE ALL ON TABLE media_type FROM admin_user;
GRANT ALL ON TABLE media_type TO admin_user;
GRANT SELECT ON TABLE media_type TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE media_type TO operator_user;


--
-- TOC entry 2778 (class 0 OID 0)
-- Dependencies: 184
-- Name: playlist; Type: ACL; Schema: public; Owner: admin_user
--

REVOKE ALL ON TABLE playlist FROM PUBLIC;
REVOKE ALL ON TABLE playlist FROM admin_user;
GRANT ALL ON TABLE playlist TO admin_user;
GRANT SELECT ON TABLE playlist TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE playlist TO operator_user;


--
-- TOC entry 2780 (class 0 OID 0)
-- Dependencies: 185
-- Name: playlist_track; Type: ACL; Schema: public; Owner: admin_user
--

REVOKE ALL ON TABLE playlist_track FROM PUBLIC;
REVOKE ALL ON TABLE playlist_track FROM admin_user;
GRANT ALL ON TABLE playlist_track TO admin_user;
GRANT SELECT ON TABLE playlist_track TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE playlist_track TO operator_user;


--
-- TOC entry 2781 (class 0 OID 0)
-- Dependencies: 182
-- Name: track; Type: ACL; Schema: public; Owner: admin_user
--

REVOKE ALL ON TABLE track FROM PUBLIC;
REVOKE ALL ON TABLE track FROM admin_user;
GRANT ALL ON TABLE track TO admin_user;
GRANT SELECT ON TABLE track TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE track TO operator_user;


--
-- TOC entry 2783 (class 0 OID 0)
-- Dependencies: 197
-- Name: vi_list_sales_by_vendor; Type: ACL; Schema: public; Owner: admin_user
--

REVOKE ALL ON TABLE vi_list_sales_by_vendor FROM PUBLIC;
REVOKE ALL ON TABLE vi_list_sales_by_vendor FROM admin_user;
GRANT ALL ON TABLE vi_list_sales_by_vendor TO admin_user;
GRANT SELECT ON TABLE vi_list_sales_by_vendor TO test_user;


--
-- TOC entry 2784 (class 0 OID 0)
-- Dependencies: 196
-- Name: vi_top20_track_by_media_type; Type: ACL; Schema: public; Owner: admin_user
--

REVOKE ALL ON TABLE vi_top20_track_by_media_type FROM PUBLIC;
REVOKE ALL ON TABLE vi_top20_track_by_media_type FROM admin_user;
GRANT ALL ON TABLE vi_top20_track_by_media_type TO admin_user;
GRANT SELECT ON TABLE vi_top20_track_by_media_type TO test_user;


--
-- TOC entry 2785 (class 0 OID 0)
-- Dependencies: 195
-- Name: vi_top3_track_clients; Type: ACL; Schema: public; Owner: admin_user
--

REVOKE ALL ON TABLE vi_top3_track_clients FROM PUBLIC;
REVOKE ALL ON TABLE vi_top3_track_clients FROM admin_user;
GRANT ALL ON TABLE vi_top3_track_clients TO admin_user;
GRANT SELECT ON TABLE vi_top3_track_clients TO test_user;


--
-- TOC entry 2786 (class 0 OID 0)
-- Dependencies: 194
-- Name: vi_top5_by_genre; Type: ACL; Schema: public; Owner: admin_user
--

REVOKE ALL ON TABLE vi_top5_by_genre FROM PUBLIC;
REVOKE ALL ON TABLE vi_top5_by_genre FROM admin_user;
GRANT ALL ON TABLE vi_top5_by_genre TO admin_user;
GRANT SELECT ON TABLE vi_top5_by_genre TO test_user;


-- Completed on 2016-04-29 11:59:49 BOT

--
-- PostgreSQL database dump complete
--

