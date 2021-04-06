lbl_80C716B4:
/* 80C716B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C716B8  7C 08 02 A6 */	mflr r0
/* 80C716BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C716C0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80C716C4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80C716C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C716CC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C716D0  7C 7E 1B 78 */	mr r30, r3
/* 80C716D4  3C 60 80 C7 */	lis r3, lit_3639@ha /* 0x80C7214C@ha */
/* 80C716D8  3B E3 21 4C */	addi r31, r3, lit_3639@l /* 0x80C7214C@l */
/* 80C716DC  88 7E 14 D7 */	lbz r3, 0x14d7(r30)
/* 80C716E0  28 03 00 00 */	cmplwi r3, 0
/* 80C716E4  41 82 00 68 */	beq lbl_80C7174C
/* 80C716E8  38 03 FF FF */	addi r0, r3, -1
/* 80C716EC  98 1E 14 D7 */	stb r0, 0x14d7(r30)
/* 80C716F0  88 1E 14 D7 */	lbz r0, 0x14d7(r30)
/* 80C716F4  28 00 00 00 */	cmplwi r0, 0
/* 80C716F8  40 82 01 24 */	bne lbl_80C7181C
/* 80C716FC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C71700  7C 03 07 74 */	extsb r3, r0
/* 80C71704  4B 3B B9 69 */	bl dComIfGp_getReverb__Fi
/* 80C71708  7C 67 1B 78 */	mr r7, r3
/* 80C7170C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801FA@ha */
/* 80C71710  38 03 01 FA */	addi r0, r3, 0x01FA /* 0x000801FA@l */
/* 80C71714  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C71718  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C7171C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C71720  80 63 00 00 */	lwz r3, 0(r3)
/* 80C71724  38 81 00 10 */	addi r4, r1, 0x10
/* 80C71728  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C7172C  38 C0 00 00 */	li r6, 0
/* 80C71730  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C71734  FC 40 08 90 */	fmr f2, f1
/* 80C71738  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C7173C  FC 80 18 90 */	fmr f4, f3
/* 80C71740  39 00 00 00 */	li r8, 0
/* 80C71744  4B 63 A2 41 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C71748  48 00 00 D4 */	b lbl_80C7181C
lbl_80C7174C:
/* 80C7174C  38 7E 14 D8 */	addi r3, r30, 0x14d8
/* 80C71750  3C 80 80 C7 */	lis r4, l_HIO@ha /* 0x80C7238C@ha */
/* 80C71754  38 84 23 8C */	addi r4, r4, l_HIO@l /* 0x80C7238C@l */
/* 80C71758  C0 24 00 08 */	lfs f1, 8(r4)
/* 80C7175C  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 80C71760  C0 64 00 04 */	lfs f3, 4(r4)
/* 80C71764  C0 9F 00 4C */	lfs f4, 0x4c(r31)
/* 80C71768  4B 5F E2 15 */	bl cLib_addCalc__FPfffff
/* 80C7176C  FF E0 08 90 */	fmr f31, f1
/* 80C71770  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C71774  7C 03 07 74 */	extsb r3, r0
/* 80C71778  4B 3B B8 F5 */	bl dComIfGp_getReverb__Fi
/* 80C7177C  7C 67 1B 78 */	mr r7, r3
/* 80C71780  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801FC@ha */
/* 80C71784  38 03 01 FC */	addi r0, r3, 0x01FC /* 0x000801FC@l */
/* 80C71788  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C7178C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C71790  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C71794  80 63 00 00 */	lwz r3, 0(r3)
/* 80C71798  38 81 00 0C */	addi r4, r1, 0xc
/* 80C7179C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C717A0  38 C0 00 00 */	li r6, 0
/* 80C717A4  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C717A8  FC 40 08 90 */	fmr f2, f1
/* 80C717AC  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C717B0  FC 80 18 90 */	fmr f4, f3
/* 80C717B4  39 00 00 00 */	li r8, 0
/* 80C717B8  4B 63 AD 55 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C717BC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80C717C0  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80C717C4  40 82 00 58 */	bne lbl_80C7181C
/* 80C717C8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C717CC  7C 03 07 74 */	extsb r3, r0
/* 80C717D0  4B 3B B8 9D */	bl dComIfGp_getReverb__Fi
/* 80C717D4  7C 67 1B 78 */	mr r7, r3
/* 80C717D8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801FB@ha */
/* 80C717DC  38 03 01 FB */	addi r0, r3, 0x01FB /* 0x000801FB@l */
/* 80C717E0  90 01 00 08 */	stw r0, 8(r1)
/* 80C717E4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C717E8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C717EC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C717F0  38 81 00 08 */	addi r4, r1, 8
/* 80C717F4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C717F8  38 C0 00 00 */	li r6, 0
/* 80C717FC  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C71800  FC 40 08 90 */	fmr f2, f1
/* 80C71804  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C71808  FC 80 18 90 */	fmr f4, f3
/* 80C7180C  39 00 00 00 */	li r8, 0
/* 80C71810  4B 63 A1 75 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C71814  7F C3 F3 78 */	mr r3, r30
/* 80C71818  4B FF FD DD */	bl init_modeWait__17daLv6ChangeGate_cFv
lbl_80C7181C:
/* 80C7181C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80C71820  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80C71824  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C71828  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C7182C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C71830  7C 08 03 A6 */	mtlr r0
/* 80C71834  38 21 00 30 */	addi r1, r1, 0x30
/* 80C71838  4E 80 00 20 */	blr 
