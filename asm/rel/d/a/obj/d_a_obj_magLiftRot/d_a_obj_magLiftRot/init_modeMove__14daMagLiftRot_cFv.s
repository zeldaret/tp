lbl_80C8F264:
/* 80C8F264  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C8F268  7C 08 02 A6 */	mflr r0
/* 80C8F26C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C8F270  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80C8F274  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80C8F278  7C 7E 1B 78 */	mr r30, r3
/* 80C8F27C  3C 60 80 C9 */	lis r3, lit_3627@ha
/* 80C8F280  3B E3 FA E8 */	addi r31, r3, lit_3627@l
/* 80C8F284  3C 60 80 C9 */	lis r3, l_HIO@ha
/* 80C8F288  38 63 FC CC */	addi r3, r3, l_HIO@l
/* 80C8F28C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C8F290  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C8F294  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80C8F298  28 00 00 02 */	cmplwi r0, 2
/* 80C8F29C  41 82 00 AC */	beq lbl_80C8F348
/* 80C8F2A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C8F2A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C8F2A8  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80C8F2AC  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80C8F2B0  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80C8F2B4  4B 37 CF 54 */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80C8F2B8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C8F2BC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C8F2C0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C8F2C4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C8F2C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C8F2CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C8F2D0  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C8F2D4  7C 85 23 78 */	mr r5, r4
/* 80C8F2D8  4B 6B 7A 94 */	b PSMTXMultVec
/* 80C8F2DC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80C8F2E0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C8F2E4  7C 65 1B 78 */	mr r5, r3
/* 80C8F2E8  4B 6B 7D A8 */	b PSVECAdd
/* 80C8F2EC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C8F2F0  7C 03 07 74 */	extsb r3, r0
/* 80C8F2F4  4B 39 DD 78 */	b dComIfGp_getReverb__Fi
/* 80C8F2F8  7C 67 1B 78 */	mr r7, r3
/* 80C8F2FC  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80C8F300  54 00 10 3A */	slwi r0, r0, 2
/* 80C8F304  3C 60 80 C9 */	lis r3, selLabel_3897@ha
/* 80C8F308  38 63 FC 04 */	addi r3, r3, selLabel_3897@l
/* 80C8F30C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C8F310  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C8F314  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C8F318  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C8F31C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C8F320  38 81 00 10 */	addi r4, r1, 0x10
/* 80C8F324  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80C8F328  38 C0 00 00 */	li r6, 0
/* 80C8F32C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C8F330  FC 40 08 90 */	fmr f2, f1
/* 80C8F334  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80C8F338  FC 80 18 90 */	fmr f4, f3
/* 80C8F33C  39 00 00 00 */	li r8, 0
/* 80C8F340  4B 61 C6 44 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C8F344  48 00 01 3C */	b lbl_80C8F480
lbl_80C8F348:
/* 80C8F348  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C8F34C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C8F350  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80C8F354  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80C8F358  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80C8F35C  4B 37 CE AC */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80C8F360  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C8F364  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C8F368  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C8F36C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C8F370  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C8F374  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C8F378  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C8F37C  38 81 00 20 */	addi r4, r1, 0x20
/* 80C8F380  7C 85 23 78 */	mr r5, r4
/* 80C8F384  4B 6B 79 E8 */	b PSMTXMultVec
/* 80C8F388  38 61 00 20 */	addi r3, r1, 0x20
/* 80C8F38C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C8F390  7C 65 1B 78 */	mr r5, r3
/* 80C8F394  4B 6B 7C FC */	b PSVECAdd
/* 80C8F398  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C8F39C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C8F3A0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C8F3A4  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80C8F3A8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C8F3AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C8F3B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C8F3B4  38 81 00 14 */	addi r4, r1, 0x14
/* 80C8F3B8  7C 85 23 78 */	mr r5, r4
/* 80C8F3BC  4B 6B 79 B0 */	b PSMTXMultVec
/* 80C8F3C0  38 61 00 14 */	addi r3, r1, 0x14
/* 80C8F3C4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C8F3C8  7C 65 1B 78 */	mr r5, r3
/* 80C8F3CC  4B 6B 7C C4 */	b PSVECAdd
/* 80C8F3D0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C8F3D4  7C 03 07 74 */	extsb r3, r0
/* 80C8F3D8  4B 39 DC 94 */	b dComIfGp_getReverb__Fi
/* 80C8F3DC  7C 67 1B 78 */	mr r7, r3
/* 80C8F3E0  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80C8F3E4  54 00 10 3A */	slwi r0, r0, 2
/* 80C8F3E8  3C 60 80 C9 */	lis r3, selLabel_3897@ha
/* 80C8F3EC  38 63 FC 04 */	addi r3, r3, selLabel_3897@l
/* 80C8F3F0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C8F3F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C8F3F8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C8F3FC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C8F400  80 63 00 00 */	lwz r3, 0(r3)
/* 80C8F404  38 81 00 0C */	addi r4, r1, 0xc
/* 80C8F408  38 A1 00 20 */	addi r5, r1, 0x20
/* 80C8F40C  38 C0 00 00 */	li r6, 0
/* 80C8F410  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C8F414  FC 40 08 90 */	fmr f2, f1
/* 80C8F418  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80C8F41C  FC 80 18 90 */	fmr f4, f3
/* 80C8F420  39 00 00 00 */	li r8, 0
/* 80C8F424  4B 61 C5 60 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C8F428  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C8F42C  7C 03 07 74 */	extsb r3, r0
/* 80C8F430  4B 39 DC 3C */	b dComIfGp_getReverb__Fi
/* 80C8F434  7C 67 1B 78 */	mr r7, r3
/* 80C8F438  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80C8F43C  54 00 10 3A */	slwi r0, r0, 2
/* 80C8F440  3C 60 80 C9 */	lis r3, selLabel_3897@ha
/* 80C8F444  38 63 FC 04 */	addi r3, r3, selLabel_3897@l
/* 80C8F448  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C8F44C  90 01 00 08 */	stw r0, 8(r1)
/* 80C8F450  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C8F454  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C8F458  80 63 00 00 */	lwz r3, 0(r3)
/* 80C8F45C  38 81 00 08 */	addi r4, r1, 8
/* 80C8F460  38 A1 00 14 */	addi r5, r1, 0x14
/* 80C8F464  38 C0 00 00 */	li r6, 0
/* 80C8F468  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C8F46C  FC 40 08 90 */	fmr f2, f1
/* 80C8F470  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80C8F474  FC 80 18 90 */	fmr f4, f3
/* 80C8F478  39 00 00 00 */	li r8, 0
/* 80C8F47C  4B 61 C5 08 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C8F480:
/* 80C8F480  38 00 00 00 */	li r0, 0
/* 80C8F484  98 1E 05 E0 */	stb r0, 0x5e0(r30)
/* 80C8F488  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80C8F48C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80C8F490  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C8F494  7C 08 03 A6 */	mtlr r0
/* 80C8F498  38 21 00 40 */	addi r1, r1, 0x40
/* 80C8F49C  4E 80 00 20 */	blr 
