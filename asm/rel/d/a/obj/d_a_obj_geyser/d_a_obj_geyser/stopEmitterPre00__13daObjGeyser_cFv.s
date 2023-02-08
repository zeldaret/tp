lbl_80BF8A54:
/* 80BF8A54  80 83 07 78 */	lwz r4, 0x778(r3)
/* 80BF8A58  28 04 00 00 */	cmplwi r4, 0
/* 80BF8A5C  4D 82 00 20 */	beqlr 
/* 80BF8A60  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80BF8A64  60 00 00 01 */	ori r0, r0, 1
/* 80BF8A68  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80BF8A6C  38 00 00 01 */	li r0, 1
/* 80BF8A70  90 04 00 24 */	stw r0, 0x24(r4)
/* 80BF8A74  38 00 00 00 */	li r0, 0
/* 80BF8A78  90 03 07 78 */	stw r0, 0x778(r3)
/* 80BF8A7C  4E 80 00 20 */	blr 
