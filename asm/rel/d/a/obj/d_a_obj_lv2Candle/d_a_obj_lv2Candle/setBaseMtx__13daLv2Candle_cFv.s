lbl_8058E13C:
/* 8058E13C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058E140  7C 08 02 A6 */	mflr r0
/* 8058E144  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058E148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058E14C  7C 7F 1B 78 */	mr r31, r3
/* 8058E150  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8058E154  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8058E158  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8058E15C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8058E160  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8058E164  4B DB 87 85 */	bl PSMTXTrans
/* 8058E168  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8058E16C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8058E170  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 8058E174  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 8058E178  A8 DF 04 E0 */	lha r6, 0x4e0(r31)
/* 8058E17C  4B A7 E1 25 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 8058E180  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8058E184  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8058E188  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8058E18C  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8058E190  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8058E194  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8058E198  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8058E19C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8058E1A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8058E1A4  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 8058E1A8  38 84 00 24 */	addi r4, r4, 0x24
/* 8058E1AC  4B DB 83 05 */	bl PSMTXCopy
/* 8058E1B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058E1B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E1B8  7C 08 03 A6 */	mtlr r0
/* 8058E1BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E1C0  4E 80 00 20 */	blr 
