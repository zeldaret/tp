lbl_80AA9688:
/* 80AA9688  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AA968C  7C 08 02 A6 */	mflr r0
/* 80AA9690  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AA9694  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA9698  4B 8B 8B 44 */	b _savegpr_29
/* 80AA969C  7C 7D 1B 78 */	mr r29, r3
/* 80AA96A0  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80AA96A4  28 1E 00 00 */	cmplwi r30, 0
/* 80AA96A8  41 82 00 30 */	beq lbl_80AA96D8
/* 80AA96AC  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80AA96B0  80 84 00 04 */	lwz r4, 4(r4)
/* 80AA96B4  83 E4 00 04 */	lwz r31, 4(r4)
/* 80AA96B8  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AA96BC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80AA96C0  7D 89 03 A6 */	mtctr r12
/* 80AA96C4  4E 80 04 21 */	bctrl 
/* 80AA96C8  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80AA96CC  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80AA96D0  7C 64 00 2E */	lwzx r3, r4, r0
/* 80AA96D4  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80AA96D8:
/* 80AA96D8  7F A3 EB 78 */	mr r3, r29
/* 80AA96DC  38 80 00 00 */	li r4, 0
/* 80AA96E0  38 A0 00 00 */	li r5, 0
/* 80AA96E4  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80AA96E8  38 C0 00 00 */	li r6, 0
/* 80AA96EC  3C E0 80 AB */	lis r7, lit_4467@ha
/* 80AA96F0  C0 47 D2 BC */	lfs f2, lit_4467@l(r7)
/* 80AA96F4  38 E0 00 00 */	li r7, 0
/* 80AA96F8  39 00 00 00 */	li r8, 0
/* 80AA96FC  39 20 00 00 */	li r9, 0
/* 80AA9700  4B 69 F1 6C */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80AA9704  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA9708  4B 8B 8B 20 */	b _restgpr_29
/* 80AA970C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AA9710  7C 08 03 A6 */	mtlr r0
/* 80AA9714  38 21 00 20 */	addi r1, r1, 0x20
/* 80AA9718  4E 80 00 20 */	blr 
