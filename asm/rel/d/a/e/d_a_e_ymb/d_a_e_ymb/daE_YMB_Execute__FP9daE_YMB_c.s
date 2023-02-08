lbl_80820A18:
/* 80820A18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80820A1C  7C 08 02 A6 */	mflr r0
/* 80820A20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80820A24  4B FF FD 89 */	bl execute__9daE_YMB_cFv
/* 80820A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80820A2C  7C 08 03 A6 */	mtlr r0
/* 80820A30  38 21 00 10 */	addi r1, r1, 0x10
/* 80820A34  4E 80 00 20 */	blr 
