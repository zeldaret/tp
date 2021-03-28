lbl_8048F698:
/* 8048F698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F69C  7C 08 02 A6 */	mflr r0
/* 8048F6A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F6A4  4B FF FE B5 */	bl execute__11daTagMist_cFv
/* 8048F6A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F6AC  7C 08 03 A6 */	mtlr r0
/* 8048F6B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F6B4  4E 80 00 20 */	blr 
