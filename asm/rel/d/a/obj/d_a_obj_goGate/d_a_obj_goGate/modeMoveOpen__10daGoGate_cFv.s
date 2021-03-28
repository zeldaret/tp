lbl_80BFDAF4:
/* 80BFDAF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BFDAF8  7C 08 02 A6 */	mflr r0
/* 80BFDAFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BFDB00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BFDB04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BFDB08  7C 7E 1B 78 */	mr r30, r3
/* 80BFDB0C  3C 60 80 C0 */	lis r3, lit_3627@ha
/* 80BFDB10  3B E3 DF E8 */	addi r31, r3, lit_3627@l
/* 80BFDB14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BFDB18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BFDB1C  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80BFDB20  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80BFDB24  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80BFDB28  4B 40 E6 E0 */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80BFDB2C  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80BFDB30  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BFDB34  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BFDB38  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BFDB3C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BFDB40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BFDB44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BFDB48  38 81 00 0C */	addi r4, r1, 0xc
/* 80BFDB4C  7C 85 23 78 */	mr r5, r4
/* 80BFDB50  4B 74 92 1C */	b PSMTXMultVec
/* 80BFDB54  38 61 00 0C */	addi r3, r1, 0xc
/* 80BFDB58  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BFDB5C  7C 65 1B 78 */	mr r5, r3
/* 80BFDB60  4B 74 95 30 */	b PSVECAdd
/* 80BFDB64  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BFDB68  7C 03 07 74 */	extsb r3, r0
/* 80BFDB6C  4B 42 F5 00 */	b dComIfGp_getReverb__Fi
/* 80BFDB70  7C 67 1B 78 */	mr r7, r3
/* 80BFDB74  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008012B@ha */
/* 80BFDB78  38 03 01 2B */	addi r0, r3, 0x012B /* 0x0008012B@l */
/* 80BFDB7C  90 01 00 08 */	stw r0, 8(r1)
/* 80BFDB80  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BFDB84  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BFDB88  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFDB8C  38 81 00 08 */	addi r4, r1, 8
/* 80BFDB90  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BFDB94  38 C0 00 00 */	li r6, 0
/* 80BFDB98  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80BFDB9C  FC 40 08 90 */	fmr f2, f1
/* 80BFDBA0  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80BFDBA4  FC 80 18 90 */	fmr f4, f3
/* 80BFDBA8  39 00 00 00 */	li r8, 0
/* 80BFDBAC  4B 6A E9 60 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BFDBB0  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80BFDBB4  C0 3E 05 B0 */	lfs f1, 0x5b0(r30)
/* 80BFDBB8  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80BFDBBC  3C 80 80 C0 */	lis r4, l_HIO@ha
/* 80BFDBC0  38 84 E1 1C */	addi r4, r4, l_HIO@l
/* 80BFDBC4  C0 64 00 04 */	lfs f3, 4(r4)
/* 80BFDBC8  C0 9F 00 1C */	lfs f4, 0x1c(r31)
/* 80BFDBCC  4B 67 1D B0 */	b cLib_addCalc__FPfffff
/* 80BFDBD0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BFDBD4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80BFDBD8  40 82 00 14 */	bne lbl_80BFDBEC
/* 80BFDBDC  7F C3 F3 78 */	mr r3, r30
/* 80BFDBE0  48 00 01 41 */	bl setSe__10daGoGate_cFv
/* 80BFDBE4  7F C3 F3 78 */	mr r3, r30
/* 80BFDBE8  4B FF FE F1 */	bl init_modeWait__10daGoGate_cFv
lbl_80BFDBEC:
/* 80BFDBEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BFDBF0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BFDBF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BFDBF8  7C 08 03 A6 */	mtlr r0
/* 80BFDBFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80BFDC00  4E 80 00 20 */	blr 
