lbl_8048F044:
/* 8048F044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F048  7C 08 02 A6 */	mflr r0
/* 8048F04C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F050  4B FF FD 59 */	bl Delete__15daTag_Lantern_cFv
/* 8048F054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F058  7C 08 03 A6 */	mtlr r0
/* 8048F05C  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F060  4E 80 00 20 */	blr 
