import '../models/flower_info.dart';

final Map<String, FlowerInfo> flowerDatabase = {
  "Roses": const FlowerInfo(
    scientificName: "Rosa",
    commonNames: "Rose",
    family: "Rosaceae",
    genus: "Rosa",
    morphology:
        "Woody perennial shrubs or vines with prickles (thorns); leaves are alternate and pinnately compound.",
    toxicity:
        "Generally non-toxic to humans and pets, but thorns may cause physical injury.",
    origin:
        "Primarily native to Asia; also found in Europe, North America, and northwest Africa.",
    funFacts:
        "Red roses symbolize love and passion. Fossils date back over 35 million years.",
  ),

  "Tulip": const FlowerInfo(
    scientificName: "Tulipa",
    commonNames: "Tulip",
    family: "Liliaceae",
    genus: "Tulipa",
    morphology:
        "Perennial bulb plant with thick bluish-green leaves and cup-shaped flowers.",
    toxicity:
        "Toxic to dogs, cats, and horses. Bulbs contain Tulipalin A and B.",
    origin:
        "Native to Central Asia and Turkey; popularized in the Netherlands.",
    funFacts:
        "Tulips caused the famous 17th-century 'Tulip Mania'. Symbolize perfect love.",
  ),

  "Sunflower": const FlowerInfo(
    scientificName: "Helianthus annuus",
    commonNames: "Sunflower, Common Sunflower",
    family: "Asteraceae",
    genus: "Helianthus",
    morphology:
        "Tall annual plants with rough, hairy stems, large, broad leaves, the flower is actually a head (capitulum) of hundreds of tiny individual flowers.",
    toxicity: "Non-toxic to humans and common household pets.",
    origin:
        "Native to North America. They thrive in open, sunny areas and are widely cultivated for oil and seeds.",
    funFacts:
        "Sunflowers exhibit heliotropism, meaning the 'young flower' heads track the sun across the sky. They symbolize loyalty and adoration.",
  ),

  "Daisy": const FlowerInfo(
    scientificName: "Bellis perennis",
    commonNames: "Common Daisy, English Daisy, Lawn Daisy",
    family: "Asteraceae",
    genus: "Bellis",
    morphology:
        "Low-growing herbaceous plant with a rosette of evergreen leaves; flower heads consist of a yellow center (disc florets) surrounded by white petals (ray florets).",
    toxicity:
        "Mildly toxic to cats and dogs; can cause hypersalivation, vomiting, or diarrhea if ingested in large amounts.",
    origin:
        "Native to Western, Central, and Northern Europe; often considered an invasive weed in North American lawns.",
    funFacts:
        "The name 'Daisy' comes from the Old English 'daes eag', meaning 'day’s eye', because the flower head closes at night and opens in the morning.",
  ),

  "Lily": const FlowerInfo(
    scientificName: "Lilium",
    commonNames: "True Lily, Stargazer, Tiger Lily",
    family: "Liliaceae",
    genus: "Lilium",
    morphology:
        "Tall perennials with leafy stems and scaly bulbs; large, prominent flowers often with six segments (tepals) and long, protruding stamens.",
    toxicity:
        "Extremely dangerous to cats. Even a small amount of pollen or water from the vase can cause fatal kidney failure in felines.",
    origin: "Native to temperate areas of the Northern Hemisphere.",
    funFacts:
        "White lilies are often associated with purity and rebirth, frequently used in weddings and funerals.",
  ),

  "Orchid": const FlowerInfo(
    scientificName: "Orchidaceae",
    commonNames: "Orchid, Moth Orchid (Phalaenopsis)",
    family: "Orchidaceae",
    genus: "Phalaenopsis (most common commercial genus)",
    morphology:
        "Known for extreme diversity; flowers usually show bilateral symmetry with a highly modified petal called a 'lip' (labellum) for pollinators.",
    toxicity:
        "Most common household orchids (like Phalaenopsis) are non-toxic to pets.",
    origin:
        "Found on every continent except Antarctica; most cultivated varieties are tropical epiphytes (grow on trees).",
    funFacts:
        "Orchids have the smallest seeds in the world—a single seed pod can hold up to a million seeds. They symbolize luxury, strength, and exotic beauty.",
  ),

  "Carnation": const FlowerInfo(
    scientificName: "Dianthus caryophyllus",
    commonNames: "Carnation, Clove Pink",
    family: "Caryophyllaceae",
    genus: "Dianthus",
    morphology:
        "Herbaceous perennial; features fringed-edged petals and narrow, grey-green leaves. They have a distinct spicy, clove-like fragrance.",
    toxicity:
        "Mildly toxic to dogs and cats, potentially causing gastrointestinal upset or mild dermatitis.",
    origin:
        "Likely native to the Mediterranean region, though long-term cultivation makes the exact origin difficult to pinpoint.",
    funFacts:
        "Carnations are the traditional flower for Mother's Day. In the Victorian 'language of flowers', different colors conveyed different secret messages.",
  ),

  "Dahlia": const FlowerInfo(
    scientificName: "Dahlia pinnata",
    commonNames: "Dahlia",
    family: "Asteraceae",
    genus: "Dahlia",
    morphology:
        "Tuberous perennials; flower heads vary wildly from flat discs to globe-shaped 'pompons'. They are known for their geometric petal arrangements.",
    toxicity:
        "Toxic to dogs and cats; may cause mild skin irritation or digestive upset.",
    origin: "Native to the mountains of Mexico and Central America.",
    funFacts:
        "The Dahlia is the national flower of Mexico. It symbolizes inner strength, creativity, and elegance.",
  ),

  "Hydrangea": const FlowerInfo(
    scientificName: "Hydrangea macrophylla",
    commonNames: "Hydrangea, Hortensia",
    family: "Hydrangeaceae",
    genus: "Hydrangea",
    morphology:
        "Large deciduous shrubs; produces massive 'mophead' or 'lacecap' clusters of flowers.",
    toxicity:
        "Toxic to pets and humans. Contains cyanogenic glycosides, which can cause vomiting and lethargy if eaten.",
    origin: "Native to Japan and parts of Asia and the Americas.",
    funFacts:
        "You can change the color of some hydrangea flowers (from pink to blue) simply by changing the acidity (pH) of the soil. They symbolize gratitude and heartfelt emotion.",
  ),

  "Peony": const FlowerInfo(
    scientificName: "Paeonia",
    commonNames: "Peony",
    family: "Paeoniaceae",
    genus: "Paeonia",
    morphology:
        "Large, often fragrant, multi-petaled blooms that look like ruffled spheres; compound, deeply lobed leaves.",
    toxicity:
        "Mildly toxic to pets; contains 'paeonol', which can cause vomiting if ingested in large quantities.",
    origin: "Native to Asia, Europe, and Western North America.",
    funFacts:
        "Peonies can live for over 100 years if left undisturbed. They are symbols of prosperity, good luck, and a happy marriage.",
  ),

  "Daffodil": const FlowerInfo(
    scientificName: "Narcissus",
    commonNames: "Daffodil, Jonquil, Narcissus",
    family: "Amaryllidaceae",
    genus: "Narcissus",
    morphology:
        "Features a central trumpet-shaped corona (the cup) surrounded by six petal-like tepals. They grow from bulbs and have long, strap-like leaves.",
    toxicity:
        "Toxic to humans and pets. The bulbs are the most poisonous part; ingestion can cause severe vomiting, diarrhea, and even cardiac arrhythmias.",
    origin:
        "Native to meadows and woods in southwestern Europe and North Africa.",
    funFacts:
        "They are the first sign of spring and symbolize rebirth and new beginnings. It is the national flower of Wales.",
  ),

  "Chrysanthemum": const FlowerInfo(
    scientificName: "Chrysanthemum",
    commonNames: "Mum, Chrysanth",
    family: "Asteraceae",
    genus: "Chrysanthemum",
    morphology:
        "Herbaceous perennial plants with deeply lobed, often aromatic leaves. Flower heads come in various forms, including daisy-like, pompon, or 'spider' shapes.",
    toxicity:
        "Toxic to dogs, cats, and horses. They contain pyrethrins, which can cause drooling, vomiting, and loss of coordination.",
    origin:
        "Originally cultivated in China as a flowering herb as far back as the 15th century BC.",
    funFacts:
        "In Japan, the flower is the symbol of the Emperor and the Imperial Family. It symbolizes longevity, joy, and optimism.",
  ),

  "Marigold": const FlowerInfo(
    scientificName: "Tagetes",
    commonNames: "Marigold, French Marigold, African Marigold",
    family: "Asteraceae",
    genus: "Tagetes",
    morphology:
        "Features feathery, pinnate leaves and vibrant orange, yellow, or reddish-brown flower heads. They have a very distinct, pungent scent.",
    toxicity:
        "Generally non-toxic if touched, but the sap may cause mild skin irritation (dermatitis) in some pets and humans.",
    origin:
        "Native to the Americas, stretching from the Southwestern United States into South America.",
    funFacts:
        "Marigolds are famous for 'The Day of the Dead' (Día de los Muertos) in Mexico, where they are used to guide spirits to altars. They also act as natural pest repellents in vegetable gardens.",
  ),

  "Jasmine": const FlowerInfo(
    scientificName: "Jasminum",
    commonNames: "Jasmine, Jessamine",
    family: "Oleaceae",
    genus: "Jasminum",
    morphology:
        "Climbing vines or shrubs with small, star-shaped white or yellow flowers known for their intense, sweet fragrance.",
    toxicity:
        "Most 'True Jasmines' are non-toxic. However, beware of 'Carolina Jasmine' (Gelsemium), which is highly toxic but often confused with true jasmine.",
    origin:
        "Native to tropical and subtropical regions of Eurasia, Africa, and Oceania.",
    funFacts:
        "Jasmine flowers are most fragrant at night after the sun goes down. They symbolize beauty, sensuality, and 'a gift from God'.",
  ),

  "Lavender": const FlowerInfo(
    scientificName: "Lavandula",
    commonNames: "Lavender, English Lavender",
    family: "Lamiaceae",
    genus: "Lavandula",
    morphology:
        "A small evergreen shrub with silvery-green linear leaves and spikes of tiny, fragrant purple flowers.",
    toxicity:
        "Mildly toxic to cats and dogs if ingested in large quantities (contains linalool), though the dried plant is often used safely in small amounts for scent.",
    origin:
        "Native to the Old World, including the Mediterranean, India, and the Middle East.",
    funFacts:
        "Ancient Romans used lavender in their baths for its scent and antiseptic properties. It symbolizes purity, silence, and devotion.",
  ),

  "Hyacinth": const FlowerInfo(
    scientificName: "Hyacinthus orientalis",
    commonNames: "Hyacinth, Garden Hyacinth",
    family: "Asparagaceae",
    genus: "Hyacinthus",
    morphology:
        "Bulbous perennial with thick, upright leaves and a dense, cylindrical spike of bell-shaped, highly fragrant flowers.",
    toxicity:
        "Toxic to humans and pets. The bulbs contain oxalic acid; handling them without gloves can cause skin irritation, and eating them causes severe stomach upset.",
    origin: "Native to the eastern Mediterranean (Turkey, Syria, and Lebanon).",
    funFacts:
        "In Greek mythology, the flower grew from the blood of a youth named Hyacinthus. It symbolizes sincerity and sport/play.",
  ),

  "Iris": const FlowerInfo(
    scientificName: "Iris",
    commonNames: "Iris, Bearded Iris, Blue Flag",
    family: "Iridaceae",
    genus: "Iris",
    morphology:
        "Distinctive flower structure with three upright petals (standards) and three drooping petals (falls). They have sword-like leaves.",
    toxicity:
        "Toxic to dogs and cats. The rhizomes (roots) contain the highest concentration of iridin, which causes gastrointestinal distress.",
    origin: "Found throughout the temperate Northern Hemisphere.",
    funFacts:
        "Named after the Greek goddess Iris, the messenger of the gods and the goddess of the rainbow. It symbolizes wisdom, hope, and trust.",
  ),

  "Gardenia": const FlowerInfo(
    scientificName: "Gardenia jasminoides",
    commonNames: "Gardenia, Cape Jasmine",
    family: "Rubiaceae",
    genus: "Gardenia",
    morphology:
        "Evergreen shrubs with glossy, dark green leaves and creamy-white, waxy flowers that produce a heavy, sweet scent.",
    toxicity:
        "Toxic to dogs, cats, and horses. Ingestion can lead to mild vomiting, diarrhea, or hives.",
    origin:
        "Native to the tropical and subtropical regions of Africa, Asia, Madagascar, and Pacific Islands.",
    funFacts:
        "Gardenias are a favorite for wedding corsages. They symbolize secret love, purity, and joy.",
  ),

  "Snapdragon": const FlowerInfo(
    scientificName: "Antirrhinum majus",
    commonNames: "Snapdragon, Dragon Flower",
    family: "Plantaginaceae",
    genus: "Antirrhinum",
    morphology:
        "Tall spikes of flowers that look like a dragon’s face; the 'mouth' of the flower opens and closes when the sides are gently squeezed.",
    toxicity:
        "Non-toxic to both humans and pets, making them a very safe garden choice.",
    origin:
        "Native to the rocky areas of Europe, the United States, and North Africa.",
    funFacts:
        "When the flower dies and dries, the seed pods look like tiny human skulls. They symbolize both deception and graciousness.",
  ),

  "Azalea": const FlowerInfo(
    scientificName: "Rhododendron (subgenus Azalea)",
    commonNames: "Azalea",
    family: "Ericaceae",
    genus: "Rhododendron",
    morphology:
        "Small to medium-sized shrubs with funnel-shaped, colorful flowers and small, often hairy leaves.",
    toxicity:
        "Highly Toxic. All parts of the plant contain grayanotoxins. Even a few leaves can cause serious digestive, circulatory, and nervous system issues in humans and pets.",
    origin:
        "Native to several continents including Asia, Europe, and North America.",
    funFacts:
        "Known as the 'Royalty of the Garden', they symbolize femininity, temperance, and 'taking care of yourself for me'.",
  ),

  "LilyoftheValley": const FlowerInfo(
    scientificName: "Convallaria majalis",
    commonNames: "Lily of the Valley, May Bells, Mary's Tears",
    family: "Asparagaceae",
    genus: "Convallaria",
    morphology:
        "Low-growing perennial with two large oblong leaves and a one-sided raceme of tiny, white, nodding bell-shaped flowers.",
    toxicity:
        "Extremely Toxic. All parts of the plant, including the water in a vase, contain cardiac glycosides. Ingestion can cause irregular heartbeat, mental confusion, and can be fatal to humans and pets.",
    origin:
        "Native throughout the cool temperate Northern Hemisphere in Asia and Europe.",
    funFacts:
        "It is the national flower of Finland. In the 'language of flowers', it symbolizes the 'return of happiness'. It is also a traditional choice for royal bridal bouquets.",
  ),

  "Aster": const FlowerInfo(
    scientificName: "Aster (often Symphyotrichum)",
    commonNames: "Aster, Michaelmas Daisy, Starfall",
    family: "Asteraceae",
    genus: "Aster",
    morphology:
        "Daisy-like flowers with yellow centers and ray petals in shades of blue, purple, pink, or white. They typically bloom in late summer and autumn.",
    toxicity: "Generally considered non-toxic to humans and pets.",
    origin:
        "Widely distributed throughout the Northern Hemisphere, particularly in North America.",
    funFacts:
        "The name comes from the Ancient Greek word for 'star', referring to the shape of the flower head. They symbolize patience, elegance, and daintiness.",
  ),

  "Hibiscus": const FlowerInfo(
    scientificName: "Hibiscus rosa-sinensis",
    commonNames: "Hibiscus, China Rose, Shoeblackplant",
    family: "Malvaceae",
    genus: "Hibiscus",
    morphology:
        "Large, trumpet-shaped flowers with five or more petals and a long, prominent central stamen. Leaves are glossy green and oval.",
    toxicity:
        "Most common varieties are non-toxic to humans (often used in tea), but can be mildly toxic to dogs and cats if large amounts are ingested, causing digestive upset.",
    origin: "Native to tropical and subtropical regions around the world.",
    funFacts:
        "In many cultures, wearing a hibiscus behind the left ear indicates a woman is married, while the right ear indicates she is single. It symbolizes 'delicate beauty'.",
  ),

  "Geranium": const FlowerInfo(
    scientificName: "Pelargonium (Commonly referred to as Geranium)",
    commonNames: "Geranium, Storksbill, Pelargonium",
    family: "Geraniaceae",
    genus: "Pelargonium",
    morphology:
        "Features clusters of five-petaled flowers and circular, often 'zoned' (patterned) leaves. They are known for their distinct, sometimes lemony or spicy scent.",
    toxicity:
        "Toxic to dogs and cats. Contains geraniol and linalool, which can cause skin irritation, vomiting, and lethargy if eaten.",
    origin: "Native primarily to South Africa.",
    funFacts:
        "Geraniums are popular for window boxes because they are drought-tolerant. They symbolize gentility, determination, and unexpected meetings.",
  ),

  "Zinnia": const FlowerInfo(
    scientificName: "Zinnia elegans",
    commonNames: "Zinnia",
    family: "Asteraceae",
    genus: "Zinnia",
    morphology:
        "Annual plants with stiff, hairy stems and opposite leaves. Flowers come in a massive array of bright colors and can be single, semi-double, or double-flowered.",
    toxicity: "Non-toxic to humans, dogs, cats, and horses.",
    origin: "Native to scrub and dry grasslands of Mexico.",
    funFacts:
        "Zinnias were the first flowers to be grown and bloom in space (on the International Space Station in 2016). They symbolize endurance and lasting friendship.",
  ),

  "Freesia": const FlowerInfo(
    scientificName: "Freesia",
    commonNames: "Freesia",
    family: "Iridaceae",
    genus: "Freesia",
    morphology:
        "Funnel-shaped, highly fragrant flowers that grow in a row along one side of a curved, leafless stem (called a spike).",
    toxicity: "Non-toxic to humans and pets.",
    origin:
        "Native to eastern side of southern Africa, from Kenya down to South Africa.",
    funFacts:
        "Because of their sweet scent, they are a primary ingredient in many perfumes and lotions. They symbolize innocence, trust, and thoughtfulness.",
  ),

  "CallaLily": const FlowerInfo(
    scientificName: "Zantedeschia aethiopica",
    commonNames: "Calla Lily, Arum Lily",
    family: "Araceae",
    genus: "Zantedeschia",
    morphology:
        "Not a 'true' lily. It features a large, waxy, finger-like spadix surrounded by a large, flared petal-like bract called a spathe.",
    toxicity:
        "Toxic to humans and pets. Contains calcium oxalate crystals, which cause immediate burning of the mouth and throat, swelling, and difficulty swallowing.",
    origin: "Native to southern Africa in Lesotho, South Africa, and Eswatini.",
    funFacts:
        "Despite its common use in funerals (symbolizing purification of the soul), it is also a popular wedding flower representing 'magnificent beauty'.",
  ),

  "Magnolia": const FlowerInfo(
    scientificName: "Magnolia",
    commonNames: "Magnolia, Tulip Tree, Bull Bay",
    family: "Magnoliaceae",
    genus: "Magnolia",
    morphology:
        "Large, tough, leathery leaves and massive, fragrant, bowl-shaped flowers. They often lack true petals and sepals, having 'tepals' instead.",
    toxicity: "Generally considered non-toxic to humans and pets.",
    origin: "Found in East and Southeast Asia and the Americas.",
    funFacts:
        "Magnolias are an ancient genus, appearing before bees existed; they evolved to be pollinated by beetles. They symbolize nobility, perseverance, and love of nature.",
  ),

  "Gladiolas": const FlowerInfo(
    scientificName: "Gladiolus",
    commonNames: "Gladiola, Sword Lily",
    family: "Iridaceae",
    genus: "Gladiolus",
    morphology:
        "Tall flower spikes (up to 4 feet) with sword-shaped leaves. Flowers bloom sequentially from the bottom of the spike to the top.",
    toxicity:
        "Toxic to pets. The corms (underground bulb-like structures) are the most toxic part and can cause lethargy and gastrointestinal distress.",
    origin:
        "Native to Asia, Mediterranean Europe, South Africa, and tropical Africa.",
    funFacts:
        "The name comes from the Latin 'gladius', meaning sword. In Ancient Rome, they were associated with gladiators. They symbolize strength of character, faithfulness, and integrity.",
  ),

  "Delphinium": const FlowerInfo(
    scientificName: "Delphinium",
    commonNames: "Delphinium, Larkspur",
    family: "Ranunculaceae",
    genus: "Delphinium",
    morphology:
        "Tall, upright spikes densely packed with spurred flowers. Most famous for their true-blue colors, which are rare in the floral world.",
    toxicity:
        "Highly Toxic. Contains alkaloids that can cause neuromuscular paralysis and death in both humans and livestock if ingested. Even young plants are dangerous.",
    origin:
        "Native throughout the Northern Hemisphere and also on the high mountains of tropical Africa.",
    funFacts:
        "The name comes from the Greek word for 'dolphin', as the flower buds are said to look like a dolphin’s nose. They symbolize cheerfulness and goodwill.",
  ),

  "Pansy": const FlowerInfo(
    scientificName: "Viola tricolor hortensis",
    commonNames: "Pansy, Heartsease",
    family: "Violaceae",
    genus: "Viola",
    morphology:
        "Small, low-growing plants with heart-shaped or rounded leaves. The flowers are famous for their 'faces'—usually featuring a dark central blotch and five overlapping, velvety petals.",
    toxicity:
        "Generally non-toxic to humans and pets. In fact, pansy flowers are often used as edible garnishes in salads.",
    origin:
        "Native to Europe and western Asia; they thrive in cool weather and are often the first flowers planted in spring.",
    funFacts:
        "The name comes from the French word pensée, meaning 'thought'. They symbolize remembrance, thoughtfulness, and 'loving feelings'.",
  ),

  "Begonia": const FlowerInfo(
    scientificName: "Begonia",
    commonNames: "Begonia, Wax Begonia, Tuberous Begonia",
    family: "Begoniaceae",
    genus: "Begonia",
    morphology:
        "Known for asymmetrical, 'lopsided' leaves and fleshy stems. Flowers can be single or double and come in brilliant reds, pinks, and whites.",
    toxicity:
        "Toxic to dogs and cats. The plant contains calcium oxalates; the underground tubers are the most toxic part and can cause intense oral irritation and vomiting.",
    origin:
        "Native to moist subtropical and tropical climates in South and Central America, Africa, and southern Asia.",
    funFacts:
        "In some cultures, begonias symbolize a warning or a sign to be cautious. They are also associated with uniqueness and harmony.",
  ),

  "Camellia": const FlowerInfo(
    scientificName: "Camellia japonica",
    commonNames: "Camellia, Rose of Winter, Japanese Camellia",
    family: "Theaceae",
    genus: "Camellia",
    morphology:
        "Evergreen shrubs with thick, glossy, dark green leaves. The flowers are perfectly symmetrical and look like a cross between a rose and a peony.",
    toxicity: "Non-toxic to humans, dogs, cats, and horses.",
    origin:
        "Native to eastern and southern Asia, specifically China, Japan, and Korea.",
    funFacts:
        "The Camellia sinensis plant is actually what all traditional tea (green, black, oolong) is made from. They symbolize adoration, devotion, and loveliness.",
  ),

  "Anemone": const FlowerInfo(
    scientificName: "Anemone",
    commonNames: "Anemone, Windflower",
    family: "Ranunculaceae",
    genus: "Anemone",
    morphology:
        "Delicate, cup-shaped flowers with a dark, button-like center. They have slender stems and deeply lobed leaves.",
    toxicity:
        "Toxic to humans and pets. If eaten, they cause mouth irritation and stomach upset. The sap can also cause skin blistering or dermatitis.",
    origin:
        "Native to the temperate and subtropical regions of all continents except Antarctica and Australia.",
    funFacts:
        "In Greek mythology, it was believed that the wind blew the flowers open, hence the name 'Windflower'. They symbolize anticipation and protection against evil.",
  ),

  "Clematis": const FlowerInfo(
    scientificName: "Clematis",
    commonNames: "Clematis, Leather Flower, Virgin's Bower",
    family: "Ranunculaceae",
    genus: "Clematis",
    morphology:
        "A woody climbing vine that uses its leaf stalks to wrap around supports. It produces large, star-shaped flowers that often leave behind feathery, decorative seed heads.",
    toxicity:
        "Toxic to dogs, cats, and horses. Ingestion causes drooling, vomiting, and diarrhea. Contact with the vine can also cause skin irritation.",
    origin:
        "Found throughout the temperate regions of the Northern Hemisphere.",
    funFacts:
        "Known as the 'Queen of Climbers', the clematis symbolizes mental beauty, ingenuity, and artifice.",
  ),

  "Poppy": const FlowerInfo(
    scientificName: "Papaver rhoeas",
    commonNames: "Poppy, Corn Poppy, Field Poppy",
    family: "Papaveraceae",
    genus: "Papaver",
    morphology:
        "Features papery, thin petals and a distinct central seed pod. The stems are usually hairy and contain a milky white sap.",
    toxicity:
        "Toxic to pets. Most species contain alkaloids that can cause sedation, slowed heart rate, and digestive issues in dogs and cats.",
    origin:
        "Native to Europe and Asia, often found growing in disturbed soil or open fields.",
    funFacts:
        "The red poppy is a global symbol of remembrance for soldiers who have fallen in war. It also symbolizes sleep, peace, and imagination.",
  ),

  "ForgetMeNot": const FlowerInfo(
    scientificName: "Myosotis",
    commonNames: "Forget-Me-Not, Scorpion Grass",
    family: "Boraginaceae",
    genus: "Myosotis",
    morphology:
        "Tiny, five-petaled flat flowers (usually sky-blue with a yellow eye) that grow in curved clusters. The foliage is typically hairy.",
    toxicity:
        "Mildly toxic. Some species contain pyrrolizidine alkaloids, which can cause liver damage if consumed in large quantities by pets or livestock.",
    origin:
        "Native to Europe and Asia, though widely naturalized in North America.",
    funFacts:
        "Legend says a medieval knight fell into a river while picking these for his lady; he threw them to her, shouting 'Forget me not!' They symbolize true love and memory.",
  ),

  "SweetPea": const FlowerInfo(
    scientificName: "Lathyrus odoratus",
    commonNames: "Sweet Pea",
    family: "Fabaceae (Pea Family)",
    genus: "Lathyrus",
    morphology:
        "A climbing annual with winged stems and clusters of flowers that look like ruffled butterflies. They are highly prized for their intense, honey-sweet fragrance.",
    toxicity:
        "Highly Toxic if ingested. Unlike garden peas, sweet pea seeds are poisonous and can cause a condition called 'lathyrism', which leads to weakness and paralysis.",
    origin: "Native to Sicily, southern Italy, and the Aegean Islands.",
    funFacts:
        "Gregor Mendel used the pea family for his famous genetics experiments. Sweet peas symbolize blissful pleasure, delicate pleasure, and saying 'goodbye'.",
  ),

  "Petunia": const FlowerInfo(
    scientificName: "Petunia",
    commonNames: "Petunia",
    family: "Solanaceae (Nightshade Family)",
    genus: "Petunia",
    morphology:
        "Trumpet-shaped flowers with slightly fuzzy, sticky foliage. They are prolific bloomers and come in almost every color imaginable.",
    toxicity: "Generally non-toxic to humans and common pets.",
    origin:
        "Native to South America. They are sun-loving and very popular for hanging baskets.",
    funFacts:
        "They are closely related to tobacco and tomatoes. In the language of flowers, they can symbolize resentment or anger, but also 'your presence soothes me'.",
  ),

  "Lilac": const FlowerInfo(
    scientificName: "Syringa vulgaris",
    commonNames: "Lilac, Common Lilac",
    family: "Oleaceae (Olive Family)",
    genus: "Syringa",
    morphology:
        "Large deciduous shrubs or small trees. They produce massive, cone-shaped clusters (panicles) of small, four-lobed flowers with a powerful, sweet scent.",
    toxicity: "Non-toxic to humans and pets.",
    origin: "Native to the Balkan Peninsula in Southeastern Europe.",
    funFacts:
        "Lilacs have one of the shortest bloom times (about 3 weeks in spring). They symbolize the first emotions of love, youth, and innocence.",
  ),

  "Amaryllis": const FlowerInfo(
    scientificName: "Hippeastrum",
    commonNames: "Amaryllis, Lily of the Palace",
    family: "Amaryllidaceae",
    genus: "Hippeastrum",
    morphology:
        "Large, fleshy bulbs that produce thick, leafless stems topped with 2–12 large, trumpet-shaped flowers. The leaves are strap-like and usually appear after the flowers.",
    toxicity:
        "Toxic to dogs and cats. Contains lycorine; ingestion of the bulb can cause severe vomiting, diarrhea, tremors, and respiratory distress.",
    origin:
        "Native to tropical and subtropical regions of the Americas (from Argentina to Mexico).",
    funFacts:
        "Though commonly called Amaryllis, 'true' Amaryllis is native to South Africa, while the garden varieties we know are actually Hippeastrum. They symbolize pride, determination, and radiant beauty.",
  ),

  "BachelorGÇÖsButton": const FlowerInfo(
    scientificName: "Centaurea cyanus",
    commonNames: "Cornflower, Bluebottle, Bachelor's Button",
    family: "Asteraceae",
    genus: "Centaurea",
    morphology:
        "Upright annual with slender, grey-green stems and ruffled, intense blue flower heads. The petals have a distinct notched or 'fringed' edge.",
    toxicity: "Non-toxic to humans and pets.",
    origin:
        "Native to Europe; historically found growing as a 'weed' in cornfields (hence the name Cornflower).",
    funFacts:
        "In the past, young men in love would wear this flower in their lapel; if the flower faded quickly, it was a sign that their love was not returned. It symbolizes celibacy, hope in love, and delicacy.",
  ),

  "Cosmos": const FlowerInfo(
    scientificName: "Cosmos bipinnatus",
    commonNames: "Cosmos, Mexican Aster",
    family: "Asteraceae",
    genus: "Cosmos",
    morphology:
        "Features delicate, feathery, thread-like foliage and simple, daisy-like flowers with yellow centers. They are famous for being very easy to grow.",
    toxicity: "Non-toxic to dogs, cats, and humans.",
    origin: "Native to Mexico and the Southern United States.",
    funFacts:
        "The name 'Cosmos' comes from the Greek word for 'order' or 'harmony', referring to the flower's evenly placed, symmetrical petals. They symbolize peace, tranquility, and innocence.",
  ),

  "Foxglove": const FlowerInfo(
    scientificName: "Digitalis purpurea",
    commonNames: "Foxglove, Dead Man’s Bells, Fairy Fingers",
    family: "Plantaginaceae",
    genus: "Digitalis",
    morphology:
        "Tall, dramatic spikes of downward-facing, bell-shaped flowers. The inside of the 'bell' is usually decorated with dark, mottled spots.",
    toxicity:
        "Extremely Toxic. All parts of the plant contain digitalis glycosides. Ingestion can cause fatal heart failure in humans and pets. Even contact with the sap can cause skin irritation.",
    origin: "Native to Europe, western Asia, and northwestern Africa.",
    funFacts:
        "While deadly, the plant is the source of the heart medication Digitalis. In folklore, it was believed that foxes wore the flowers on their paws to silence their movements. It symbolizes insincerity or stateliness.",
  ),

  "BleedingHeart": const FlowerInfo(
    scientificName: "Lamprocapnos spectabilis",
    commonNames: "Bleeding Heart, Dutchman's Breeches",
    family: "Papaveraceae",
    genus: "Lamprocapnos",
    morphology:
        "Features arching, horizontal stems from which several heart-shaped flowers hang. Each flower has a small 'drop' of white at the bottom, making it look like a heart is bleeding.",
    toxicity:
        "Toxic to pets and humans. Contains isoquinoline alkaloids; ingestion causes drooling, vomiting, and even seizures. Handling the plant may cause skin irritation.",
    origin: "Native to Siberia, northern China, Korea, and Japan.",
    funFacts:
        "In the Victorian era, it was a popular symbol of 'speaking from the heart' and passionate, deep love.",
  ),

  "Poinsettia": const FlowerInfo(
    scientificName: "Euphorbia pulcherrima",
    commonNames: "Poinsettia, Christmas Star, Mexican Flame Leaf",
    family: "Euphorbiaceae",
    genus: "Euphorbia",
    morphology:
        "What look like 'petals' are actually modified leaves called bracts. The true flowers are the tiny yellow structures in the very center.",
    toxicity:
        "Mildly Toxic. Contrary to urban legend, they are not usually fatal, but the milky sap can cause mouth irritation, drooling, or vomiting in pets and skin rashes in humans.",
    origin: "Native to Mexico, where they grow as large shrubs or small trees.",
    funFacts:
        "They are named after Joel Roberts Poinsett, the first U.S. Minister to Mexico, who introduced the plant to the U.S. in 1825. They symbolize good cheer and celebration.",
  ),

  "Buttercup": const FlowerInfo(
    scientificName: "Ranunculus repens (Common)",
    commonNames: "Buttercup, Creeping Buttercup",
    family: "Ranunculaceae",
    genus: "Ranunculus",
    morphology:
        "Low-growing wild plants with five shiny, waxy yellow petals. The 'glossy' look is caused by a layer of air between the cells of the petals.",
    toxicity:
        "Toxic to livestock and pets. Contains protoanemonin, which causes mouth blisters and digestive distress. Most animals avoid them because of their bitter taste.",
    origin:
        "Native to Europe, Asia, and northwestern Africa; often considered a stubborn garden weed.",
    funFacts:
        "Children often hold a buttercup under their chin; a yellow reflection is said to mean they like butter. It symbolizes riches, humility, and childishness.",
  ),

  "PersianButtercup": const FlowerInfo(
    scientificName: "Ranunculus asiaticus",
    commonNames: "Ranunculus, Persian Buttercup",
    family: "Ranunculaceae",
    genus: "Ranunculus",
    morphology:
        "Unlike the wild buttercup, these have many layers of paper-thin petals, looking like a cross between a rose and a peony. They grow from claw-like tubers.",
    toxicity:
        "Toxic to humans and pets. Like its wild cousins, it contains acrid sap that causes irritation and digestive issues if ingested.",
    origin:
        "Native to the eastern Mediterranean region, southwestern Asia, and northeastern Africa.",
    funFacts:
        "The name Ranunculus is Latin for 'little frog', likely because many species grow near water. They symbolize radiant charm and 'you are rich in attractions'.",
  ),

  "Viola": const FlowerInfo(
    scientificName: "Viola",
    commonNames: "Viola, Wild Pansy, Johnny Jump Up",
    family: "Violaceae",
    genus: "Viola",
    morphology:
        "Smaller than pansies but very similar in shape. They usually have two petals pointing upward and three pointing downward, often in two-tone colors.",
    toxicity:
        "Generally non-toxic; flowers are edible and often used in cooking or as cake decorations.",
    origin: "Mostly found in the temperate Northern Hemisphere.",
    funFacts:
        "Violas are much hardier than pansies and can survive frosts. They symbolize modesty, faithfulness, and 'you occupy my thoughts'.",
  ),

  "MorningGlory": const FlowerInfo(
    scientificName: "Ipomoea",
    commonNames: "Morning Glory",
    family: "Convolvulaceae",
    genus: "Ipomoea",
    morphology:
        "Fast-growing climbing vines with heart-shaped leaves and trumpet-shaped flowers that unfurl in the morning and curl up by the afternoon.",
    toxicity:
        "Toxic Seeds. The seeds contain LSA (ergoline alkaloids) and can cause hallucinations, nausea, and dilated pupils if ingested by pets or humans.",
    origin: "Native to tropical America and East Asia.",
    funFacts:
        "In some cultures, the Morning Glory represents the fleeting nature of life because the blooms only last for a single day. They symbolize unrequited love and affection.",
  ),
};
