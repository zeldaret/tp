/* 80201284 001FE1C4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80201288 001FE1C8  7C 08 02 A6 */ mflr r0
/* 8020128C 001FE1CC  90 01 00 14 */ stw r0, 0x14(r1)
/* 80201290 001FE1D0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80201294 001FE1D4  3C 60 80 43 */ lis r3, lbl_8042EBB0@ha
/* 80201298 001FE1D8  3B E3 EB B0 */ addi r31, r3, lbl_8042EBB0@l
/* 8020129C 001FE1DC  38 6D 8B 30 */ addi r3, r13, 0x804510B0 - 0x80458580 /*SDA HACK; original: lbl_804510B0-_SDA_BASE_*/
/* 802012A0 001FE1E0  4B FF D0 91 */ bl dMeter_menuHIO_c
/*.global __dt__16dMeter_menuHIO_cFv*/
/* 802012A4 001FE1E4  3C 80 80 20 */ lis r4, __dt__16dMeter_menuHIO_cFv@ha
/*.global __dt__16dMeter_menuHIO_cFv*/
/* 802012A8 001FE1E8  38 84 12 3C */ addi r4, r4, __dt__16dMeter_menuHIO_cFv@l
/* 802012AC 001FE1EC  38 BF 00 00 */ addi r5, r31, 0
/* 802012B0 001FE1F0  48 16 09 75 */ bl func_80361C24
/* 802012B4 001FE1F4  38 7F 00 18 */ addi r3, r31, 0x18
/* 802012B8 001FE1F8  4B FF E3 01 */ bl dMeter_drawHIO_c
/*.global __dt__16dMeter_drawHIO_cFv*/
/* 802012BC 001FE1FC  3C 80 80 20 */ lis r4, __dt__16dMeter_drawHIO_cFv@ha
/*.global __dt__16dMeter_drawHIO_cFv*/
/* 802012C0 001FE200  38 84 11 28 */ addi r4, r4, __dt__16dMeter_drawHIO_cFv@l
/* 802012C4 001FE204  38 BF 00 0C */ addi r5, r31, 0xc
/* 802012C8 001FE208  48 16 09 5D */ bl func_80361C24
/* 802012CC 001FE20C  38 7F 0F 4C */ addi r3, r31, 0xf4c
/* 802012D0 001FE210  4B FF EE DD */ bl dMeter_ringHIO_c
/*.global __dt__16dMeter_ringHIO_cFv*/
/* 802012D4 001FE214  3C 80 80 20 */ lis r4, __dt__16dMeter_ringHIO_cFv@ha
/*.global __dt__16dMeter_ringHIO_cFv*/
/* 802012D8 001FE218  38 84 10 E0 */ addi r4, r4, __dt__16dMeter_ringHIO_cFv@l
/* 802012DC 001FE21C  38 BF 0F 40 */ addi r5, r31, 0xf40
/* 802012E0 001FE220  48 16 09 45 */ bl func_80361C24
/* 802012E4 001FE224  38 7F 10 B0 */ addi r3, r31, 0x10b0
/* 802012E8 001FE228  4B FF F3 E1 */ bl dMeter_fmapHIO_c
/*.global __dt__16dMeter_fmapHIO_cFv*/
/* 802012EC 001FE22C  3C 80 80 20 */ lis r4, __dt__16dMeter_fmapHIO_cFv@ha
/*.global __dt__16dMeter_fmapHIO_cFv*/
/* 802012F0 001FE230  38 84 0B CC */ addi r4, r4, __dt__16dMeter_fmapHIO_cFv@l
/* 802012F4 001FE234  38 BF 10 A4 */ addi r5, r31, 0x10a4
/* 802012F8 001FE238  48 16 09 2D */ bl func_80361C24
/* 802012FC 001FE23C  38 7F 15 60 */ addi r3, r31, 0x1560
/* 80201300 001FE240  4B FF F9 D5 */ bl dMeter_cursorHIO_c
/*.global __dt__18dMeter_cursorHIO_cFv*/
/* 80201304 001FE244  3C 80 80 20 */ lis r4, __dt__18dMeter_cursorHIO_cFv@ha
/*.global __dt__18dMeter_cursorHIO_cFv*/
/* 80201308 001FE248  38 84 10 98 */ addi r4, r4, __dt__18dMeter_cursorHIO_cFv@l
/* 8020130C 001FE24C  38 BF 15 54 */ addi r5, r31, 0x1554
/* 80201310 001FE250  48 16 09 15 */ bl func_80361C24
/* 80201314 001FE254  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80201318 001FE258  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8020131C 001FE25C  7C 08 03 A6 */ mtlr r0
/* 80201320 001FE260  38 21 00 10 */ addi r1, r1, 0x10
/* 80201324 001FE264  4E 80 00 20 */ blr
