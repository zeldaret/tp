lbl_805BFA6C:
/* 805BFA6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BFA70  7C 08 02 A6 */	mflr r0
/* 805BFA74  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BFA78  39 61 00 20 */	addi r11, r1, 0x20
/* 805BFA7C  4B DA 27 61 */	bl _savegpr_29
/* 805BFA80  7C 7D 1B 78 */	mr r29, r3
/* 805BFA84  3C 80 80 5C */	lis r4, lit_3800@ha /* 0x805C6C74@ha */
/* 805BFA88  3B E4 6C 74 */	addi r31, r4, lit_3800@l /* 0x805C6C74@l */
/* 805BFA8C  AB C3 07 54 */	lha r30, 0x754(r3)
/* 805BFA90  80 03 07 18 */	lwz r0, 0x718(r3)
/* 805BFA94  2C 00 00 03 */	cmpwi r0, 3
/* 805BFA98  41 82 02 10 */	beq lbl_805BFCA8
/* 805BFA9C  40 80 00 1C */	bge lbl_805BFAB8
/* 805BFAA0  2C 00 00 01 */	cmpwi r0, 1
/* 805BFAA4  41 82 00 40 */	beq lbl_805BFAE4
/* 805BFAA8  40 80 00 EC */	bge lbl_805BFB94
/* 805BFAAC  2C 00 00 00 */	cmpwi r0, 0
/* 805BFAB0  40 80 00 18 */	bge lbl_805BFAC8
/* 805BFAB4  48 00 02 A4 */	b lbl_805BFD58
lbl_805BFAB8:
/* 805BFAB8  2C 00 00 05 */	cmpwi r0, 5
/* 805BFABC  41 82 02 9C */	beq lbl_805BFD58
/* 805BFAC0  40 80 02 98 */	bge lbl_805BFD58
/* 805BFAC4  48 00 02 30 */	b lbl_805BFCF4
lbl_805BFAC8:
/* 805BFAC8  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805BFACC  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805BFAD0  A8 03 00 40 */	lha r0, 0x40(r3)
/* 805BFAD4  90 1D 07 C8 */	stw r0, 0x7c8(r29)
/* 805BFAD8  80 7D 07 18 */	lwz r3, 0x718(r29)
/* 805BFADC  38 03 00 01 */	addi r0, r3, 1
/* 805BFAE0  90 1D 07 18 */	stw r0, 0x718(r29)
lbl_805BFAE4:
/* 805BFAE4  38 7D 07 C8 */	addi r3, r29, 0x7c8
/* 805BFAE8  48 00 70 F5 */	bl func_805C6BDC
/* 805BFAEC  2C 03 00 00 */	cmpwi r3, 0
/* 805BFAF0  40 82 00 3C */	bne lbl_805BFB2C
/* 805BFAF4  7F A3 EB 78 */	mr r3, r29
/* 805BFAF8  38 80 00 25 */	li r4, 0x25
/* 805BFAFC  38 A0 00 00 */	li r5, 0
/* 805BFB00  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805BFB04  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805BFB08  4B FF B9 01 */	bl setBck__8daB_DR_cFiUcff
/* 805BFB0C  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805BFB10  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805BFB14  A8 03 00 42 */	lha r0, 0x42(r3)
/* 805BFB18  90 1D 07 C8 */	stw r0, 0x7c8(r29)
/* 805BFB1C  80 7D 07 18 */	lwz r3, 0x718(r29)
/* 805BFB20  38 03 00 01 */	addi r0, r3, 1
/* 805BFB24  90 1D 07 18 */	stw r0, 0x718(r29)
/* 805BFB28  48 00 02 30 */	b lbl_805BFD58
lbl_805BFB2C:
/* 805BFB2C  7F A3 EB 78 */	mr r3, r29
/* 805BFB30  4B FF F9 99 */	bl mBreathSet__8daB_DR_cFv
/* 805BFB34  7F A3 EB 78 */	mr r3, r29
/* 805BFB38  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BFB3C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BFB40  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 805BFB44  4B A5 AB CD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805BFB48  7C 64 1B 78 */	mr r4, r3
/* 805BFB4C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 805BFB50  3C A0 80 5C */	lis r5, l_HIO@ha /* 0x805C790C@ha */
/* 805BFB54  38 C5 79 0C */	addi r6, r5, l_HIO@l /* 0x805C790C@l */
/* 805BFB58  A8 A6 00 5A */	lha r5, 0x5a(r6)
/* 805BFB5C  A8 C6 00 5C */	lha r6, 0x5c(r6)
/* 805BFB60  4B CB 0A A9 */	bl cLib_addCalcAngleS2__FPssss
/* 805BFB64  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 805BFB68  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 805BFB6C  7C 03 00 50 */	subf r0, r3, r0
/* 805BFB70  B0 1D 07 56 */	sth r0, 0x756(r29)
/* 805BFB74  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 805BFB78  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 805BFB7C  38 A0 00 04 */	li r5, 4
/* 805BFB80  38 C0 04 00 */	li r6, 0x400
/* 805BFB84  4B CB 0A 85 */	bl cLib_addCalcAngleS2__FPssss
/* 805BFB88  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 805BFB8C  B0 1D 07 54 */	sth r0, 0x754(r29)
/* 805BFB90  48 00 01 C8 */	b lbl_805BFD58
lbl_805BFB94:
/* 805BFB94  80 1D 07 10 */	lwz r0, 0x710(r29)
/* 805BFB98  2C 00 00 25 */	cmpwi r0, 0x25
/* 805BFB9C  40 82 00 4C */	bne lbl_805BFBE8
/* 805BFBA0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BFBA4  38 80 00 01 */	li r4, 1
/* 805BFBA8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805BFBAC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BFBB0  40 82 00 18 */	bne lbl_805BFBC8
/* 805BFBB4  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805BFBB8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805BFBBC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BFBC0  41 82 00 08 */	beq lbl_805BFBC8
/* 805BFBC4  38 80 00 00 */	li r4, 0
lbl_805BFBC8:
/* 805BFBC8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BFBCC  41 82 00 1C */	beq lbl_805BFBE8
/* 805BFBD0  7F A3 EB 78 */	mr r3, r29
/* 805BFBD4  38 80 00 26 */	li r4, 0x26
/* 805BFBD8  38 A0 00 02 */	li r5, 2
/* 805BFBDC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805BFBE0  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805BFBE4  4B FF B8 25 */	bl setBck__8daB_DR_cFiUcff
lbl_805BFBE8:
/* 805BFBE8  38 7D 07 C8 */	addi r3, r29, 0x7c8
/* 805BFBEC  48 00 6F F1 */	bl func_805C6BDC
/* 805BFBF0  2C 03 00 00 */	cmpwi r3, 0
/* 805BFBF4  40 82 00 14 */	bne lbl_805BFC08
/* 805BFBF8  80 7D 07 18 */	lwz r3, 0x718(r29)
/* 805BFBFC  38 03 00 01 */	addi r0, r3, 1
/* 805BFC00  90 1D 07 18 */	stw r0, 0x718(r29)
/* 805BFC04  48 00 01 54 */	b lbl_805BFD58
lbl_805BFC08:
/* 805BFC08  A8 1D 07 56 */	lha r0, 0x756(r29)
/* 805BFC0C  2C 00 00 00 */	cmpwi r0, 0
/* 805BFC10  40 81 00 24 */	ble lbl_805BFC34
/* 805BFC14  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805BFC18  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805BFC1C  A8 03 00 60 */	lha r0, 0x60(r3)
/* 805BFC20  1C 00 00 B6 */	mulli r0, r0, 0xb6
/* 805BFC24  7C 00 07 34 */	extsh r0, r0
/* 805BFC28  7C 1E 02 14 */	add r0, r30, r0
/* 805BFC2C  7C 1E 07 34 */	extsh r30, r0
/* 805BFC30  48 00 00 20 */	b lbl_805BFC50
lbl_805BFC34:
/* 805BFC34  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805BFC38  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805BFC3C  A8 03 00 60 */	lha r0, 0x60(r3)
/* 805BFC40  1C 00 00 B6 */	mulli r0, r0, 0xb6
/* 805BFC44  7C 00 07 34 */	extsh r0, r0
/* 805BFC48  7C 00 F0 50 */	subf r0, r0, r30
/* 805BFC4C  7C 1E 07 34 */	extsh r30, r0
lbl_805BFC50:
/* 805BFC50  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 805BFC54  7C 1E 00 50 */	subf r0, r30, r0
/* 805BFC58  7C 03 07 34 */	extsh r3, r0
/* 805BFC5C  4B DA 54 75 */	bl abs
/* 805BFC60  2C 03 01 00 */	cmpwi r3, 0x100
/* 805BFC64  40 81 00 38 */	ble lbl_805BFC9C
/* 805BFC68  38 7D 04 DE */	addi r3, r29, 0x4de
/* 805BFC6C  7F C4 F3 78 */	mr r4, r30
/* 805BFC70  38 A0 00 01 */	li r5, 1
/* 805BFC74  3C C0 80 5C */	lis r6, l_HIO@ha /* 0x805C790C@ha */
/* 805BFC78  38 C6 79 0C */	addi r6, r6, l_HIO@l /* 0x805C790C@l */
/* 805BFC7C  A8 C6 00 5E */	lha r6, 0x5e(r6)
/* 805BFC80  4B CB 09 89 */	bl cLib_addCalcAngleS2__FPssss
/* 805BFC84  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 805BFC88  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 805BFC8C  38 A0 00 02 */	li r5, 2
/* 805BFC90  38 C0 08 00 */	li r6, 0x800
/* 805BFC94  4B CB 09 75 */	bl cLib_addCalcAngleS2__FPssss
/* 805BFC98  48 00 00 C0 */	b lbl_805BFD58
lbl_805BFC9C:
/* 805BFC9C  38 00 00 00 */	li r0, 0
/* 805BFCA0  90 1D 07 C8 */	stw r0, 0x7c8(r29)
/* 805BFCA4  48 00 00 B4 */	b lbl_805BFD58
lbl_805BFCA8:
/* 805BFCA8  80 1D 07 10 */	lwz r0, 0x710(r29)
/* 805BFCAC  2C 00 00 26 */	cmpwi r0, 0x26
/* 805BFCB0  40 82 00 A8 */	bne lbl_805BFD58
/* 805BFCB4  80 9D 05 B4 */	lwz r4, 0x5b4(r29)
/* 805BFCB8  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 805BFCBC  FC 00 00 1E */	fctiwz f0, f0
/* 805BFCC0  D8 01 00 08 */	stfd f0, 8(r1)
/* 805BFCC4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805BFCC8  2C 00 00 17 */	cmpwi r0, 0x17
/* 805BFCCC  41 80 00 8C */	blt lbl_805BFD58
/* 805BFCD0  38 80 00 27 */	li r4, 0x27
/* 805BFCD4  38 A0 00 00 */	li r5, 0
/* 805BFCD8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805BFCDC  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805BFCE0  4B FF B7 29 */	bl setBck__8daB_DR_cFiUcff
/* 805BFCE4  80 7D 07 18 */	lwz r3, 0x718(r29)
/* 805BFCE8  38 03 00 01 */	addi r0, r3, 1
/* 805BFCEC  90 1D 07 18 */	stw r0, 0x718(r29)
/* 805BFCF0  48 00 00 68 */	b lbl_805BFD58
lbl_805BFCF4:
/* 805BFCF4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BFCF8  38 80 00 01 */	li r4, 1
/* 805BFCFC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805BFD00  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BFD04  40 82 00 18 */	bne lbl_805BFD1C
/* 805BFD08  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805BFD0C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805BFD10  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BFD14  41 82 00 08 */	beq lbl_805BFD1C
/* 805BFD18  38 80 00 00 */	li r4, 0
lbl_805BFD1C:
/* 805BFD1C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BFD20  41 82 00 38 */	beq lbl_805BFD58
/* 805BFD24  7F A3 EB 78 */	mr r3, r29
/* 805BFD28  38 80 00 29 */	li r4, 0x29
/* 805BFD2C  38 A0 00 02 */	li r5, 2
/* 805BFD30  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805BFD34  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805BFD38  4B FF B6 D1 */	bl setBck__8daB_DR_cFiUcff
/* 805BFD3C  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805BFD40  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805BFD44  A8 03 00 44 */	lha r0, 0x44(r3)
/* 805BFD48  90 1D 07 C8 */	stw r0, 0x7c8(r29)
/* 805BFD4C  80 7D 07 18 */	lwz r3, 0x718(r29)
/* 805BFD50  38 03 00 01 */	addi r0, r3, 1
/* 805BFD54  90 1D 07 18 */	stw r0, 0x718(r29)
lbl_805BFD58:
/* 805BFD58  80 BD 07 18 */	lwz r5, 0x718(r29)
/* 805BFD5C  38 00 00 05 */	li r0, 5
/* 805BFD60  7C A4 FE 70 */	srawi r4, r5, 0x1f
/* 805BFD64  54 03 0F FE */	srwi r3, r0, 0x1f
/* 805BFD68  7C 00 28 10 */	subfc r0, r0, r5
/* 805BFD6C  7C 64 19 14 */	adde r3, r4, r3
/* 805BFD70  39 61 00 20 */	addi r11, r1, 0x20
/* 805BFD74  4B DA 24 B5 */	bl _restgpr_29
/* 805BFD78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BFD7C  7C 08 03 A6 */	mtlr r0
/* 805BFD80  38 21 00 20 */	addi r1, r1, 0x20
/* 805BFD84  4E 80 00 20 */	blr 
