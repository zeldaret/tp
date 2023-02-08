lbl_80AAA9E4:
/* 80AAA9E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAA9E8  7C 08 02 A6 */	mflr r0
/* 80AAA9EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAA9F0  38 63 0F E4 */	addi r3, r3, 0xfe4
/* 80AAA9F4  4B 8B 76 55 */	bl __ptmf_cmpr
/* 80AAA9F8  7C 60 00 34 */	cntlzw r0, r3
/* 80AAA9FC  54 03 D9 7E */	srwi r3, r0, 5
/* 80AAAA00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAAA04  7C 08 03 A6 */	mtlr r0
/* 80AAAA08  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAAA0C  4E 80 00 20 */	blr 
