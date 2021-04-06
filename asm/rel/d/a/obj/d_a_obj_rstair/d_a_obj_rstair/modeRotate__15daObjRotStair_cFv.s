lbl_80CC1EC8:
/* 80CC1EC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CC1ECC  7C 08 02 A6 */	mflr r0
/* 80CC1ED0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CC1ED4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CC1ED8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CC1EDC  7C 7E 1B 78 */	mr r30, r3
/* 80CC1EE0  3C 60 80 CC */	lis r3, l_wtr_bmd@ha /* 0x80CC2700@ha */
/* 80CC1EE4  3B E3 27 00 */	addi r31, r3, l_wtr_bmd@l /* 0x80CC2700@l */
/* 80CC1EE8  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80CC1EEC  A8 1E 05 D4 */	lha r0, 0x5d4(r30)
/* 80CC1EF0  7C 63 00 50 */	subf r3, r3, r0
/* 80CC1EF4  4B 6A 31 DD */	bl abs
/* 80CC1EF8  A8 9E 05 D0 */	lha r4, 0x5d0(r30)
/* 80CC1EFC  7C 03 20 00 */	cmpw r3, r4
/* 80CC1F00  40 80 00 9C */	bge lbl_80CC1F9C
/* 80CC1F04  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80CC1F08  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CC1F0C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80CC1F10  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CC1F14  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CC1F18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC1F1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC1F20  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CC1F24  38 80 00 08 */	li r4, 8
/* 80CC1F28  38 A0 00 1F */	li r5, 0x1f
/* 80CC1F2C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80CC1F30  4B 3A DA F5 */	bl StartShock__12dVibration_cFii4cXyz
/* 80CC1F34  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CC1F38  7C 03 07 74 */	extsb r3, r0
/* 80CC1F3C  4B 36 B1 31 */	bl dComIfGp_getReverb__Fi
/* 80CC1F40  7C 67 1B 78 */	mr r7, r3
/* 80CC1F44  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080168@ha */
/* 80CC1F48  38 03 01 68 */	addi r0, r3, 0x0168 /* 0x00080168@l */
/* 80CC1F4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CC1F50  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CC1F54  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CC1F58  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC1F5C  38 81 00 0C */	addi r4, r1, 0xc
/* 80CC1F60  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CC1F64  38 C0 00 00 */	li r6, 0
/* 80CC1F68  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80CC1F6C  FC 40 08 90 */	fmr f2, f1
/* 80CC1F70  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80CC1F74  FC 80 18 90 */	fmr f4, f3
/* 80CC1F78  39 00 00 00 */	li r8, 0
/* 80CC1F7C  4B 5E 9A 09 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CC1F80  A8 1E 05 D4 */	lha r0, 0x5d4(r30)
/* 80CC1F84  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80CC1F88  38 00 00 00 */	li r0, 0
/* 80CC1F8C  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 80CC1F90  7F C3 F3 78 */	mr r3, r30
/* 80CC1F94  4B FF FC 9D */	bl init_modeWait__15daObjRotStair_cFv
/* 80CC1F98  48 00 00 10 */	b lbl_80CC1FA8
lbl_80CC1F9C:
/* 80CC1F9C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80CC1FA0  7C 00 22 14 */	add r0, r0, r4
/* 80CC1FA4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_80CC1FA8:
/* 80CC1FA8  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80CC1FAC  A8 9E 05 D2 */	lha r4, 0x5d2(r30)
/* 80CC1FB0  38 A0 00 14 */	li r5, 0x14
/* 80CC1FB4  38 C0 00 32 */	li r6, 0x32
/* 80CC1FB8  38 E0 00 0A */	li r7, 0xa
/* 80CC1FBC  4B 5A E5 85 */	bl cLib_addCalcAngleS__FPsssss
/* 80CC1FC0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CC1FC4  7C 03 07 74 */	extsb r3, r0
/* 80CC1FC8  4B 36 B0 A5 */	bl dComIfGp_getReverb__Fi
/* 80CC1FCC  7C 67 1B 78 */	mr r7, r3
/* 80CC1FD0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080167@ha */
/* 80CC1FD4  38 03 01 67 */	addi r0, r3, 0x0167 /* 0x00080167@l */
/* 80CC1FD8  90 01 00 08 */	stw r0, 8(r1)
/* 80CC1FDC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CC1FE0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CC1FE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC1FE8  38 81 00 08 */	addi r4, r1, 8
/* 80CC1FEC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CC1FF0  38 C0 00 00 */	li r6, 0
/* 80CC1FF4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80CC1FF8  FC 40 08 90 */	fmr f2, f1
/* 80CC1FFC  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80CC2000  FC 80 18 90 */	fmr f4, f3
/* 80CC2004  39 00 00 00 */	li r8, 0
/* 80CC2008  4B 5E A5 05 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CC200C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CC2010  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CC2014  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CC2018  7C 08 03 A6 */	mtlr r0
/* 80CC201C  38 21 00 30 */	addi r1, r1, 0x30
/* 80CC2020  4E 80 00 20 */	blr 
