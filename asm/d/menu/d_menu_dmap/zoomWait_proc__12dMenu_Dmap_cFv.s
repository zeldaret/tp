lbl_801BFF88:
/* 801BFF88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801BFF8C  7C 08 02 A6 */	mflr r0
/* 801BFF90  90 01 00 24 */	stw r0, 0x24(r1)
/* 801BFF94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801BFF98  7C 7F 1B 78 */	mr r31, r3
/* 801BFF9C  88 03 01 7B */	lbz r0, 0x17b(r3)
/* 801BFFA0  28 00 00 01 */	cmplwi r0, 1
/* 801BFFA4  40 82 00 D4 */	bne lbl_801C0078
/* 801BFFA8  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 801BFFAC  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 801BFFB0  80 83 00 34 */	lwz r4, 0x34(r3)
/* 801BFFB4  54 80 05 EF */	rlwinm. r0, r4, 0, 0x17, 0x17
/* 801BFFB8  41 82 00 48 */	beq lbl_801C0000
/* 801BFFBC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801BFFC0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801BFFC4  A0 03 00 B2 */	lhz r0, 0xb2(r3)
/* 801BFFC8  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 801BFFCC  40 82 00 34 */	bne lbl_801C0000
/* 801BFFD0  88 1F 01 7F */	lbz r0, 0x17f(r31)
/* 801BFFD4  28 00 00 00 */	cmplwi r0, 0
/* 801BFFD8  40 82 00 A0 */	bne lbl_801C0078
/* 801BFFDC  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BFFE0  48 00 25 59 */	bl isEnableZoomIn__20dMenu_StageMapCtrl_cFv
/* 801BFFE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801BFFE8  41 82 00 90 */	beq lbl_801C0078
/* 801BFFEC  38 00 00 01 */	li r0, 1
/* 801BFFF0  98 1F 01 7E */	stb r0, 0x17e(r31)
/* 801BFFF4  38 00 00 00 */	li r0, 0
/* 801BFFF8  98 1F 01 81 */	stb r0, 0x181(r31)
/* 801BFFFC  48 00 00 7C */	b lbl_801C0078
lbl_801C0000:
/* 801C0000  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 801C0004  41 82 00 74 */	beq lbl_801C0078
/* 801C0008  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801C000C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801C0010  A0 03 00 B2 */	lhz r0, 0xb2(r3)
/* 801C0014  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 801C0018  40 82 00 60 */	bne lbl_801C0078
/* 801C001C  88 1F 01 7F */	lbz r0, 0x17f(r31)
/* 801C0020  28 00 00 00 */	cmplwi r0, 0
/* 801C0024  41 82 00 20 */	beq lbl_801C0044
/* 801C0028  80 7F 00 04 */	lwz r3, 4(r31)
/* 801C002C  48 00 25 4D */	bl isEnableZoomOut__20dMenu_StageMapCtrl_cFv
/* 801C0030  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C0034  41 82 00 10 */	beq lbl_801C0044
/* 801C0038  38 00 00 02 */	li r0, 2
/* 801C003C  98 1F 01 7E */	stb r0, 0x17e(r31)
/* 801C0040  48 00 00 38 */	b lbl_801C0078
lbl_801C0044:
/* 801C0044  38 00 00 4A */	li r0, 0x4a
/* 801C0048  90 01 00 08 */	stw r0, 8(r1)
/* 801C004C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C0050  38 81 00 08 */	addi r4, r1, 8
/* 801C0054  38 A0 00 00 */	li r5, 0
/* 801C0058  38 C0 00 00 */	li r6, 0
/* 801C005C  38 E0 00 00 */	li r7, 0
/* 801C0060  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801C0064  FC 40 08 90 */	fmr f2, f1
/* 801C0068  C0 62 A6 5C */	lfs f3, lit_6181(r2)
/* 801C006C  FC 80 18 90 */	fmr f4, f3
/* 801C0070  39 00 00 00 */	li r8, 0
/* 801C0074  48 0E B9 11 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801C0078:
/* 801C0078  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C007C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C0080  7C 08 03 A6 */	mtlr r0
/* 801C0084  38 21 00 20 */	addi r1, r1, 0x20
/* 801C0088  4E 80 00 20 */	blr 
