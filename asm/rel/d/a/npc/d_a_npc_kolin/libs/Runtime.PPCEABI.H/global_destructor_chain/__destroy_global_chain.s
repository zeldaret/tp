lbl_80553F94:
/* 80553F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80553F98  7C 08 02 A6 */	mflr r0
/* 80553F9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80553FA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80553FA4  3C 60 80 56 */	lis r3, __global_destructor_chain@ha
/* 80553FA8  3B E3 B3 C8 */	addi r31, r3, __global_destructor_chain@l
/* 80553FAC  48 00 00 20 */	b lbl_80553FCC
lbl_80553FB0:
/* 80553FB0  80 05 00 00 */	lwz r0, 0(r5)
/* 80553FB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80553FB8  80 65 00 08 */	lwz r3, 8(r5)
/* 80553FBC  38 80 FF FF */	li r4, -1
/* 80553FC0  81 85 00 04 */	lwz r12, 4(r5)
/* 80553FC4  7D 89 03 A6 */	mtctr r12
/* 80553FC8  4E 80 04 21 */	bctrl 
lbl_80553FCC:
/* 80553FCC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80553FD0  28 05 00 00 */	cmplwi r5, 0
/* 80553FD4  40 82 FF DC */	bne lbl_80553FB0
/* 80553FD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80553FDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80553FE0  7C 08 03 A6 */	mtlr r0
/* 80553FE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80553FE8  4E 80 00 20 */	blr 
