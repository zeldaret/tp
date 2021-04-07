lbl_8099EB40:
/* 8099EB40  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8099EB44  7C 08 02 A6 */	mflr r0
/* 8099EB48  90 01 00 44 */	stw r0, 0x44(r1)
/* 8099EB4C  39 61 00 40 */	addi r11, r1, 0x40
/* 8099EB50  4B 9C 36 85 */	bl _savegpr_27
/* 8099EB54  7C 7E 1B 78 */	mr r30, r3
/* 8099EB58  3C 80 80 9A */	lis r4, M_attr__12daNpcCoach_c@ha /* 0x809A4ED0@ha */
/* 8099EB5C  3B E4 4E D0 */	addi r31, r4, M_attr__12daNpcCoach_c@l /* 0x809A4ED0@l */
/* 8099EB60  48 00 2C B1 */	bl calcHorseMotion__12daNpcCoach_cFv
/* 8099EB64  7F C3 F3 78 */	mr r3, r30
/* 8099EB68  48 00 22 99 */	bl calcHarnessMotion__12daNpcCoach_cFv
/* 8099EB6C  7F C3 F3 78 */	mr r3, r30
/* 8099EB70  48 00 11 85 */	bl calcCoachMotion__12daNpcCoach_cFv
/* 8099EB74  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 8099EB78  4B 68 27 E1 */	bl fpcEx_SearchByID__FUi
/* 8099EB7C  28 03 00 00 */	cmplwi r3, 0
/* 8099EB80  41 82 00 28 */	beq lbl_8099EBA8
/* 8099EB84  80 9E 15 D0 */	lwz r4, 0x15d0(r30)
/* 8099EB88  80 84 00 84 */	lwz r4, 0x84(r4)
/* 8099EB8C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8099EB90  38 04 00 F0 */	addi r0, r4, 0xf0
/* 8099EB94  80 63 05 68 */	lwz r3, 0x568(r3)
/* 8099EB98  80 83 00 04 */	lwz r4, 4(r3)
/* 8099EB9C  7C 03 03 78 */	mr r3, r0
/* 8099EBA0  38 84 00 24 */	addi r4, r4, 0x24
/* 8099EBA4  4B 9A 79 0D */	bl PSMTXCopy
lbl_8099EBA8:
/* 8099EBA8  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 8099EBAC  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 8099EBB0  80 63 00 00 */	lwz r3, 0(r3)
/* 8099EBB4  38 80 00 20 */	li r4, 0x20
/* 8099EBB8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8099EBBC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8099EBC0  3F A5 00 02 */	addis r29, r5, 2
/* 8099EBC4  3B BD C2 F8 */	addi r29, r29, -15624
/* 8099EBC8  7F A5 EB 78 */	mr r5, r29
/* 8099EBCC  38 C0 00 80 */	li r6, 0x80
/* 8099EBD0  4B 69 D7 1D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8099EBD4  7C 7C 1B 78 */	mr r28, r3
/* 8099EBD8  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 8099EBDC  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 8099EBE0  80 63 00 00 */	lwz r3, 0(r3)
/* 8099EBE4  38 80 00 1F */	li r4, 0x1f
/* 8099EBE8  7F A5 EB 78 */	mr r5, r29
/* 8099EBEC  38 C0 00 80 */	li r6, 0x80
/* 8099EBF0  4B 69 D6 FD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8099EBF4  7C 7D 1B 78 */	mr r29, r3
/* 8099EBF8  80 7E 1D C8 */	lwz r3, 0x1dc8(r30)
/* 8099EBFC  80 03 00 08 */	lwz r0, 8(r3)
/* 8099EC00  7C 00 E0 40 */	cmplw r0, r28
/* 8099EC04  40 82 00 44 */	bne lbl_8099EC48
/* 8099EC08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8099EC0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8099EC10  38 63 09 78 */	addi r3, r3, 0x978
/* 8099EC14  38 80 00 37 */	li r4, 0x37
/* 8099EC18  4B 69 5F D1 */	bl isSwitch__12dSv_danBit_cCFi
/* 8099EC1C  2C 03 00 00 */	cmpwi r3, 0
/* 8099EC20  41 82 00 6C */	beq lbl_8099EC8C
/* 8099EC24  80 7E 1D C8 */	lwz r3, 0x1dc8(r30)
/* 8099EC28  7F A4 EB 78 */	mr r4, r29
/* 8099EC2C  38 A0 00 02 */	li r5, 2
/* 8099EC30  C0 3F 01 64 */	lfs f1, 0x164(r31)
/* 8099EC34  C0 5F 01 5C */	lfs f2, 0x15c(r31)
/* 8099EC38  C0 7F 00 A0 */	lfs f3, 0xa0(r31)
/* 8099EC3C  C0 9F 01 68 */	lfs f4, 0x168(r31)
/* 8099EC40  4B 67 22 31 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8099EC44  48 00 00 48 */	b lbl_8099EC8C
lbl_8099EC48:
/* 8099EC48  7C 00 E8 40 */	cmplw r0, r29
/* 8099EC4C  40 82 00 40 */	bne lbl_8099EC8C
/* 8099EC50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8099EC54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8099EC58  38 63 09 78 */	addi r3, r3, 0x978
/* 8099EC5C  38 80 00 37 */	li r4, 0x37
/* 8099EC60  4B 69 5F 89 */	bl isSwitch__12dSv_danBit_cCFi
/* 8099EC64  2C 03 00 00 */	cmpwi r3, 0
/* 8099EC68  40 82 00 24 */	bne lbl_8099EC8C
/* 8099EC6C  80 7E 1D C8 */	lwz r3, 0x1dc8(r30)
/* 8099EC70  7F 84 E3 78 */	mr r4, r28
/* 8099EC74  38 A0 00 02 */	li r5, 2
/* 8099EC78  C0 3F 01 6C */	lfs f1, 0x16c(r31)
/* 8099EC7C  C0 5F 01 5C */	lfs f2, 0x15c(r31)
/* 8099EC80  C0 7F 00 A0 */	lfs f3, 0xa0(r31)
/* 8099EC84  C0 9F 01 68 */	lfs f4, 0x168(r31)
/* 8099EC88  4B 67 21 E9 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_8099EC8C:
/* 8099EC8C  80 7E 15 D0 */	lwz r3, 0x15d0(r30)
/* 8099EC90  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8099EC94  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8099EC98  38 63 01 20 */	addi r3, r3, 0x120
/* 8099EC9C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099ECA0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099ECA4  4B 9A 78 0D */	bl PSMTXCopy
/* 8099ECA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099ECAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099ECB0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8099ECB4  D0 1E 24 5C */	stfs f0, 0x245c(r30)
/* 8099ECB8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8099ECBC  D0 1E 24 60 */	stfs f0, 0x2460(r30)
/* 8099ECC0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8099ECC4  D0 1E 24 64 */	stfs f0, 0x2464(r30)
/* 8099ECC8  80 9E 1D C8 */	lwz r4, 0x1dc8(r30)
/* 8099ECCC  80 84 00 04 */	lwz r4, 4(r4)
/* 8099ECD0  38 84 00 24 */	addi r4, r4, 0x24
/* 8099ECD4  4B 9A 77 DD */	bl PSMTXCopy
/* 8099ECD8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8099ECDC  7C 03 07 74 */	extsb r3, r0
/* 8099ECE0  4B 68 E3 8D */	bl dComIfGp_getReverb__Fi
/* 8099ECE4  7C 65 1B 78 */	mr r5, r3
/* 8099ECE8  80 7E 1D C8 */	lwz r3, 0x1dc8(r30)
/* 8099ECEC  38 80 00 00 */	li r4, 0
/* 8099ECF0  4B 67 23 C1 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 8099ECF4  80 7E 1D C8 */	lwz r3, 0x1dc8(r30)
/* 8099ECF8  4B 67 24 F5 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 8099ECFC  7F C3 F3 78 */	mr r3, r30
/* 8099ED00  48 00 07 BD */	bl reinsExecute__12daNpcCoach_cFv
/* 8099ED04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8099ED08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8099ED0C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8099ED10  38 9E 1A 4C */	addi r4, r30, 0x1a4c
/* 8099ED14  4B 6D 63 ED */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 8099ED18  7C 66 1B 78 */	mr r6, r3
/* 8099ED1C  38 60 00 01 */	li r3, 1
/* 8099ED20  38 80 00 0A */	li r4, 0xa
/* 8099ED24  38 BE 15 5C */	addi r5, r30, 0x155c
/* 8099ED28  4B 6F D6 A5 */	bl setPosition__7dTres_cFiUcPC3Veci
/* 8099ED2C  7F C3 F3 78 */	mr r3, r30
/* 8099ED30  48 00 01 71 */	bl checkCoachDamage__12daNpcCoach_cFv
/* 8099ED34  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 8099ED38  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8099ED3C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8099ED40  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8099ED44  3B 80 00 00 */	li r28, 0
/* 8099ED48  3B 60 00 00 */	li r27, 0
/* 8099ED4C  3B A0 00 00 */	li r29, 0
lbl_8099ED50:
/* 8099ED50  38 1D 24 7C */	addi r0, r29, 0x247c
/* 8099ED54  7C 7E 00 2E */	lwzx r3, r30, r0
/* 8099ED58  3C 03 00 01 */	addis r0, r3, 1
/* 8099ED5C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8099ED60  41 82 00 24 */	beq lbl_8099ED84
/* 8099ED64  4B 68 25 F5 */	bl fpcEx_SearchByID__FUi
/* 8099ED68  28 03 00 00 */	cmplwi r3, 0
/* 8099ED6C  41 82 00 18 */	beq lbl_8099ED84
/* 8099ED70  38 83 04 D0 */	addi r4, r3, 0x4d0
/* 8099ED74  38 61 00 0C */	addi r3, r1, 0xc
/* 8099ED78  7C 65 1B 78 */	mr r5, r3
/* 8099ED7C  4B 9A 83 15 */	bl PSVECAdd
/* 8099ED80  3B 9C 00 01 */	addi r28, r28, 1
lbl_8099ED84:
/* 8099ED84  3B 7B 00 01 */	addi r27, r27, 1
/* 8099ED88  2C 1B 00 05 */	cmpwi r27, 5
/* 8099ED8C  3B BD 00 04 */	addi r29, r29, 4
/* 8099ED90  41 80 FF C0 */	blt lbl_8099ED50
/* 8099ED94  80 1E 24 C4 */	lwz r0, 0x24c4(r30)
/* 8099ED98  2C 00 00 00 */	cmpwi r0, 0
/* 8099ED9C  40 81 00 E0 */	ble lbl_8099EE7C
/* 8099EDA0  2C 1C 00 00 */	cmpwi r28, 0
/* 8099EDA4  40 82 00 20 */	bne lbl_8099EDC4
/* 8099EDA8  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8099EDAC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8099EDB0  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 8099EDB4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8099EDB8  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 8099EDBC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8099EDC0  48 00 00 34 */	b lbl_8099EDF4
lbl_8099EDC4:
/* 8099EDC4  38 61 00 0C */	addi r3, r1, 0xc
/* 8099EDC8  7C 64 1B 78 */	mr r4, r3
/* 8099EDCC  C0 5F 01 5C */	lfs f2, 0x15c(r31)
/* 8099EDD0  C8 3F 01 78 */	lfd f1, 0x178(r31)
/* 8099EDD4  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 8099EDD8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8099EDDC  3C 00 43 30 */	lis r0, 0x4330
/* 8099EDE0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8099EDE4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8099EDE8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8099EDEC  EC 22 00 24 */	fdivs f1, f2, f0
/* 8099EDF0  4B 9A 82 E9 */	bl PSVECScale
lbl_8099EDF4:
/* 8099EDF4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8099EDF8  38 DF 00 00 */	addi r6, r31, 0
/* 8099EDFC  C0 06 00 8C */	lfs f0, 0x8c(r6)
/* 8099EE00  EC 01 00 2A */	fadds f0, f1, f0
/* 8099EE04  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8099EE08  80 1F 01 60 */	lwz r0, 0x160(r31)
/* 8099EE0C  90 01 00 08 */	stw r0, 8(r1)
/* 8099EE10  88 06 00 86 */	lbz r0, 0x86(r6)
/* 8099EE14  98 01 00 08 */	stb r0, 8(r1)
/* 8099EE18  88 06 00 87 */	lbz r0, 0x87(r6)
/* 8099EE1C  98 01 00 09 */	stb r0, 9(r1)
/* 8099EE20  88 06 00 88 */	lbz r0, 0x88(r6)
/* 8099EE24  98 01 00 0A */	stb r0, 0xa(r1)
/* 8099EE28  38 61 00 0C */	addi r3, r1, 0xc
/* 8099EE2C  C0 3F 01 70 */	lfs f1, 0x170(r31)
/* 8099EE30  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 8099EE34  C0 66 00 94 */	lfs f3, 0x94(r6)
/* 8099EE38  38 81 00 08 */	addi r4, r1, 8
/* 8099EE3C  C0 9E 24 C8 */	lfs f4, 0x24c8(r30)
/* 8099EE40  C0 06 00 90 */	lfs f0, 0x90(r6)
/* 8099EE44  EC 84 00 32 */	fmuls f4, f4, f0
/* 8099EE48  38 A0 00 02 */	li r5, 2
/* 8099EE4C  88 C6 00 89 */	lbz r6, 0x89(r6)
/* 8099EE50  4B 80 B8 15 */	bl dKy_BossSpotLight_set__FP4cXyzfffP8_GXColorfUcUc
/* 8099EE54  C0 3E 24 C8 */	lfs f1, 0x24c8(r30)
/* 8099EE58  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 8099EE5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8099EE60  40 80 00 14 */	bge lbl_8099EE74
/* 8099EE64  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 8099EE68  EC 01 00 2A */	fadds f0, f1, f0
/* 8099EE6C  D0 1E 24 C8 */	stfs f0, 0x24c8(r30)
/* 8099EE70  48 00 00 14 */	b lbl_8099EE84
lbl_8099EE74:
/* 8099EE74  D0 1E 24 C8 */	stfs f0, 0x24c8(r30)
/* 8099EE78  48 00 00 0C */	b lbl_8099EE84
lbl_8099EE7C:
/* 8099EE7C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 8099EE80  D0 1E 24 C8 */	stfs f0, 0x24c8(r30)
lbl_8099EE84:
/* 8099EE84  38 60 00 01 */	li r3, 1
/* 8099EE88  39 61 00 40 */	addi r11, r1, 0x40
/* 8099EE8C  4B 9C 33 95 */	bl _restgpr_27
/* 8099EE90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8099EE94  7C 08 03 A6 */	mtlr r0
/* 8099EE98  38 21 00 40 */	addi r1, r1, 0x40
/* 8099EE9C  4E 80 00 20 */	blr 
