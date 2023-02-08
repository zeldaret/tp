lbl_80BFDC10:
/* 80BFDC10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BFDC14  7C 08 02 A6 */	mflr r0
/* 80BFDC18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BFDC1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BFDC20  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BFDC24  7C 7E 1B 78 */	mr r30, r3
/* 80BFDC28  3C 60 80 C0 */	lis r3, lit_3627@ha /* 0x80BFDFE8@ha */
/* 80BFDC2C  3B E3 DF E8 */	addi r31, r3, lit_3627@l /* 0x80BFDFE8@l */
/* 80BFDC30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BFDC34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BFDC38  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80BFDC3C  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80BFDC40  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80BFDC44  4B 40 E5 C5 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80BFDC48  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80BFDC4C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BFDC50  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BFDC54  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BFDC58  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BFDC5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BFDC60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BFDC64  38 81 00 0C */	addi r4, r1, 0xc
/* 80BFDC68  7C 85 23 78 */	mr r5, r4
/* 80BFDC6C  4B 74 91 01 */	bl PSMTXMultVec
/* 80BFDC70  38 61 00 0C */	addi r3, r1, 0xc
/* 80BFDC74  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BFDC78  7C 65 1B 78 */	mr r5, r3
/* 80BFDC7C  4B 74 94 15 */	bl PSVECAdd
/* 80BFDC80  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BFDC84  7C 03 07 74 */	extsb r3, r0
/* 80BFDC88  4B 42 F3 E5 */	bl dComIfGp_getReverb__Fi
/* 80BFDC8C  7C 67 1B 78 */	mr r7, r3
/* 80BFDC90  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008012B@ha */
/* 80BFDC94  38 03 01 2B */	addi r0, r3, 0x012B /* 0x0008012B@l */
/* 80BFDC98  90 01 00 08 */	stw r0, 8(r1)
/* 80BFDC9C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BFDCA0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BFDCA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFDCA8  38 81 00 08 */	addi r4, r1, 8
/* 80BFDCAC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BFDCB0  38 C0 00 00 */	li r6, 0
/* 80BFDCB4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80BFDCB8  FC 40 08 90 */	fmr f2, f1
/* 80BFDCBC  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80BFDCC0  FC 80 18 90 */	fmr f4, f3
/* 80BFDCC4  39 00 00 00 */	li r8, 0
/* 80BFDCC8  4B 6A E8 45 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BFDCCC  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80BFDCD0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80BFDCD4  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80BFDCD8  3C 80 80 C0 */	lis r4, l_HIO@ha /* 0x80BFE11C@ha */
/* 80BFDCDC  38 84 E1 1C */	addi r4, r4, l_HIO@l /* 0x80BFE11C@l */
/* 80BFDCE0  C0 64 00 04 */	lfs f3, 4(r4)
/* 80BFDCE4  C0 9F 00 1C */	lfs f4, 0x1c(r31)
/* 80BFDCE8  4B 67 1C 95 */	bl cLib_addCalc__FPfffff
/* 80BFDCEC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BFDCF0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80BFDCF4  40 82 00 14 */	bne lbl_80BFDD08
/* 80BFDCF8  7F C3 F3 78 */	mr r3, r30
/* 80BFDCFC  48 00 00 25 */	bl setSe__10daGoGate_cFv
/* 80BFDD00  7F C3 F3 78 */	mr r3, r30
/* 80BFDD04  4B FF FD D5 */	bl init_modeWait__10daGoGate_cFv
lbl_80BFDD08:
/* 80BFDD08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BFDD0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BFDD10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BFDD14  7C 08 03 A6 */	mtlr r0
/* 80BFDD18  38 21 00 20 */	addi r1, r1, 0x20
/* 80BFDD1C  4E 80 00 20 */	blr 
