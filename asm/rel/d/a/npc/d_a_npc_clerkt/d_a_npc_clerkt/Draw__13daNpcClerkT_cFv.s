lbl_8099AA80:
/* 8099AA80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8099AA84  7C 08 02 A6 */	mflr r0
/* 8099AA88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8099AA8C  39 61 00 20 */	addi r11, r1, 0x20
/* 8099AA90  4B 9C 77 4C */	b _savegpr_29
/* 8099AA94  7C 7D 1B 78 */	mr r29, r3
/* 8099AA98  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 8099AA9C  28 1E 00 00 */	cmplwi r30, 0
/* 8099AAA0  41 82 00 30 */	beq lbl_8099AAD0
/* 8099AAA4  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 8099AAA8  80 84 00 04 */	lwz r4, 4(r4)
/* 8099AAAC  83 E4 00 04 */	lwz r31, 4(r4)
/* 8099AAB0  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 8099AAB4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8099AAB8  7D 89 03 A6 */	mtctr r12
/* 8099AABC  4E 80 04 21 */	bctrl 
/* 8099AAC0  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 8099AAC4  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 8099AAC8  7C 64 00 2E */	lwzx r3, r4, r0
/* 8099AACC  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_8099AAD0:
/* 8099AAD0  7F A3 EB 78 */	mr r3, r29
/* 8099AAD4  38 80 00 00 */	li r4, 0
/* 8099AAD8  38 A0 00 00 */	li r5, 0
/* 8099AADC  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 8099AAE0  38 C0 00 00 */	li r6, 0
/* 8099AAE4  3C E0 80 9A */	lis r7, lit_4124@ha
/* 8099AAE8  C0 47 D2 F4 */	lfs f2, lit_4124@l(r7)
/* 8099AAEC  38 E0 00 00 */	li r7, 0
/* 8099AAF0  39 00 00 00 */	li r8, 0
/* 8099AAF4  39 20 00 00 */	li r9, 0
/* 8099AAF8  4B 7A DD 74 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 8099AAFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8099AB00  4B 9C 77 28 */	b _restgpr_29
/* 8099AB04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8099AB08  7C 08 03 A6 */	mtlr r0
/* 8099AB0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8099AB10  4E 80 00 20 */	blr 
