lbl_80C93F74:
/* 80C93F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C93F78  7C 08 02 A6 */	mflr r0
/* 80C93F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C93F80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C93F84  3C 60 80 C9 */	lis r3, __global_destructor_chain@ha
/* 80C93F88  3B E3 5C C8 */	addi r31, r3, __global_destructor_chain@l
/* 80C93F8C  48 00 00 20 */	b lbl_80C93FAC
lbl_80C93F90:
/* 80C93F90  80 05 00 00 */	lwz r0, 0(r5)
/* 80C93F94  90 1F 00 00 */	stw r0, 0(r31)
/* 80C93F98  80 65 00 08 */	lwz r3, 8(r5)
/* 80C93F9C  38 80 FF FF */	li r4, -1
/* 80C93FA0  81 85 00 04 */	lwz r12, 4(r5)
/* 80C93FA4  7D 89 03 A6 */	mtctr r12
/* 80C93FA8  4E 80 04 21 */	bctrl 
lbl_80C93FAC:
/* 80C93FAC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C93FB0  28 05 00 00 */	cmplwi r5, 0
/* 80C93FB4  40 82 FF DC */	bne lbl_80C93F90
/* 80C93FB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C93FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C93FC0  7C 08 03 A6 */	mtlr r0
/* 80C93FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C93FC8  4E 80 00 20 */	blr 
