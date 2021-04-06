lbl_8075F734:
/* 8075F734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8075F738  7C 08 02 A6 */	mflr r0
/* 8075F73C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8075F740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8075F744  7C 7F 1B 78 */	mr r31, r3
/* 8075F748  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8075F74C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8075F750  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8075F754  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8075F758  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8075F75C  4B BE 71 8D */	bl PSMTXTrans
/* 8075F760  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8075F764  4B 8A D7 E1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8075F768  3C 60 80 76 */	lis r3, lit_3907@ha /* 0x80761500@ha */
/* 8075F76C  C0 23 15 00 */	lfs f1, lit_3907@l(r3)  /* 0x80761500@l */
/* 8075F770  C0 5F 07 C0 */	lfs f2, 0x7c0(r31)
/* 8075F774  FC 60 08 90 */	fmr f3, f1
/* 8075F778  4B 8A D6 25 */	bl transM__14mDoMtx_stack_cFfff
/* 8075F77C  3C 60 80 76 */	lis r3, lit_3908@ha /* 0x80761504@ha */
/* 8075F780  C0 03 15 04 */	lfs f0, lit_3908@l(r3)  /* 0x80761504@l */
/* 8075F784  3C 60 80 76 */	lis r3, struct_80761E0C+0x0@ha /* 0x80761E0C@ha */
/* 8075F788  38 63 1E 0C */	addi r3, r3, struct_80761E0C+0x0@l /* 0x80761E0C@l */
/* 8075F78C  C0 23 00 08 */	lfs f1, 8(r3)
/* 8075F790  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8075F794  41 82 00 10 */	beq lbl_8075F7A4
/* 8075F798  D0 3F 07 9C */	stfs f1, 0x79c(r31)
/* 8075F79C  D0 3F 07 A0 */	stfs f1, 0x7a0(r31)
/* 8075F7A0  D0 3F 07 A4 */	stfs f1, 0x7a4(r31)
lbl_8075F7A4:
/* 8075F7A4  C0 3F 07 9C */	lfs f1, 0x79c(r31)
/* 8075F7A8  C0 5F 07 A0 */	lfs f2, 0x7a0(r31)
/* 8075F7AC  C0 7F 07 A4 */	lfs f3, 0x7a4(r31)
/* 8075F7B0  4B 8A D6 89 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8075F7B4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075F7B8  80 83 00 04 */	lwz r4, 4(r3)
/* 8075F7BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8075F7C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8075F7C4  38 84 00 24 */	addi r4, r4, 0x24
/* 8075F7C8  4B BE 6C E9 */	bl PSMTXCopy
/* 8075F7CC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075F7D0  4B 8B 1A 1D */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 8075F7D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8075F7D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8075F7DC  7C 08 03 A6 */	mtlr r0
/* 8075F7E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8075F7E4  4E 80 00 20 */	blr 
