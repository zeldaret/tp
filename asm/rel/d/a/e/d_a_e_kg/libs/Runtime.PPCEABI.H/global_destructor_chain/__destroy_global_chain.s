lbl_806F7E94:
/* 806F7E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F7E98  7C 08 02 A6 */	mflr r0
/* 806F7E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F7EA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F7EA4  3C 60 80 70 */	lis r3, __global_destructor_chain@ha
/* 806F7EA8  3B E3 A5 E0 */	addi r31, r3, __global_destructor_chain@l
/* 806F7EAC  48 00 00 20 */	b lbl_806F7ECC
lbl_806F7EB0:
/* 806F7EB0  80 05 00 00 */	lwz r0, 0(r5)
/* 806F7EB4  90 1F 00 00 */	stw r0, 0(r31)
/* 806F7EB8  80 65 00 08 */	lwz r3, 8(r5)
/* 806F7EBC  38 80 FF FF */	li r4, -1
/* 806F7EC0  81 85 00 04 */	lwz r12, 4(r5)
/* 806F7EC4  7D 89 03 A6 */	mtctr r12
/* 806F7EC8  4E 80 04 21 */	bctrl 
lbl_806F7ECC:
/* 806F7ECC  80 BF 00 00 */	lwz r5, 0(r31)
/* 806F7ED0  28 05 00 00 */	cmplwi r5, 0
/* 806F7ED4  40 82 FF DC */	bne lbl_806F7EB0
/* 806F7ED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F7EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F7EE0  7C 08 03 A6 */	mtlr r0
/* 806F7EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 806F7EE8  4E 80 00 20 */	blr 
