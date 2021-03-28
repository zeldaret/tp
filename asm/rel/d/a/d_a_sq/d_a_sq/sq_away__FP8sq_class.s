lbl_8059FE50:
/* 8059FE50  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8059FE54  7C 08 02 A6 */	mflr r0
/* 8059FE58  90 01 00 54 */	stw r0, 0x54(r1)
/* 8059FE5C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8059FE60  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8059FE64  39 61 00 40 */	addi r11, r1, 0x40
/* 8059FE68  4B DC 23 74 */	b _savegpr_29
/* 8059FE6C  7C 7E 1B 78 */	mr r30, r3
/* 8059FE70  3C 60 80 5A */	lis r3, lit_3769@ha
/* 8059FE74  3B E3 11 58 */	addi r31, r3, lit_3769@l
/* 8059FE78  C3 FF 00 20 */	lfs f31, 0x20(r31)
/* 8059FE7C  38 61 00 08 */	addi r3, r1, 8
/* 8059FE80  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8059FE84  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8059FE88  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8059FE8C  80 A5 5D AC */	lwz r5, 0x5dac(r5)
/* 8059FE90  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 8059FE94  4B CC 6C A0 */	b __mi__4cXyzCFRC3Vec
/* 8059FE98  C0 01 00 08 */	lfs f0, 8(r1)
/* 8059FE9C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8059FEA0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8059FEA4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8059FEA8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8059FEAC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8059FEB0  A8 1E 05 FA */	lha r0, 0x5fa(r30)
/* 8059FEB4  2C 00 00 01 */	cmpwi r0, 1
/* 8059FEB8  41 82 00 54 */	beq lbl_8059FF0C
/* 8059FEBC  40 80 01 20 */	bge lbl_8059FFDC
/* 8059FEC0  2C 00 00 00 */	cmpwi r0, 0
/* 8059FEC4  40 80 00 08 */	bge lbl_8059FECC
/* 8059FEC8  48 00 01 14 */	b lbl_8059FFDC
lbl_8059FECC:
/* 8059FECC  7F C3 F3 78 */	mr r3, r30
/* 8059FED0  38 80 00 07 */	li r4, 7
/* 8059FED4  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8059FED8  38 A0 00 02 */	li r5, 2
/* 8059FEDC  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8059FEE0  3C C0 80 5A */	lis r6, l_HIO@ha
/* 8059FEE4  38 C6 13 40 */	addi r6, r6, l_HIO@l
/* 8059FEE8  C0 06 00 10 */	lfs f0, 0x10(r6)
/* 8059FEEC  EC 42 00 32 */	fmuls f2, f2, f0
/* 8059FEF0  38 C0 FF FF */	li r6, -1
/* 8059FEF4  4B FF F7 E5 */	bl anm_init__FP8sq_classifUcfi
/* 8059FEF8  A8 7E 05 FA */	lha r3, 0x5fa(r30)
/* 8059FEFC  38 03 00 01 */	addi r0, r3, 1
/* 8059FF00  B0 1E 05 FA */	sth r0, 0x5fa(r30)
/* 8059FF04  38 00 00 00 */	li r0, 0
/* 8059FF08  B0 1E 06 00 */	sth r0, 0x600(r30)
lbl_8059FF0C:
/* 8059FF0C  3C 60 80 5A */	lis r3, l_HIO@ha
/* 8059FF10  38 63 13 40 */	addi r3, r3, l_HIO@l
/* 8059FF14  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 8059FF18  A8 1E 06 00 */	lha r0, 0x600(r30)
/* 8059FF1C  2C 00 00 00 */	cmpwi r0, 0
/* 8059FF20  40 82 00 94 */	bne lbl_8059FFB4
/* 8059FF24  C0 5E 05 D4 */	lfs f2, 0x5d4(r30)
/* 8059FF28  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8059FF2C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8059FF30  EC 01 00 2A */	fadds f0, f1, f0
/* 8059FF34  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8059FF38  40 81 00 14 */	ble lbl_8059FF4C
/* 8059FF3C  38 00 00 00 */	li r0, 0
/* 8059FF40  B0 1E 05 F8 */	sth r0, 0x5f8(r30)
/* 8059FF44  B0 1E 05 FA */	sth r0, 0x5fa(r30)
/* 8059FF48  48 00 00 94 */	b lbl_8059FFDC
lbl_8059FF4C:
/* 8059FF4C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8059FF50  4B CC 7A 04 */	b cM_rndF__Ff
/* 8059FF54  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8059FF58  EC 00 08 2A */	fadds f0, f0, f1
/* 8059FF5C  FC 00 00 1E */	fctiwz f0, f0
/* 8059FF60  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8059FF64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059FF68  B0 1E 06 00 */	sth r0, 0x600(r30)
/* 8059FF6C  7F C3 F3 78 */	mr r3, r30
/* 8059FF70  4B FF F9 91 */	bl way_bg_check__FP8sq_class
/* 8059FF74  2C 03 00 00 */	cmpwi r3, 0
/* 8059FF78  41 82 00 10 */	beq lbl_8059FF88
/* 8059FF7C  7F C3 F3 78 */	mr r3, r30
/* 8059FF80  4B FF FA 7D */	bl turn_set__FP8sq_class
/* 8059FF84  48 00 00 58 */	b lbl_8059FFDC
lbl_8059FF88:
/* 8059FF88  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8059FF8C  4B CC 7A 00 */	b cM_rndFX__Ff
/* 8059FF90  FC 00 08 1E */	fctiwz f0, f1
/* 8059FF94  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8059FF98  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8059FF9C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8059FFA0  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8059FFA4  4B CC 76 D0 */	b cM_atan2s__Fff
/* 8059FFA8  7C 03 EA 14 */	add r0, r3, r29
/* 8059FFAC  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 8059FFB0  48 00 00 2C */	b lbl_8059FFDC
lbl_8059FFB4:
/* 8059FFB4  A8 1E 06 04 */	lha r0, 0x604(r30)
/* 8059FFB8  2C 00 00 00 */	cmpwi r0, 0
/* 8059FFBC  40 82 00 20 */	bne lbl_8059FFDC
/* 8059FFC0  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 8059FFC4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8059FFC8  41 82 00 14 */	beq lbl_8059FFDC
/* 8059FFCC  7F C3 F3 78 */	mr r3, r30
/* 8059FFD0  4B FF FA 2D */	bl turn_set__FP8sq_class
/* 8059FFD4  38 00 00 14 */	li r0, 0x14
/* 8059FFD8  B0 1E 06 04 */	sth r0, 0x604(r30)
lbl_8059FFDC:
/* 8059FFDC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8059FFE0  FC 20 F8 90 */	fmr f1, f31
/* 8059FFE4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8059FFE8  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 8059FFEC  4B CC FA 50 */	b cLib_addCalc2__FPffff
/* 8059FFF0  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8059FFF4  A8 9E 05 D0 */	lha r4, 0x5d0(r30)
/* 8059FFF8  38 A0 00 02 */	li r5, 2
/* 8059FFFC  38 C0 30 00 */	li r6, 0x3000
/* 805A0000  4B CD 06 08 */	b cLib_addCalcAngleS2__FPssss
/* 805A0004  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805A0008  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805A000C  39 61 00 40 */	addi r11, r1, 0x40
/* 805A0010  4B DC 22 18 */	b _restgpr_29
/* 805A0014  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805A0018  7C 08 03 A6 */	mtlr r0
/* 805A001C  38 21 00 50 */	addi r1, r1, 0x50
/* 805A0020  4E 80 00 20 */	blr 
