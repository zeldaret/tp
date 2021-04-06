lbl_80CE4698:
/* 80CE4698  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CE469C  7C 08 02 A6 */	mflr r0
/* 80CE46A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CE46A4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80CE46A8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80CE46AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CE46B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CE46B4  7C 7E 1B 78 */	mr r30, r3
/* 80CE46B8  3C 60 80 CE */	lis r3, lit_3637@ha /* 0x80CE4CBC@ha */
/* 80CE46BC  3B E3 4C BC */	addi r31, r3, lit_3637@l /* 0x80CE4CBC@l */
/* 80CE46C0  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80CE46C4  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80CE46C8  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80CE46CC  C0 7E 05 B4 */	lfs f3, 0x5b4(r30)
/* 80CE46D0  C0 9F 00 68 */	lfs f4, 0x68(r31)
/* 80CE46D4  4B 58 B2 A9 */	bl cLib_addCalc__FPfffff
/* 80CE46D8  FF E0 08 90 */	fmr f31, f1
/* 80CE46DC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80CE46E0  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80CE46E4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CE46E8  41 82 00 74 */	beq lbl_80CE475C
/* 80CE46EC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CE46F0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CE46F4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80CE46F8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CE46FC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CE4700  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CE4704  C0 1E 05 18 */	lfs f0, 0x518(r30)
/* 80CE4708  EC 01 00 2A */	fadds f0, f1, f0
/* 80CE470C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CE4710  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CE4714  7C 03 07 74 */	extsb r3, r0
/* 80CE4718  4B 34 89 55 */	bl dComIfGp_getReverb__Fi
/* 80CE471C  7C 67 1B 78 */	mr r7, r3
/* 80CE4720  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A4@ha */
/* 80CE4724  38 03 01 A4 */	addi r0, r3, 0x01A4 /* 0x000801A4@l */
/* 80CE4728  90 01 00 08 */	stw r0, 8(r1)
/* 80CE472C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CE4730  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CE4734  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE4738  38 81 00 08 */	addi r4, r1, 8
/* 80CE473C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80CE4740  38 C0 00 00 */	li r6, 0
/* 80CE4744  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80CE4748  FC 40 08 90 */	fmr f2, f1
/* 80CE474C  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 80CE4750  FC 80 18 90 */	fmr f4, f3
/* 80CE4754  39 00 00 00 */	li r8, 0
/* 80CE4758  4B 5C 7D B5 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CE475C:
/* 80CE475C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CE4760  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80CE4764  40 82 00 0C */	bne lbl_80CE4770
/* 80CE4768  7F C3 F3 78 */	mr r3, r30
/* 80CE476C  4B FF FB 25 */	bl init_modeWait__12daSpinLift_cFv
lbl_80CE4770:
/* 80CE4770  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80CE4774  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80CE4778  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CE477C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CE4780  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CE4784  7C 08 03 A6 */	mtlr r0
/* 80CE4788  38 21 00 30 */	addi r1, r1, 0x30
/* 80CE478C  4E 80 00 20 */	blr 
