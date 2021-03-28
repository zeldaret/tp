lbl_80C8FDB4:
/* 80C8FDB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8FDB8  7C 08 02 A6 */	mflr r0
/* 80C8FDBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8FDC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8FDC4  3C 60 80 C9 */	lis r3, __global_destructor_chain@ha
/* 80C8FDC8  3B E3 0A 48 */	addi r31, r3, __global_destructor_chain@l
/* 80C8FDCC  48 00 00 20 */	b lbl_80C8FDEC
lbl_80C8FDD0:
/* 80C8FDD0  80 05 00 00 */	lwz r0, 0(r5)
/* 80C8FDD4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8FDD8  80 65 00 08 */	lwz r3, 8(r5)
/* 80C8FDDC  38 80 FF FF */	li r4, -1
/* 80C8FDE0  81 85 00 04 */	lwz r12, 4(r5)
/* 80C8FDE4  7D 89 03 A6 */	mtctr r12
/* 80C8FDE8  4E 80 04 21 */	bctrl 
lbl_80C8FDEC:
/* 80C8FDEC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C8FDF0  28 05 00 00 */	cmplwi r5, 0
/* 80C8FDF4  40 82 FF DC */	bne lbl_80C8FDD0
/* 80C8FDF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8FDFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8FE00  7C 08 03 A6 */	mtlr r0
/* 80C8FE04  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8FE08  4E 80 00 20 */	blr 
