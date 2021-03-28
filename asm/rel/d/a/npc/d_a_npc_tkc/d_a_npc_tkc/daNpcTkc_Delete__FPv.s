lbl_80B0F9C4:
/* 80B0F9C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0F9C8  7C 08 02 A6 */	mflr r0
/* 80B0F9CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0F9D0  4B FF D7 B1 */	bl Delete__10daNpcTkc_cFv
/* 80B0F9D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0F9D8  7C 08 03 A6 */	mtlr r0
/* 80B0F9DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0F9E0  4E 80 00 20 */	blr 
