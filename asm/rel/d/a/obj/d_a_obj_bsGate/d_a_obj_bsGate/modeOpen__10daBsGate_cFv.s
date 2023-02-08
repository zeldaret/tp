lbl_80BC2CE0:
/* 80BC2CE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BC2CE4  7C 08 02 A6 */	mflr r0
/* 80BC2CE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BC2CEC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BC2CF0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BC2CF4  7C 7E 1B 78 */	mr r30, r3
/* 80BC2CF8  3C 60 80 BC */	lis r3, lit_3625@ha /* 0x80BC31A0@ha */
/* 80BC2CFC  3B E3 31 A0 */	addi r31, r3, lit_3625@l /* 0x80BC31A0@l */
/* 80BC2D00  88 1E 05 AF */	lbz r0, 0x5af(r30)
/* 80BC2D04  28 00 00 00 */	cmplwi r0, 0
/* 80BC2D08  40 82 00 50 */	bne lbl_80BC2D58
/* 80BC2D0C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BC2D10  7C 03 07 74 */	extsb r3, r0
/* 80BC2D14  4B 46 A3 59 */	bl dComIfGp_getReverb__Fi
/* 80BC2D18  7C 67 1B 78 */	mr r7, r3
/* 80BC2D1C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080187@ha */
/* 80BC2D20  38 03 01 87 */	addi r0, r3, 0x0187 /* 0x00080187@l */
/* 80BC2D24  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BC2D28  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BC2D2C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BC2D30  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC2D34  38 81 00 0C */	addi r4, r1, 0xc
/* 80BC2D38  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BC2D3C  38 C0 00 00 */	li r6, 0
/* 80BC2D40  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80BC2D44  FC 40 08 90 */	fmr f2, f1
/* 80BC2D48  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80BC2D4C  FC 80 18 90 */	fmr f4, f3
/* 80BC2D50  39 00 00 00 */	li r8, 0
/* 80BC2D54  4B 6E 97 B9 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BC2D58:
/* 80BC2D58  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80BC2D5C  C0 3E 05 B0 */	lfs f1, 0x5b0(r30)
/* 80BC2D60  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80BC2D64  3C 80 80 BC */	lis r4, l_HIO@ha /* 0x80BC32DC@ha */
/* 80BC2D68  38 84 32 DC */	addi r4, r4, l_HIO@l /* 0x80BC32DC@l */
/* 80BC2D6C  C0 64 00 04 */	lfs f3, 4(r4)
/* 80BC2D70  C0 9F 00 1C */	lfs f4, 0x1c(r31)
/* 80BC2D74  4B 6A CC 09 */	bl cLib_addCalc__FPfffff
/* 80BC2D78  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BC2D7C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80BC2D80  40 82 00 9C */	bne lbl_80BC2E1C
/* 80BC2D84  88 1E 05 AF */	lbz r0, 0x5af(r30)
/* 80BC2D88  28 00 00 00 */	cmplwi r0, 0
/* 80BC2D8C  40 82 00 50 */	bne lbl_80BC2DDC
/* 80BC2D90  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BC2D94  7C 03 07 74 */	extsb r3, r0
/* 80BC2D98  4B 46 A2 D5 */	bl dComIfGp_getReverb__Fi
/* 80BC2D9C  7C 67 1B 78 */	mr r7, r3
/* 80BC2DA0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080188@ha */
/* 80BC2DA4  38 03 01 88 */	addi r0, r3, 0x0188 /* 0x00080188@l */
/* 80BC2DA8  90 01 00 08 */	stw r0, 8(r1)
/* 80BC2DAC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BC2DB0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BC2DB4  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC2DB8  38 81 00 08 */	addi r4, r1, 8
/* 80BC2DBC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BC2DC0  38 C0 00 00 */	li r6, 0
/* 80BC2DC4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80BC2DC8  FC 40 08 90 */	fmr f2, f1
/* 80BC2DCC  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80BC2DD0  FC 80 18 90 */	fmr f4, f3
/* 80BC2DD4  39 00 00 00 */	li r8, 0
/* 80BC2DD8  4B 6E 8B AD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BC2DDC:
/* 80BC2DDC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80BC2DE0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BC2DE4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80BC2DE8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BC2DEC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BC2DF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC2DF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC2DF8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80BC2DFC  3C 80 80 BC */	lis r4, l_HIO@ha /* 0x80BC32DC@ha */
/* 80BC2E00  38 84 32 DC */	addi r4, r4, l_HIO@l /* 0x80BC32DC@l */
/* 80BC2E04  88 84 00 0C */	lbz r4, 0xc(r4)
/* 80BC2E08  38 A0 00 0F */	li r5, 0xf
/* 80BC2E0C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80BC2E10  4B 4A CC 15 */	bl StartShock__12dVibration_cFii4cXyz
/* 80BC2E14  7F C3 F3 78 */	mr r3, r30
/* 80BC2E18  4B FF FE AD */	bl init_modeWait__10daBsGate_cFv
lbl_80BC2E1C:
/* 80BC2E1C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BC2E20  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BC2E24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BC2E28  7C 08 03 A6 */	mtlr r0
/* 80BC2E2C  38 21 00 30 */	addi r1, r1, 0x30
/* 80BC2E30  4E 80 00 20 */	blr 
