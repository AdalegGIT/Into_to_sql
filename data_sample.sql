--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: animals; Type: TABLE; Schema: public; Owner: natalie
--

CREATE TABLE animals (
    name character varying(255),
    number_of_legs integer,
    flying boolean,
    swimming boolean,
    egg_laying boolean,
    id integer NOT NULL
);


ALTER TABLE animals OWNER TO natalie;

--
-- Name: animals_id_seq; Type: SEQUENCE; Schema: public; Owner: natalie
--

CREATE SEQUENCE animals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE animals_id_seq OWNER TO natalie;

--
-- Name: animals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: natalie
--

ALTER SEQUENCE animals_id_seq OWNED BY animals.id;


--
-- Name: board_games; Type: TABLE; Schema: public; Owner: natalie
--

CREATE TABLE board_games (
    name character varying(255),
    max_players integer,
    min_players integer,
    category character varying(255),
    mins_to_play integer,
    id integer NOT NULL
);


ALTER TABLE board_games OWNER TO natalie;

--
-- Name: board_games_id_seq; Type: SEQUENCE; Schema: public; Owner: natalie
--

CREATE SEQUENCE board_games_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE board_games_id_seq OWNER TO natalie;

--
-- Name: board_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: natalie
--

ALTER SEQUENCE board_games_id_seq OWNED BY board_games.id;


--
-- Name: recipes; Type: TABLE; Schema: public; Owner: natalie
--

CREATE TABLE recipes (
    vegan boolean,
    vegetarian boolean,
    nut_free boolean,
    gluten_free boolean,
    name character varying(255),
    serves integer,
    minutes_required integer,
    description text,
    ingredients text,
    id integer NOT NULL
);


ALTER TABLE recipes OWNER TO natalie;

--
-- Name: recipes_id_seq; Type: SEQUENCE; Schema: public; Owner: natalie
--

CREATE SEQUENCE recipes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE recipes_id_seq OWNER TO natalie;

--
-- Name: recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: natalie
--

ALTER SEQUENCE recipes_id_seq OWNED BY recipes.id;


--
-- Name: robots; Type: TABLE; Schema: public; Owner: natalie
--

CREATE TABLE robots (
    name character varying(255),
    source character varying(255),
    personality character varying(255),
    id integer NOT NULL
);


ALTER TABLE robots OWNER TO natalie;

--
-- Name: robots_id_seq; Type: SEQUENCE; Schema: public; Owner: natalie
--

CREATE SEQUENCE robots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE robots_id_seq OWNER TO natalie;

--
-- Name: robots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: natalie
--

ALTER SEQUENCE robots_id_seq OWNED BY robots.id;


--
-- Name: animals id; Type: DEFAULT; Schema: public; Owner: natalie
--

ALTER TABLE ONLY animals ALTER COLUMN id SET DEFAULT nextval('animals_id_seq'::regclass);


--
-- Name: board_games id; Type: DEFAULT; Schema: public; Owner: natalie
--

ALTER TABLE ONLY board_games ALTER COLUMN id SET DEFAULT nextval('board_games_id_seq'::regclass);


--
-- Name: recipes id; Type: DEFAULT; Schema: public; Owner: natalie
--

ALTER TABLE ONLY recipes ALTER COLUMN id SET DEFAULT nextval('recipes_id_seq'::regclass);


--
-- Name: robots id; Type: DEFAULT; Schema: public; Owner: natalie
--

ALTER TABLE ONLY robots ALTER COLUMN id SET DEFAULT nextval('robots_id_seq'::regclass);


--
-- Data for Name: animals; Type: TABLE DATA; Schema: public; Owner: natalie
--

COPY animals (name, number_of_legs, flying, swimming, egg_laying, id) FROM stdin;
cat	4	f	f	f	1
hammerhead shark	0	f	t	f	2
octopus	8	f	t	t	3
duck	2	t	t	t	4
sheep	4	f	f	f	5
bat	2	t	f	f	6
owl	2	t	f	t	7
cow	4	f	f	f	8
chicken	2	f	f	t	9
whale	0	f	t	f	10
\.


--
-- Name: animals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: natalie
--

