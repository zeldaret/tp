lbl_80C72434:
/* 80C72434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C72438  7C 08 02 A6 */	mflr r0
/* 80C7243C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C72440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C72444  3C 60 80 C7 */	lis r3, __global_destructor_chain@ha
/* 80C72448  3B E3 32 C0 */	addi r31, r3, __global_destructor_chain@l
/* 80C7244C  48 00 00 20 */	b lbl_80C7246C
lbl_80C72450:
/* 80C72450  80 05 00 00 */	lwz r0, 0(r5)
/* 80C72454  90 1F 00 00 */	stw r0, 0(r31)
/* 80C72458  80 65 00 08 */	lwz r3, 8(r5)
/* 80C7245C  38 80 FF FF */	li r4, -1
/* 80C72460  81 85 00 04 */	lwz r12, 4(r5)
/* 80C72464  7D 89 03 A6 */	mtctr r12
/* 80C72468  4E 80 04 21 */	bctrl 
lbl_80C7246C:
/* 80C7246C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C72470  28 05 00 00 */	cmplwi r5, 0
/* 80C72474  40 82 FF DC */	bne lbl_80C72450
/* 80C72478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7247C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C72480  7C 08 03 A6 */	mtlr r0
/* 80C72484  38 21 00 10 */	addi r1, r1, 0x10
/* 80C72488  4E 80 00 20 */	blr 
