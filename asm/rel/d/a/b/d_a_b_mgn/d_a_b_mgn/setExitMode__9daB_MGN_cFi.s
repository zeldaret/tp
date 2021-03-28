lbl_80607A80:
/* 80607A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80607A84  7C 08 02 A6 */	mflr r0
/* 80607A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80607A8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80607A90  93 C1 00 08 */	stw r30, 8(r1)
/* 80607A94  7C 7E 1B 78 */	mr r30, r3
/* 80607A98  7C 9F 23 78 */	mr r31, r4
/* 80607A9C  3C 60 80 61 */	lis r3, stringBase0@ha
/* 80607AA0  38 63 00 84 */	addi r3, r3, stringBase0@l
/* 80607AA4  38 63 00 07 */	addi r3, r3, 7
/* 80607AA8  38 80 00 3D */	li r4, 0x3d
/* 80607AAC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80607AB0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80607AB4  3C A5 00 02 */	addis r5, r5, 2
/* 80607AB8  38 C0 00 80 */	li r6, 0x80
/* 80607ABC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80607AC0  4B A3 48 2C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80607AC4  7C 65 1B 78 */	mr r5, r3
/* 80607AC8  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80607ACC  80 63 00 04 */	lwz r3, 4(r3)
/* 80607AD0  80 83 00 04 */	lwz r4, 4(r3)
/* 80607AD4  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 80607AD8  38 84 00 58 */	addi r4, r4, 0x58
/* 80607ADC  38 C0 00 01 */	li r6, 1
/* 80607AE0  38 E0 00 00 */	li r7, 0
/* 80607AE4  3D 00 80 61 */	lis r8, lit_5032@ha
/* 80607AE8  C0 28 FE 8C */	lfs f1, lit_5032@l(r8)
/* 80607AEC  39 00 00 00 */	li r8, 0
/* 80607AF0  39 20 FF FF */	li r9, -1
/* 80607AF4  4B A0 5B 48 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80607AF8  2C 1F 00 00 */	cmpwi r31, 0
/* 80607AFC  40 82 00 18 */	bne lbl_80607B14
/* 80607B00  7F C3 F3 78 */	mr r3, r30
/* 80607B04  38 80 00 02 */	li r4, 2
/* 80607B08  38 A0 00 04 */	li r5, 4
/* 80607B0C  4B FF FF 21 */	bl setActionMode__9daB_MGN_cFii
/* 80607B10  48 00 00 14 */	b lbl_80607B24
lbl_80607B14:
/* 80607B14  7F C3 F3 78 */	mr r3, r30
/* 80607B18  38 80 00 01 */	li r4, 1
/* 80607B1C  38 A0 00 04 */	li r5, 4
/* 80607B20  4B FF FF 0D */	bl setActionMode__9daB_MGN_cFii
lbl_80607B24:
/* 80607B24  7F C3 F3 78 */	mr r3, r30
/* 80607B28  48 00 02 1D */	bl offBodyCo__9daB_MGN_cFv
/* 80607B2C  80 1E 1F BC */	lwz r0, 0x1fbc(r30)
/* 80607B30  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80607B34  90 1E 1F BC */	stw r0, 0x1fbc(r30)
/* 80607B38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80607B3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80607B40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80607B44  7C 08 03 A6 */	mtlr r0
/* 80607B48  38 21 00 10 */	addi r1, r1, 0x10
/* 80607B4C  4E 80 00 20 */	blr 
