lbl_80A9365C:
/* 80A9365C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A93660  7C 08 02 A6 */	mflr r0
/* 80A93664  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A93668  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9366C  4B 8C EB 71 */	bl _savegpr_29
/* 80A93670  7C 7D 1B 78 */	mr r29, r3
/* 80A93674  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80A93678  28 1E 00 00 */	cmplwi r30, 0
/* 80A9367C  41 82 00 30 */	beq lbl_80A936AC
/* 80A93680  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80A93684  80 84 00 04 */	lwz r4, 4(r4)
/* 80A93688  83 E4 00 04 */	lwz r31, 4(r4)
/* 80A9368C  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A93690  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80A93694  7D 89 03 A6 */	mtctr r12
/* 80A93698  4E 80 04 21 */	bctrl 
/* 80A9369C  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80A936A0  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80A936A4  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A936A8  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80A936AC:
/* 80A936AC  7F A3 EB 78 */	mr r3, r29
/* 80A936B0  38 80 00 00 */	li r4, 0
/* 80A936B4  38 A0 00 00 */	li r5, 0
/* 80A936B8  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80A936BC  38 C0 00 00 */	li r6, 0
/* 80A936C0  3C E0 80 A9 */	lis r7, lit_4546@ha /* 0x80A96B1C@ha */
/* 80A936C4  C0 47 6B 1C */	lfs f2, lit_4546@l(r7)  /* 0x80A96B1C@l */
/* 80A936C8  38 E0 00 00 */	li r7, 0
/* 80A936CC  39 00 00 00 */	li r8, 0
/* 80A936D0  39 20 00 00 */	li r9, 0
/* 80A936D4  4B 6B 51 99 */	bl draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80A936D8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A936DC  4B 8C EB 4D */	bl _restgpr_29
/* 80A936E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A936E4  7C 08 03 A6 */	mtlr r0
/* 80A936E8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A936EC  4E 80 00 20 */	blr 
