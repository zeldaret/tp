lbl_80661580:
/* 80661580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80661584  7C 08 02 A6 */	mflr r0
/* 80661588  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066158C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80661590  7C 7F 1B 78 */	mr r31, r3
/* 80661594  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80661598  28 00 00 00 */	cmplwi r0, 0
/* 8066159C  41 82 00 3C */	beq lbl_806615D8
/* 806615A0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806615A4  4B 9A B7 C0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 806615A8  38 7F 0C 2C */	addi r3, r31, 0xc2c
/* 806615AC  4B 9A B9 98 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806615B0  38 7F 0C 32 */	addi r3, r31, 0xc32
/* 806615B4  4B 9A B9 90 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806615B8  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 806615BC  80 83 00 04 */	lwz r4, 4(r3)
/* 806615C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806615C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806615C8  38 84 00 24 */	addi r4, r4, 0x24
/* 806615CC  4B CE 4E E4 */	b PSMTXCopy
/* 806615D0  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 806615D4  4B 9A FC 18 */	b modelCalc__16mDoExt_McaMorfSOFv
lbl_806615D8:
/* 806615D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806615DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806615E0  7C 08 03 A6 */	mtlr r0
/* 806615E4  38 21 00 10 */	addi r1, r1, 0x10
/* 806615E8  4E 80 00 20 */	blr 
