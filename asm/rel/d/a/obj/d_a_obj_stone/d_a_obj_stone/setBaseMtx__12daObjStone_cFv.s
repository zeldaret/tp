lbl_80CE9468:
/* 80CE9468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE946C  7C 08 02 A6 */	mflr r0
/* 80CE9470  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE9474  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE9478  7C 7F 1B 78 */	mr r31, r3
/* 80CE947C  38 7F 09 20 */	addi r3, r31, 0x920
/* 80CE9480  38 9F 09 30 */	addi r4, r31, 0x930
/* 80CE9484  7C 65 1B 78 */	mr r5, r3
/* 80CE9488  4B 65 DF 91 */	bl PSQUATMultiply
/* 80CE948C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE9490  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE9494  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CE9498  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CE949C  C0 1F 09 40 */	lfs f0, 0x940(r31)
/* 80CE94A0  EC 42 00 2A */	fadds f2, f2, f0
/* 80CE94A4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CE94A8  4B 65 D4 41 */	bl PSMTXTrans
/* 80CE94AC  38 7F 09 20 */	addi r3, r31, 0x920
/* 80CE94B0  4B 32 3A CD */	bl quatM__14mDoMtx_stack_cFPC10Quaternion
/* 80CE94B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE94B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE94BC  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80CE94C0  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80CE94C4  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80CE94C8  4B 32 2D D9 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80CE94CC  38 7F 09 00 */	addi r3, r31, 0x900
/* 80CE94D0  4B 32 3A 75 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CE94D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE94D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE94DC  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80CE94E0  38 84 00 24 */	addi r4, r4, 0x24
/* 80CE94E4  4B 65 CF CD */	bl PSMTXCopy
/* 80CE94E8  C0 1F 09 20 */	lfs f0, 0x920(r31)
/* 80CE94EC  D0 1F 09 30 */	stfs f0, 0x930(r31)
/* 80CE94F0  C0 1F 09 24 */	lfs f0, 0x924(r31)
/* 80CE94F4  D0 1F 09 34 */	stfs f0, 0x934(r31)
/* 80CE94F8  C0 1F 09 28 */	lfs f0, 0x928(r31)
/* 80CE94FC  D0 1F 09 38 */	stfs f0, 0x938(r31)
/* 80CE9500  C0 1F 09 2C */	lfs f0, 0x92c(r31)
/* 80CE9504  D0 1F 09 3C */	stfs f0, 0x93c(r31)
/* 80CE9508  3C 60 80 3A */	lis r3, ZeroQuat@ha /* 0x803A7240@ha */
/* 80CE950C  C4 03 72 40 */	lfsu f0, ZeroQuat@l(r3)  /* 0x803A7240@l */
/* 80CE9510  D0 1F 09 20 */	stfs f0, 0x920(r31)
/* 80CE9514  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CE9518  D0 1F 09 24 */	stfs f0, 0x924(r31)
/* 80CE951C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CE9520  D0 1F 09 28 */	stfs f0, 0x928(r31)
/* 80CE9524  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80CE9528  D0 1F 09 2C */	stfs f0, 0x92c(r31)
/* 80CE952C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE9530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE9534  7C 08 03 A6 */	mtlr r0
/* 80CE9538  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE953C  4E 80 00 20 */	blr 
