lbl_800DCA80:
/* 800DCA80  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 800DCA84  7C 08 02 A6 */	mflr r0
/* 800DCA88  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 800DCA8C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 800DCA90  48 28 57 41 */	bl _savegpr_26
/* 800DCA94  7C 7C 1B 78 */	mr r28, r3
/* 800DCA98  7C 9D 23 78 */	mr r29, r4
/* 800DCA9C  7C BA 2B 78 */	mr r26, r5
/* 800DCAA0  7C DE 33 78 */	mr r30, r6
/* 800DCAA4  7C FF 3B 78 */	mr r31, r7
/* 800DCAA8  C0 22 93 D0 */	lfs f1, lit_11122(r2)
/* 800DCAAC  48 18 AE E1 */	bl cM_rndFX__Ff
/* 800DCAB0  A8 1A 00 02 */	lha r0, 2(r26)
/* 800DCAB4  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 800DCAB8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800DCABC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 800DCAC0  3C 00 43 30 */	lis r0, 0x4330
/* 800DCAC4  90 01 00 78 */	stw r0, 0x78(r1)
/* 800DCAC8  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 800DCACC  EC 00 10 28 */	fsubs f0, f0, f2
/* 800DCAD0  EC 00 08 2A */	fadds f0, f0, f1
/* 800DCAD4  FC 00 00 1E */	fctiwz f0, f0
/* 800DCAD8  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 800DCADC  83 61 00 84 */	lwz r27, 0x84(r1)
/* 800DCAE0  C0 22 93 D0 */	lfs f1, lit_11122(r2)
/* 800DCAE4  48 18 AE A9 */	bl cM_rndFX__Ff
/* 800DCAE8  A8 1A 00 00 */	lha r0, 0(r26)
/* 800DCAEC  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 800DCAF0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800DCAF4  90 01 00 8C */	stw r0, 0x8c(r1)
/* 800DCAF8  3C 00 43 30 */	lis r0, 0x4330
/* 800DCAFC  90 01 00 88 */	stw r0, 0x88(r1)
/* 800DCB00  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 800DCB04  EC 00 10 28 */	fsubs f0, f0, f2
/* 800DCB08  EC 00 08 2A */	fadds f0, f0, f1
/* 800DCB0C  FC 00 00 1E */	fctiwz f0, f0
/* 800DCB10  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 800DCB14  80 81 00 94 */	lwz r4, 0x94(r1)
/* 800DCB18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800DCB1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800DCB20  7F 65 DB 78 */	mr r5, r27
/* 800DCB24  38 C0 00 00 */	li r6, 0
/* 800DCB28  4B F2 F6 E1 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 800DCB2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800DCB30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800DCB34  3C 80 80 43 */	lis r4, BaseZ__4cXyz@ha /* 0x80430D3C@ha */
/* 800DCB38  38 84 0D 3C */	addi r4, r4, BaseZ__4cXyz@l /* 0x80430D3C@l */
/* 800DCB3C  38 A1 00 54 */	addi r5, r1, 0x54
/* 800DCB40  48 26 A2 2D */	bl PSMTXMultVec
/* 800DCB44  80 7C 06 78 */	lwz r3, 0x678(r28)
/* 800DCB48  38 63 00 24 */	addi r3, r3, 0x24
/* 800DCB4C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800DCB50  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800DCB54  48 26 99 5D */	bl PSMTXCopy
/* 800DCB58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800DCB5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800DCB60  7C 64 1B 78 */	mr r4, r3
/* 800DCB64  48 26 9A 4D */	bl PSMTXInverse
/* 800DCB68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800DCB6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800DCB70  38 81 00 54 */	addi r4, r1, 0x54
/* 800DCB74  7F E5 FB 78 */	mr r5, r31
/* 800DCB78  48 26 A2 D5 */	bl PSMTXMultVecSR
/* 800DCB7C  80 7C 06 78 */	lwz r3, 0x678(r28)
/* 800DCB80  38 63 00 24 */	addi r3, r3, 0x24
/* 800DCB84  3C 80 80 39 */	lis r4, localCenter@ha /* 0x803918B8@ha */
/* 800DCB88  38 84 18 B8 */	addi r4, r4, localCenter@l /* 0x803918B8@l */
/* 800DCB8C  38 A1 00 48 */	addi r5, r1, 0x48
/* 800DCB90  48 26 A1 DD */	bl PSMTXMultVec
/* 800DCB94  38 7C 35 1C */	addi r3, r28, 0x351c
/* 800DCB98  38 81 00 48 */	addi r4, r1, 0x48
/* 800DCB9C  48 26 A5 F9 */	bl PSVECDotProduct
/* 800DCBA0  38 61 00 60 */	addi r3, r1, 0x60
/* 800DCBA4  38 9C 35 1C */	addi r4, r28, 0x351c
/* 800DCBA8  FC 20 08 50 */	fneg f1, f1
/* 800DCBAC  48 19 28 31 */	bl __ct__8cM3dGPlaFPC4cXyzf
/* 800DCBB0  38 61 00 24 */	addi r3, r1, 0x24
/* 800DCBB4  7F A4 EB 78 */	mr r4, r29
/* 800DCBB8  38 A1 00 54 */	addi r5, r1, 0x54
/* 800DCBBC  48 18 9F 29 */	bl __pl__4cXyzCFRC3Vec
/* 800DCBC0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800DCBC4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800DCBC8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800DCBCC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800DCBD0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800DCBD4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800DCBD8  38 61 00 60 */	addi r3, r1, 0x60
/* 800DCBDC  7F A4 EB 78 */	mr r4, r29
/* 800DCBE0  38 A1 00 30 */	addi r5, r1, 0x30
/* 800DCBE4  38 C1 00 3C */	addi r6, r1, 0x3c
/* 800DCBE8  48 19 28 21 */	bl crossInfLin__8cM3dGPlaCFRC4cXyzRC4cXyzR4cXyz
/* 800DCBEC  38 61 00 3C */	addi r3, r1, 0x3c
/* 800DCBF0  38 81 00 48 */	addi r4, r1, 0x48
/* 800DCBF4  48 26 A7 A9 */	bl PSVECSquareDistance
/* 800DCBF8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DCBFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DCC00  40 81 00 58 */	ble lbl_800DCC58
/* 800DCC04  FC 00 08 34 */	frsqrte f0, f1
/* 800DCC08  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800DCC0C  FC 44 00 32 */	fmul f2, f4, f0
/* 800DCC10  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800DCC14  FC 00 00 32 */	fmul f0, f0, f0
/* 800DCC18  FC 01 00 32 */	fmul f0, f1, f0
/* 800DCC1C  FC 03 00 28 */	fsub f0, f3, f0
/* 800DCC20  FC 02 00 32 */	fmul f0, f2, f0
/* 800DCC24  FC 44 00 32 */	fmul f2, f4, f0
/* 800DCC28  FC 00 00 32 */	fmul f0, f0, f0
/* 800DCC2C  FC 01 00 32 */	fmul f0, f1, f0
/* 800DCC30  FC 03 00 28 */	fsub f0, f3, f0
/* 800DCC34  FC 02 00 32 */	fmul f0, f2, f0
/* 800DCC38  FC 44 00 32 */	fmul f2, f4, f0
/* 800DCC3C  FC 00 00 32 */	fmul f0, f0, f0
/* 800DCC40  FC 01 00 32 */	fmul f0, f1, f0
/* 800DCC44  FC 03 00 28 */	fsub f0, f3, f0
/* 800DCC48  FC 02 00 32 */	fmul f0, f2, f0
/* 800DCC4C  FC 21 00 32 */	fmul f1, f1, f0
/* 800DCC50  FC 20 08 18 */	frsp f1, f1
/* 800DCC54  48 00 00 88 */	b lbl_800DCCDC
lbl_800DCC58:
/* 800DCC58  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800DCC5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DCC60  40 80 00 10 */	bge lbl_800DCC70
/* 800DCC64  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800DCC68  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800DCC6C  48 00 00 70 */	b lbl_800DCCDC
lbl_800DCC70:
/* 800DCC70  D0 21 00 08 */	stfs f1, 8(r1)
/* 800DCC74  80 81 00 08 */	lwz r4, 8(r1)
/* 800DCC78  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800DCC7C  3C 00 7F 80 */	lis r0, 0x7f80
/* 800DCC80  7C 03 00 00 */	cmpw r3, r0
/* 800DCC84  41 82 00 14 */	beq lbl_800DCC98
/* 800DCC88  40 80 00 40 */	bge lbl_800DCCC8
/* 800DCC8C  2C 03 00 00 */	cmpwi r3, 0
/* 800DCC90  41 82 00 20 */	beq lbl_800DCCB0
/* 800DCC94  48 00 00 34 */	b lbl_800DCCC8
lbl_800DCC98:
/* 800DCC98  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800DCC9C  41 82 00 0C */	beq lbl_800DCCA8
/* 800DCCA0  38 00 00 01 */	li r0, 1
/* 800DCCA4  48 00 00 28 */	b lbl_800DCCCC
lbl_800DCCA8:
/* 800DCCA8  38 00 00 02 */	li r0, 2
/* 800DCCAC  48 00 00 20 */	b lbl_800DCCCC
lbl_800DCCB0:
/* 800DCCB0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800DCCB4  41 82 00 0C */	beq lbl_800DCCC0
/* 800DCCB8  38 00 00 05 */	li r0, 5
/* 800DCCBC  48 00 00 10 */	b lbl_800DCCCC
lbl_800DCCC0:
/* 800DCCC0  38 00 00 03 */	li r0, 3
/* 800DCCC4  48 00 00 08 */	b lbl_800DCCCC
lbl_800DCCC8:
/* 800DCCC8  38 00 00 04 */	li r0, 4
lbl_800DCCCC:
/* 800DCCCC  2C 00 00 01 */	cmpwi r0, 1
/* 800DCCD0  40 82 00 0C */	bne lbl_800DCCDC
/* 800DCCD4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800DCCD8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800DCCDC:
/* 800DCCDC  C0 02 93 78 */	lfs f0, lit_8676(r2)
/* 800DCCE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DCCE4  40 81 00 58 */	ble lbl_800DCD3C
/* 800DCCE8  38 61 00 18 */	addi r3, r1, 0x18
/* 800DCCEC  38 81 00 3C */	addi r4, r1, 0x3c
/* 800DCCF0  38 A1 00 48 */	addi r5, r1, 0x48
/* 800DCCF4  48 18 9E 41 */	bl __mi__4cXyzCFRC3Vec
/* 800DCCF8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800DCCFC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 800DCD00  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800DCD04  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 800DCD08  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800DCD0C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800DCD10  38 61 00 0C */	addi r3, r1, 0xc
/* 800DCD14  38 81 00 3C */	addi r4, r1, 0x3c
/* 800DCD18  48 18 A1 DD */	bl normalize__4cXyzFv
/* 800DCD1C  38 61 00 3C */	addi r3, r1, 0x3c
/* 800DCD20  7C 64 1B 78 */	mr r4, r3
/* 800DCD24  C0 22 93 78 */	lfs f1, lit_8676(r2)
/* 800DCD28  48 26 A3 B1 */	bl PSVECScale
/* 800DCD2C  38 61 00 3C */	addi r3, r1, 0x3c
/* 800DCD30  38 81 00 48 */	addi r4, r1, 0x48
/* 800DCD34  7C 65 1B 78 */	mr r5, r3
/* 800DCD38  48 26 A3 59 */	bl PSVECAdd
lbl_800DCD3C:
/* 800DCD3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800DCD40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800DCD44  38 81 00 3C */	addi r4, r1, 0x3c
/* 800DCD48  7F C5 F3 78 */	mr r5, r30
/* 800DCD4C  48 26 A0 21 */	bl PSMTXMultVec
/* 800DCD50  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800DCD54  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800DCD58  90 01 00 70 */	stw r0, 0x70(r1)
/* 800DCD5C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 800DCD60  48 28 54 BD */	bl _restgpr_26
/* 800DCD64  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 800DCD68  7C 08 03 A6 */	mtlr r0
/* 800DCD6C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 800DCD70  4E 80 00 20 */	blr 
