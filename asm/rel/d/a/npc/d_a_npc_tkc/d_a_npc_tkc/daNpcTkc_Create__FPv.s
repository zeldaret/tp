lbl_80B0F9A4:
/* 80B0F9A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0F9A8  7C 08 02 A6 */	mflr r0
/* 80B0F9AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0F9B0  4B FF D0 ED */	bl Create__10daNpcTkc_cFv
/* 80B0F9B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0F9B8  7C 08 03 A6 */	mtlr r0
/* 80B0F9BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0F9C0  4E 80 00 20 */	blr 
