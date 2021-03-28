lbl_80B697B0:
/* 80B697B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B697B4  7C 08 02 A6 */	mflr r0
/* 80B697B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B697BC  39 61 00 20 */	addi r11, r1, 0x20
/* 80B697C0  4B 7F 8A 1C */	b _savegpr_29
/* 80B697C4  7C 7D 1B 78 */	mr r29, r3
/* 80B697C8  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80B697CC  28 1E 00 00 */	cmplwi r30, 0
/* 80B697D0  41 82 00 30 */	beq lbl_80B69800
/* 80B697D4  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80B697D8  80 84 00 04 */	lwz r4, 4(r4)
/* 80B697DC  83 E4 00 04 */	lwz r31, 4(r4)
/* 80B697E0  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80B697E4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B697E8  7D 89 03 A6 */	mtctr r12
/* 80B697EC  4E 80 04 21 */	bctrl 
/* 80B697F0  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80B697F4  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80B697F8  7C 64 00 2E */	lwzx r3, r4, r0
/* 80B697FC  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80B69800:
/* 80B69800  7F A3 EB 78 */	mr r3, r29
/* 80B69804  38 80 00 00 */	li r4, 0
/* 80B69808  38 A0 00 00 */	li r5, 0
/* 80B6980C  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80B69810  38 C0 00 00 */	li r6, 0
/* 80B69814  3C E0 80 B7 */	lis r7, lit_4190@ha
/* 80B69818  C0 47 BD 6C */	lfs f2, lit_4190@l(r7)
/* 80B6981C  38 E0 00 01 */	li r7, 1
/* 80B69820  39 00 00 00 */	li r8, 0
/* 80B69824  39 20 00 00 */	li r9, 0
/* 80B69828  4B 5D F0 44 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80B6982C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B69830  4B 7F 89 F8 */	b _restgpr_29
/* 80B69834  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B69838  7C 08 03 A6 */	mtlr r0
/* 80B6983C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B69840  4E 80 00 20 */	blr 
