lbl_8058C678:
/* 8058C678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058C67C  7C 08 02 A6 */	mflr r0
/* 8058C680  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058C684  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058C688  7C 7F 1B 78 */	mr r31, r3
/* 8058C68C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8058C690  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8058C694  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8058C698  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8058C69C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8058C6A0  4B DB A2 49 */	bl PSMTXTrans
/* 8058C6A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8058C6A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8058C6AC  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 8058C6B0  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 8058C6B4  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 8058C6B8  4B A7 FB E9 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 8058C6BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058C6C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058C6C4  7C 08 03 A6 */	mtlr r0
/* 8058C6C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8058C6CC  4E 80 00 20 */	blr 
