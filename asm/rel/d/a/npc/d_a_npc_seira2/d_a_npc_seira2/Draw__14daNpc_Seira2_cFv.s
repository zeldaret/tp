lbl_80AD1610:
/* 80AD1610  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD1614  7C 08 02 A6 */	mflr r0
/* 80AD1618  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD161C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD1620  4B 89 0B BC */	b _savegpr_29
/* 80AD1624  7C 7D 1B 78 */	mr r29, r3
/* 80AD1628  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80AD162C  28 1E 00 00 */	cmplwi r30, 0
/* 80AD1630  41 82 00 30 */	beq lbl_80AD1660
/* 80AD1634  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80AD1638  80 84 00 04 */	lwz r4, 4(r4)
/* 80AD163C  83 E4 00 04 */	lwz r31, 4(r4)
/* 80AD1640  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AD1644  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80AD1648  7D 89 03 A6 */	mtctr r12
/* 80AD164C  4E 80 04 21 */	bctrl 
/* 80AD1650  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80AD1654  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80AD1658  7C 64 00 2E */	lwzx r3, r4, r0
/* 80AD165C  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80AD1660:
/* 80AD1660  7F A3 EB 78 */	mr r3, r29
/* 80AD1664  38 80 00 00 */	li r4, 0
/* 80AD1668  38 A0 00 00 */	li r5, 0
/* 80AD166C  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80AD1670  38 C0 00 00 */	li r6, 0
/* 80AD1674  3C E0 80 AD */	lis r7, lit_4056@ha
/* 80AD1678  C0 47 4B 0C */	lfs f2, lit_4056@l(r7)
/* 80AD167C  38 E0 00 00 */	li r7, 0
/* 80AD1680  39 00 00 00 */	li r8, 0
/* 80AD1684  39 20 00 00 */	li r9, 0
/* 80AD1688  4B 67 71 E4 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80AD168C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD1690  4B 89 0B 98 */	b _restgpr_29
/* 80AD1694  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD1698  7C 08 03 A6 */	mtlr r0
/* 80AD169C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD16A0  4E 80 00 20 */	blr 
