lbl_80CEBCDC:
/* 80CEBCDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CEBCE0  7C 08 02 A6 */	mflr r0
/* 80CEBCE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CEBCE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CEBCEC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CEBCF0  7C 7E 1B 78 */	mr r30, r3
/* 80CEBCF4  3C 80 80 CF */	lis r4, l_bmdIdx@ha /* 0x80CECAB4@ha */
/* 80CEBCF8  3B E4 CA B4 */	addi r31, r4, l_bmdIdx@l /* 0x80CECAB4@l */
/* 80CEBCFC  80 03 07 C8 */	lwz r0, 0x7c8(r3)
/* 80CEBD00  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CEBD04  90 03 07 C8 */	stw r0, 0x7c8(r3)
/* 80CEBD08  80 03 07 F4 */	lwz r0, 0x7f4(r3)
/* 80CEBD0C  60 00 00 01 */	ori r0, r0, 1
/* 80CEBD10  90 03 07 F4 */	stw r0, 0x7f4(r3)
/* 80CEBD14  4B 33 0E 8D */	bl fopAcM_cancelCarryNow__FP10fopAc_ac_c
/* 80CEBD18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CEBD1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CEBD20  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CEBD24  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 80CEBD28  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80CEBD2C  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CEBD30  54 00 10 3A */	slwi r0, r0, 2
/* 80CEBD34  38 7F 00 50 */	addi r3, r31, 0x50
/* 80CEBD38  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CEBD3C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80CEBD40  88 1E 09 07 */	lbz r0, 0x907(r30)
/* 80CEBD44  98 1E 09 50 */	stb r0, 0x950(r30)
/* 80CEBD48  38 00 00 00 */	li r0, 0
/* 80CEBD4C  90 1E 09 0C */	stw r0, 0x90c(r30)
/* 80CEBD50  88 1E 09 4E */	lbz r0, 0x94e(r30)
/* 80CEBD54  28 00 00 00 */	cmplwi r0, 0
/* 80CEBD58  40 82 00 AC */	bne lbl_80CEBE04
/* 80CEBD5C  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CEBD60  28 00 00 01 */	cmplwi r0, 1
/* 80CEBD64  40 82 00 54 */	bne lbl_80CEBDB8
/* 80CEBD68  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CEBD6C  7C 03 07 74 */	extsb r3, r0
/* 80CEBD70  4B 34 12 FD */	bl dComIfGp_getReverb__Fi
/* 80CEBD74  7C 67 1B 78 */	mr r7, r3
/* 80CEBD78  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008022E@ha */
/* 80CEBD7C  38 03 02 2E */	addi r0, r3, 0x022E /* 0x0008022E@l */
/* 80CEBD80  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CEBD84  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CEBD88  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CEBD8C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEBD90  38 81 00 0C */	addi r4, r1, 0xc
/* 80CEBD94  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CEBD98  38 C0 00 00 */	li r6, 0
/* 80CEBD9C  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80CEBDA0  FC 40 08 90 */	fmr f2, f1
/* 80CEBDA4  C0 7F 01 2C */	lfs f3, 0x12c(r31)
/* 80CEBDA8  FC 80 18 90 */	fmr f4, f3
/* 80CEBDAC  39 00 00 00 */	li r8, 0
/* 80CEBDB0  4B 5B FB D5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CEBDB4  48 00 00 50 */	b lbl_80CEBE04
lbl_80CEBDB8:
/* 80CEBDB8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CEBDBC  7C 03 07 74 */	extsb r3, r0
/* 80CEBDC0  4B 34 12 AD */	bl dComIfGp_getReverb__Fi
/* 80CEBDC4  7C 67 1B 78 */	mr r7, r3
/* 80CEBDC8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080226@ha */
/* 80CEBDCC  38 03 02 26 */	addi r0, r3, 0x0226 /* 0x00080226@l */
/* 80CEBDD0  90 01 00 08 */	stw r0, 8(r1)
/* 80CEBDD4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CEBDD8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CEBDDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEBDE0  38 81 00 08 */	addi r4, r1, 8
/* 80CEBDE4  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CEBDE8  38 C0 00 00 */	li r6, 0
/* 80CEBDEC  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80CEBDF0  FC 40 08 90 */	fmr f2, f1
/* 80CEBDF4  C0 7F 01 2C */	lfs f3, 0x12c(r31)
/* 80CEBDF8  FC 80 18 90 */	fmr f4, f3
/* 80CEBDFC  39 00 00 00 */	li r8, 0
/* 80CEBE00  4B 5B FB 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CEBE04:
/* 80CEBE04  38 00 00 04 */	li r0, 4
/* 80CEBE08  98 1E 09 07 */	stb r0, 0x907(r30)
/* 80CEBE0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CEBE10  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CEBE14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CEBE18  7C 08 03 A6 */	mtlr r0
/* 80CEBE1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CEBE20  4E 80 00 20 */	blr 
