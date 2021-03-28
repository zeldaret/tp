lbl_80A9CC0C:
/* 80A9CC0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9CC10  7C 08 02 A6 */	mflr r0
/* 80A9CC14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9CC18  4B 6A B9 14 */	b execute__8daNpcT_cFv
/* 80A9CC1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9CC20  7C 08 03 A6 */	mtlr r0
/* 80A9CC24  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9CC28  4E 80 00 20 */	blr 
