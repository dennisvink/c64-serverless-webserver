10 REM RANDOM GOTH LYRIC GENERATOR
20 REM JAVASCRIPT BY C HERDT AND M TARROW, 1998
30 REM CONVERTED TO BASIC BY R VONK, 2020
40 Z=RND(-TI):NA=22:SA=35:SB=27:VA=31:VB=33:AD=57:OB=47
50 DATA ABYSS,NOIR,ELDRITCH,CAVE,CTHULU,IVY,HYPO,FIEND,KABBAL,MORTIS,ALIEN
60 DATA NEWBATEN,MORDANT,RASPUTIN,OSIRIS,SUSPIRIA,BELLADONNA,MALAISIA
70 DATA DEHYDRETTE,DROPSY,FANTAZIUS,CORVUS
80 DATA THE DEVIL,A BLACK CAT,THE SPIDER,A DULL KNIFE,EVIL,FIRE,SHE,EVERYTHING
90 DATA LONELINESS,THE MASK,JESUS,THE SLAVE,MY SLAVE,MY MASTER,TERROR
100 DATA MY SOLITUDE,SORROW,MY ANGUISH,ICARUS,PERSEPHONE,THE MOON,DEATH,FAITH
110 DATA THE MUSE,OBLIVION,MY LUST,A VAVENOUS SHE-WOLF,YOUR TOUCH,MY PREY
120 DATA THE ASYLUM,THIS TORRENTIAL RAIN,AGONY,THE STENCH,HUNGER,DARKNESS
130 DATA DEVILS,BLACK CATS,SPIDERS,DAGGERS,SPIRITS,PYRES,I,BANSHEES,THINE EYES
140 DATA SINNERS,PRAYERS,SOULS,WOLVES,RATS,BATS,SERAPHIM,THORNS,HARPIES
150 DATA BLAZING PINIONS,RAVENS,VERMIN,YOU,FOOLISH MORTALS,SERPENTS,NOSFERATU
160 DATA WORMS,VENGEFUL CRIPPLES
170 DATA SECRETES,DESTROYS,SPINS,SLICES,ENGULFS,EVISCERATES,WHISPERS,CLINGS TO
180 DATA HIDES UNDER,KISSES,WRITHES,HOWLS,SOBS,CRIES,MOURNS,CONSUMES
190 DATA LIES WEEPING,ASCENDS,DESIRES,ENTANGLES,GROVELS BEFORE,SPIRALS,SUMMONS
200 DATA PLUCKS,CURSES,QUIVERS,UNLEASHES,DANCES ON,PERMEATES,SCOFFS AT
210 DATA SPEWS FORTH
220 DATA SECRETE,DESTROY,SPIN,SLICE,ENGULF,EVISCERATE,WHISPER,CLING TO
230 DATA HIDE UNDER,KISS,WRITHE,LOCK UP,MURDER,CONSPIRE,LANGUISH,SUFFER,REGRET
240 DATA SUCK,DEVOUR,DESIRE,SHROUD,TAUNT,SWELL WITH,IMPLORE,STALK,UNLEASH
250 DATA CALL FORTH,DRINK,COLLAPSE FROM,SHUDDER WITH,RECOIL FROM
260 DATA RUN AMUCK THROUGH,FEIGN
270 DATA BLOODY,NOCTURNAL,DELICATE,HELPLESS,VIRGINAL,CLANDESTINE,UNCLEAN,DARK
280 DATA LONELY,LETHARGIC,DESPERATE,SANGUINE,LUSCIOUS,SWEET,MIDNIGHT,INNER
290 DATA BLACKENED,FERAL,WHIRLING,VELVET,TREMBLING,DYING,LEATHERY,SILVER,RED
300 DATA YEARNING,PRECIOUS,MOCKING,INFERNAL,LABYRINTHINE,BELOVED,SEVERED
310 DATA ENRAPTURED,INCESSANT,CELESTIAL,UNFATHOMABLE,BLASPHEMOUS,TAINTED
320 DATA EMBITTERED,VILE,HOLLOW,CRINGING,GLOOMY,MELANCHOLY,CRUCIFIED
330 DATA EXCRUCIATING,MALODOROUS,SPECTRAL,DISEASED,SERPENTINE,FLEETING,BARREN
340 DATA PERFIDIOUS,DARKENED,ELYSIAN,LUGUBRIOUS,BALEFUL
350 DATA POISON,INNOCENTS,WEBS,BEAUTY,GRAVES,MANACLES,DESPAIR,NIGHT,NEEDLES
360 DATA FANGS,PASSION,DIVIDE,MARROW,TOMBS,ABATTOIR,TERROR,PRAYERS,SPLENDOR
370 DATA SOUL,TEARS,VOID,NOTHINGNESS,CONCUBINE,BRILLIANCE,TORMENT,DECEPTION
380 DATA GLOSSOLALIA,SEPULCHRE,CLUTCHES,CARESSES,EFFERVESCENCE,RAPTURE,DECAY
390 DATA TWILIGHT,FRAGMENTS,CARRION,ADDICTION,PSYCHOSIS,DISILLUSIONMENT
400 DATA ARTERIAL SPRAY,ECLIPSE,TREACHERY,REQUIEM,DECREPITUDE,MINIONS,PENANCE
410 DATA IMPUDENCE
420 DIM NA$(NA),SA$(SA),SB$(SB),VA$(VA),VB$(VB),AD$(AD),OB$(OB)
430 FOR I=1 TO NA:READ NA$(I):NEXT I:FOR I=1 TO SA:READ SA$(I):NEXT I
440 FOR I=1 TO SB:READ SB$(I):NEXT I:FOR I=1 TO VA:READ VA$(I):NEXT I
450 FOR I=1 TO VB:READ VB$(I):NEXT I:FOR I=1 TO AD:READ AD$(I):NEXT I
460 FOR I=1 TO OB:READ OB$(I):NEXT I
470 PRINT "<HTML>"
471 PRINT "  <HEAD>"
472 PRINT "    <TITLE>Serverless C64: Lyrics Generator</TITLE>"
473 PRINT "  </HEAD>"
474 PRINT "  <BODY>"
475 PRINT "    <H1>RANDOM LYRICS "
480 F$=NA$(INT(RND(1)*NA+1)):L$=NA$(INT(RND(1)*NA+1)):PRINT"BY ";F$;" ";L$:PRINT
481 PRINT "</H1>"
482 PRINT "<PRE>"
490 FOR I=1 TO 4:FOR J=1 TO 4:R=RND(1):IF R>.5 THEN 530
500 GS$=SA$(INT(RND(1)*SA+1)):GV$=VA$(INT(RND(1)*VA+1))
510 GA$=AD$(INT(RND(1)*AD+1)):OG$=OB$(INT(RND(1)*OB+1))
520 PRINT GS$;" ";GV$;" ";GA$;" ";OG$:GOTO 560
530 GS$=SB$(INT(RND(1)*SB+1)):GV$=VB$(INT(RND(1)*VB+1))
540 GA$=AD$(INT(RND(1)*AD+1)):OG$=OB$(INT(RND(1)*OB+1))
550 PRINT GS$;" ";GV$;" ";GA$;" ";OG$
560 NEXT J:PRINT:NEXT I
561 PRINT "</PRE>"
562 PRINT "<HR>"
563 PRINT "PROGRAM CREATED BY ROB FROM OZ - (c) 2020<br />"
564 PRINT "<A HREF='https://github.com/robfromoz/C64-BASIC/'>"
565 PRINT "https://github.com/robfromoz/C64-BASIC/</A><br />"
600 PRINT "    <HR />"
610 PRINT "      <A HREF='/'>HOME</A> |"
620 PRINT "      <A HREF='/lyrics'>Random Goth Lyrics</A> |"
630 PRINT "      <A HREF='/about'>About this project</A>"
640 PRINT "    <HR />"
650 PRINT "</BODY></HTML>"
