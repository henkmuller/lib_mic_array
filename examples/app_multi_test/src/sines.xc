#include "sines.h"

int samples[NSAMPLES] = {
    0 ,
    131480588 ,
    259152929 ,
    379328842 ,
    488556243 ,
    583727273 ,
    662174885 ,
    721754699 ,
    760909442 ,
    778713860 ,
    774898722 ,
    749853225 ,
    704605868 ,
    640784598 ,
    560557751 ,
    466557949 ,
    361791691 ,
    249537843 ,
    133238596 ,
    16386668 ,
    -97587360 ,
    -205423761 ,
    -304134768 ,
    -391094739 ,
    -464116481 ,
    -521511326 ,
    -562131186 ,
    -585391465 ,
    -591274389 ,
    -580313018 ,
    -553556895 ,
    -512520901 ,
    -459119475 ,
    -395588839 ,
    -324400235 ,
    -248167470 ,
    -169552192 ,
    -91170343 ,
    -15503117 ,
    55184472 ,
    118914649 ,
    174055244 ,
    219363569 ,
    254014556 ,
    277612554 ,
    290186774 ,
    292171003 ,
    284368783 ,
    267905759 ,
    244171375 ,
    214752430 ,
    181361279 ,
    145761603 ,
    109694702 ,
    74809181 ,
    42596711 ,
    14336256 ,
    -8951244 ,
    -26536170 ,
    -38000450 ,
    -43244222 ,
    -42478953 ,
    -36207622 ,
    -25193018 ,
    -10415738 ,
    6976214 ,
    25723970 ,
    44518024 ,
    62059598 ,
    77120553 ,
    88599380 ,
    95570984 ,
    97328256 ,
    93413808 ,
    83640634 ,
    68100963 ,
    47163041 ,
    21456084 ,
    -8155880 ,
    -40610096 ,
    -74689521 ,
    -109073737 ,
    -142394148 ,
    -173291186 ,
    -200471113 ,
    -222760093 ,
    -239153304 ,
    -248857082 ,
    -251322405 ,
    -246268351 ,
    -233694632 ,
    -213882707 ,
    -187385494 ,
    -155006131 ,
    -117766710 ,
    -76868291 ,
    -33643883 ,
    10493668 ,
    54106738 ,
    95788637 ,
    134217727 ,
    168207721 ,
    196752112 ,
    219060973 ,
    234588617 ,
    243051065 ,
    244432641 ,
    238981496 ,
    227194308 ,
    209790866 ,
    187679658 ,
    161915960 ,
    133654242 ,
    104096923 ,
    74441688 ,
    45829607 ,
    19296301 ,
    -4271773 ,
    -24174018 ,
    -39923777 ,
    -51266610 ,
    -58187903 ,
    -60909498 ,
    -59875413 ,
    -55727259 ,
    -49270356 ,
    -41431987 ,
    -33213578 ,
    -25638850 ,
    -19700220 ,
    -16305797 ,
    -16229354 ,
    -20065544 ,
    -28192452 ,
    -40743295 ,
    -57588720 ,
    -78330726 ,
    -102308781 ,
    -128618176 ,
    -156140167 ,
    -183582939 ,
    -209531958 ,
    -232507858 ,
    -251029644 ,
    -263680726 ,
    -269175120 ,
    -266421089 ,
    -254579500 ,
    -233114355 ,
    -201833179 ,
    -160915294 ,
    -110926444 ,
    -52818733 ,
    12084617 ,
    82119598 ,
    155326146 ,
    229506032 ,
    302292110 ,
    371226653 ,
    433846097 ,
    487769213 ,
    530785523 ,
    560940672 ,
    576615543 ,
    576596017 ,
    560130589 ,
    526973424 ,
    477410912 ,
    412270366 ,
    332910103 ,
    241190828 ,
    139428910 ,
    30332795 ,
    -83075557 ,
    -197551773 ,
    -309729754 ,
    -416228638 ,
    -513762432 ,
    -599248570 ,
    -669911627 ,
    -723378557 ,
    -757762054 ,
    -771729034 ,
    -764551685 ,
    -736139163 ,
    -687048618 ,
    -618474976 ,
    -532219618 ,
    -430638834 ,
    -316573645 ,
    -193263213 ,
    -64244698 ,
    66757182 ,
    195947174 ,
    319579199 ,
    434074737 ,
    536135879 ,
    622849268 ,
    691777409 ,
    741034296 ,
    769342836 ,
    776072155 ,
    761253618 ,
    725575071 ,
    670353608 ,
    597487890 ,
    509391732 ,
    408911341 ,
    299229108 ,
    183757326 ,
    66025527 ,
    -50434690 ,
    -162203377 ,
    -266080663 ,
    -359186235 ,
    -439046594 ,
    -503667238 ,
    -551587519 ,
    -581916503 ,
    -594348902 ,
    -589160829 ,
    -567185826 ,
    -529772363 ,
    -478724575 ,
    -416228639 ,
    -344767613 ,
    -267027982 ,
    -185801359 ,
    -103884933 ,
    -23984242 ,
    51378296 ,
    119945936 ,
    179798441 ,
    229408888 ,
    267684684 ,
    293991636 ,
    308160561 ,
    310476590 ,
    301651933 ,
    282783500 ,
    255297289 ,
    220881931 ,
    181414122 ,
    138878959 ,
    95288304 ,
    52600345 ,
    12643390 ,
    -22953240 ,
    -52818733 ,
    -75888586 ,
    -91439085 ,
    -99107377 ,
    -98896627 ,
    -91166348 ,
    -76608558 ,
    -56210955 ,
    -31208802 ,
    -3027621 ,
    26780880 ,
    56606994 ,
    84852516 ,
    109998785 ,
    130670562 ,
    145693242 ,
    154141197 ,
    155375445 ,
    149069235 ,
    135220699 ,
    114152183 ,
    86496447 ,
    53170411 ,
    15337637 ,
    -25638850 ,
    -68251436 ,
    -110908196 ,
    -151996158 ,
    -189944987 ,
    -223288565 ,
    -250722029 ,
    -271152069 ,
    -283738534 ,
    -287925801 ,
    -283462757 ,
    -270410727 ,
    -249139154 ,
    -220309345 ,
    -184847051 ,
    -143905100 ,
    -98817682 ,
    -51048205 ,
    -2132873 ,
    46377714 ,
    92976580 ,
    136255694 ,
    174956432 ,
    208013207 ,
    234588617 ,
    254098831 ,
    266228321 ,
    270933522 ,
    268435456 ,
    259201789 ,
    243919269 ,
    223457834 ,
    198828040 ,
    171133732 ,
    141522029 ,
    111132821 ,
    81049961 ,
    52256245 ,
    25594107 ,
    1733671 ,
    -18850480 ,
    -35892916 ,
    -49340772 ,
    -59346942 ,
    -66253385 ,
    -70565385 ,
    -72917940 ,
    -74035879 ,
    -74689521 ,
    -75647954 ,
    -77632089 ,
    -81269717 ,
    -87054686 ,
    -95312188 ,
    -106171896 ,
    -119550356 ,
    -135143667 ,
    -152431039 ,
    -170689358 ,
    -189018399 ,
    -206375857 ,
    -221620928 ,
    -233564768 ,
    -241025808 ,
    -242887662 ,
    -238157184 ,
    -226020153 ,
    -205892105 ,
    -177461950 ,
    -140726252 ,
    -96012379 ,
    -43989102 ,
    14336256 ,
    77634569 ,
    144285388 ,
    212420503 ,
    279979331 ,
    344774430 ,
    404564961 ,
    457135540 ,
    500377683 ,
    532370807 ,
    551459743 ,
    556325727 ,
    546048010 ,
    520153510 ,
    478652309 ,
    422057268 ,
    351386574 ,
    268148639 ,
    174309415 ,
    72242808 ,
    -35334463 ,
    -145441667 ,
    -254924026 ,
    -360550980 ,
    -459119474 ,
    -547558758 ,
    -623033103 ,
    -683038819 ,
    -725492116 ,
    -748804617 ,
    -751943717 ,
    -734475492 ,
    -696588406 ,
    -639096763 ,
    -563423508 ,
    -471562716 ,
    -366022817 ,
    -249752286 ,
    -126050145 ,
    1535818 ,
    129319765 ,
    253593782 ,
    370745219 ,
    477371445 ,
    570388139 ,
    647127423 ,
    705422513 ,
    743676002 ,
    760909442 ,
    756792557 ,
    731651093 ,
    686453076 ,
    622773972 ,
    542741994 ,
    448965462 ,
    344444755 ,
    232471925 ,
    116521436 ,
    135811 ,
    -113189887 ,
    -220120786 ,
    -317588319 ,
    -402886144 ,
    -473752675 ,
    -528437517 ,
    -565749694 ,
    -585086190 ,
    -586440074 ,
    -570388140 ,
    -538058797 ,
    -491081543 ,
    -431520092 ,
    -361791692 ,
    -284575702 ,
    -202714805 ,
    -119112471 ,
    -36630368 ,
    42010609 ,
    114322236 ,
    178130573 ,
    231644557 ,
    273509302 ,
    302842446 ,
    319252511 ,
    322838933 ,
    314174065 ,
    294268156 ,
    264518878 ,
    226647552 ,
    182624674 ,
    134587704 ,
    84754319 ,
    35334465 ,
    -11555457 ,
    -53973090 ,
    -90222330 ,
    -118914649 ,
    -139017386 ,
    -149887360 ,
    -151288754 ,
    -143394826 ,
    -126773622 ,
    -102358472 ,
    -71404618 ,
    -35433836 ,
    3830647 ,
    44536308 ,
    84777673 ,
    122673851 ,
    156444250 ,
    184479558 ,
    205405311 ,
    218135667 ,
    221915409 ,
    216348701 ,
    201413602 ,
    177461950 ,
    145204755 ,
    105683831 ,
    60230877 ,
    10415738 ,
    -42014072 ,
    -95200178 ,
    -147243825 ,
    -196277325 ,
    -240533704 ,
    -278411911 ,
    -308535149 ,
    -329800180 ,
    -341415832 ,
    -342929374 ,
    -334239916 ,
    -315598498 ,
    -287595038 ,
    -251132859 ,
    -207391927 ,
    -157782402 ,
    -103890429 ,
    -47418383 ,
    9878034 ,
    66253385 ,
    120034291 ,
    169677095 ,
    213819224 ,
    251322404 ,
    281306209 ,
    303170840 ,
    316608509 ,
    321603222 ,
    318419283 ,
    307579241 ,
    289832456 ,
    266115808 ,
    237508355 ,
    205182001 ,
    170350316 ,
    134217728 ,
    97931232 ,
    62536627 ,
    28941050 ,
    -2116693 ,
    -30086899 ,
    -54620109 ,
    -75568344 ,
    -92976580 ,
    -107065064 ,
    -118203449 ,
    -126878102 ,
    -133654241 ,
    -139134781 ,
    -143917896 ,
    -148555409 ,
    -153514029 ,
    -159141377 ,
    -165638512 ,
    -173040387 ,
    -181205313 ,
    -189814119 ,
    -198379241 ,
    -206263539 ,
    -212708195 ,
    -216868596 ,
    -217856751 ,
    -214788445 ,
    -206833073 ,
    -193263945 ,
    -173506734 ,
    -147183797 ,
    -114152184 ,
    -74533349 ,
    -28732913 ,
    22550861 ,
    78330725 ,
    137346638 ,
    198094383 ,
    258865968 ,
    317800666 ,
    372945109 ,
    422320389 ,
    463993809 ,
    496152649 ,
    517177144 ,
    525709829 ,
    520718454 ,
    501549811 ,
    467972133 ,
    420204034 ,
    358928469 ,
    285290658 ,
    200879549 ,
    107692934 ,
    8087006 ,
    -95288302 ,
    -199566307 ,
    -301750443 ,
    -398808237 ,
    -487769212 ,
    -565823380 ,
    -630416880 ,
    -679341344 ,
    -710813745 ,
    -723543741 ,
    -716785955 ,
    -690375078 ,
    -644742291 ,
    -580912127 ,
    -500479568 ,
    -405567865 ,
    -298768253 ,
    -183063397 ,
    -61736967 ,
    61727729 ,
    183756712 ,
    300798265 ,
    409436038 ,
    506498474 ,
    589160828 ,
    655036252 ,
    702252825 ,
    729513827 ,
    736139163 ,
    722086476 ,
    687951184 ,
    634945420 ,
    564856563 ,
    479986797 ,
    383075746 ,
    277208865 ,
    165714742 ,
    52054850 ,
    -60290459 ,
    -167935782 ,
    -267700422 ,
    -356710314 ,
    -432488668 ,
    -493032272 ,
    -536870911 ,
    -563107989 ,
    -571441086 ,
    -562161919 ,
    -536135880 ,
    -494762089 ,
    -439915524 ,
    -373873483 ,
    -299229108 ,
    -218795185 ,
    -135501736 ,
    -52291112 ,
    27985649 ,
    102667511 ,
    169373703 ,
    226082427 ,
    271195314 ,
    303585495 ,
    322627763 ,
    328209949 ,
    320725373 ,
    301046873 ,
    270483623 ,
    230722552 ,
    183756715 ,
    131803448 ,
    77215452 ,
    22388208 ,
    -30332794 ,
    -78741559 ,
    -120854504 ,
    -154983794 ,
    -179798441 ,
    -194371030 ,
    -198208476 ,
    -191265834 ,
    -173942833 ,
    -147063439 ,
    -111839402 ,
    -69819334 ,
    -22825366 ,
    27120090 ,
    77874616 ,
    127259993 ,
    173147150 ,
    213538607 ,
    246645348 ,
    270955263 ,
    285290657 ,
    288852752 ,
    281251617 ,
    262520529 ,
    233114356 ,
    193892151 ,
    146084768 ,
    91248814 ,
    31208803 ,
    -32010235 ,
    -96257088 ,
    -159332795 ,
    -219070243 ,
    -273411936 ,
    -320483093 ,
    -358657407 ,
    -386613121 ,
    -403377468 ,
    -408357975 ,
    -401359653 ,
    -382587640 ,
    -352635401 ,
    -312459151 ,
    -263339662 ,
    -206833074 ,
    -144712730 ,
    -78904336 ,
    -11416994 ,
    55727258 ,
    120562762 ,
    181245819 ,
    236114210 ,
    283738533 ,
    322963658 ,
    352938965 ,
    373136528 ,
    383356882 ,
    383722497 ,
    374659583 ,
    356869266 ,
    331289606 ,
    299050229 ,
    261421613 ,
    219761239 ,
    175458876 ,
    129883259 ,
    84332307 ,
    39988816 ,
    -2116692 ,
    -41134665 ,
    -76415789 ,
    -107520370 ,
    -134217727 ,
    -156475986 ,
    -174443060 ,
    -188419976 ,
    -198828040 ,
    -206171590 ,
    -210998237 ,
    -213858623 ,
    -215267689 ,
    -215669397 ,
    -215406638 ,
    -214697837 ,
    -213621443 ,
    -212109106 ,
    -209947966 ,
    -206792011 ,
    -202182070 ,
    -195573568 ,
    -186370799 ,
    -173966144 ,
    -157782402 ,
    -137316211 ,
    -112180442 ,
    -82143435 ,
    -47163042 ,
    -7413614 ,
    36695687 ,
    84512498 ,
    135143666 ,
    187468896 ,
    240165566 ,
    291744200 ,
    340593584 ,
    385034079 ,
    423377299 ,
    453989973 ,
    475359586 ,
    486159207 ,
    485308893 ,
    472031059 ,
    445897406 ,
    406865206 ,
    355301119 ,
    291991127 ,
    218135669 ,
    135329597 ,
    45527143 ,
    -49007350 ,
    -145761601 ,
    -242048627 ,
    -335088751 ,
    -422097681 ,
    -500377682 ,
    -567408664 ,
    -620935950 ,
    -659051528 ,
    -680265738 ,
    -683566661 ,
    -668464840 ,
    -635021434 ,
    -583858499 ,
    -516150663 ,
    -433598155 ,
    -338381763 ,
    -233100993 ,
    -120697287 ,
    -4364715 ,
    112548955 ,
    226647549 ,
    334594591 ,
    433220571 ,
    519625666 ,
    591274387 ,
    646078814 ,
    682467508 ,
    699437634 ,
    696588406 ,
    674134621 ,
    632899717 ,
    574288518 ,
    500240546 ,
    413165438 ,
    315862677 ,
    211428348 ,
    103152159 ,
    -5591758 ,
    -111456478 ,
    -211232491 ,
    -301952682 ,
    -380988468 ,
    -446133772 ,
    -495673977 ,
    -528437517 ,
    -543828391 ,
    -541838562 ,
    -523039924 ,
    -488556244 ,
    -440016193 ,
    -379489254 ,
    -309406897 ,
    -232471925 ,
    -151559294 ,
    -69612019 ,
    10464085 ,
    85903058 ,
    154175167 ,
    213073612 ,
    260788509 ,
    295965593 ,
    317747670 ,
    325797451 ,
    320301120 ,
    301952685 ,
    271919844 ,
    231792804 ,
    183518069 ,
    129319768 ,
    71611536 ,
    12902274 ,
    -44300680 ,
    -97587359 ,
    -144736410 ,
    -183798444 ,
    -213168431 ,
    -231644557 ,
    -238471444 ,
    -233366238 ,
    -216526710 ,
    -188621205 ,
    -150760914 ,
    -104455626 ,
    -51554713 ,
    5824371 ,
    65377348 ,
    124701033 ,
    181384633 ,
    233100990 ,
    277694410 ,
    313261830 ,
    338224354 ,
    351386573 ,
    351981552 ,
    339699892 ,
    314701907 ,
    277612555 ,
    229499425 ,
    171834682 ,
    106442477 ,
    35433837 ,
    -38868503 ,
    -114012515 ,
    -187503474 ,
    -256891578 ,
    -319857401 ,
    -374292088 ,
    -418369476 ,
    -450607590 ,
    -469917433 ,
    -475637441 ,
    -467552556 ,
    -445897406 ,
    -411343709 ,
    -364972571 ,
    -308232901 ,
    -242887664 ,
    -170950094 ,
    -94612354 ,
    -16169327 ,
    62059596 ,
    137807901 ,
    208935701 ,
    273497290 ,
    329800179 ,
    376453689 ,
    412405581 ,
    436965717 ,
    449816225 ,
    451008189 ,
    440945390 ,
    420356093 ,
    390254327 ,
    351892452 ,
    306707123 ,
    256260919 ,
    202182071 ,
    146104662 ,
    89611645 ,
    34182800 ,
    -18850479 ,
    -68342042 ,
    -113358308 ,
    -153195356 ,
    -187385493 ,
    -215693481 ,
    -238103032 ,
    -254794598 ,
    -266115807 ,
    -272546212 ,
    -274658209 ,
    -273076117 ,
    -268435456 ,
    -261344384 ,
    -252349158 ,
    -241905215 ,
    -230355230 ,
    -217915124 ,
    -204668629 ,
    -190570609 ,
    -175458875 ,
    -159073888 ,
    -141085290 ,
    -121123921 ,
    -98817682 ,
    -73829385 ,
    -45894635 ,
    -14857743 ,
    19296300 ,
    56415575 ,
    96162303 ,
    138002528 ,
    181205312 ,
    224851976 ,
    267855448 ,
    308989340 ,
    346925923 ,
    380281747 ,
    407669282 ,
    427752610 ,
    439304997 ,
    441265969 ,
    432795473 ,
    413322751 ,
    382587640 ,
    340672304 ,
    288021653 ,
    225451162 ,
    154141199 ,
    75617528 ,
    -8281851 ,
    -95452815 ,
    -183582937 ,
    -270219306 ,
    -352844179 ,
    -428955950 ,
    -496152648 ,
    -552215000 ,
    -595186037 ,
    -623444255 ,
    -635767539 ,
    -631385284 ,
    -610016565 ,
    -571892634 ,
    -517762583 ,
    -448881573 ,
    -366981674 ,
    -274225961 ,
    -173147154 ,
    -66572647 ,
    42461702 ,
    150806212 ,
    255297286 ,
    352859213 ,
    440604347 ,
    515928191 ,
    576596016 ,
    620817938 ,
    647309746 ,
    655337219 ,
    644742290 ,
    615949985 ,
    569955777 ,
    508293667 ,
    432985981 ,
    346476550 ,
    251549499 ,
    151236437 ,
    48715212 ,
    -52796241 ,
    -150147297 ,
    -240359520 ,
    -320725371 ,
    -388897297 ,
    -442964085 ,
    -481511803 ,
    -503667238 ,
    -509122310 ,
    -498138653 ,
    -471532268 ,
    -430638835 ,
    -377260996 ,
    -313599537 ,
    -242171007 ,
    -165714743 ,
    -87092708 ,
    -9185749 ,
    65209980 ,
    133482694 ,
    193297162 ,
    242676137 ,
    280068106 ,
    304398987 ,
    315105965 ,
    312152347 ,
    296022966 ,
    267700425 ,
    228623136 ,
    180626785 ,
    125871460 ,
    66757185 ,
    5831020 ,
    -54310794 ,
    -111122039 ,
    -162203376 ,
    -205393312 ,
    -238849912 ,
    -261120286 ,
    -271195314 ,
    -268547638 ,
    -253151555 ,
    -225484148 ,
    -186507646 ,
    -137633722 ,
    -80671093 ,
    -17758387 ,
    48715207 ,
    116198574 ,
    182073286 ,
    243750744 ,
    298768249 ,
    344880512 ,
    380143243 ,
    402985818 ,
    412270365 ,
    407335196 ,
    388021008 ,
    354678987 ,
    308160563 ,
    249789242 ,
    181315612 ,
    104857194 ,
    22825367 ,
    -62157947 ,
    -147350822 ,
    -229985793 ,
    -307364877 ,
    -376951758 ,
    -436457879 ,
    -483919428 ,
    -517762581 ,
    -536854775 ,
    -540540356 ,
    -528659483 ,
    -501549812 ,
    -460031105 ,
    -405373508 ,
    -339250838 ,
    -263680728 ,
    -180953931 ,
    -93555444 ,
    -4080357 ,
    84852513 ,
    170686133 ,
    251006883 ,
    323619547 ,
    386613120 ,
    438415325 ,
    477834182 ,
    504085453 ,
    516805367 ,
    516048552 ,
    502271682 ,
    476303827 ,
    439304999 ,
    392714754 ,
    338193076 ,
    277555948 ,
    212708198 ,
    145576191 ,
    78042920 ,
    11887814 ,
    -51266608 ,
    -109999492 ,
    -163126433 ,
    -209723376 ,
    -249139153 ,
    -280996694 ,
    -305183373 ,
    -321831407 ,
    -331289606 ,
    -334088086 ,
    -330897821 ,
    -322487040 ,
    -309676603 ,
    -293296410 ,
    -274144838 ,
    -252952982 ,
    -230355231 ,
    -206867358 ,
    -182872950 ,
    -158618583 ,
    -134217728 ,
    -109662966 ,
    -84845679 ,
    -59582048 ,
    -33643884 ,
    -6792575 ,
    21185705 ,
    50445470 ,
    81049960 ,
    112943594 ,
    145930428 ,
    179659978 ,
    213621442 ,
    247146963 ,
    279424174 ,
    309517812 ,
    336399797 ,
    358986719 ,
    376183329 ,
    386930309 ,
    390254326 ,
    385318235 ,
    371469182 ,
    348282388 ,
    315598499 ,
    273552568 ,
    222593052 ,
    163489526 ,
    97328258 ,
    25495270 ,
    -50353033 ,
    -128331047 ,
    -206375855 ,
    -282308276 ,
    -353901089 ,
    -418952114 ,
    -475359584 ,
    -521197064 ,
    -554785100 ,
    -574756860 ,
    -580115134 ,
    -570278358 ,
    -545113650 ,
    -504955292 ,
    -450607593 ,
    -383331622 ,
    -304815883 ,
    -217131603 ,
    -122673855 ,
    -24090327 ,
    75800010 ,
    174095656 ,
    267905756 ,
    354444496 ,
    431123418 ,
    495638375 ,
    546048008 ,
    580840859 ,
    598988631 ,
    599983576 ,
    583858498 ,
    551188521 ,
    503074364 ,
    441107565 ,
    367318721 ,
    284110439 ,
    194177246 ,
    100415210 ,
    5824375 ,
    -86592567 ,
    -173931830 ,
    -253486712 ,
    -322838931 ,
    -379939860 ,
    -423178768 ,
    -451435609 ,
    -464116481 ,
    -461170455 ,
    -443087185 ,
    -410875366 ,
    -366022817 ,
    -310439637 ,
    -246386468 ,
    -176390490 ,
    -103152159 ,
    -29446099 ,
    41980269 ,
    108506689 ,
    167734954 ,
    217575317 ,
    256321241 ,
    282709812 ,
    295965594 ,
    295826368 ,
    282549823 ,
    256900971 ,
    220120789 ,
    173877240 ,
    120200515 ,
    61404874 ,
    2 ,
    -61404870 ,
    -120200511 ,
    -173877236 ,
    -220120786 ,
    -256900969 ,
    -282549821 ,
    -295826368 ,
    -295965594 ,
    -282709813 ,
    -256321244 ,
    -217575320 ,
    -167734958 ,
    -108506693 ,
    -41980274 ,
    29446094 ,
    103152154 ,
    176390485 ,
    246386464 ,
    310439633 ,
    366022814 ,
    410875363 ,
    443087184 ,
    461170455 ,
    464116482 ,
    451435611 ,
    423178770 ,
    379939863 ,
    322838935 ,
    253486717 ,
    173931836 ,
    86592573 ,
    -5824369 ,
    -100415204 ,
    -194177240 ,
    -284110433 ,
    -367318716 ,
    -441107560 ,
    -503074360 ,
    -551188518 ,
    -583858497 ,
    -599983575 ,
    -598988632 ,
    -580840860 ,
    -546048011 ,
    -495638379 ,
    -431123423 ,
    -354444502 ,
    -267905763 ,
    -174095663 ,
    -75800017 ,
    24090320 ,
    122673848 ,
    217131597 ,
    304815878 ,
    383331616 ,
    450607589 ,
    504955289 ,
    545113648 ,
    570278357 ,
    580115133 ,
    574756861 ,
    554785102 ,
    521197067 ,
    475359588 ,
    418952118 ,
    353901094 ,
    282308281 ,
    206375860 ,
    128331052 ,
    50353038 ,
    -25495265 ,
    -97328254 ,
    -163489522 ,
    -222593049 ,
    -273552564 ,
    -315598496 ,
    -348282386 ,
    -371469181 ,
    -385318234 ,
    -390254326 ,
    -386930310 ,
    -376183330 ,
    -358986720 ,
    -336399799 ,
    -309517814 ,
    -279424176 ,
    -247146965 ,
    -213621444 ,
    -179659980 ,
    -145930431 ,
    -112943596 ,
    -81049962 ,
    -50445472 ,
    -21185707 ,
    6792574 ,
    33643882 ,
    59582046 ,
    84845677 ,
    109662965 ,
    134217727 ,
    158618581 ,
    182872948 ,
    206867356 ,
    230355229 ,
    252952980 ,
    274144836 ,
    293296409 ,
    309676602 ,
    322487039 ,
    330897820 ,
    334088086 ,
    331289606 ,
    321831408 ,
    305183375 ,
    280996696 ,
    249139155 ,
    209723379 ,
    163126436 ,
    109999495 ,
    51266612 ,
    -11887809 ,
    -78042916 ,
    -145576187 ,
    -212708193 ,
    -277555944 ,
    -338193072 ,
    -392714750 ,
    -439304996 ,
    -476303825 ,
    -502271681 ,
    -516048552 ,
    -516805367 ,
    -504085455 ,
    -477834184 ,
    -438415328 ,
    -386613124 ,
    -323619552 ,
    -251006888 ,
    -170686139 ,
    -84852519 ,
    4080351 ,
    93555438 ,
    180953925 ,
    263680723 ,
    339250833 ,
    405373504 ,
    460031102 ,
    501549810 ,
    528659481 ,
    540540356 ,
    536854776 ,
    517762582 ,
    483919431 ,
    436457882 ,
    376951762 ,
    307364882 ,
    229985798 ,
    147350828 ,
    62157953 ,
    -22825362 ,
    -104857189 ,
    -181315607 ,
    -249789237 ,
    -308160559 ,
    -354678984 ,
    -388021006 ,
    -407335195 ,
    -412270366 ,
    -402985819 ,
    -380143245 ,
    -344880514 ,
    -298768253 ,
    -243750748 ,
    -182073290 ,
    -116198579 ,
    -48715212 ,
    17758383 ,
    80671089 ,
    137633719 ,
    186507643 ,
    225484146 ,
    253151554 ,
    268547638 ,
    271195315 ,
    261120287 ,
    238849914 ,
    205393315 ,
    162203380 ,
    111122043 ,
    54310798 ,
    -5831015 ,
    -66757180 ,
    -125871456 ,
    -180626781 ,
    -228623133 ,
    -267700422 ,
    -296022964 ,
    -312152346 ,
    -315105965 ,
    -304398988 ,
    -280068109 ,
    -242676140 ,
    -193297166 ,
    -133482698 ,
    -65209985 ,
    9185744 ,
    87092703 ,
    165714737 ,
    242171002 ,
    313599533 ,
    377260992 ,
    430638832 ,
    471532266 ,
    498138652 ,
    509122310 ,
    503667239 ,
    481511805 ,
    442964088 ,
    388897302 ,
    320725376 ,
    240359526 ,
    150147304 ,
    52796247 ,
    -48715205 ,
    -151236430 ,
    -251549492 ,
    -346476543 ,
    -432985975 ,
    -508293662 ,
    -569955773 ,
    -615949982 ,
    -644742289 ,
    -655337219 ,
    -647309747 ,
    -620817941 ,
    -576596019 ,
    -515928196 ,
    -440604353 ,
    -352859219 ,
    -255297293 ,
    -150806220 ,
    -42461710 ,
    66572639 ,
    173147147 ,
    274225954 ,
    366981668 ,
    448881568 ,
    517762579 ,
    571892631 ,
    610016563 ,
    631385283 ,
    635767539 ,
    623444256 ,
    595186039 ,
    552215004 ,
    496152652 ,
    428955955 ,
    352844184 ,
    270219312 ,
    183582943 ,
    95452821 ,
    8281857 ,
    -75617522 ,
    -154141194 ,
    -225451158 ,
    -288021649 ,
    -340672300 ,
    -382587638 ,
    -413322749 ,
    -432795472 ,
    -441265968 ,
    -439304998 ,
    -427752611 ,
    -407669283 ,
    -380281749 ,
    -346925925 ,
    -308989343 ,
    -267855451 ,
    -224851979 ,
    -181205315 ,
    -138002531 ,
    -96162306 ,
    -56415577 ,
    -19296303 ,
    14857740 ,
    45894633 ,
    73829383 ,
    98817681 ,
    121123920 ,
    141085288 ,
    159073887 ,
    175458874 ,
    190570608 ,
    204668628 ,
    217915123 ,
    230355229 ,
    241905214 ,
    252349157 ,
    261344383 ,
    268435455 ,
    273076117 ,
    274658209 ,
    272546213 ,
    266115808 ,
    254794599 ,
    238103033 ,
    215693482 ,
    187385496 ,
    153195359 ,
    113358311 ,
    68342046 ,
    18850483 ,
    -34182796 ,
    -89611641 ,
    -146104658 ,
    -202182067 ,
    -256260916 ,
    -306707119 ,
    -351892450 ,
    -390254324 ,
    -420356091 ,
    -440945389 ,
    -451008189 ,
    -449816226 ,
    -436965719 ,
    -412405583 ,
    -376453691 ,
    -329800183 ,
    -273497294 ,
    -208935706 ,
    -137807906 ,
    -62059601 ,
    16169322 ,
    94612348 ,
    170950089 ,
    242887659 ,
    308232897 ,
    364972567 ,
    411343707 ,
    445897404 ,
    467552555 ,
    475637441 ,
    469917433 ,
    450607592 ,
    418369479 ,
    374292091 ,
    319857405 ,
    256891583 ,
    187503479 ,
    114012521 ,
    38868509 ,
    -35433832 ,
    -106442473 ,
    -171834678 ,
    -229499421 ,
    -277612552 ,
    -314701905 ,
    -339699891 ,
    -351981552 ,
    -351386574 ,
    -338224355 ,
    -313261832 ,
    -277694413 ,
    -233100993 ,
    -181384637 ,
    -124701037 ,
    -65377352 ,
    -5824375 ,
    51554709 ,
    104455622 ,
    150760911 ,
    188621203 ,
    216526709 ,
    233366237 ,
    238471444 ,
    231644558 ,
    213168432 ,
    183798446 ,
    144736413 ,
    97587362 ,
    44300684 ,
    -12902270 ,
    -71611532 ,
    -129319764 ,
    -183518065 ,
    -231792801 ,
    -271919841 ,
    -301952683 ,
    -320301119 ,
    -325797451 ,
    -317747671 ,
    -295965595 ,
    -260788512 ,
    -213073616 ,
    -154175171 ,
    -85903062 ,
    -10464090 ,
    69612014 ,
    151559289 ,
    232471920 ,
    309406892 ,
    379489249 ,
    440016189 ,
    488556241 ,
    523039922 ,
    541838561 ,
    543828392 ,
    528437519 ,
    495673980 ,
    446133776 ,
    380988473 ,
    301952688 ,
    211232497 ,
    111456485 ,
    5591765 ,
    -103152151 ,
    -211428341 ,
    -315862670 ,
    -413165432 ,
    -500240540 ,
    -574288513 ,
    -632899713 ,
    -674134619 ,
    -696588405 ,
    -699437634 ,
    -682467510 ,
    -646078817 ,
    -591274392 ,
    -519625672 ,
    -433220577 ,
    -334594598 ,
    -226647556 ,
    -112548963 ,
    4364707 ,
    120697279 ,
    233100986 ,
    338381756 ,
    433598149 ,
    516150658 ,
    583858495 ,
    635021432 ,
    668464839 ,
    683566661 ,
    680265738 ,
    659051530 ,
    620935953 ,
    567408668 ,
    500377687 ,
    422097687 ,
    335088757 ,
    242048633 ,
    145761608 ,
    49007357 ,
    -45527137 ,
    -135329591 ,
    -218135663 ,
    -291991122 ,
    -355301115 ,
    -406865203 ,
    -445897404 ,
    -472031058 ,
    -485308892 ,
    -486159208 ,
    -475359587 ,
    -453989975 ,
    -423377301 ,
    -385034082 ,
    -340593587 ,
    -291744204 ,
    -240165569 ,
    -187468899 ,
    -135143669 ,
    -84512501 ,
    -36695690 ,
    7413611 ,
    47163040 ,
    82143432 ,
    112180440 ,
    137316210 ,
    157782401 ,
    173966143 ,
    186370798 ,
    195573567 ,
    202182069 ,
    206792011 ,
    209947966 ,
    212109106 ,
    213621443 ,
    214697837 ,
    215406638 ,
    215669397 ,
    215267689 ,
    213858623 ,
    210998238 ,
    206171590 ,
    198828040 ,
    188419976 ,
    174443062 ,
    156475988 ,
    134217729 ,
    107520372 ,
    76415791 ,
    41134668 ,
    2116695 ,
    -39988813 ,
    -84332304 ,
    -129883256 ,
    -175458873 ,
    -219761236 ,
    -261421610 ,
    -299050227 ,
    -331289604 ,
    -356869264 ,
    -374659582 ,
    -383722497 ,
    -383356882 ,
    -373136529 ,
    -352938967 ,
    -322963661 ,
    -283738536 ,
    -236114213 ,
    -181245823 ,
    -120562766 ,
    -55727263 ,
    11416990 ,
    78904331 ,
    144712726 ,
    206833070 ,
    263339658 ,
    312459148 ,
    352635398 ,
    382587638 ,
    401359652 ,
    408357974 ,
    403377469 ,
    386613123 ,
    358657409 ,
    320483096 ,
    273411940 ,
    219070247 ,
    159332799 ,
    96257092 ,
    32010239 ,
    -31208798 ,
    -91248810 ,
    -146084764 ,
    -193892148 ,
    -233114353 ,
    -262520528 ,
    -281251616 ,
    -288852751 ,
    -285290658 ,
    -270955265 ,
    -246645350 ,
    -213538610 ,
    -173147153 ,
    -127259996 ,
    -77874619 ,
    -27120094 ,
    22825363 ,
    69819331 ,
    111839399 ,
    147063436 ,
    173942832 ,
    191265833 ,
    198208476 ,
    194371031 ,
    179798442 ,
    154983796 ,
    120854506 ,
    78741562 ,
    30332797 ,
    -22388204 ,
    -77215448 ,
    -131803444 ,
    -183756712 ,
    -230722549 ,
    -270483621 ,
    -301046871 ,
    -320725372 ,
    -328209949 ,
    -322627764 ,
    -303585497 ,
    -271195317 ,
    -226082431 ,
    -169373708 ,
    -102667515 ,
    -27985654 ,
    52291106 ,
    135501730 ,
    218795179 ,
    299229103 ,
    373873479 ,
    439915520 ,
    494762085 ,
    536135878 ,
    562161918 ,
    571441086 ,
    563107990 ,
    536870913 ,
    493032276 ,
    432488673 ,
    356710319 ,
    267700429 ,
    167935790 ,
    60290466 ,
    -52054842 ,
    -165714735 ,
    -277208857 ,
    -383075739 ,
    -479986791 ,
    -564856558 ,
    -634945416 ,
    -687951181 ,
    -722086474 ,
    -736139163 ,
    -729513828 ,
    -702252827 ,
    -655036256 ,
    -589160833 ,
    -506498481 ,
    -409436045 ,
    -300798273 ,
    -183756720 ,
    -61727737 ,
    61736959 ,
    183063389 ,
    298768245 ,
    405567858 ,
    500479562 ,
    580912122 ,
    644742287 ,
    690375075 ,
    716785954 ,
    723543741 ,
    710813746 ,
    679341347 ,
    630416884 ,
    565823385 ,
    487769218 ,
    398808244 ,
    301750450 ,
    199566314 ,
    95288310 ,
    -8086999 ,
    -107692927 ,
    -200879543 ,
    -285290653 ,
    -358928464 ,
    -420204030 ,
    -467972130 ,
    -501549809 ,
    -520718453 ,
    -525709829 ,
    -517177145 ,
    -496152651 ,
    -463993812 ,
    -422320392 ,
    -372945112 ,
    -317800670 ,
    -258865972 ,
    -198094388 ,
    -137346642 ,
    -78330729 ,
    -22550865 ,
    28732909 ,
    74533347 ,
    114152181 ,
    147183795 ,
    173506732 ,
    193263944 ,
    206833073 ,
    214788444 ,
    217856751 ,
    216868596 ,
    212708196 ,
    206263540 ,
    198379241 ,
    189814120 ,
    181205314 ,
    173040388 ,
    165638513 ,
    159141378 ,
    153514029 ,
    148555409 ,
    143917896 ,
    139134781 ,
    133654242 ,
    126878102 ,
    118203450 ,
    107065065 ,
    92976581 ,
    75568345 ,
    54620111 ,
    30086901 ,
    2116695 ,
    -28941047 ,
    -62536624 ,
    -97931230 ,
    -134217726 ,
    -170350314 ,
    -205181999 ,
    -237508353 ,
    -266115806 ,
    -289832455 ,
    -307579240 ,
    -318419283 ,
    -321603222 ,
    -316608510 ,
    -303170842 ,
    -281306211 ,
    -251322407 ,
    -213819226 ,
    -169677098 ,
    -120034295 ,
    -66253388 ,
    -9878038 ,
    47418379 ,
    103890425 ,
    157782399 ,
    207391924 ,
    251132856 ,
    287595035 ,
    315598496 ,
    334239916 ,
    342929373 ,
    341415832 ,
    329800181 ,
    308535151 ,
    278411913 ,
    240533707 ,
    196277328 ,
    147243828 ,
    95200181 ,
    42014075 ,
    -10415735 ,
    -60230873 ,
    -105683828 ,
    -145204753 ,
    -177461948 ,
    -201413601 ,
    -216348701 ,
    -221915409 ,
    -218135667 ,
    -205405312 ,
    -184479559 ,
    -156444252 ,
    -122673854 ,
    -84777676 ,
    -44536311 ,
    -3830650 ,
    35433833 ,
    71404616 ,
    102358470 ,
    126773621 ,
    143394825 ,
    151288754 ,
    149887361 ,
    139017387 ,
    118914650 ,
    90222332 ,
    53973093 ,
    11555460 ,
    -35334462 ,
    -84754315 ,
    -134587701 ,
    -182624671 ,
    -226647549 ,
    -264518876 ,
    -294268154 ,
    -314174064 ,
    -322838933 ,
    -319252512 ,
    -302842447 ,
    -273509304 ,
    -231644560 ,
    -178130577 ,
    -114322240 ,
    -42010614 ,
    36630363 ,
    119112465 ,
    202714799 ,
    284575696 ,
    361791687 ,
    431520088 ,
    491081540 ,
    538058794 ,
    570388139 ,
    586440073 ,
    585086191 ,
    565749696 ,
    528437521 ,
    473752679 ,
    402886149 ,
    317588325 ,
    220120793 ,
    113189894 ,
    -135803 ,
    -116521428 ,
    -232471917 ,
    -344444747 ,
    -448965455 ,
    -542741988 ,
    -622773967 ,
    -686453072 ,
    -731651091 ,
    -756792556 ,
    -760909443 ,
    -743676004 ,
    -705422516 ,
    -647127427 ,
    -570388145 ,
    -477371452 ,
    -370745226 ,
    -253593791 ,
    -129319774 ,
    -1535827 ,
    126050136 ,
    249752278 ,
    366022809 ,
    471562709 ,
    563423503 ,
    639096759 ,
    696588403 ,
    734475490 ,
    751943716 ,
    748804617 ,
    725492119 ,
    683038823 ,
    623033108 ,
    547558764 ,
    459119481 ,
    360550987 ,
    254924033 ,
    145441675 ,
    35334471 ,
    -72242801 ,
    -174309408 ,
    -268148633 ,
    -351386569 ,
    -422057264 ,
    -478652306 ,
    -520153507 ,
    -546048009 ,
    -556325727 ,
    -551459744 ,
    -532370808 ,
    -500377686 ,
    -457135544 ,
    -404564964 ,
    -344774434 ,
    -279979335 ,
    -212420508 ,
    -144285393 ,
    -77634573 ,
    -14336260 ,
    43989098 ,
    96012375 ,
    140726250 ,
    177461948 ,
    205892104 ,
    226020152 ,
    238157183 ,
    242887662 ,
    241025808 ,
    233564769 ,
    221620929 ,
    206375858 ,
    189018401 ,
    170689360 ,
    152431040 ,
    135143668 ,
    119550357 ,
    106171897 ,
    95312189 ,
    87054686 ,
    81269717 ,
    77632089 ,
    75647954 ,
    74689521 ,
    74035879 ,
    72917940 ,
    70565385 ,
    66253386 ,
    59346942 ,
    49340773 ,
    35892917 ,
    18850482 ,
    -1733670 ,
    -25594105 ,
    -52256243 ,
    -81049959 ,
    -111132819 ,
    -141522027 ,
    -171133730 ,
    -198828038 ,
    -223457832 ,
    -243919268 ,
    -259201788 ,
    -268435455 ,
    -270933522 ,
    -266228321 ,
    -254098832 ,
    -234588619 ,
    -208013209 ,
    -174956435 ,
    -136255697 ,
    -92976583 ,
    -46377717 ,
    2132869 ,
    51048202 ,
    98817679 ,
    143905097 ,
    184847049 ,
    220309343 ,
    249139152 ,
    270410726 ,
    283462757 ,
    287925801 ,
    283738534 ,
    271152070 ,
    250722030 ,
    223288567 ,
    189944990 ,
    151996160 ,
    110908198 ,
    68251439 ,
    25638853 ,
    -15337635 ,
    -53170408 ,
    -86496445 ,
    -114152182 ,
    -135220698 ,
    -149069234 ,
    -155375444 ,
    -154141198 ,
    -145693242 ,
    -130670564 ,
    -109998787 ,
    -84852518 ,
    -56606996 ,
    -26780882 ,
    3027619 ,
    31208800 ,
    56210953 ,
    76608557 ,
    91166348 ,
    98896627 ,
    99107377 ,
    91439086 ,
    75888587 ,
    52818735 ,
    22953242 ,
    -12643387 ,
    -52600342 ,
    -95288301 ,
    -138878956 ,
    -181414120 ,
    -220881929 ,
    -255297287 ,
    -282783498 ,
    -301651932 ,
    -310476590 ,
    -308160562 ,
    -293991637 ,
    -267684686 ,
    -229408891 ,
    -179798445 ,
    -119945941 ,
    -51378301 ,
    23984236 ,
    103884927 ,
    185801354 ,
    267027977 ,
    344767608 ,
    416228634 ,
    478724571 ,
    529772360 ,
    567185824 ,
    589160828 ,
    594348903 ,
    581916504 ,
    551587522 ,
    503667242 ,
    439046599 ,
    359186241 ,
    266080670 ,
    162203385 ,
    50434698 ,
    -66025519 ,
    -183757318 ,
    -299229100 ,
    -408911333 ,
    -509391725 ,
    -597487884 ,
    -670353604 ,
    -725575067 ,
    -761253616 ,
    -776072154 ,
    -769342837 ,
    -741034299 ,
    -691777413 ,
    -622849274 ,
    -536135886 ,
    -434074745 ,
    -319579208 ,
    -195947182 ,
    -66757191 ,
    64244689 ,
    193263205 ,
    316573636 ,
    430638827 ,
    532219611 ,
    618474970 ,
    687048614 ,
    736139160 ,
    764551684 ,
    771729034 ,
    757762056 ,
    723378560 ,
    669911632 ,
    599248576 ,
    513762438 ,
    416228645 ,
    309729761 ,
    197551781 ,
    83075564 ,
    -30332788 ,
    -139428903 ,
    -241190821 ,
    -332910097 ,
    -412270361 ,
    -477410908 ,
    -526973421 ,
    -560130588 ,
    -576596016 ,
    -576615544 ,
    -560940674 ,
    -530785525 ,
    -487769216 ,
    -433846101 ,
    -371226658 ,
    -302292115 ,
    -229506037 ,
    -155326151 ,
    -82119603 ,
    -12084621 ,
    52818729 ,
    110926440 ,
    160915291 ,
    201833176 ,
    233114353 ,
    254579499 ,
    266421089 ,
    269175120 ,
    263680726 ,
    251029645 ,
    232507860 ,
    209531959 ,
    183582941 ,
    156140169 ,
    128618178 ,
    102308782 ,
    78330727 ,
    57588721 ,
    40743296 ,
    28192453 ,
    20065544 ,
    16229354 ,
    16305797 ,
    19700219 ,
    25638850 ,
    33213577 ,
    41431987 ,
    49270356 ,
    55727259 ,
    59875413 ,
    60909498 ,
    58187903 ,
    51266610 ,
    39923778 ,
    24174019 ,
    4271775 ,
    -19296299 ,
    -45829606 ,
    -74441686 ,
    -104096921 ,
    -133654240 ,
    -161915958 ,
    -187679656 ,
    -209790865 ,
    -227194307 ,
    -238981495 ,
    -244432641 ,
    -243051065 ,
    -234588618 ,
    -219060975 ,
    -196752114 ,
    -168207723 ,
    -134217730 ,
    -95788639 ,
    -54106741 ,
    -10493671 ,
    33643880 ,
    76868288 ,
    117766707 ,
    155006129 ,
    187385492 ,
    213882706 ,
    233694631 ,
    246268351 ,
    251322405 ,
    248857082 ,
    239153305 ,
    222760095 ,
    200471115 ,
    173291188 ,
    142394150 ,
    109073739 ,
    74689524 ,
    40610098 ,
    8155882 ,
    -21456082 ,
    -47163040 ,
    -68100962 ,
    -83640633 ,
    -93413808 ,
    -97328256 ,
    -95570984 ,
    -88599381 ,
    -77120554 ,
    -62059599 ,
    -44518025 ,
    -25723971 ,
    -6976216 ,
    10415737 ,
    25193017 ,
    36207621 ,
    42478953 ,
    43244222 ,
    38000451 ,
    26536171 ,
    8951245 ,
    -14336255 ,
    -42596709 ,
    -74809178 ,
    -109694700 ,
    -145761601 ,
    -181361276 ,
    -214752428 ,
    -244171373 ,
    -267905758 ,
    -284368782 ,
    -292171003 ,
    -290186774 ,
    -277612555 ,
    -254014558 ,
    -219363572 ,
    -174055248 ,
    -118914653 ,
    -55184477 ,
    15503111 ,
    91170338 ,
    169552187 ,
    248167465 ,
    324400230 ,
    395588835 ,
    459119471 ,
    512520898 ,
    553556893 ,
    580313017 ,
    591274389 ,
    585391466 ,
    562131188 ,
    521511329 ,
    464116486 ,
    391094745 ,
    304134774 ,
    205423768 ,
    97587367 ,
    -16386660 ,
    -133238588 ,
    -249537835 ,
    -361791683 ,
    -466557942 ,
    -560557745 ,
    -640784593 ,
    -704605864 ,
    -749853223 ,
    -774898721 ,
    -778713860 ,
    -760909444 ,
    -721754703 ,
    -662174889 ,
    -583727279 ,
    -488556250 ,
    -379328849 ,
    -259152938 ,
    -131480597
};