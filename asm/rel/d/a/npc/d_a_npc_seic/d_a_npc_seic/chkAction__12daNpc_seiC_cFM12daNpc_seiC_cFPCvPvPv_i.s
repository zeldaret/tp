lbl_80AC8260:
/* 80AC8260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC8264  7C 08 02 A6 */	mflr r0
/* 80AC8268  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC826C  38 63 0E 54 */	addi r3, r3, 0xe54
/* 80AC8270  4B 89 9D D9 */	bl __ptmf_cmpr
/* 80AC8274  7C 60 00 34 */	cntlzw r0, r3
/* 80AC8278  54 03 D9 7E */	srwi r3, r0, 5
/* 80AC827C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC8280  7C 08 03 A6 */	mtlr r0
/* 80AC8284  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC8288  4E 80 00 20 */	blr 
