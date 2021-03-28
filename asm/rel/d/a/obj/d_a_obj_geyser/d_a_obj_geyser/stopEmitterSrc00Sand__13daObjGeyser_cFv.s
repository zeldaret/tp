lbl_80BF8A80:
/* 80BF8A80  80 83 07 7C */	lwz r4, 0x77c(r3)
/* 80BF8A84  28 04 00 00 */	cmplwi r4, 0
/* 80BF8A88  4D 82 00 20 */	beqlr 
/* 80BF8A8C  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80BF8A90  60 00 00 01 */	ori r0, r0, 1
/* 80BF8A94  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80BF8A98  38 00 00 01 */	li r0, 1
/* 80BF8A9C  90 04 00 24 */	stw r0, 0x24(r4)
/* 80BF8AA0  38 00 00 00 */	li r0, 0
/* 80BF8AA4  90 03 07 7C */	stw r0, 0x77c(r3)
/* 80BF8AA8  4E 80 00 20 */	blr 
