lbl_80C84D40:
/* 80C84D40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C84D44  7C 08 02 A6 */	mflr r0
/* 80C84D48  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C84D4C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C84D50  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C84D54  7C 7E 1B 78 */	mr r30, r3
/* 80C84D58  3C 60 80 C8 */	lis r3, lit_3628@ha /* 0x80C85210@ha */
/* 80C84D5C  3B E3 52 10 */	addi r31, r3, lit_3628@l /* 0x80C85210@l */
/* 80C84D60  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 80C84D64  28 00 00 00 */	cmplwi r0, 0
/* 80C84D68  40 82 00 50 */	bne lbl_80C84DB8
/* 80C84D6C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C84D70  7C 03 07 74 */	extsb r3, r0
/* 80C84D74  4B 3A 82 F9 */	bl dComIfGp_getReverb__Fi
/* 80C84D78  7C 67 1B 78 */	mr r7, r3
/* 80C84D7C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080187@ha */
/* 80C84D80  38 03 01 87 */	addi r0, r3, 0x0187 /* 0x00080187@l */
/* 80C84D84  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C84D88  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C84D8C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C84D90  80 63 00 00 */	lwz r3, 0(r3)
/* 80C84D94  38 81 00 0C */	addi r4, r1, 0xc
/* 80C84D98  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C84D9C  38 C0 00 00 */	li r6, 0
/* 80C84DA0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C84DA4  FC 40 08 90 */	fmr f2, f1
/* 80C84DA8  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80C84DAC  FC 80 18 90 */	fmr f4, f3
/* 80C84DB0  39 00 00 00 */	li r8, 0
/* 80C84DB4  4B 62 77 59 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C84DB8:
/* 80C84DB8  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80C84DBC  C0 3E 05 B4 */	lfs f1, 0x5b4(r30)
/* 80C84DC0  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80C84DC4  3C 80 80 C8 */	lis r4, l_HIO@ha /* 0x80C8536C@ha */
/* 80C84DC8  38 84 53 6C */	addi r4, r4, l_HIO@l /* 0x80C8536C@l */
/* 80C84DCC  C0 64 00 04 */	lfs f3, 4(r4)
/* 80C84DD0  C0 9F 00 1C */	lfs f4, 0x1c(r31)
/* 80C84DD4  4B 5E AB A9 */	bl cLib_addCalc__FPfffff
/* 80C84DD8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C84DDC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C84DE0  40 82 00 9C */	bne lbl_80C84E7C
/* 80C84DE4  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 80C84DE8  28 00 00 00 */	cmplwi r0, 0
/* 80C84DEC  40 82 00 50 */	bne lbl_80C84E3C
/* 80C84DF0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C84DF4  7C 03 07 74 */	extsb r3, r0
/* 80C84DF8  4B 3A 82 75 */	bl dComIfGp_getReverb__Fi
/* 80C84DFC  7C 67 1B 78 */	mr r7, r3
/* 80C84E00  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080188@ha */
/* 80C84E04  38 03 01 88 */	addi r0, r3, 0x0188 /* 0x00080188@l */
/* 80C84E08  90 01 00 08 */	stw r0, 8(r1)
/* 80C84E0C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C84E10  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C84E14  80 63 00 00 */	lwz r3, 0(r3)
/* 80C84E18  38 81 00 08 */	addi r4, r1, 8
/* 80C84E1C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C84E20  38 C0 00 00 */	li r6, 0
/* 80C84E24  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C84E28  FC 40 08 90 */	fmr f2, f1
/* 80C84E2C  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80C84E30  FC 80 18 90 */	fmr f4, f3
/* 80C84E34  39 00 00 00 */	li r8, 0
/* 80C84E38  4B 62 6B 4D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C84E3C:
/* 80C84E3C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C84E40  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C84E44  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80C84E48  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C84E4C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C84E50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C84E54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C84E58  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C84E5C  3C 80 80 C8 */	lis r4, l_HIO@ha /* 0x80C8536C@ha */
/* 80C84E60  38 84 53 6C */	addi r4, r4, l_HIO@l /* 0x80C8536C@l */
/* 80C84E64  88 84 00 0C */	lbz r4, 0xc(r4)
/* 80C84E68  38 A0 00 0F */	li r5, 0xf
/* 80C84E6C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80C84E70  4B 3E AB B5 */	bl StartShock__12dVibration_cFii4cXyz
/* 80C84E74  7F C3 F3 78 */	mr r3, r30
/* 80C84E78  4B FF FE AD */	bl init_modeWait__13daLv7BsGate_cFv
lbl_80C84E7C:
/* 80C84E7C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C84E80  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C84E84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C84E88  7C 08 03 A6 */	mtlr r0
/* 80C84E8C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C84E90  4E 80 00 20 */	blr 
