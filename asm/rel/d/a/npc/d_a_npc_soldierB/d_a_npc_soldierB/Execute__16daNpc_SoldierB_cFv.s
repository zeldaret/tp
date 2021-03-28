lbl_80AF35A0:
/* 80AF35A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF35A4  7C 08 02 A6 */	mflr r0
/* 80AF35A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF35AC  4B 65 EA 68 */	b execute__8daNpcF_cFv
/* 80AF35B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF35B4  7C 08 03 A6 */	mtlr r0
/* 80AF35B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF35BC  4E 80 00 20 */	blr 
