lbl_80486ABC:
/* 80486ABC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80486AC0  7C 08 02 A6 */	mflr r0
/* 80486AC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80486AC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80486ACC  7C 7F 1B 78 */	mr r31, r3
/* 80486AD0  4B FF FB BD */	bl checkHit__10daSwhit0_cFv
/* 80486AD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80486AD8  41 82 00 9C */	beq lbl_80486B74
/* 80486ADC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80486AE0  7C 03 07 74 */	extsb r3, r0
/* 80486AE4  4B BA 65 88 */	b dComIfGp_getReverb__Fi
/* 80486AE8  7C 67 1B 78 */	mr r7, r3
/* 80486AEC  3C 60 00 04 */	lis r3, 0x0004 /* 0x00040024@ha */
/* 80486AF0  38 03 00 24 */	addi r0, r3, 0x0024 /* 0x00040024@l */
/* 80486AF4  90 01 00 08 */	stw r0, 8(r1)
/* 80486AF8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80486AFC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80486B00  80 63 00 00 */	lwz r3, 0(r3)
/* 80486B04  38 81 00 08 */	addi r4, r1, 8
/* 80486B08  38 BF 05 38 */	addi r5, r31, 0x538
/* 80486B0C  38 C0 00 00 */	li r6, 0
/* 80486B10  3D 00 80 48 */	lis r8, lit_3685@ha
/* 80486B14  C0 28 73 70 */	lfs f1, lit_3685@l(r8)
/* 80486B18  FC 40 08 90 */	fmr f2, f1
/* 80486B1C  3D 00 80 48 */	lis r8, lit_3982@ha
/* 80486B20  C0 68 73 78 */	lfs f3, lit_3982@l(r8)
/* 80486B24  FC 80 18 90 */	fmr f4, f3
/* 80486B28  39 00 00 00 */	li r8, 0
/* 80486B2C  4B E2 4E 58 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80486B30  7F E3 FB 78 */	mr r3, r31
/* 80486B34  4B FF F5 15 */	bl getType__10daSwhit0_cFv
/* 80486B38  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80486B3C  28 00 00 03 */	cmplwi r0, 3
/* 80486B40  41 82 00 6C */	beq lbl_80486BAC
/* 80486B44  A8 1F 07 56 */	lha r0, 0x756(r31)
/* 80486B48  2C 00 FF FF */	cmpwi r0, -1
/* 80486B4C  40 82 00 14 */	bne lbl_80486B60
/* 80486B50  38 00 00 00 */	li r0, 0
/* 80486B54  98 1F 07 4D */	stb r0, 0x74d(r31)
/* 80486B58  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80486B5C  48 00 00 50 */	b lbl_80486BAC
lbl_80486B60:
/* 80486B60  38 00 00 02 */	li r0, 2
/* 80486B64  98 1F 07 4D */	stb r0, 0x74d(r31)
/* 80486B68  38 00 00 05 */	li r0, 5
/* 80486B6C  98 1F 07 4E */	stb r0, 0x74e(r31)
/* 80486B70  48 00 00 3C */	b lbl_80486BAC
lbl_80486B74:
/* 80486B74  7F E3 FB 78 */	mr r3, r31
/* 80486B78  4B FF F4 81 */	bl getSwNo__10daSwhit0_cFv
/* 80486B7C  7C 64 1B 78 */	mr r4, r3
/* 80486B80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80486B84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80486B88  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80486B8C  7C 05 07 74 */	extsb r5, r0
/* 80486B90  4B BA E7 D0 */	b isSwitch__10dSv_info_cCFii
/* 80486B94  2C 03 00 00 */	cmpwi r3, 0
/* 80486B98  41 82 00 14 */	beq lbl_80486BAC
/* 80486B9C  38 00 00 06 */	li r0, 6
/* 80486BA0  98 1F 07 4D */	stb r0, 0x74d(r31)
/* 80486BA4  7F E3 FB 78 */	mr r3, r31
/* 80486BA8  4B FF FC 59 */	bl onSwitch__10daSwhit0_cFv
lbl_80486BAC:
/* 80486BAC  38 60 00 01 */	li r3, 1
/* 80486BB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80486BB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80486BB8  7C 08 03 A6 */	mtlr r0
/* 80486BBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80486BC0  4E 80 00 20 */	blr 