SELECT pg_catalog.setval('animals_id_seq', 10, true);


--
-- Data for Name: board_games; Type: TABLE DATA; Schema: public; Owner: natalie
--

COPY board_games (name, max_players, min_players, category, mins_to_play, id) FROM stdin;
Arkham Horror	8	1	strategy	240	1
Dixit	6	3	party	30	2
Carcassonne	5	2	light strategy	45	3
Quarto	2	2	abstract	20	4
7 Wonders	7	2	strategy	30	5
Agricola	5	1	strategy	120	6
Bohnanza	7	2	light strategy	45	7
Cards Against Humanity	30	5	party	30	8
Game of Things	15	2	party	45	9
Sushi Go	5	2	party	15	10
Quixo	4	2	abstract	15	11
7 Wonders	7	2	strategy	30	12
\.


--
-- Name: board_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: natalie
--

SELECT pg_catalog.setval('board_games_id_seq', 12, true);


--
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: natalie
--

COPY recipes (vegan, vegetarian, nut_free, gluten_free, name, serves, minutes_required, description, ingredients, id) FROM stdin;
t	t	f	t	Vietnamese Rice-Noodle Salad	4	15	Mince the garlic with the cilantro and the hot pepper. Transfer the mixture to a bowl, add the lime juice, fish sauce or salt and sugar; stir well. Let the sauce sit for 5 minutes.\nBring a large pot of salted water to a boil. Add the rice noodles; boil them for 2 minutes. Drain well. Rinse the noodles with cold water until they have cooled. Let them drain again.\nCombine the sauce, noodles, carrots, cucumber, mint and Napa cabbage in a large serving bowl. Toss well and serve the salad garnished with the peanuts and mint sprigs.	5 cloves garlic\n1 cup loosely packed chopped cilantro\n1/2 jalapeno pepper, seeded and minced\n3 tablespoons white sugar\n1/4 cup fresh lime juice\n3 tablespoons vegetarian fish sauce\n1 (12 ounce) package dried rice noodles\n2 carrots, julienned\n1 cucumber, halved lengthwise and chopped\n1/4 cup chopped fresh mint\n4 leaves napa cabbage\n1/4 cup unsalted peanuts\n4 sprigs fresh mint	1
t	t	f	f	Couscous with Olives and Sun-Dried Tomato	4	50	Bring 1 1/4 cup vegetable broth and water to a boil in a saucepan, stir in couscous, and mix in salt and black pepper. Reduce heat to low and simmer until liquid is absorbed, about 8 minutes.\nHeat 3 tablespoons olive oil in a skillet over medium-high heat; stir in pine nuts and cook, stirring frequently, until pine nuts smell toasted and are golden brown, about 1 minute. Remove from heat.\nHeat remaining 2 tablespoons olive oil in a saucepan; cook and stir garlic and shallot in the hot oil until softened, about 2 minutes. Stir black olives and sun-dried tomatoes into garlic mixture and cook until heated through, 2 to 3 minutes, stirring often. Slowly pour in 1 cup vegetable broth and bring mixture to a boil. Reduce heat to low and simmer until sauce has reduced, 8 to 10 minutes.\nTransfer couscous to a large serving bowl, mix with sauce, and serve topped with parsley and pine nuts.	1 1/4 cups vegetable broth\n1 1/4 cups water\n2 cups pearl (Israeli) couscous\n1 pinch salt\n1 pinch ground black pepper\n5 tablespoons olive oil, divided\n1/2 cup pine nuts\n4 cloves garlic, minced\n1 shallot, minced\n1/2 cup sliced black olives\n1/3 cup sun-dried tomatoes packed in oil, drained and chopped\n1 cup vegetable broth\n1/4 cup chopped fresh flat-leaf parsley	2
f	t	t	f	Butternut Squash Bake	6	55	Preheat an oven to 425 degrees F (220 degrees C).\nToss the squash, onion, olive oil, 1/2 cup Italian bread crumbs, thyme, and blue cheese in a large mixing bowl. Season with salt and pepper. Pour the mixture into a large baking dish. Sprinkle 1/4 cup bread crumbs over the squash.\nBake in the preheated oven until lightly browned on top, 35 to 40 minutes.	1 (4 pound) butternut squash - peeled, seeded, and cubed\n1/3 yellow onion, minced\n1/4 cup extra-virgin olive oil\n1/2 cup Italian bread crumbs\n1 tablespoon minced fresh thyme\n6 ounces crumbled blue cheese\nsea salt and ground black pepper to taste\n1/4 cup Italian bread crumbs	3
f	t	t	f	Vegetarian Bibimbap	3	50	Heat sesame oil in a large skillet over medium heat; cook and stir carrot and zucchini in the hot oil until vegetables begin to soften, about 5 minutes. Stir in bean sprouts, bamboo shoots, and mushrooms. Cook and stir until carrots are tender, about 5 more minutes. Season to taste with salt and set vegetables aside.\nStir cooked rice, green onions, soy sauce, and black pepper in the same skillet until the rice is hot. In a separate skillet over medium heat, melt butter and gently fry eggs, turning once, until the yolks are still slightly runny but the egg whites are firm, about 3 minutes per egg.\nTo serve, divide hot cooked rice mixture between 3 serving bowls and top each bowl with 1/3 of the vegetable mixture and a fried egg. Serve sweet red chili sauce on the side for mixing into bibimbap.	2 tablespoons sesame oil\n1 cup carrot matchsticks\n1 cup zucchini matchsticks\n1/2 (14 ounce) can bean sprouts, drained\n6 ounces canned bamboo shoots, drained\n1 (4.5 ounce) can sliced mushrooms, drained\n1/8 teaspoon salt to taste\n \n2 cups cooked and cooled rice\n1/3 cup sliced green onions\n2 tablespoons soy sauce\n1/4 teaspoon ground black pepper\n1 tablespoon butter\n3 eggs\n3 teaspoons sweet red chili sauce, or to taste	4
f	t	t	f	French Veggie Loaf	8	105	\nPreheat oven to 375 degrees F (190 degrees C). Grease and flour a 9x5-inch loaf pan.\nHeat 2 tablespoons olive oil in a large skillet over medium heat and cook and stir shallot, garlic, green bell pepper, eggplant, tomato, and zucchini until soft, 10 to 15 minutes. Season vegetables with a sprinkling of salt and black pepper as they cook.\nWhisk self-rising flour with eggs and milk in a large mixing bowl until smoothly combined; whisk in olive oil. Gently fold vegetables into flour mixture; stir in Swiss cheese. Pour batter into the prepared loaf pan.\nBake loaf in the preheated oven until a toothpick inserted in the middle comes out clean, about 45 minutes. Let cool 10 minutes in the pan before removing to finish cooling on a wire rack; slice when cooled.	2 tablespoons olive oil\n1 shallot, chopped\n1 clove garlic, minced\n1/2 green bell pepper, diced\n1/2 eggplant, cubed\n1 tomato, seeded and diced\n1 small zucchini, diced\n \nsalt and pepper to taste\n1 1/4 cups self-rising flour\n3 eggs\n1/3 cup milk\n1/3 cup olive oil\n1 1/2 cups shredded Swiss cheese	5
t	t	t	t	Quinoa and Black Beans	10	50	\nHeat oil in a saucepan over medium heat; cook and stir onion and garlic until lightly browned, about 10 minutes.\nMix quinoa into onion mixture and cover with vegetable broth; season with cumin, cayenne pepper, salt, and pepper. Bring the mixture to a boil. Cover, reduce heat, and simmer until quinoa is tender and broth is absorbed, about 20 minutes.\nStir frozen corn into the saucepan, and continue to simmer until heated through, about 5 minutes; mix in the black beans and cilantro.	1 teaspoon vegetable oil\n1 onion, chopped\n3 cloves garlic, chopped\n3/4 cup quinoa\n1 1/2 cups vegetable broth\n1 teaspoon ground cumin\n \n1/4 teaspoon cayenne pepper\nsalt and ground black pepper to taste\n1 cup frozen corn kernels\n2 (15 ounce) cans black beans, rinsed and drained\n1/2 cup chopped fresh cilantro	6
f	f	t	t	Juicy Roasted Chicken	6	100	Preheat oven to 350 degrees F (175 degrees C).\nPlace chicken in a roasting pan, and season generously inside and out with salt and pepper. Sprinkle inside and out with onion powder. Place 3 tablespoons margarine in the chicken cavity. Arrange dollops of the remaining margarine around the chicken's exterior. Cut the celery into 3 or 4 pieces, and place in the chicken cavity.\nBake uncovered 1 hour and 15 minutes in the preheated oven, to a minimum internal temperature of 180 degrees F (82 degrees C). Remove from heat, and baste with melted margarine and drippings. Cover with aluminum foil, and allow to rest about 30 minutes before serving.	1 (3 pound) whole chicken, giblets removed\nsalt and black pepper to taste\n1 tablespoon onion powder, or to taste\n1/2 cup margarine, divided\n1 stalk celery, leaves removed	7
f	t	t	t	Garlic Green Beans	5	25	In a large skillet over medium heat, melt butter with olive oil; add garlic, and cook until lightly browned, stirring frequently. Stir in green beans, and season with salt and pepper. Cook until beans are tender, about 10 minutes. Remove from heat, and sprinkle with Parmesan cheese.	1 tablespoon butter\n3 tablespoons olive oil\n1 medium head garlic - peeled and sliced\n \n2 (14.5 ounce) cans green beans, drained\nsalt and pepper to taste\n1/4 cup grated Parmesan cheese	8
f	f	t	t	Stout Slow Cooker Corned Beef and Veggies	16	390	1 Pour 1 bottle Irish stout beer into a slow cooker.\nRinse corned beef brisket and pat dry. Rub with brown sugar, including the bottom, and gently place brisket into the slow cooker with the stout beer.\nArrange sweet potatoes, cabbage, onion, carrots, and red potatoes on and around the brisket in the slow cooker.\nPour remaining 1/2 bottle Irish stout beer on and around brisket and vegetables to moisten the brown sugar. Cover the cooker and cook on Low until corned beef is tender, 6 to 8 hours. Allow brisket to stand 5 minutes before slicing.	1 1/2 (12 fluid ounce) cans or bottles Irish stout beer (such as Guinness(R)), divided\n1 (4 pound) corned beef brisket\n1 1/2 cups brown sugar\n3 sweet potatoes, cut into chunks\n \n1 head cabbage, cored and coarsely chopped\n2 large sweet onions, chopped\n6 large carrots, chopped\n3 red potatoes, cut into chunks	9
\.


