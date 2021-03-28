lbl_80BF8CA0:
/* 80BF8CA0  80 83 07 6C */	lwz r4, 0x76c(r3)
/* 80BF8CA4  28 04 00 00 */	cmplwi r4, 0
/* 80BF8CA8  4D 82 00 20 */	beqlr 
/* 80BF8CAC  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80BF8CB0  60 00 00 01 */	ori r0, r0, 1
/* 80BF8CB4  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80BF8CB8  38 00 00 01 */	li r0, 1
/* 80BF8CBC  90 04 00 24 */	stw r0, 0x24(r4)
/* 80BF8CC0  38 00 00 00 */	li r0, 0
/* 80BF8CC4  90 03 07 6C */	stw r0, 0x76c(r3)
/* 80BF8CC8  4E 80 00 20 */	blr 
