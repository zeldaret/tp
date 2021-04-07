lbl_80BC2E40:
/* 80BC2E40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BC2E44  7C 08 02 A6 */	mflr r0
/* 80BC2E48  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BC2E4C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BC2E50  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BC2E54  7C 7E 1B 78 */	mr r30, r3
/* 80BC2E58  3C 60 80 BC */	lis r3, lit_3625@ha /* 0x80BC31A0@ha */
/* 80BC2E5C  3B E3 31 A0 */	addi r31, r3, lit_3625@l /* 0x80BC31A0@l */
/* 80BC2E60  88 1E 05 AF */	lbz r0, 0x5af(r30)
/* 80BC2E64  28 00 00 00 */	cmplwi r0, 0
/* 80BC2E68  40 82 00 50 */	bne lbl_80BC2EB8
/* 80BC2E6C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BC2E70  7C 03 07 74 */	extsb r3, r0
/* 80BC2E74  4B 46 A1 F9 */	bl dComIfGp_getReverb__Fi
/* 80BC2E78  7C 67 1B 78 */	mr r7, r3
/* 80BC2E7C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080189@ha */
/* 80BC2E80  38 03 01 89 */	addi r0, r3, 0x0189 /* 0x00080189@l */
/* 80BC2E84  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BC2E88  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BC2E8C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BC2E90  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC2E94  38 81 00 0C */	addi r4, r1, 0xc
/* 80BC2E98  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BC2E9C  38 C0 00 00 */	li r6, 0
/* 80BC2EA0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80BC2EA4  FC 40 08 90 */	fmr f2, f1
/* 80BC2EA8  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80BC2EAC  FC 80 18 90 */	fmr f4, f3
/* 80BC2EB0  39 00 00 00 */	li r8, 0
/* 80BC2EB4  4B 6E 96 59 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BC2EB8:
/* 80BC2EB8  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80BC2EBC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80BC2EC0  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80BC2EC4  3C 80 80 BC */	lis r4, l_HIO@ha /* 0x80BC32DC@ha */
/* 80BC2EC8  38 84 32 DC */	addi r4, r4, l_HIO@l /* 0x80BC32DC@l */
/* 80BC2ECC  C0 64 00 08 */	lfs f3, 8(r4)
/* 80BC2ED0  C0 9F 00 1C */	lfs f4, 0x1c(r31)
/* 80BC2ED4  4B 6A CA A9 */	bl cLib_addCalc__FPfffff
/* 80BC2ED8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BC2EDC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80BC2EE0  40 82 00 9C */	bne lbl_80BC2F7C
/* 80BC2EE4  88 1E 05 AF */	lbz r0, 0x5af(r30)
/* 80BC2EE8  28 00 00 00 */	cmplwi r0, 0
/* 80BC2EEC  40 82 00 50 */	bne lbl_80BC2F3C
/* 80BC2EF0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BC2EF4  7C 03 07 74 */	extsb r3, r0
/* 80BC2EF8  4B 46 A1 75 */	bl dComIfGp_getReverb__Fi
/* 80BC2EFC  7C 67 1B 78 */	mr r7, r3
/* 80BC2F00  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008018A@ha */
/* 80BC2F04  38 03 01 8A */	addi r0, r3, 0x018A /* 0x0008018A@l */
/* 80BC2F08  90 01 00 08 */	stw r0, 8(r1)
/* 80BC2F0C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BC2F10  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BC2F14  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC2F18  38 81 00 08 */	addi r4, r1, 8
/* 80BC2F1C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BC2F20  38 C0 00 00 */	li r6, 0
/* 80BC2F24  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80BC2F28  FC 40 08 90 */	fmr f2, f1
/* 80BC2F2C  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80BC2F30  FC 80 18 90 */	fmr f4, f3
/* 80BC2F34  39 00 00 00 */	li r8, 0
/* 80BC2F38  4B 6E 8A 4D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BC2F3C:
/* 80BC2F3C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80BC2F40  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BC2F44  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80BC2F48  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BC2F4C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BC2F50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC2F54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC2F58  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80BC2F5C  3C 80 80 BC */	lis r4, l_HIO@ha /* 0x80BC32DC@ha */
/* 80BC2F60  38 84 32 DC */	addi r4, r4, l_HIO@l /* 0x80BC32DC@l */
/* 80BC2F64  88 84 00 0C */	lbz r4, 0xc(r4)
/* 80BC2F68  38 A0 00 0F */	li r5, 0xf
/* 80BC2F6C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80BC2F70  4B 4A CA B5 */	bl StartShock__12dVibration_cFii4cXyz
/* 80BC2F74  7F C3 F3 78 */	mr r3, r30
/* 80BC2F78  4B FF FD 4D */	bl init_modeWait__10daBsGate_cFv
lbl_80BC2F7C:
/* 80BC2F7C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BC2F80  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BC2F84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BC2F88  7C 08 03 A6 */	mtlr r0
/* 80BC2F8C  38 21 00 30 */	addi r1, r1, 0x30
/* 80BC2F90  4E 80 00 20 */	blr 
