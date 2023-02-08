lbl_80A6CDF4:
/* 80A6CDF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6CDF8  7C 08 02 A6 */	mflr r0
/* 80A6CDFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6CE00  38 63 0F B4 */	addi r3, r3, 0xfb4
/* 80A6CE04  4B 8F 52 45 */	bl __ptmf_cmpr
/* 80A6CE08  7C 60 00 34 */	cntlzw r0, r3
/* 80A6CE0C  54 03 D9 7E */	srwi r3, r0, 5
/* 80A6CE10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6CE14  7C 08 03 A6 */	mtlr r0
/* 80A6CE18  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6CE1C  4E 80 00 20 */	blr 
