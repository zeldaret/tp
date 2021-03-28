lbl_806ADBEC:
/* 806ADBEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806ADBF0  7C 08 02 A6 */	mflr r0
/* 806ADBF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806ADBF8  39 61 00 20 */	addi r11, r1, 0x20
/* 806ADBFC  4B CB 45 DC */	b _savegpr_28
/* 806ADC00  7C 7D 1B 78 */	mr r29, r3
/* 806ADC04  7C BE 2B 78 */	mr r30, r5
/* 806ADC08  A3 84 00 14 */	lhz r28, 0x14(r4)
/* 806ADC0C  80 65 00 84 */	lwz r3, 0x84(r5)
/* 806ADC10  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806ADC14  1F FC 00 30 */	mulli r31, r28, 0x30
/* 806ADC18  7C 60 FA 14 */	add r3, r0, r31
/* 806ADC1C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806ADC20  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806ADC24  4B C9 88 8C */	b PSMTXCopy
/* 806ADC28  2C 1C 00 01 */	cmpwi r28, 1
/* 806ADC2C  41 82 00 18 */	beq lbl_806ADC44
/* 806ADC30  40 80 00 08 */	bge lbl_806ADC38
/* 806ADC34  48 00 00 B4 */	b lbl_806ADCE8
lbl_806ADC38:
/* 806ADC38  2C 1C 00 03 */	cmpwi r28, 3
/* 806ADC3C  40 80 00 AC */	bge lbl_806ADCE8
/* 806ADC40  48 00 00 60 */	b lbl_806ADCA0
lbl_806ADC44:
/* 806ADC44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806ADC48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806ADC4C  A8 9D 06 CA */	lha r4, 0x6ca(r29)
/* 806ADC50  A8 1D 06 D0 */	lha r0, 0x6d0(r29)
/* 806ADC54  7C 04 00 50 */	subf r0, r4, r0
/* 806ADC58  7C 04 07 34 */	extsh r4, r0
/* 806ADC5C  4B 95 E7 D8 */	b mDoMtx_YrotM__FPA4_fs
/* 806ADC60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806ADC64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806ADC68  A8 9D 06 D4 */	lha r4, 0x6d4(r29)
/* 806ADC6C  4B 95 E8 60 */	b mDoMtx_ZrotM__FPA4_fs
/* 806ADC70  3C 60 80 6B */	lis r3, lit_3868@ha
/* 806ADC74  C0 23 5C FC */	lfs f1, lit_3868@l(r3)
/* 806ADC78  C0 1D 06 F0 */	lfs f0, 0x6f0(r29)
/* 806ADC7C  EC 41 00 24 */	fdivs f2, f1, f0
/* 806ADC80  C0 3D 06 FC */	lfs f1, 0x6fc(r29)
/* 806ADC84  FC 60 10 90 */	fmr f3, f2
/* 806ADC88  4B 95 F1 B0 */	b scaleM__14mDoMtx_stack_cFfff
/* 806ADC8C  C0 5D 06 F4 */	lfs f2, 0x6f4(r29)
/* 806ADC90  C0 3D 06 FC */	lfs f1, 0x6fc(r29)
/* 806ADC94  FC 60 10 90 */	fmr f3, f2
/* 806ADC98  4B 95 F1 A0 */	b scaleM__14mDoMtx_stack_cFfff
/* 806ADC9C  48 00 00 4C */	b lbl_806ADCE8
lbl_806ADCA0:
/* 806ADCA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806ADCA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806ADCA8  A8 9D 06 D0 */	lha r4, 0x6d0(r29)
/* 806ADCAC  A8 1D 06 D6 */	lha r0, 0x6d6(r29)
/* 806ADCB0  7C 04 00 50 */	subf r0, r4, r0
/* 806ADCB4  7C 04 07 34 */	extsh r4, r0
/* 806ADCB8  4B 95 E7 7C */	b mDoMtx_YrotM__FPA4_fs
/* 806ADCBC  3C 60 80 6B */	lis r3, lit_3868@ha
/* 806ADCC0  C0 23 5C FC */	lfs f1, lit_3868@l(r3)
/* 806ADCC4  C0 1D 06 F4 */	lfs f0, 0x6f4(r29)
/* 806ADCC8  EC 41 00 24 */	fdivs f2, f1, f0
/* 806ADCCC  FC 60 10 90 */	fmr f3, f2
/* 806ADCD0  4B 95 F1 68 */	b scaleM__14mDoMtx_stack_cFfff
/* 806ADCD4  C0 5D 06 F8 */	lfs f2, 0x6f8(r29)
/* 806ADCD8  3C 60 80 6B */	lis r3, lit_3868@ha
/* 806ADCDC  C0 23 5C FC */	lfs f1, lit_3868@l(r3)
/* 806ADCE0  FC 60 10 90 */	fmr f3, f2
/* 806ADCE4  4B 95 F1 54 */	b scaleM__14mDoMtx_stack_cFfff
lbl_806ADCE8:
/* 806ADCE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806ADCEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806ADCF0  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 806ADCF4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806ADCF8  7C 80 FA 14 */	add r4, r0, r31
/* 806ADCFC  4B C9 87 B4 */	b PSMTXCopy
/* 806ADD00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806ADD04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806ADD08  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 806ADD0C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 806ADD10  4B C9 87 A0 */	b PSMTXCopy
/* 806ADD14  38 60 00 01 */	li r3, 1
/* 806ADD18  39 61 00 20 */	addi r11, r1, 0x20
/* 806ADD1C  4B CB 45 08 */	b _restgpr_28
/* 806ADD20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806ADD24  7C 08 03 A6 */	mtlr r0
/* 806ADD28  38 21 00 20 */	addi r1, r1, 0x20
/* 806ADD2C  4E 80 00 20 */	blr 
