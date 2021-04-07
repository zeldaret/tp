lbl_807AB884:
/* 807AB884  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807AB888  7C 08 02 A6 */	mflr r0
/* 807AB88C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AB890  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807AB894  7C 7F 1B 78 */	mr r31, r3
/* 807AB898  80 03 05 B4 */	lwz r0, 0x5b4(r3)
/* 807AB89C  28 00 00 00 */	cmplwi r0, 0
/* 807AB8A0  41 82 00 7C */	beq lbl_807AB91C
/* 807AB8A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807AB8A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807AB8AC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 807AB8B0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 807AB8B4  C0 1F 06 D8 */	lfs f0, 0x6d8(r31)
/* 807AB8B8  EC 42 00 2A */	fadds f2, f2, f0
/* 807AB8BC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 807AB8C0  4B B9 B0 29 */	bl PSMTXTrans
/* 807AB8C4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 807AB8C8  4B 86 16 7D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 807AB8CC  C0 3F 06 DC */	lfs f1, 0x6dc(r31)
/* 807AB8D0  3C 60 80 7B */	lis r3, lit_3911@ha /* 0x807AFD34@ha */
/* 807AB8D4  C0 03 FD 34 */	lfs f0, lit_3911@l(r3)  /* 0x807AFD34@l */
/* 807AB8D8  3C 60 80 7B */	lis r3, l_HIO@ha /* 0x807B0210@ha */
/* 807AB8DC  38 63 02 10 */	addi r3, r3, l_HIO@l /* 0x807B0210@l */
/* 807AB8E0  C0 43 00 08 */	lfs f2, 8(r3)
/* 807AB8E4  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 807AB8E8  41 82 00 08 */	beq lbl_807AB8F0
/* 807AB8EC  FC 20 10 90 */	fmr f1, f2
lbl_807AB8F0:
/* 807AB8F0  FC 40 08 90 */	fmr f2, f1
/* 807AB8F4  FC 60 08 90 */	fmr f3, f1
/* 807AB8F8  4B 86 15 41 */	bl scaleM__14mDoMtx_stack_cFfff
/* 807AB8FC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807AB900  80 83 00 04 */	lwz r4, 4(r3)
/* 807AB904  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807AB908  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807AB90C  38 84 00 24 */	addi r4, r4, 0x24
/* 807AB910  4B B9 AB A1 */	bl PSMTXCopy
/* 807AB914  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807AB918  4B 86 58 D5 */	bl modelCalc__16mDoExt_McaMorfSOFv
lbl_807AB91C:
/* 807AB91C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807AB920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807AB924  7C 08 03 A6 */	mtlr r0
/* 807AB928  38 21 00 10 */	addi r1, r1, 0x10
/* 807AB92C  4E 80 00 20 */	blr 
