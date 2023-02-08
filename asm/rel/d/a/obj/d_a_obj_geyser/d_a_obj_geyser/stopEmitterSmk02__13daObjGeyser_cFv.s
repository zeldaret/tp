lbl_80BF8CF8:
/* 80BF8CF8  80 83 07 74 */	lwz r4, 0x774(r3)
/* 80BF8CFC  28 04 00 00 */	cmplwi r4, 0
/* 80BF8D00  4D 82 00 20 */	beqlr 
/* 80BF8D04  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80BF8D08  60 00 00 01 */	ori r0, r0, 1
/* 80BF8D0C  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80BF8D10  38 00 00 01 */	li r0, 1
/* 80BF8D14  90 04 00 24 */	stw r0, 0x24(r4)
/* 80BF8D18  38 00 00 00 */	li r0, 0
/* 80BF8D1C  90 03 07 74 */	stw r0, 0x774(r3)
/* 80BF8D20  4E 80 00 20 */	blr 
