lbl_80C718EC:
/* 80C718EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C718F0  7C 08 02 A6 */	mflr r0
/* 80C718F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C718F8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80C718FC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80C71900  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C71904  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C71908  7C 7E 1B 78 */	mr r30, r3
/* 80C7190C  3C 60 80 C7 */	lis r3, lit_3639@ha /* 0x80C7214C@ha */
/* 80C71910  3B E3 21 4C */	addi r31, r3, lit_3639@l /* 0x80C7214C@l */
/* 80C71914  88 7E 14 D7 */	lbz r3, 0x14d7(r30)
/* 80C71918  28 03 00 00 */	cmplwi r3, 0
/* 80C7191C  41 82 00 68 */	beq lbl_80C71984
/* 80C71920  38 03 FF FF */	addi r0, r3, -1
/* 80C71924  98 1E 14 D7 */	stb r0, 0x14d7(r30)
/* 80C71928  88 1E 14 D7 */	lbz r0, 0x14d7(r30)
/* 80C7192C  28 00 00 00 */	cmplwi r0, 0
/* 80C71930  40 82 01 24 */	bne lbl_80C71A54
/* 80C71934  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C71938  7C 03 07 74 */	extsb r3, r0
/* 80C7193C  4B 3B B7 31 */	bl dComIfGp_getReverb__Fi
/* 80C71940  7C 67 1B 78 */	mr r7, r3
/* 80C71944  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801FA@ha */
/* 80C71948  38 03 01 FA */	addi r0, r3, 0x01FA /* 0x000801FA@l */
/* 80C7194C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C71950  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C71954  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C71958  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7195C  38 81 00 10 */	addi r4, r1, 0x10
/* 80C71960  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C71964  38 C0 00 00 */	li r6, 0
/* 80C71968  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C7196C  FC 40 08 90 */	fmr f2, f1
/* 80C71970  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C71974  FC 80 18 90 */	fmr f4, f3
/* 80C71978  39 00 00 00 */	li r8, 0
/* 80C7197C  4B 63 A0 09 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C71980  48 00 00 D4 */	b lbl_80C71A54
lbl_80C71984:
/* 80C71984  38 7E 14 D8 */	addi r3, r30, 0x14d8
/* 80C71988  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80C7198C  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 80C71990  3C 80 80 C7 */	lis r4, l_HIO@ha /* 0x80C7238C@ha */
/* 80C71994  38 84 23 8C */	addi r4, r4, l_HIO@l /* 0x80C7238C@l */
/* 80C71998  C0 64 00 04 */	lfs f3, 4(r4)
/* 80C7199C  C0 9F 00 4C */	lfs f4, 0x4c(r31)
/* 80C719A0  4B 5F DF DD */	bl cLib_addCalc__FPfffff
/* 80C719A4  FF E0 08 90 */	fmr f31, f1
/* 80C719A8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C719AC  7C 03 07 74 */	extsb r3, r0
/* 80C719B0  4B 3B B6 BD */	bl dComIfGp_getReverb__Fi
/* 80C719B4  7C 67 1B 78 */	mr r7, r3
/* 80C719B8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801FC@ha */
/* 80C719BC  38 03 01 FC */	addi r0, r3, 0x01FC /* 0x000801FC@l */
/* 80C719C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C719C4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C719C8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C719CC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C719D0  38 81 00 0C */	addi r4, r1, 0xc
/* 80C719D4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C719D8  38 C0 00 00 */	li r6, 0
/* 80C719DC  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C719E0  FC 40 08 90 */	fmr f2, f1
/* 80C719E4  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C719E8  FC 80 18 90 */	fmr f4, f3
/* 80C719EC  39 00 00 00 */	li r8, 0
/* 80C719F0  4B 63 AB 1D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C719F4  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80C719F8  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80C719FC  40 82 00 58 */	bne lbl_80C71A54
/* 80C71A00  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C71A04  7C 03 07 74 */	extsb r3, r0
/* 80C71A08  4B 3B B6 65 */	bl dComIfGp_getReverb__Fi
/* 80C71A0C  7C 67 1B 78 */	mr r7, r3
/* 80C71A10  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801FB@ha */
/* 80C71A14  38 03 01 FB */	addi r0, r3, 0x01FB /* 0x000801FB@l */
/* 80C71A18  90 01 00 08 */	stw r0, 8(r1)
/* 80C71A1C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C71A20  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C71A24  80 63 00 00 */	lwz r3, 0(r3)
/* 80C71A28  38 81 00 08 */	addi r4, r1, 8
/* 80C71A2C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C71A30  38 C0 00 00 */	li r6, 0
/* 80C71A34  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C71A38  FC 40 08 90 */	fmr f2, f1
/* 80C71A3C  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C71A40  FC 80 18 90 */	fmr f4, f3
/* 80C71A44  39 00 00 00 */	li r8, 0
/* 80C71A48  4B 63 9F 3D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C71A4C  7F C3 F3 78 */	mr r3, r30
/* 80C71A50  4B FF FB A5 */	bl init_modeWait__17daLv6ChangeGate_cFv
lbl_80C71A54:
/* 80C71A54  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80C71A58  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80C71A5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C71A60  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C71A64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C71A68  7C 08 03 A6 */	mtlr r0
/* 80C71A6C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C71A70  4E 80 00 20 */	blr 
