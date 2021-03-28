lbl_80B6EDD4:
/* 80B6EDD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6EDD8  7C 08 02 A6 */	mflr r0
/* 80B6EDDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6EDE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6EDE4  3C 60 80 B7 */	lis r3, __global_destructor_chain@ha
/* 80B6EDE8  3B E3 1E A8 */	addi r31, r3, __global_destructor_chain@l
/* 80B6EDEC  48 00 00 20 */	b lbl_80B6EE0C
lbl_80B6EDF0:
/* 80B6EDF0  80 05 00 00 */	lwz r0, 0(r5)
/* 80B6EDF4  90 1F 00 00 */	stw r0, 0(r31)
/* 80B6EDF8  80 65 00 08 */	lwz r3, 8(r5)
/* 80B6EDFC  38 80 FF FF */	li r4, -1
/* 80B6EE00  81 85 00 04 */	lwz r12, 4(r5)
/* 80B6EE04  7D 89 03 A6 */	mtctr r12
/* 80B6EE08  4E 80 04 21 */	bctrl 
lbl_80B6EE0C:
/* 80B6EE0C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80B6EE10  28 05 00 00 */	cmplwi r5, 0
/* 80B6EE14  40 82 FF DC */	bne lbl_80B6EDF0
/* 80B6EE18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6EE1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6EE20  7C 08 03 A6 */	mtlr r0
/* 80B6EE24  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6EE28  4E 80 00 20 */	blr 
