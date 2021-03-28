lbl_80A7C114:
/* 80A7C114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7C118  7C 08 02 A6 */	mflr r0
/* 80A7C11C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7C120  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A7C124  3C 60 80 A8 */	lis r3, __global_destructor_chain@ha
/* 80A7C128  3B E3 3D 70 */	addi r31, r3, __global_destructor_chain@l
/* 80A7C12C  48 00 00 20 */	b lbl_80A7C14C
lbl_80A7C130:
/* 80A7C130  80 05 00 00 */	lwz r0, 0(r5)
/* 80A7C134  90 1F 00 00 */	stw r0, 0(r31)
/* 80A7C138  80 65 00 08 */	lwz r3, 8(r5)
/* 80A7C13C  38 80 FF FF */	li r4, -1
/* 80A7C140  81 85 00 04 */	lwz r12, 4(r5)
/* 80A7C144  7D 89 03 A6 */	mtctr r12
/* 80A7C148  4E 80 04 21 */	bctrl 
lbl_80A7C14C:
/* 80A7C14C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80A7C150  28 05 00 00 */	cmplwi r5, 0
/* 80A7C154  40 82 FF DC */	bne lbl_80A7C130
/* 80A7C158  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A7C15C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7C160  7C 08 03 A6 */	mtlr r0
/* 80A7C164  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7C168  4E 80 00 20 */	blr 
