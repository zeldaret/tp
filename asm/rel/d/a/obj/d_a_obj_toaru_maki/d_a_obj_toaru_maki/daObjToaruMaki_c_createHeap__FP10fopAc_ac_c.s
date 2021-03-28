lbl_80D13078:
/* 80D13078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1307C  7C 08 02 A6 */	mflr r0
/* 80D13080  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D13084  48 00 00 E9 */	bl createHeap__16daObjToaruMaki_cFv
/* 80D13088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1308C  7C 08 03 A6 */	mtlr r0
/* 80D13090  38 21 00 10 */	addi r1, r1, 0x10
/* 80D13094  4E 80 00 20 */	blr 
