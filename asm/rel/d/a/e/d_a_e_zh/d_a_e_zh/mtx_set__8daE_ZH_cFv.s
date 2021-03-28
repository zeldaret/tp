lbl_8082DE18:
/* 8082DE18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8082DE1C  7C 08 02 A6 */	mflr r0
/* 8082DE20  90 01 00 34 */	stw r0, 0x34(r1)
/* 8082DE24  39 61 00 30 */	addi r11, r1, 0x30
/* 8082DE28  4B B3 43 B0 */	b _savegpr_28
/* 8082DE2C  7C 7F 1B 78 */	mr r31, r3
/* 8082DE30  3C 60 80 83 */	lis r3, lit_3778@ha
/* 8082DE34  3B A3 F2 08 */	addi r29, r3, lit_3778@l
/* 8082DE38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8082DE3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8082DE40  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8082DE44  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8082DE48  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8082DE4C  4B B1 8A 9C */	b PSMTXTrans
/* 8082DE50  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8082DE54  4B 7D F0 F0 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8082DE58  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 8082DE5C  FC 40 08 90 */	fmr f2, f1
/* 8082DE60  C0 7D 01 C4 */	lfs f3, 0x1c4(r29)
/* 8082DE64  4B 7D EF 38 */	b transM__14mDoMtx_stack_cFfff
/* 8082DE68  3C 60 80 83 */	lis r3, l_HIO@ha
/* 8082DE6C  3B C3 F7 34 */	addi r30, r3, l_HIO@l
/* 8082DE70  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8082DE74  FC 40 08 90 */	fmr f2, f1
/* 8082DE78  FC 60 08 90 */	fmr f3, f1
/* 8082DE7C  4B 7D EF BC */	b scaleM__14mDoMtx_stack_cFfff
/* 8082DE80  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8082DE84  83 83 00 04 */	lwz r28, 4(r3)
/* 8082DE88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8082DE8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8082DE90  38 9C 00 24 */	addi r4, r28, 0x24
/* 8082DE94  4B B1 86 1C */	b PSMTXCopy
/* 8082DE98  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8082DE9C  4B 7E 33 50 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 8082DEA0  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8082DEA4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8082DEA8  38 63 00 F0 */	addi r3, r3, 0xf0
/* 8082DEAC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8082DEB0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8082DEB4  4B B1 85 FC */	b PSMTXCopy
/* 8082DEB8  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 8082DEBC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8082DEC0  C0 1D 01 C8 */	lfs f0, 0x1c8(r29)
/* 8082DEC4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8082DEC8  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8082DECC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8082DED0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8082DED4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8082DED8  38 81 00 08 */	addi r4, r1, 8
/* 8082DEDC  38 BF 06 68 */	addi r5, r31, 0x668
/* 8082DEE0  4B B1 8E 8C */	b PSMTXMultVec
/* 8082DEE4  88 1F 07 AB */	lbz r0, 0x7ab(r31)
/* 8082DEE8  28 00 00 01 */	cmplwi r0, 1
/* 8082DEEC  40 82 00 40 */	bne lbl_8082DF2C
/* 8082DEF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8082DEF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8082DEF8  C0 3F 06 8C */	lfs f1, 0x68c(r31)
/* 8082DEFC  C0 5F 06 90 */	lfs f2, 0x690(r31)
/* 8082DF00  C0 7F 06 94 */	lfs f3, 0x694(r31)
/* 8082DF04  4B B1 89 E4 */	b PSMTXTrans
/* 8082DF08  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8082DF0C  FC 40 08 90 */	fmr f2, f1
/* 8082DF10  FC 60 08 90 */	fmr f3, f1
/* 8082DF14  4B 7D EF 24 */	b scaleM__14mDoMtx_stack_cFfff
/* 8082DF18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8082DF1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8082DF20  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 8082DF24  38 84 00 24 */	addi r4, r4, 0x24
/* 8082DF28  4B B1 85 88 */	b PSMTXCopy
lbl_8082DF2C:
/* 8082DF2C  39 61 00 30 */	addi r11, r1, 0x30
/* 8082DF30  4B B3 42 F4 */	b _restgpr_28
/* 8082DF34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8082DF38  7C 08 03 A6 */	mtlr r0
/* 8082DF3C  38 21 00 30 */	addi r1, r1, 0x30
/* 8082DF40  4E 80 00 20 */	blr 