--
-- Name: recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: natalie
--

SELECT pg_catalog.setval('recipes_id_seq', 9, true);


--
-- Data for Name: robots; Type: TABLE DATA; Schema: public; Owner: natalie
--

COPY robots (name, source, personality, id) FROM stdin;
GLaDOS	Portal	passive-aggressive	1
WALL-E	WALL-E	curious	2
Marvin	The Hitchhiker's Guide to the Galaxy	pessimistic	3
C3PO	Star Wars	anxious	4
Mr. Butlertron	Clone High	compassionate	5
Ava	Ex Machina	clever	6
Deep Thought	The Hitchhiker's Guide to the Galaxy	thorough	7
R2D2	Star Wars	loyal	8
\.


--
-- Name: robots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: natalie
--

SELECT pg_catalog.setval('robots_id_seq', 8, true);


--
-- Name: animals animals_pkey; Type: CONSTRAINT; Schema: public; Owner: natalie
--

ALTER TABLE ONLY animals
    ADD CONSTRAINT animals_pkey PRIMARY KEY (id);


--
-- Name: board_games board_games_pkey; Type: CONSTRAINT; Schema: public; Owner: natalie
--

ALTER TABLE ONLY board_games
    ADD CONSTRAINT board_games_pkey PRIMARY KEY (id);


--
-- Name: recipes recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: natalie
--

ALTER TABLE ONLY recipes
    ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);


--
-- Name: robots robots_pkey; Type: CONSTRAINT; Schema: public; Owner: natalie
--

ALTER TABLE ONLY robots
    ADD CONSTRAINT robots_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

