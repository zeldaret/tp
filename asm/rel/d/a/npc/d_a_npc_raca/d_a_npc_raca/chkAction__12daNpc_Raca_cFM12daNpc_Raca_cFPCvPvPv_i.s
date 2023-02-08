lbl_80AB73B0:
/* 80AB73B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB73B4  7C 08 02 A6 */	mflr r0
/* 80AB73B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB73BC  38 63 0F 98 */	addi r3, r3, 0xf98
/* 80AB73C0  4B 8A AC 89 */	bl __ptmf_cmpr
/* 80AB73C4  7C 60 00 34 */	cntlzw r0, r3
/* 80AB73C8  54 03 D9 7E */	srwi r3, r0, 5
/* 80AB73CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB73D0  7C 08 03 A6 */	mtlr r0
/* 80AB73D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB73D8  4E 80 00 20 */	blr 
