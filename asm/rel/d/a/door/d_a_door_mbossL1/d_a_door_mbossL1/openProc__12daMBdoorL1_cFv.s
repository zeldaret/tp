lbl_80674DA4:
/* 80674DA4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80674DA8  7C 08 02 A6 */	mflr r0
/* 80674DAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80674DB0  39 61 00 40 */	addi r11, r1, 0x40
/* 80674DB4  4B CE D4 25 */	bl _savegpr_28
/* 80674DB8  7C 7D 1B 78 */	mr r29, r3
/* 80674DBC  3C 60 80 67 */	lis r3, l_staff_name@ha /* 0x80677558@ha */
/* 80674DC0  3B E3 75 58 */	addi r31, r3, l_staff_name@l /* 0x80677558@l */
/* 80674DC4  80 7D 05 88 */	lwz r3, 0x588(r29)
/* 80674DC8  4B 99 86 61 */	bl play__14mDoExt_baseAnmFv
/* 80674DCC  7C 7E 1B 78 */	mr r30, r3
/* 80674DD0  7F A3 EB 78 */	mr r3, r29
/* 80674DD4  4B FF E1 B1 */	bl getDoorType__12daMBdoorL1_cFv
/* 80674DD8  2C 03 00 00 */	cmpwi r3, 0
/* 80674DDC  40 82 00 4C */	bne lbl_80674E28
/* 80674DE0  80 7D 05 88 */	lwz r3, 0x588(r29)
/* 80674DE4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80674DE8  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80674DEC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80674DF0  40 82 00 B4 */	bne lbl_80674EA4
/* 80674DF4  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80674DF8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80674DFC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80674E00  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80674E04  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80674E08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80674E0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80674E10  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80674E14  38 80 00 04 */	li r4, 4
/* 80674E18  38 A0 00 0F */	li r5, 0xf
/* 80674E1C  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80674E20  4B 9F AC 05 */	bl StartShock__12dVibration_cFii4cXyz
/* 80674E24  48 00 00 80 */	b lbl_80674EA4
lbl_80674E28:
/* 80674E28  7F A3 EB 78 */	mr r3, r29
/* 80674E2C  4B FF E1 59 */	bl getDoorType__12daMBdoorL1_cFv
/* 80674E30  2C 03 00 01 */	cmpwi r3, 1
/* 80674E34  40 82 00 70 */	bne lbl_80674EA4
/* 80674E38  80 7D 05 88 */	lwz r3, 0x588(r29)
/* 80674E3C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80674E40  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80674E44  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80674E48  40 82 00 5C */	bne lbl_80674EA4
/* 80674E4C  7F A3 EB 78 */	mr r3, r29
/* 80674E50  4B FF D9 E9 */	bl getNowLevel__FP10fopAc_ac_c
/* 80674E54  2C 03 00 05 */	cmpwi r3, 5
/* 80674E58  41 82 00 4C */	beq lbl_80674EA4
/* 80674E5C  40 80 00 10 */	bge lbl_80674E6C
/* 80674E60  2C 03 00 03 */	cmpwi r3, 3
/* 80674E64  40 80 00 10 */	bge lbl_80674E74
/* 80674E68  48 00 00 3C */	b lbl_80674EA4
lbl_80674E6C:
/* 80674E6C  2C 03 00 07 */	cmpwi r3, 7
/* 80674E70  40 80 00 34 */	bge lbl_80674EA4
lbl_80674E74:
/* 80674E74  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80674E78  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80674E7C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80674E80  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80674E84  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80674E88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80674E8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80674E90  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80674E94  38 80 00 04 */	li r4, 4
/* 80674E98  38 A0 00 0F */	li r5, 0xf
/* 80674E9C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80674EA0  4B 9F AB 85 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80674EA4:
/* 80674EA4  7F A3 EB 78 */	mr r3, r29
/* 80674EA8  4B FF E0 DD */	bl getDoorType__12daMBdoorL1_cFv
/* 80674EAC  2C 03 00 00 */	cmpwi r3, 0
/* 80674EB0  40 82 00 68 */	bne lbl_80674F18
/* 80674EB4  80 7D 05 88 */	lwz r3, 0x588(r29)
/* 80674EB8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80674EBC  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80674EC0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80674EC4  40 82 00 F4 */	bne lbl_80674FB8
/* 80674EC8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80674ECC  7C 03 07 74 */	extsb r3, r0
/* 80674ED0  4B 9B 81 9D */	bl dComIfGp_getReverb__Fi
/* 80674ED4  7C 67 1B 78 */	mr r7, r3
/* 80674ED8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B2@ha */
/* 80674EDC  38 03 00 B2 */	addi r0, r3, 0x00B2 /* 0x000800B2@l */
/* 80674EE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80674EE4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80674EE8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80674EEC  80 63 00 00 */	lwz r3, 0(r3)
/* 80674EF0  38 81 00 0C */	addi r4, r1, 0xc
/* 80674EF4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80674EF8  38 C0 00 00 */	li r6, 0
/* 80674EFC  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80674F00  FC 40 08 90 */	fmr f2, f1
/* 80674F04  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 80674F08  FC 80 18 90 */	fmr f4, f3
/* 80674F0C  39 00 00 00 */	li r8, 0
/* 80674F10  4B C3 6A 75 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80674F14  48 00 00 A4 */	b lbl_80674FB8
lbl_80674F18:
/* 80674F18  7F A3 EB 78 */	mr r3, r29
/* 80674F1C  4B FF E0 69 */	bl getDoorType__12daMBdoorL1_cFv
/* 80674F20  2C 03 00 01 */	cmpwi r3, 1
/* 80674F24  40 82 00 94 */	bne lbl_80674FB8
/* 80674F28  80 7D 05 88 */	lwz r3, 0x588(r29)
/* 80674F2C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80674F30  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80674F34  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80674F38  40 82 00 80 */	bne lbl_80674FB8
/* 80674F3C  7F A3 EB 78 */	mr r3, r29
/* 80674F40  4B FF D8 F9 */	bl getNowLevel__FP10fopAc_ac_c
/* 80674F44  2C 03 00 08 */	cmpwi r3, 8
/* 80674F48  40 82 00 10 */	bne lbl_80674F58
/* 80674F4C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080219@ha */
/* 80674F50  3B 83 02 19 */	addi r28, r3, 0x0219 /* 0x00080219@l */
/* 80674F54  48 00 00 20 */	b lbl_80674F74
lbl_80674F58:
/* 80674F58  88 1D 05 E1 */	lbz r0, 0x5e1(r29)
/* 80674F5C  28 00 00 00 */	cmplwi r0, 0
/* 80674F60  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080191@ha */
/* 80674F64  38 03 01 91 */	addi r0, r3, 0x0191 /* 0x00080191@l */
/* 80674F68  41 82 00 08 */	beq lbl_80674F70
/* 80674F6C  38 03 01 9A */	addi r0, r3, 0x19a
lbl_80674F70:
/* 80674F70  7C 1C 03 78 */	mr r28, r0
lbl_80674F74:
/* 80674F74  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80674F78  7C 03 07 74 */	extsb r3, r0
/* 80674F7C  4B 9B 80 F1 */	bl dComIfGp_getReverb__Fi
/* 80674F80  7C 67 1B 78 */	mr r7, r3
/* 80674F84  93 81 00 08 */	stw r28, 8(r1)
/* 80674F88  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80674F8C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80674F90  80 63 00 00 */	lwz r3, 0(r3)
/* 80674F94  38 81 00 08 */	addi r4, r1, 8
/* 80674F98  38 BD 05 38 */	addi r5, r29, 0x538
/* 80674F9C  38 C0 00 00 */	li r6, 0
/* 80674FA0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80674FA4  FC 40 08 90 */	fmr f2, f1
/* 80674FA8  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 80674FAC  FC 80 18 90 */	fmr f4, f3
/* 80674FB0  39 00 00 00 */	li r8, 0
/* 80674FB4  4B C3 69 D1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80674FB8:
/* 80674FB8  7F A3 EB 78 */	mr r3, r29
/* 80674FBC  4B FF E6 3D */	bl calcMtx__12daMBdoorL1_cFv
/* 80674FC0  7F C3 F3 78 */	mr r3, r30
/* 80674FC4  39 61 00 40 */	addi r11, r1, 0x40
/* 80674FC8  4B CE D2 5D */	bl _restgpr_28
/* 80674FCC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80674FD0  7C 08 03 A6 */	mtlr r0
/* 80674FD4  38 21 00 40 */	addi r1, r1, 0x40
/* 80674FD8  4E 80 00 20 */	blr 
