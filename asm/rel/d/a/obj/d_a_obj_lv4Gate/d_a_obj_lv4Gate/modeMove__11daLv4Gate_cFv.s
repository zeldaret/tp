lbl_80C5EFBC:
/* 80C5EFBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C5EFC0  7C 08 02 A6 */	mflr r0
/* 80C5EFC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C5EFC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C5EFCC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C5EFD0  7C 7E 1B 78 */	mr r30, r3
/* 80C5EFD4  3C 60 80 C6 */	lis r3, lit_3625@ha /* 0x80C5F3F4@ha */
/* 80C5EFD8  3B E3 F3 F4 */	addi r31, r3, lit_3625@l /* 0x80C5F3F4@l */
/* 80C5EFDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C5EFE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C5EFE4  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80C5EFE8  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80C5EFEC  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80C5EFF0  4B 3A D2 19 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80C5EFF4  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80C5EFF8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C5EFFC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C5F000  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C5F004  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C5F008  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C5F00C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C5F010  38 81 00 0C */	addi r4, r1, 0xc
/* 80C5F014  7C 85 23 78 */	mr r5, r4
/* 80C5F018  4B 6E 7D 55 */	bl PSMTXMultVec
/* 80C5F01C  38 61 00 0C */	addi r3, r1, 0xc
/* 80C5F020  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C5F024  7C 65 1B 78 */	mr r5, r3
/* 80C5F028  4B 6E 80 69 */	bl PSVECAdd
/* 80C5F02C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C5F030  7C 03 07 74 */	extsb r3, r0
/* 80C5F034  4B 3C E0 39 */	bl dComIfGp_getReverb__Fi
/* 80C5F038  7C 67 1B 78 */	mr r7, r3
/* 80C5F03C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008012B@ha */
/* 80C5F040  38 03 01 2B */	addi r0, r3, 0x012B /* 0x0008012B@l */
/* 80C5F044  90 01 00 08 */	stw r0, 8(r1)
/* 80C5F048  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C5F04C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C5F050  80 63 00 00 */	lwz r3, 0(r3)
/* 80C5F054  38 81 00 08 */	addi r4, r1, 8
/* 80C5F058  38 A1 00 0C */	addi r5, r1, 0xc
/* 80C5F05C  38 C0 00 00 */	li r6, 0
/* 80C5F060  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C5F064  FC 40 08 90 */	fmr f2, f1
/* 80C5F068  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80C5F06C  FC 80 18 90 */	fmr f4, f3
/* 80C5F070  39 00 00 00 */	li r8, 0
/* 80C5F074  4B 64 D4 99 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C5F078  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80C5F07C  C0 3E 05 B0 */	lfs f1, 0x5b0(r30)
/* 80C5F080  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80C5F084  3C 80 80 C6 */	lis r4, l_HIO@ha /* 0x80C5F52C@ha */
/* 80C5F088  38 84 F5 2C */	addi r4, r4, l_HIO@l /* 0x80C5F52C@l */
/* 80C5F08C  C0 64 00 04 */	lfs f3, 4(r4)
/* 80C5F090  C0 9F 00 1C */	lfs f4, 0x1c(r31)
/* 80C5F094  4B 61 08 E9 */	bl cLib_addCalc__FPfffff
/* 80C5F098  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C5F09C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C5F0A0  40 82 00 0C */	bne lbl_80C5F0AC
/* 80C5F0A4  7F C3 F3 78 */	mr r3, r30
/* 80C5F0A8  48 00 00 1D */	bl init_modeMoveEnd__11daLv4Gate_cFv
lbl_80C5F0AC:
/* 80C5F0AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C5F0B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C5F0B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C5F0B8  7C 08 03 A6 */	mtlr r0
/* 80C5F0BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C5F0C0  4E 80 00 20 */	blr 
