lbl_80813528:
/* 80813528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8081352C  7C 08 02 A6 */	mflr r0
/* 80813530  90 01 00 14 */	stw r0, 0x14(r1)
/* 80813534  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80813538  7C 7F 1B 78 */	mr r31, r3
/* 8081353C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80813540  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80813544  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80813548  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8081354C  C0 1F 06 DC */	lfs f0, 0x6dc(r31)
/* 80813550  EC 42 00 2A */	fadds f2, f2, f0
/* 80813554  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80813558  4B B3 33 91 */	bl PSMTXTrans
/* 8081355C  38 7F 06 68 */	addi r3, r31, 0x668
/* 80813560  4B 7F 99 E5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80813564  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80813568  4B 7F 99 DD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8081356C  C0 3F 06 8C */	lfs f1, 0x68c(r31)
/* 80813570  FC 40 08 90 */	fmr f2, f1
/* 80813574  FC 60 08 90 */	fmr f3, f1
/* 80813578  4B 7F 98 C1 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8081357C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80813580  80 83 00 04 */	lwz r4, 4(r3)
/* 80813584  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80813588  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8081358C  38 84 00 24 */	addi r4, r4, 0x24
/* 80813590  4B B3 2F 21 */	bl PSMTXCopy
/* 80813594  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80813598  4B 7F DC 55 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 8081359C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808135A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808135A4  7C 08 03 A6 */	mtlr r0
/* 808135A8  38 21 00 10 */	addi r1, r1, 0x10
/* 808135AC  4E 80 00 20 */	blr 
