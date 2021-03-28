lbl_80CD0B08:
/* 80CD0B08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD0B0C  7C 08 02 A6 */	mflr r0
/* 80CD0B10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD0B14  38 63 11 18 */	addi r3, r3, 0x1118
/* 80CD0B18  4B 69 15 30 */	b __ptmf_cmpr
/* 80CD0B1C  7C 60 00 34 */	cntlzw r0, r3
/* 80CD0B20  54 03 D9 7E */	srwi r3, r0, 5
/* 80CD0B24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD0B28  7C 08 03 A6 */	mtlr r0
/* 80CD0B2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD0B30  4E 80 00 20 */	blr 
