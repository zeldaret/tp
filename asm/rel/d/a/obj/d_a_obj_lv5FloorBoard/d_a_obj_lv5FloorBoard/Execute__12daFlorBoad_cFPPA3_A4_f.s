lbl_80C6AAAC:
/* 80C6AAAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6AAB0  7C 08 02 A6 */	mflr r0
/* 80C6AAB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6AAB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6AABC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6AAC0  7C 7E 1B 78 */	mr r30, r3
/* 80C6AAC4  7C 9F 23 78 */	mr r31, r4
/* 80C6AAC8  48 00 00 3D */	bl procMain__12daFlorBoad_cFv
/* 80C6AACC  80 7E 07 20 */	lwz r3, 0x720(r30)
/* 80C6AAD0  38 03 00 24 */	addi r0, r3, 0x24
/* 80C6AAD4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6AAD8  7F C3 F3 78 */	mr r3, r30
/* 80C6AADC  4B FF FC 21 */	bl setBaseMtx__12daFlorBoad_cFv
/* 80C6AAE0  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80C6AAE4  4B 41 8D 4D */	bl Move__10dCcD_GSttsFv
/* 80C6AAE8  38 60 00 01 */	li r3, 1
/* 80C6AAEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6AAF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6AAF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6AAF8  7C 08 03 A6 */	mtlr r0
/* 80C6AAFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6AB00  4E 80 00 20 */	blr 
