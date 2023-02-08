lbl_80834478:
/* 80834478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8083447C  7C 08 02 A6 */	mflr r0
/* 80834480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80834484  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80834488  7C 7F 1B 78 */	mr r31, r3
/* 8083448C  88 03 06 73 */	lbz r0, 0x673(r3)
/* 80834490  28 00 00 00 */	cmplwi r0, 0
/* 80834494  41 82 00 70 */	beq lbl_80834504
/* 80834498  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8083449C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 808344A0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 808344A4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 808344A8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 808344AC  4B B1 24 3D */	bl PSMTXTrans
/* 808344B0  3C 60 80 83 */	lis r3, lit_3910@ha /* 0x808352D4@ha */
/* 808344B4  C0 23 52 D4 */	lfs f1, lit_3910@l(r3)  /* 0x808352D4@l */
/* 808344B8  C0 5F 06 5C */	lfs f2, 0x65c(r31)
/* 808344BC  FC 60 08 90 */	fmr f3, f1
/* 808344C0  4B 7D 88 DD */	bl transM__14mDoMtx_stack_cFfff
/* 808344C4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 808344C8  4B 7D 8A 7D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 808344CC  3C 60 80 83 */	lis r3, l_HIO@ha /* 0x808354B0@ha */
/* 808344D0  38 63 54 B0 */	addi r3, r3, l_HIO@l /* 0x808354B0@l */
/* 808344D4  C0 23 00 08 */	lfs f1, 8(r3)
/* 808344D8  FC 40 08 90 */	fmr f2, f1
/* 808344DC  FC 60 08 90 */	fmr f3, f1
/* 808344E0  4B 7D 89 59 */	bl scaleM__14mDoMtx_stack_cFfff
/* 808344E4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 808344E8  80 83 00 04 */	lwz r4, 4(r3)
/* 808344EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 808344F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 808344F4  38 84 00 24 */	addi r4, r4, 0x24
/* 808344F8  4B B1 1F B9 */	bl PSMTXCopy
/* 808344FC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80834500  4B 7D CC ED */	bl modelCalc__16mDoExt_McaMorfSOFv
lbl_80834504:
/* 80834504  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80834508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8083450C  7C 08 03 A6 */	mtlr r0
/* 80834510  38 21 00 10 */	addi r1, r1, 0x10
/* 80834514  4E 80 00 20 */	blr 
