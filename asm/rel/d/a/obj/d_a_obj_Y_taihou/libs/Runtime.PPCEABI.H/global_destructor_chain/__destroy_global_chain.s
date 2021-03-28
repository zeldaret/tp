lbl_80B9FA94:
/* 80B9FA94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9FA98  7C 08 02 A6 */	mflr r0
/* 80B9FA9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9FAA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9FAA4  3C 60 80 BA */	lis r3, __global_destructor_chain@ha
/* 80B9FAA8  3B E3 13 10 */	addi r31, r3, __global_destructor_chain@l
/* 80B9FAAC  48 00 00 20 */	b lbl_80B9FACC
lbl_80B9FAB0:
/* 80B9FAB0  80 05 00 00 */	lwz r0, 0(r5)
/* 80B9FAB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80B9FAB8  80 65 00 08 */	lwz r3, 8(r5)
/* 80B9FABC  38 80 FF FF */	li r4, -1
/* 80B9FAC0  81 85 00 04 */	lwz r12, 4(r5)
/* 80B9FAC4  7D 89 03 A6 */	mtctr r12
/* 80B9FAC8  4E 80 04 21 */	bctrl 
lbl_80B9FACC:
/* 80B9FACC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80B9FAD0  28 05 00 00 */	cmplwi r5, 0
/* 80B9FAD4  40 82 FF DC */	bne lbl_80B9FAB0
/* 80B9FAD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9FADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9FAE0  7C 08 03 A6 */	mtlr r0
/* 80B9FAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9FAE8  4E 80 00 20 */	blr 
