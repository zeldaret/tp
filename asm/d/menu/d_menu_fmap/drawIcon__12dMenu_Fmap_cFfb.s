lbl_801CCB08:
/* 801CCB08  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801CCB0C  7C 08 02 A6 */	mflr r0
/* 801CCB10  90 01 00 54 */	stw r0, 0x54(r1)
/* 801CCB14  39 61 00 50 */	addi r11, r1, 0x50
/* 801CCB18  48 19 56 B9 */	bl _savegpr_26
/* 801CCB1C  7C 7E 1B 78 */	mr r30, r3
/* 801CCB20  7C 9F 23 78 */	mr r31, r4
/* 801CCB24  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801CCB28  8B A3 12 27 */	lbz r29, 0x1227(r3)
/* 801CCB2C  4B E6 23 35 */	bl dComIfGp_getNowLevel__Fv
/* 801CCB30  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 801CCB34  38 1D 00 01 */	addi r0, r29, 1
/* 801CCB38  7C 00 18 00 */	cmpw r0, r3
/* 801CCB3C  40 82 00 0C */	bne lbl_801CCB48
/* 801CCB40  7F C3 F3 78 */	mr r3, r30
/* 801CCB44  48 00 03 55 */	bl drawPlayEnterIcon__12dMenu_Fmap_cFv
lbl_801CCB48:
/* 801CCB48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801CCB4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801CCB50  88 03 00 7C */	lbz r0, 0x7c(r3)
/* 801CCB54  28 00 00 00 */	cmplwi r0, 0
/* 801CCB58  41 82 00 44 */	beq lbl_801CCB9C
/* 801CCB5C  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 801CCB60  38 61 00 10 */	addi r3, r1, 0x10
/* 801CCB64  4B E7 22 F9 */	bl getMapPlayerPos__10dMapInfo_nFv
/* 801CCB68  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801CCB6C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801CCB70  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801CCB74  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801CCB78  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801CCB7C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801CCB80  AB 9C 04 E6 */	lha r28, 0x4e6(r28)
/* 801CCB84  80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 801CCB88  4B FF 9A A5 */	bl dMenuFmap_getStartStageName__FPv
/* 801CCB8C  7C 64 1B 78 */	mr r4, r3
/* 801CCB90  38 61 00 08 */	addi r3, r1, 8
/* 801CCB94  48 19 BF 99 */	bl strcpy
/* 801CCB98  48 00 00 2C */	b lbl_801CCBC4
lbl_801CCB9C:
/* 801CCB9C  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 801CCBA0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801CCBA4  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 801CCBA8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801CCBAC  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 801CCBB0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801CCBB4  AB 83 00 70 */	lha r28, 0x70(r3)
/* 801CCBB8  38 83 00 72 */	addi r4, r3, 0x72
/* 801CCBBC  38 61 00 08 */	addi r3, r1, 8
/* 801CCBC0  48 19 BF 6D */	bl strcpy
lbl_801CCBC4:
/* 801CCBC4  38 C0 00 00 */	li r6, 0
/* 801CCBC8  88 1E 03 00 */	lbz r0, 0x300(r30)
/* 801CCBCC  28 00 00 0E */	cmplwi r0, 0xe
/* 801CCBD0  40 82 00 08 */	bne lbl_801CCBD8
/* 801CCBD4  38 C0 00 01 */	li r6, 1
lbl_801CCBD8:
/* 801CCBD8  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801CCBDC  38 80 00 11 */	li r4, 0x11
/* 801CCBE0  38 A1 00 08 */	addi r5, r1, 8
/* 801CCBE4  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 801CCBE8  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 801CCBEC  C0 82 A7 64 */	lfs f4, lit_6987(r2)
/* 801CCBF0  7F 80 07 34 */	extsh r0, r28
/* 801CCBF4  C8 62 A7 40 */	lfd f3, lit_4358(r2)
/* 801CCBF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801CCBFC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801CCC00  3C 00 43 30 */	lis r0, 0x4330
/* 801CCC04  90 01 00 28 */	stw r0, 0x28(r1)
/* 801CCC08  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801CCC0C  EC 00 18 28 */	fsubs f0, f0, f3
/* 801CCC10  EC 64 00 32 */	fmuls f3, f4, f0
/* 801CCC14  7F E7 FB 78 */	mr r7, r31
/* 801CCC18  48 00 58 05 */	bl setIcon2DPos__18dMenu_Fmap2DBack_cFUcPCcfffUcb
/* 801CCC1C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801CCC20  40 82 01 60 */	bne lbl_801CCD80
/* 801CCC24  88 1E 03 07 */	lbz r0, 0x307(r30)
/* 801CCC28  28 00 00 01 */	cmplwi r0, 1
/* 801CCC2C  40 82 00 FC */	bne lbl_801CCD28
/* 801CCC30  83 BE 00 90 */	lwz r29, 0x90(r30)
/* 801CCC34  28 1D 00 00 */	cmplwi r29, 0
/* 801CCC38  41 82 00 F0 */	beq lbl_801CCD28
/* 801CCC3C  3B 7D 00 0C */	addi r27, r29, 0xc
/* 801CCC40  3B 40 00 00 */	li r26, 0
/* 801CCC44  3B E0 00 00 */	li r31, 0
/* 801CCC48  48 00 00 D4 */	b lbl_801CCD1C
lbl_801CCC4C:
/* 801CCC4C  7F 9B FA 14 */	add r28, r27, r31
/* 801CCC50  7F C3 F3 78 */	mr r3, r30
/* 801CCC54  88 9C 00 0E */	lbz r4, 0xe(r28)
/* 801CCC58  88 BC 00 0F */	lbz r5, 0xf(r28)
/* 801CCC5C  48 00 03 55 */	bl checkDrawPortalIcon__12dMenu_Fmap_cFii
/* 801CCC60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CCC64  41 82 00 B0 */	beq lbl_801CCD14
/* 801CCC68  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801CCC6C  88 A3 12 27 */	lbz r5, 0x1227(r3)
/* 801CCC70  88 9C 00 01 */	lbz r4, 1(r28)
/* 801CCC74  38 04 FF FF */	addi r0, r4, -1
/* 801CCC78  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801CCC7C  88 1E 03 00 */	lbz r0, 0x300(r30)
/* 801CCC80  28 00 00 0A */	cmplwi r0, 0xa
/* 801CCC84  41 82 00 0C */	beq lbl_801CCC90
/* 801CCC88  28 00 00 06 */	cmplwi r0, 6
/* 801CCC8C  40 80 00 18 */	bge lbl_801CCCA4
lbl_801CCC90:
/* 801CCC90  28 00 00 0A */	cmplwi r0, 0xa
/* 801CCC94  40 82 00 64 */	bne lbl_801CCCF8
/* 801CCC98  88 1E 03 01 */	lbz r0, 0x301(r30)
/* 801CCC9C  28 00 00 00 */	cmplwi r0, 0
/* 801CCCA0  41 82 00 58 */	beq lbl_801CCCF8
lbl_801CCCA4:
/* 801CCCA4  7C 04 28 40 */	cmplw r4, r5
/* 801CCCA8  40 82 00 6C */	bne lbl_801CCD14
/* 801CCCAC  38 80 00 01 */	li r4, 1
/* 801CCCB0  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 801CCCB4  C0 5C 00 18 */	lfs f2, 0x18(r28)
/* 801CCCB8  C0 62 A7 28 */	lfs f3, lit_4158(r2)
/* 801CCCBC  38 A0 00 00 */	li r5, 0
/* 801CCCC0  38 C0 00 00 */	li r6, 0
/* 801CCCC4  48 00 54 3D */	bl setIcon2DPos__18dMenu_Fmap2DBack_cFUcfffUcb
/* 801CCCC8  88 1E 03 08 */	lbz r0, 0x308(r30)
/* 801CCCCC  7C 00 D0 00 */	cmpw r0, r26
/* 801CCCD0  40 82 00 44 */	bne lbl_801CCD14
/* 801CCCD4  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801CCCD8  38 80 00 00 */	li r4, 0
/* 801CCCDC  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 801CCCE0  C0 5C 00 18 */	lfs f2, 0x18(r28)
/* 801CCCE4  C0 62 A7 28 */	lfs f3, lit_4158(r2)
/* 801CCCE8  38 A0 00 00 */	li r5, 0
/* 801CCCEC  38 C0 00 00 */	li r6, 0
/* 801CCCF0  48 00 54 11 */	bl setIcon2DPos__18dMenu_Fmap2DBack_cFUcfffUcb
/* 801CCCF4  48 00 00 20 */	b lbl_801CCD14
lbl_801CCCF8:
/* 801CCCF8  38 80 00 01 */	li r4, 1
/* 801CCCFC  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 801CCD00  C0 5C 00 18 */	lfs f2, 0x18(r28)
/* 801CCD04  C0 62 A7 28 */	lfs f3, lit_4158(r2)
/* 801CCD08  38 A0 00 00 */	li r5, 0
/* 801CCD0C  38 C0 00 00 */	li r6, 0
/* 801CCD10  48 00 53 F1 */	bl setIcon2DPos__18dMenu_Fmap2DBack_cFUcfffUcb
lbl_801CCD14:
/* 801CCD14  3B 5A 00 01 */	addi r26, r26, 1
/* 801CCD18  3B FF 00 1C */	addi r31, r31, 0x1c
lbl_801CCD1C:
/* 801CCD1C  88 1D 00 08 */	lbz r0, 8(r29)
/* 801CCD20  7C 1A 00 00 */	cmpw r26, r0
/* 801CCD24  41 80 FF 28 */	blt lbl_801CCC4C
lbl_801CCD28:
/* 801CCD28  88 1E 03 00 */	lbz r0, 0x300(r30)
/* 801CCD2C  28 00 00 0A */	cmplwi r0, 0xa
/* 801CCD30  41 82 00 0C */	beq lbl_801CCD3C
/* 801CCD34  28 00 00 06 */	cmplwi r0, 6
/* 801CCD38  40 80 00 18 */	bge lbl_801CCD50
lbl_801CCD3C:
/* 801CCD3C  28 00 00 0A */	cmplwi r0, 0xa
/* 801CCD40  40 82 00 40 */	bne lbl_801CCD80
/* 801CCD44  88 1E 03 01 */	lbz r0, 0x301(r30)
/* 801CCD48  28 00 00 00 */	cmplwi r0, 0
/* 801CCD4C  41 82 00 34 */	beq lbl_801CCD80
lbl_801CCD50:
/* 801CCD50  7F C3 F3 78 */	mr r3, r30
/* 801CCD54  48 00 00 45 */	bl drawLightDropIcon__12dMenu_Fmap_cFv
/* 801CCD58  7F C3 F3 78 */	mr r3, r30
/* 801CCD5C  48 00 00 81 */	bl drawBatsumarkIcon__12dMenu_Fmap_cFv
/* 801CCD60  7F C3 F3 78 */	mr r3, r30
/* 801CCD64  48 00 04 AD */	bl drawEnterIcon__12dMenu_Fmap_cFv
/* 801CCD68  7F C3 F3 78 */	mr r3, r30
/* 801CCD6C  48 00 00 99 */	bl drawSnowmanIcon__12dMenu_Fmap_cFv
/* 801CCD70  7F C3 F3 78 */	mr r3, r30
/* 801CCD74  48 00 00 D5 */	bl drawGoldWolfIcon__12dMenu_Fmap_cFv
/* 801CCD78  7F C3 F3 78 */	mr r3, r30
/* 801CCD7C  48 00 00 F5 */	bl drawCoachIcon__12dMenu_Fmap_cFv
lbl_801CCD80:
/* 801CCD80  39 61 00 50 */	addi r11, r1, 0x50
/* 801CCD84  48 19 54 99 */	bl _restgpr_26
/* 801CCD88  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801CCD8C  7C 08 03 A6 */	mtlr r0
/* 801CCD90  38 21 00 50 */	addi r1, r1, 0x50
/* 801CCD94  4E 80 00 20 */	blr 
