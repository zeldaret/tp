lbl_806CD434:
/* 806CD434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806CD438  7C 08 02 A6 */	mflr r0
/* 806CD43C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806CD440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806CD444  3C 60 80 6D */	lis r3, __global_destructor_chain@ha
/* 806CD448  3B E3 11 20 */	addi r31, r3, __global_destructor_chain@l
/* 806CD44C  48 00 00 20 */	b lbl_806CD46C
lbl_806CD450:
/* 806CD450  80 05 00 00 */	lwz r0, 0(r5)
/* 806CD454  90 1F 00 00 */	stw r0, 0(r31)
/* 806CD458  80 65 00 08 */	lwz r3, 8(r5)
/* 806CD45C  38 80 FF FF */	li r4, -1
/* 806CD460  81 85 00 04 */	lwz r12, 4(r5)
/* 806CD464  7D 89 03 A6 */	mtctr r12
/* 806CD468  4E 80 04 21 */	bctrl 
lbl_806CD46C:
/* 806CD46C  80 BF 00 00 */	lwz r5, 0(r31)
/* 806CD470  28 05 00 00 */	cmplwi r5, 0
/* 806CD474  40 82 FF DC */	bne lbl_806CD450
/* 806CD478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806CD47C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806CD480  7C 08 03 A6 */	mtlr r0
/* 806CD484  38 21 00 10 */	addi r1, r1, 0x10
/* 806CD488  4E 80 00 20 */	blr 
