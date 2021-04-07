lbl_80C74C94:
/* 80C74C94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C74C98  7C 08 02 A6 */	mflr r0
/* 80C74C9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C74CA0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80C74CA4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80C74CA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C74CAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C74CB0  7C 7E 1B 78 */	mr r30, r3
/* 80C74CB4  3C 60 80 C7 */	lis r3, lit_3633@ha /* 0x80C75524@ha */
/* 80C74CB8  3B E3 55 24 */	addi r31, r3, lit_3633@l /* 0x80C75524@l */
/* 80C74CBC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80C74CC0  3C 80 80 C7 */	lis r4, l_HIO@ha /* 0x80C75754@ha */
/* 80C74CC4  38 84 57 54 */	addi r4, r4, l_HIO@l /* 0x80C75754@l */
/* 80C74CC8  C0 24 00 08 */	lfs f1, 8(r4)
/* 80C74CCC  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 80C74CD0  4B 5F BA 71 */	bl cLib_chaseF__FPfff
/* 80C74CD4  38 7E 14 C0 */	addi r3, r30, 0x14c0
/* 80C74CD8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80C74CDC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80C74CE0  C0 7E 05 2C */	lfs f3, 0x52c(r30)
/* 80C74CE4  C0 9F 00 5C */	lfs f4, 0x5c(r31)
/* 80C74CE8  4B 5F AC 95 */	bl cLib_addCalc__FPfffff
/* 80C74CEC  FF E0 08 90 */	fmr f31, f1
/* 80C74CF0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C74CF4  7C 03 07 74 */	extsb r3, r0
/* 80C74CF8  4B 3B 83 75 */	bl dComIfGp_getReverb__Fi
/* 80C74CFC  7C 67 1B 78 */	mr r7, r3
/* 80C74D00  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801E9@ha */
/* 80C74D04  38 03 01 E9 */	addi r0, r3, 0x01E9 /* 0x000801E9@l */
/* 80C74D08  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C74D0C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C74D10  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C74D14  80 63 00 00 */	lwz r3, 0(r3)
/* 80C74D18  38 81 00 0C */	addi r4, r1, 0xc
/* 80C74D1C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C74D20  38 C0 00 00 */	li r6, 0
/* 80C74D24  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C74D28  FC 40 08 90 */	fmr f2, f1
/* 80C74D2C  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 80C74D30  FC 80 18 90 */	fmr f4, f3
/* 80C74D34  39 00 00 00 */	li r8, 0
/* 80C74D38  4B 63 77 D5 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C74D3C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80C74D40  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80C74D44  40 82 00 58 */	bne lbl_80C74D9C
/* 80C74D48  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C74D4C  7C 03 07 74 */	extsb r3, r0
/* 80C74D50  4B 3B 83 1D */	bl dComIfGp_getReverb__Fi
/* 80C74D54  7C 67 1B 78 */	mr r7, r3
/* 80C74D58  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801EA@ha */
/* 80C74D5C  38 03 01 EA */	addi r0, r3, 0x01EA /* 0x000801EA@l */
/* 80C74D60  90 01 00 08 */	stw r0, 8(r1)
/* 80C74D64  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C74D68  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C74D6C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C74D70  38 81 00 08 */	addi r4, r1, 8
/* 80C74D74  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C74D78  38 C0 00 00 */	li r6, 0
/* 80C74D7C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C74D80  FC 40 08 90 */	fmr f2, f1
/* 80C74D84  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 80C74D88  FC 80 18 90 */	fmr f4, f3
/* 80C74D8C  39 00 00 00 */	li r8, 0
/* 80C74D90  4B 63 6B F5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C74D94  7F C3 F3 78 */	mr r3, r30
/* 80C74D98  4B FF FD B1 */	bl init_modeWait__13daLv6SwGate_cFv
lbl_80C74D9C:
/* 80C74D9C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80C74DA0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80C74DA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C74DA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C74DAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C74DB0  7C 08 03 A6 */	mtlr r0
/* 80C74DB4  38 21 00 30 */	addi r1, r1, 0x30
/* 80C74DB8  4E 80 00 20 */	blr 
