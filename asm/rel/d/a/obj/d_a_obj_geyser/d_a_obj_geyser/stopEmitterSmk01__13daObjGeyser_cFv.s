lbl_80BF8CCC:
/* 80BF8CCC  80 83 07 70 */	lwz r4, 0x770(r3)
/* 80BF8CD0  28 04 00 00 */	cmplwi r4, 0
/* 80BF8CD4  4D 82 00 20 */	beqlr 
/* 80BF8CD8  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80BF8CDC  60 00 00 01 */	ori r0, r0, 1
/* 80BF8CE0  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80BF8CE4  38 00 00 01 */	li r0, 1
/* 80BF8CE8  90 04 00 24 */	stw r0, 0x24(r4)
/* 80BF8CEC  38 00 00 00 */	li r0, 0
/* 80BF8CF0  90 03 07 70 */	stw r0, 0x770(r3)
/* 80BF8CF4  4E 80 00 20 */	blr 
