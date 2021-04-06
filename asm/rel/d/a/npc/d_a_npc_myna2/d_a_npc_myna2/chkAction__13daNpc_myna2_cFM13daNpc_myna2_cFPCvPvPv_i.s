lbl_80A855E8:
/* 80A855E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A855EC  7C 08 02 A6 */	mflr r0
/* 80A855F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A855F4  38 63 0D CC */	addi r3, r3, 0xdcc
/* 80A855F8  4B 8D CA 51 */	bl __ptmf_cmpr
/* 80A855FC  7C 60 00 34 */	cntlzw r0, r3
/* 80A85600  54 03 D9 7E */	srwi r3, r0, 5
/* 80A85604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A85608  7C 08 03 A6 */	mtlr r0
/* 80A8560C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A85610  4E 80 00 20 */	blr 
