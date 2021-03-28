lbl_806B9334:
/* 806B9334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B9338  7C 08 02 A6 */	mflr r0
/* 806B933C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B9340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B9344  3C 60 80 6C */	lis r3, __global_destructor_chain@ha
/* 806B9348  3B E3 B8 C8 */	addi r31, r3, __global_destructor_chain@l
/* 806B934C  48 00 00 20 */	b lbl_806B936C
lbl_806B9350:
/* 806B9350  80 05 00 00 */	lwz r0, 0(r5)
/* 806B9354  90 1F 00 00 */	stw r0, 0(r31)
/* 806B9358  80 65 00 08 */	lwz r3, 8(r5)
/* 806B935C  38 80 FF FF */	li r4, -1
/* 806B9360  81 85 00 04 */	lwz r12, 4(r5)
/* 806B9364  7D 89 03 A6 */	mtctr r12
/* 806B9368  4E 80 04 21 */	bctrl 
lbl_806B936C:
/* 806B936C  80 BF 00 00 */	lwz r5, 0(r31)
/* 806B9370  28 05 00 00 */	cmplwi r5, 0
/* 806B9374  40 82 FF DC */	bne lbl_806B9350
/* 806B9378  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B937C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B9380  7C 08 03 A6 */	mtlr r0
/* 806B9384  38 21 00 10 */	addi r1, r1, 0x10
/* 806B9388  4E 80 00 20 */	blr 
