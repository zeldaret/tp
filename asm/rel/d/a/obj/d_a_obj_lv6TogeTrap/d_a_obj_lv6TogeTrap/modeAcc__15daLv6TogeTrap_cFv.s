lbl_80C7AE24:
/* 80C7AE24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C7AE28  7C 08 02 A6 */	mflr r0
/* 80C7AE2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C7AE30  39 61 00 20 */	addi r11, r1, 0x20
/* 80C7AE34  4B 6E 73 A4 */	b _savegpr_28
/* 80C7AE38  7C 7C 1B 78 */	mr r28, r3
/* 80C7AE3C  3C 60 80 C8 */	lis r3, lit_3631@ha
/* 80C7AE40  3B C3 C6 18 */	addi r30, r3, lit_3631@l
/* 80C7AE44  C0 3C 05 D4 */	lfs f1, 0x5d4(r28)
/* 80C7AE48  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80C7AE4C  3C 80 80 C8 */	lis r4, l_HIO@ha
/* 80C7AE50  38 84 CA 64 */	addi r4, r4, l_HIO@l
/* 80C7AE54  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80C7AE58  EC 41 00 24 */	fdivs f2, f1, f0
/* 80C7AE5C  4B 5F 58 E4 */	b cLib_chaseF__FPfff
/* 80C7AE60  7C 7F 1B 78 */	mr r31, r3
/* 80C7AE64  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C7AE68  38 9C 05 B0 */	addi r4, r28, 0x5b0
/* 80C7AE6C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80C7AE70  C0 5C 05 2C */	lfs f2, 0x52c(r28)
/* 80C7AE74  C0 7E 01 0C */	lfs f3, 0x10c(r30)
/* 80C7AE78  4B 5F 4C 40 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80C7AE7C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80C7AE80  7C 03 07 74 */	extsb r3, r0
/* 80C7AE84  4B 3B 21 E8 */	b dComIfGp_getReverb__Fi
/* 80C7AE88  7C 7D 1B 78 */	mr r29, r3
/* 80C7AE8C  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80C7AE90  4B 6E 72 1C */	b __cvt_fp2unsigned
/* 80C7AE94  7C 66 1B 78 */	mr r6, r3
/* 80C7AE98  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A9@ha */
/* 80C7AE9C  38 03 01 A9 */	addi r0, r3, 0x01A9 /* 0x000801A9@l */
/* 80C7AEA0  90 01 00 08 */	stw r0, 8(r1)
/* 80C7AEA4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C7AEA8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C7AEAC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7AEB0  38 81 00 08 */	addi r4, r1, 8
/* 80C7AEB4  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80C7AEB8  7F A7 EB 78 */	mr r7, r29
/* 80C7AEBC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80C7AEC0  FC 40 08 90 */	fmr f2, f1
/* 80C7AEC4  C0 7E 01 10 */	lfs f3, 0x110(r30)
/* 80C7AEC8  FC 80 18 90 */	fmr f4, f3
/* 80C7AECC  39 00 00 00 */	li r8, 0
/* 80C7AED0  4B 63 16 3C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C7AED4  2C 1F 00 01 */	cmpwi r31, 1
/* 80C7AED8  41 82 00 18 */	beq lbl_80C7AEF0
/* 80C7AEDC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C7AEE0  38 9C 05 B0 */	addi r4, r28, 0x5b0
/* 80C7AEE4  4B 5E C1 48 */	b __eq__4cXyzCFRC3Vec
/* 80C7AEE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C7AEEC  41 82 00 0C */	beq lbl_80C7AEF8
lbl_80C7AEF0:
/* 80C7AEF0  7F 83 E3 78 */	mr r3, r28
/* 80C7AEF4  48 00 00 1D */	bl init_modeMove__15daLv6TogeTrap_cFv
lbl_80C7AEF8:
/* 80C7AEF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C7AEFC  4B 6E 73 28 */	b _restgpr_28
/* 80C7AF00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C7AF04  7C 08 03 A6 */	mtlr r0
/* 80C7AF08  38 21 00 20 */	addi r1, r1, 0x20
/* 80C7AF0C  4E 80 00 20 */	blr 
