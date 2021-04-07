lbl_80C8A3B0:
/* 80C8A3B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8A3B4  7C 08 02 A6 */	mflr r0
/* 80C8A3B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8A3BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8A3C0  7C 7F 1B 78 */	mr r31, r3
/* 80C8A3C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C8A3C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C8A3CC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C8A3D0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C8A3D4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C8A3D8  4B 6B C5 11 */	bl PSMTXTrans
/* 80C8A3DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C8A3E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C8A3E4  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80C8A3E8  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80C8A3EC  A8 DF 04 E0 */	lha r6, 0x4e0(r31)
/* 80C8A3F0  4B 38 1E B1 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C8A3F4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C8A3F8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C8A3FC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C8A400  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C8A404  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C8A408  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C8A40C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C8A410  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C8A414  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C8A418  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C8A41C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C8A420  4B 6B C0 91 */	bl PSMTXCopy
/* 80C8A424  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8A428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8A42C  7C 08 03 A6 */	mtlr r0
/* 80C8A430  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8A434  4E 80 00 20 */	blr 
