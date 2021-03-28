lbl_80C43E94:
/* 80C43E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C43E98  7C 08 02 A6 */	mflr r0
/* 80C43E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C43EA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C43EA4  3C 60 80 C4 */	lis r3, __global_destructor_chain@ha
/* 80C43EA8  3B E3 4C 00 */	addi r31, r3, __global_destructor_chain@l
/* 80C43EAC  48 00 00 20 */	b lbl_80C43ECC
lbl_80C43EB0:
/* 80C43EB0  80 05 00 00 */	lwz r0, 0(r5)
/* 80C43EB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C43EB8  80 65 00 08 */	lwz r3, 8(r5)
/* 80C43EBC  38 80 FF FF */	li r4, -1
/* 80C43EC0  81 85 00 04 */	lwz r12, 4(r5)
/* 80C43EC4  7D 89 03 A6 */	mtctr r12
/* 80C43EC8  4E 80 04 21 */	bctrl 
lbl_80C43ECC:
/* 80C43ECC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C43ED0  28 05 00 00 */	cmplwi r5, 0
/* 80C43ED4  40 82 FF DC */	bne lbl_80C43EB0
/* 80C43ED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C43EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C43EE0  7C 08 03 A6 */	mtlr r0
/* 80C43EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C43EE8  4E 80 00 20 */	blr 
