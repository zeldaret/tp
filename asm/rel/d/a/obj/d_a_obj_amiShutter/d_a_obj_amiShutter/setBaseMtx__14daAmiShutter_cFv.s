lbl_80BA155C:
/* 80BA155C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA1560  7C 08 02 A6 */	mflr r0
/* 80BA1564  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA1568  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA156C  7C 7F 1B 78 */	mr r31, r3
/* 80BA1570  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BA1574  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BA1578  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BA157C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BA1580  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BA1584  4B 7A 53 65 */	bl PSMTXTrans
/* 80BA1588  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BA158C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BA1590  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80BA1594  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80BA1598  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80BA159C  4B 46 AD 05 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80BA15A0  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80BA15A4  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80BA15A8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80BA15AC  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80BA15B0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80BA15B4  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80BA15B8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80BA15BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BA15C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BA15C4  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 80BA15C8  38 84 00 24 */	addi r4, r4, 0x24
/* 80BA15CC  4B 7A 4E E5 */	bl PSMTXCopy
/* 80BA15D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA15D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA15D8  7C 08 03 A6 */	mtlr r0
/* 80BA15DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA15E0  4E 80 00 20 */	blr 
