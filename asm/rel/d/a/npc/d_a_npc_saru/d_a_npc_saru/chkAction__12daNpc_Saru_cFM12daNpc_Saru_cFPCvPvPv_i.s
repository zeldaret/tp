lbl_80AC1B78:
/* 80AC1B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC1B7C  7C 08 02 A6 */	mflr r0
/* 80AC1B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC1B84  38 63 0F C8 */	addi r3, r3, 0xfc8
/* 80AC1B88  4B 8A 04 C0 */	b __ptmf_cmpr
/* 80AC1B8C  7C 60 00 34 */	cntlzw r0, r3
/* 80AC1B90  54 03 D9 7E */	srwi r3, r0, 5
/* 80AC1B94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC1B98  7C 08 03 A6 */	mtlr r0
/* 80AC1B9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC1BA0  4E 80 00 20 */	blr 
