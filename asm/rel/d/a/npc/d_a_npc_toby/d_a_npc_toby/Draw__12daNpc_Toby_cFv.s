lbl_80B1EF7C:
/* 80B1EF7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B1EF80  7C 08 02 A6 */	mflr r0
/* 80B1EF84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B1EF88  39 61 00 20 */	addi r11, r1, 0x20
/* 80B1EF8C  4B 84 32 50 */	b _savegpr_29
/* 80B1EF90  7C 7D 1B 78 */	mr r29, r3
/* 80B1EF94  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80B1EF98  28 1E 00 00 */	cmplwi r30, 0
/* 80B1EF9C  41 82 00 30 */	beq lbl_80B1EFCC
/* 80B1EFA0  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80B1EFA4  80 84 00 04 */	lwz r4, 4(r4)
/* 80B1EFA8  83 E4 00 04 */	lwz r31, 4(r4)
/* 80B1EFAC  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80B1EFB0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B1EFB4  7D 89 03 A6 */	mtctr r12
/* 80B1EFB8  4E 80 04 21 */	bctrl 
/* 80B1EFBC  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80B1EFC0  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80B1EFC4  7C 64 00 2E */	lwzx r3, r4, r0
/* 80B1EFC8  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80B1EFCC:
/* 80B1EFCC  7F A3 EB 78 */	mr r3, r29
/* 80B1EFD0  38 80 00 00 */	li r4, 0
/* 80B1EFD4  38 A0 00 00 */	li r5, 0
/* 80B1EFD8  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80B1EFDC  38 C0 00 00 */	li r6, 0
/* 80B1EFE0  3C E0 80 B2 */	lis r7, lit_4544@ha
/* 80B1EFE4  C0 47 4A C4 */	lfs f2, lit_4544@l(r7)
/* 80B1EFE8  38 E0 00 00 */	li r7, 0
/* 80B1EFEC  39 00 00 00 */	li r8, 0
/* 80B1EFF0  39 20 00 00 */	li r9, 0
/* 80B1EFF4  4B 62 98 78 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80B1EFF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B1EFFC  4B 84 32 2C */	b _restgpr_29
/* 80B1F000  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B1F004  7C 08 03 A6 */	mtlr r0
/* 80B1F008  38 21 00 20 */	addi r1, r1, 0x20
/* 80B1F00C  4E 80 00 20 */	blr 
