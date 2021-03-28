lbl_806C1C94:
/* 806C1C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C1C98  7C 08 02 A6 */	mflr r0
/* 806C1C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C1CA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C1CA4  3C 60 80 6C */	lis r3, __global_destructor_chain@ha
/* 806C1CA8  3B E3 79 20 */	addi r31, r3, __global_destructor_chain@l
/* 806C1CAC  48 00 00 20 */	b lbl_806C1CCC
lbl_806C1CB0:
/* 806C1CB0  80 05 00 00 */	lwz r0, 0(r5)
/* 806C1CB4  90 1F 00 00 */	stw r0, 0(r31)
/* 806C1CB8  80 65 00 08 */	lwz r3, 8(r5)
/* 806C1CBC  38 80 FF FF */	li r4, -1
/* 806C1CC0  81 85 00 04 */	lwz r12, 4(r5)
/* 806C1CC4  7D 89 03 A6 */	mtctr r12
/* 806C1CC8  4E 80 04 21 */	bctrl 
lbl_806C1CCC:
/* 806C1CCC  80 BF 00 00 */	lwz r5, 0(r31)
/* 806C1CD0  28 05 00 00 */	cmplwi r5, 0
/* 806C1CD4  40 82 FF DC */	bne lbl_806C1CB0
/* 806C1CD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C1CDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C1CE0  7C 08 03 A6 */	mtlr r0
/* 806C1CE4  38 21 00 10 */	addi r1, r1, 0x10
/* 806C1CE8  4E 80 00 20 */	blr 
