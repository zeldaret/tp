lbl_80C77470:
/* 80C77470  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C77474  7C 08 02 A6 */	mflr r0
/* 80C77478  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C7747C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80C77480  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80C77484  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80C77488  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80C7748C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C77490  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C77494  7C 7E 1B 78 */	mr r30, r3
/* 80C77498  3C 80 80 C7 */	lis r4, lit_3668@ha /* 0x80C779B0@ha */
/* 80C7749C  3B E4 79 B0 */	addi r31, r4, lit_3668@l /* 0x80C779B0@l */
/* 80C774A0  48 00 01 C9 */	bl balanceCheck__10daTenbin_cFv
/* 80C774A4  88 1E 05 CC */	lbz r0, 0x5cc(r30)
/* 80C774A8  28 00 00 00 */	cmplwi r0, 0
/* 80C774AC  40 82 01 84 */	bne lbl_80C77630
/* 80C774B0  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80C774B4  C0 3E 05 C4 */	lfs f1, 0x5c4(r30)
/* 80C774B8  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80C774BC  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80C774C0  C0 9F 00 44 */	lfs f4, 0x44(r31)
/* 80C774C4  4B 5F 84 B9 */	bl cLib_addCalc__FPfffff
/* 80C774C8  FF C0 08 90 */	fmr f30, f1
/* 80C774CC  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80C774D0  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 80C774D4  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80C774D8  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80C774DC  C0 9F 00 44 */	lfs f4, 0x44(r31)
/* 80C774E0  4B 5F 84 9D */	bl cLib_addCalc__FPfffff
/* 80C774E4  FF E0 08 90 */	fmr f31, f1
/* 80C774E8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C774EC  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 80C774F0  40 82 00 0C */	bne lbl_80C774FC
/* 80C774F4  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80C774F8  41 82 00 50 */	beq lbl_80C77548
lbl_80C774FC:
/* 80C774FC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C77500  7C 03 07 74 */	extsb r3, r0
/* 80C77504  4B 3B 5B 69 */	bl dComIfGp_getReverb__Fi
/* 80C77508  7C 67 1B 78 */	mr r7, r3
/* 80C7750C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801F4@ha */
/* 80C77510  38 03 01 F4 */	addi r0, r3, 0x01F4 /* 0x000801F4@l */
/* 80C77514  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C77518  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C7751C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C77520  80 63 00 00 */	lwz r3, 0(r3)
/* 80C77524  38 81 00 0C */	addi r4, r1, 0xc
/* 80C77528  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C7752C  38 C0 00 00 */	li r6, 0
/* 80C77530  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C77534  FC 40 08 90 */	fmr f2, f1
/* 80C77538  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 80C7753C  FC 80 18 90 */	fmr f4, f3
/* 80C77540  39 00 00 00 */	li r8, 0
/* 80C77544  4B 63 4F C9 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C77548:
/* 80C77548  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C7754C  FC 01 F0 00 */	fcmpu cr0, f1, f30
/* 80C77550  40 82 00 E0 */	bne lbl_80C77630
/* 80C77554  FC 01 F8 00 */	fcmpu cr0, f1, f31
/* 80C77558  40 82 00 D8 */	bne lbl_80C77630
/* 80C7755C  C0 1E 05 DC */	lfs f0, 0x5dc(r30)
/* 80C77560  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C77564  40 82 00 CC */	bne lbl_80C77630
/* 80C77568  88 1E 06 18 */	lbz r0, 0x618(r30)
/* 80C7756C  28 00 00 00 */	cmplwi r0, 0
/* 80C77570  40 82 00 C0 */	bne lbl_80C77630
/* 80C77574  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C77578  7C 03 07 74 */	extsb r3, r0
/* 80C7757C  4B 3B 5A F1 */	bl dComIfGp_getReverb__Fi
/* 80C77580  7C 67 1B 78 */	mr r7, r3
/* 80C77584  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801F5@ha */
/* 80C77588  38 03 01 F5 */	addi r0, r3, 0x01F5 /* 0x000801F5@l */
/* 80C7758C  90 01 00 08 */	stw r0, 8(r1)
/* 80C77590  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C77594  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C77598  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7759C  38 81 00 08 */	addi r4, r1, 8
/* 80C775A0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C775A4  38 C0 00 00 */	li r6, 0
/* 80C775A8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C775AC  FC 40 08 90 */	fmr f2, f1
/* 80C775B0  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 80C775B4  FC 80 18 90 */	fmr f4, f3
/* 80C775B8  39 00 00 00 */	li r8, 0
/* 80C775BC  4B 63 43 C9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C775C0  3C 60 80 C7 */	lis r3, l_HIO@ha /* 0x80C77ADC@ha */
/* 80C775C4  38 63 7A DC */	addi r3, r3, l_HIO@l /* 0x80C77ADC@l */
/* 80C775C8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80C775CC  D0 1E 05 DC */	stfs f0, 0x5dc(r30)
/* 80C775D0  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80C775D4  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 80C775D8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80C775DC  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 80C775E0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80C775E4  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 80C775E8  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80C775EC  D0 1E 05 EC */	stfs f0, 0x5ec(r30)
/* 80C775F0  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80C775F4  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 80C775F8  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80C775FC  D0 1E 06 08 */	stfs f0, 0x608(r30)
/* 80C77600  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80C77604  D0 1E 06 00 */	stfs f0, 0x600(r30)
/* 80C77608  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80C7760C  D0 1E 06 04 */	stfs f0, 0x604(r30)
/* 80C77610  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80C77614  D0 1E 06 0C */	stfs f0, 0x60c(r30)
/* 80C77618  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80C7761C  D0 1E 06 10 */	stfs f0, 0x610(r30)
/* 80C77620  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 80C77624  D0 1E 06 14 */	stfs f0, 0x614(r30)
/* 80C77628  38 00 00 01 */	li r0, 1
/* 80C7762C  98 1E 06 18 */	stb r0, 0x618(r30)
lbl_80C77630:
/* 80C77630  A0 1E 05 B2 */	lhz r0, 0x5b2(r30)
/* 80C77634  B0 1E 05 B6 */	sth r0, 0x5b6(r30)
/* 80C77638  A0 1E 05 B4 */	lhz r0, 0x5b4(r30)
/* 80C7763C  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 80C77640  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80C77644  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80C77648  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80C7764C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80C77650  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C77654  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C77658  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C7765C  7C 08 03 A6 */	mtlr r0
/* 80C77660  38 21 00 40 */	addi r1, r1, 0x40
/* 80C77664  4E 80 00 20 */	blr 
