lbl_8049F6EC:
/* 8049F6EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049F6F0  7C 08 02 A6 */	mflr r0
/* 8049F6F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049F6F8  7C A4 2B 78 */	mr r4, r5
/* 8049F6FC  4B FF FF 65 */	bl moveLineCallback__13daBoomerang_cFP10fopAc_ac_c
/* 8049F700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049F704  7C 08 03 A6 */	mtlr r0
/* 8049F708  38 21 00 10 */	addi r1, r1, 0x10
/* 8049F70C  4E 80 00 20 */	blr 
