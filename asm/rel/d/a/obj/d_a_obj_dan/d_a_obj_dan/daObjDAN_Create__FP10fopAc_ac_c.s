lbl_80BDA9F8:
/* 80BDA9F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDA9FC  7C 08 02 A6 */	mflr r0
/* 80BDAA00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDAA04  48 00 12 B5 */	bl create__10daObjDAN_cFv
/* 80BDAA08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDAA0C  7C 08 03 A6 */	mtlr r0
/* 80BDAA10  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDAA14  4E 80 00 20 */	blr 
