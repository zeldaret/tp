lbl_80A146B4:
/* 80A146B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A146B8  7C 08 02 A6 */	mflr r0
/* 80A146BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A146C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A146C4  3C 60 80 A2 */	lis r3, __global_destructor_chain@ha
/* 80A146C8  3B E3 AD D8 */	addi r31, r3, __global_destructor_chain@l
/* 80A146CC  48 00 00 20 */	b lbl_80A146EC
lbl_80A146D0:
/* 80A146D0  80 05 00 00 */	lwz r0, 0(r5)
/* 80A146D4  90 1F 00 00 */	stw r0, 0(r31)
/* 80A146D8  80 65 00 08 */	lwz r3, 8(r5)
/* 80A146DC  38 80 FF FF */	li r4, -1
/* 80A146E0  81 85 00 04 */	lwz r12, 4(r5)
/* 80A146E4  7D 89 03 A6 */	mtctr r12
/* 80A146E8  4E 80 04 21 */	bctrl 
lbl_80A146EC:
/* 80A146EC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80A146F0  28 05 00 00 */	cmplwi r5, 0
/* 80A146F4  40 82 FF DC */	bne lbl_80A146D0
/* 80A146F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A146FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A14700  7C 08 03 A6 */	mtlr r0
/* 80A14704  38 21 00 10 */	addi r1, r1, 0x10
/* 80A14708  4E 80 00 20 */	blr 
