lbl_8048F064:
/* 8048F064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F068  7C 08 02 A6 */	mflr r0
/* 8048F06C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F070  4B FF FD 6D */	bl Execute__15daTag_Lantern_cFv
/* 8048F074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F078  7C 08 03 A6 */	mtlr r0
/* 8048F07C  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F080  4E 80 00 20 */	blr 
