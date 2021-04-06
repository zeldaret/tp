lbl_806CFDF4:
/* 806CFDF4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806CFDF8  7C 08 02 A6 */	mflr r0
/* 806CFDFC  90 01 00 44 */	stw r0, 0x44(r1)
/* 806CFE00  39 61 00 40 */	addi r11, r1, 0x40
/* 806CFE04  4B C9 23 D9 */	bl _savegpr_29
/* 806CFE08  7C 7E 1B 78 */	mr r30, r3
/* 806CFE0C  3C 60 80 6D */	lis r3, lit_3907@ha /* 0x806D0E60@ha */
/* 806CFE10  3B E3 0E 60 */	addi r31, r3, lit_3907@l /* 0x806D0E60@l */
/* 806CFE14  80 7E 06 84 */	lwz r3, 0x684(r30)
/* 806CFE18  2C 03 00 00 */	cmpwi r3, 0
/* 806CFE1C  41 82 00 0C */	beq lbl_806CFE28
/* 806CFE20  38 03 FF FF */	addi r0, r3, -1
/* 806CFE24  90 1E 06 84 */	stw r0, 0x684(r30)
lbl_806CFE28:
/* 806CFE28  80 7E 06 88 */	lwz r3, 0x688(r30)
/* 806CFE2C  2C 03 00 00 */	cmpwi r3, 0
/* 806CFE30  41 82 00 0C */	beq lbl_806CFE3C
/* 806CFE34  38 03 FF FF */	addi r0, r3, -1
/* 806CFE38  90 1E 06 88 */	stw r0, 0x688(r30)
lbl_806CFE3C:
/* 806CFE3C  80 7E 06 80 */	lwz r3, 0x680(r30)
/* 806CFE40  2C 03 00 00 */	cmpwi r3, 0
/* 806CFE44  41 82 00 0C */	beq lbl_806CFE50
/* 806CFE48  38 03 FF FF */	addi r0, r3, -1
/* 806CFE4C  90 1E 06 80 */	stw r0, 0x680(r30)
lbl_806CFE50:
/* 806CFE50  80 7E 06 8C */	lwz r3, 0x68c(r30)
/* 806CFE54  2C 03 00 00 */	cmpwi r3, 0
/* 806CFE58  41 82 00 CC */	beq lbl_806CFF24
/* 806CFE5C  38 03 FF FF */	addi r0, r3, -1
/* 806CFE60  90 1E 06 8C */	stw r0, 0x68c(r30)
/* 806CFE64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806CFE68  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806CFE6C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 806CFE70  A8 03 05 6C */	lha r0, 0x56c(r3)
/* 806CFE74  2C 00 00 1E */	cmpwi r0, 0x1e
/* 806CFE78  40 80 00 AC */	bge lbl_806CFF24
/* 806CFE7C  48 00 0F B9 */	bl checkNowWolf__9daPy_py_cFv
/* 806CFE80  28 03 00 00 */	cmplwi r3, 0
/* 806CFE84  40 82 00 54 */	bne lbl_806CFED8
/* 806CFE88  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 806CFE8C  C8 3F 00 70 */	lfd f1, 0x70(r31)
/* 806CFE90  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806CFE94  90 01 00 24 */	stw r0, 0x24(r1)
/* 806CFE98  3C 00 43 30 */	lis r0, 0x4330
/* 806CFE9C  90 01 00 20 */	stw r0, 0x20(r1)
/* 806CFEA0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 806CFEA4  EC 40 08 28 */	fsubs f2, f0, f1
/* 806CFEA8  3C 60 80 6D */	lis r3, l_HIO@ha /* 0x806D1138@ha */
/* 806CFEAC  38 63 11 38 */	addi r3, r3, l_HIO@l /* 0x806D1138@l */
/* 806CFEB0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806CFEB4  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 806CFEB8  EC 01 00 2A */	fadds f0, f1, f0
/* 806CFEBC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806CFEC0  40 80 00 64 */	bge lbl_806CFF24
/* 806CFEC4  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 806CFEC8  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 806CFECC  60 00 00 03 */	ori r0, r0, 3
/* 806CFED0  90 03 05 8C */	stw r0, 0x58c(r3)
/* 806CFED4  48 00 00 50 */	b lbl_806CFF24
lbl_806CFED8:
/* 806CFED8  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 806CFEDC  C8 3F 00 70 */	lfd f1, 0x70(r31)
/* 806CFEE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806CFEE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806CFEE8  3C 00 43 30 */	lis r0, 0x4330
/* 806CFEEC  90 01 00 20 */	stw r0, 0x20(r1)
/* 806CFEF0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 806CFEF4  EC 40 08 28 */	fsubs f2, f0, f1
/* 806CFEF8  3C 60 80 6D */	lis r3, l_HIO@ha /* 0x806D1138@ha */
/* 806CFEFC  38 63 11 38 */	addi r3, r3, l_HIO@l /* 0x806D1138@l */
/* 806CFF00  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 806CFF04  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 806CFF08  EC 01 00 2A */	fadds f0, f1, f0
/* 806CFF0C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806CFF10  40 80 00 14 */	bge lbl_806CFF24
/* 806CFF14  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 806CFF18  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 806CFF1C  60 00 00 03 */	ori r0, r0, 3
/* 806CFF20  90 03 05 8C */	stw r0, 0x58c(r3)
lbl_806CFF24:
/* 806CFF24  80 7E 06 94 */	lwz r3, 0x694(r30)
/* 806CFF28  2C 03 00 00 */	cmpwi r3, 0
/* 806CFF2C  41 82 00 0C */	beq lbl_806CFF38
/* 806CFF30  38 03 FF FF */	addi r0, r3, -1
/* 806CFF34  90 1E 06 94 */	stw r0, 0x694(r30)
lbl_806CFF38:
/* 806CFF38  80 7E 06 90 */	lwz r3, 0x690(r30)
/* 806CFF3C  2C 03 00 00 */	cmpwi r3, 0
/* 806CFF40  41 82 00 40 */	beq lbl_806CFF80
/* 806CFF44  38 03 FF FF */	addi r0, r3, -1
/* 806CFF48  90 1E 06 90 */	stw r0, 0x690(r30)
/* 806CFF4C  80 1E 06 90 */	lwz r0, 0x690(r30)
/* 806CFF50  2C 00 00 00 */	cmpwi r0, 0
/* 806CFF54  40 82 00 2C */	bne lbl_806CFF80
/* 806CFF58  3C 60 80 6D */	lis r3, m_cry_gi@ha /* 0x806D1164@ha */
/* 806CFF5C  80 03 11 64 */	lwz r0, m_cry_gi@l(r3)  /* 0x806D1164@l */
/* 806CFF60  7C 00 F0 40 */	cmplw r0, r30
/* 806CFF64  40 82 00 1C */	bne lbl_806CFF80
/* 806CFF68  4B AB 16 D9 */	bl dCam_getBody__Fv
/* 806CFF6C  7F C4 F3 78 */	mr r4, r30
/* 806CFF70  4B AB 16 2D */	bl ForceLockOff__9dCamera_cFP10fopAc_ac_c
/* 806CFF74  38 00 00 00 */	li r0, 0
/* 806CFF78  3C 60 80 6D */	lis r3, m_cry_gi@ha /* 0x806D1164@ha */
/* 806CFF7C  90 03 11 64 */	stw r0, m_cry_gi@l(r3)  /* 0x806D1164@l */
lbl_806CFF80:
/* 806CFF80  7F C3 F3 78 */	mr r3, r30
/* 806CFF84  4B FF F8 F5 */	bl action__8daE_GI_cFv
/* 806CFF88  7F C3 F3 78 */	mr r3, r30
/* 806CFF8C  4B FF FB D5 */	bl mtx_set__8daE_GI_cFv
/* 806CFF90  7F C3 F3 78 */	mr r3, r30
/* 806CFF94  4B FF FC 5D */	bl cc_set__8daE_GI_cFv
/* 806CFF98  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CFF9C  80 63 00 04 */	lwz r3, 4(r3)
/* 806CFFA0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806CFFA4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806CFFA8  38 63 00 60 */	addi r3, r3, 0x60
/* 806CFFAC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806CFFB0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806CFFB4  4B C7 64 FD */	bl PSMTXCopy
/* 806CFFB8  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 806CFFBC  C0 5F 00 04 */	lfs f2, 4(r31)
/* 806CFFC0  FC 60 10 90 */	fmr f3, f2
/* 806CFFC4  4B 93 CD D9 */	bl transM__14mDoMtx_stack_cFfff
/* 806CFFC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806CFFCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806CFFD0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806CFFD4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806CFFD8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806CFFDC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806CFFE0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806CFFE4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806CFFE8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806CFFEC  D0 21 00 08 */	stfs f1, 8(r1)
/* 806CFFF0  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 806CFFF4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806CFFF8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806CFFFC  7F C3 F3 78 */	mr r3, r30
/* 806D0000  38 9E 05 BC */	addi r4, r30, 0x5bc
/* 806D0004  38 A1 00 14 */	addi r5, r1, 0x14
/* 806D0008  38 C1 00 08 */	addi r6, r1, 8
/* 806D000C  48 00 0A 15 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 806D0010  38 60 00 01 */	li r3, 1
/* 806D0014  39 61 00 40 */	addi r11, r1, 0x40
/* 806D0018  4B C9 22 11 */	bl _restgpr_29
/* 806D001C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806D0020  7C 08 03 A6 */	mtlr r0
/* 806D0024  38 21 00 40 */	addi r1, r1, 0x40
/* 806D0028  4E 80 00 20 */	blr 
