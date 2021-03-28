lbl_80AF5F94:
/* 80AF5F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF5F98  7C 08 02 A6 */	mflr r0
/* 80AF5F9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF5FA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF5FA4  3C 60 80 AF */	lis r3, __global_destructor_chain@ha
/* 80AF5FA8  3B E3 75 B8 */	addi r31, r3, __global_destructor_chain@l
/* 80AF5FAC  48 00 00 20 */	b lbl_80AF5FCC
lbl_80AF5FB0:
/* 80AF5FB0  80 05 00 00 */	lwz r0, 0(r5)
/* 80AF5FB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80AF5FB8  80 65 00 08 */	lwz r3, 8(r5)
/* 80AF5FBC  38 80 FF FF */	li r4, -1
/* 80AF5FC0  81 85 00 04 */	lwz r12, 4(r5)
/* 80AF5FC4  7D 89 03 A6 */	mtctr r12
/* 80AF5FC8  4E 80 04 21 */	bctrl 
lbl_80AF5FCC:
/* 80AF5FCC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80AF5FD0  28 05 00 00 */	cmplwi r5, 0
/* 80AF5FD4  40 82 FF DC */	bne lbl_80AF5FB0
/* 80AF5FD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF5FDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF5FE0  7C 08 03 A6 */	mtlr r0
/* 80AF5FE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF5FE8  4E 80 00 20 */	blr 
