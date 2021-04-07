lbl_80D561E8:
/* 80D561E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D561EC  7C 08 02 A6 */	mflr r0
/* 80D561F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D561F4  38 63 05 68 */	addi r3, r3, 0x568
/* 80D561F8  4B 60 BE 51 */	bl __ptmf_cmpr
/* 80D561FC  7C 60 00 34 */	cntlzw r0, r3
/* 80D56200  54 03 D9 7E */	srwi r3, r0, 5
/* 80D56204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D56208  7C 08 03 A6 */	mtlr r0
/* 80D5620C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D56210  4E 80 00 20 */	blr 
