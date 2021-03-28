lbl_80D46E94:
/* 80D46E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D46E98  7C 08 02 A6 */	mflr r0
/* 80D46E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D46EA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D46EA4  3C 60 80 D5 */	lis r3, __global_destructor_chain@ha
/* 80D46EA8  3B E3 C7 E8 */	addi r31, r3, __global_destructor_chain@l
/* 80D46EAC  48 00 00 20 */	b lbl_80D46ECC
lbl_80D46EB0:
/* 80D46EB0  80 05 00 00 */	lwz r0, 0(r5)
/* 80D46EB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80D46EB8  80 65 00 08 */	lwz r3, 8(r5)
/* 80D46EBC  38 80 FF FF */	li r4, -1
/* 80D46EC0  81 85 00 04 */	lwz r12, 4(r5)
/* 80D46EC4  7D 89 03 A6 */	mtctr r12
/* 80D46EC8  4E 80 04 21 */	bctrl 
lbl_80D46ECC:
/* 80D46ECC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80D46ED0  28 05 00 00 */	cmplwi r5, 0
/* 80D46ED4  40 82 FF DC */	bne lbl_80D46EB0
/* 80D46ED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D46EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D46EE0  7C 08 03 A6 */	mtlr r0
/* 80D46EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D46EE8  4E 80 00 20 */	blr 
