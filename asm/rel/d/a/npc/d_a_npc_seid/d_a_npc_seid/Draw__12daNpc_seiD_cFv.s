lbl_80AC9B14:
/* 80AC9B14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC9B18  7C 08 02 A6 */	mflr r0
/* 80AC9B1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC9B20  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC9B24  4B 89 86 B8 */	b _savegpr_29
/* 80AC9B28  7C 7D 1B 78 */	mr r29, r3
/* 80AC9B2C  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80AC9B30  28 1E 00 00 */	cmplwi r30, 0
/* 80AC9B34  41 82 00 30 */	beq lbl_80AC9B64
/* 80AC9B38  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80AC9B3C  80 84 00 04 */	lwz r4, 4(r4)
/* 80AC9B40  83 E4 00 04 */	lwz r31, 4(r4)
/* 80AC9B44  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AC9B48  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80AC9B4C  7D 89 03 A6 */	mtctr r12
/* 80AC9B50  4E 80 04 21 */	bctrl 
/* 80AC9B54  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80AC9B58  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80AC9B5C  7C 64 00 2E */	lwzx r3, r4, r0
/* 80AC9B60  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80AC9B64:
/* 80AC9B64  7F A3 EB 78 */	mr r3, r29
/* 80AC9B68  38 80 00 00 */	li r4, 0
/* 80AC9B6C  38 A0 00 01 */	li r5, 1
/* 80AC9B70  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80AC9B74  38 C0 00 00 */	li r6, 0
/* 80AC9B78  3C E0 80 AD */	lis r7, lit_4247@ha
/* 80AC9B7C  C0 47 B4 00 */	lfs f2, lit_4247@l(r7)
/* 80AC9B80  38 E0 00 00 */	li r7, 0
/* 80AC9B84  39 00 00 00 */	li r8, 0
/* 80AC9B88  39 20 00 00 */	li r9, 0
/* 80AC9B8C  4B 67 EC E0 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80AC9B90  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC9B94  4B 89 86 94 */	b _restgpr_29
/* 80AC9B98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC9B9C  7C 08 03 A6 */	mtlr r0
/* 80AC9BA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC9BA4  4E 80 00 20 */	blr 
