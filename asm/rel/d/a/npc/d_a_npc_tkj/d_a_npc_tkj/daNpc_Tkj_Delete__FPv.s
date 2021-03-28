lbl_805751A0:
/* 805751A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805751A4  7C 08 02 A6 */	mflr r0
/* 805751A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805751AC  4B FF ED BD */	bl Delete__10daNpcTkj_cFv
/* 805751B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805751B4  7C 08 03 A6 */	mtlr r0
/* 805751B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805751BC  4E 80 00 20 */	blr 
