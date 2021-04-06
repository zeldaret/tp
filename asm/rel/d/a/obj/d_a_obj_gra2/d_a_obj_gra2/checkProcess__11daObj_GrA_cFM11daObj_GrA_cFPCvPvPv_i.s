lbl_80C018C0:
/* 80C018C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C018C4  7C 08 02 A6 */	mflr r0
/* 80C018C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C018CC  7C 65 1B 78 */	mr r5, r3
/* 80C018D0  7C 83 23 78 */	mr r3, r4
/* 80C018D4  38 85 0A 50 */	addi r4, r5, 0xa50
/* 80C018D8  4B 76 07 71 */	bl __ptmf_cmpr
/* 80C018DC  7C 60 00 34 */	cntlzw r0, r3
/* 80C018E0  54 03 D9 7E */	srwi r3, r0, 5
/* 80C018E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C018E8  7C 08 03 A6 */	mtlr r0
/* 80C018EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C018F0  4E 80 00 20 */	blr 
