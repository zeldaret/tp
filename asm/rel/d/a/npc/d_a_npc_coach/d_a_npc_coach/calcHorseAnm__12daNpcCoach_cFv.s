lbl_809A1BE0:
/* 809A1BE0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 809A1BE4  7C 08 02 A6 */	mflr r0
/* 809A1BE8  90 01 00 84 */	stw r0, 0x84(r1)
/* 809A1BEC  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 809A1BF0  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 809A1BF4  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 809A1BF8  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 809A1BFC  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 809A1C00  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 809A1C04  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 809A1C08  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 809A1C0C  39 61 00 40 */	addi r11, r1, 0x40
/* 809A1C10  4B 9C 05 CD */	bl _savegpr_29
/* 809A1C14  7C 7F 1B 78 */	mr r31, r3
/* 809A1C18  3C 60 80 9A */	lis r3, M_attr__12daNpcCoach_c@ha /* 0x809A4ED0@ha */
/* 809A1C1C  3B C3 4E D0 */	addi r30, r3, M_attr__12daNpcCoach_c@l /* 0x809A4ED0@l */
/* 809A1C20  80 7F 24 68 */	lwz r3, 0x2468(r31)
/* 809A1C24  28 03 00 00 */	cmplwi r3, 0
/* 809A1C28  41 82 00 4C */	beq lbl_809A1C74
/* 809A1C2C  41 82 00 24 */	beq lbl_809A1C50
/* 809A1C30  80 9F 24 78 */	lwz r4, 0x2478(r31)
/* 809A1C34  4B 6A FB 7D */	bl dPath_GetPnt__FPC5dPathi
/* 809A1C38  C0 03 00 04 */	lfs f0, 4(r3)
/* 809A1C3C  D0 01 00 08 */	stfs f0, 8(r1)
/* 809A1C40  C0 03 00 08 */	lfs f0, 8(r3)
/* 809A1C44  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809A1C48  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809A1C4C  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_809A1C50:
/* 809A1C50  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 809A1C54  A8 9F 15 7E */	lha r4, 0x157e(r31)
/* 809A1C58  4B 8C F1 CD */	bl cLib_distanceAngleS__Fss
/* 809A1C5C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 809A1C60  38 81 00 08 */	addi r4, r1, 8
/* 809A1C64  4B 8C EF A1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 809A1C68  7C 64 1B 78 */	mr r4, r3
/* 809A1C6C  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 809A1C70  4B 8C F1 B5 */	bl cLib_distanceAngleS__Fss
lbl_809A1C74:
/* 809A1C74  C3 FE 00 A0 */	lfs f31, 0xa0(r30)
/* 809A1C78  38 7E 00 00 */	addi r3, r30, 0
/* 809A1C7C  C3 C3 00 1C */	lfs f30, 0x1c(r3)
/* 809A1C80  80 9F 0C F0 */	lwz r4, 0xcf0(r31)
/* 809A1C84  2C 04 00 02 */	cmpwi r4, 2
/* 809A1C88  41 82 03 60 */	beq lbl_809A1FE8
/* 809A1C8C  40 80 00 14 */	bge lbl_809A1CA0
/* 809A1C90  2C 04 00 00 */	cmpwi r4, 0
/* 809A1C94  41 82 00 1C */	beq lbl_809A1CB0
/* 809A1C98  40 80 01 30 */	bge lbl_809A1DC8
/* 809A1C9C  48 00 08 B4 */	b lbl_809A2550
lbl_809A1CA0:
/* 809A1CA0  2C 04 00 04 */	cmpwi r4, 4
/* 809A1CA4  41 82 07 94 */	beq lbl_809A2438
/* 809A1CA8  40 80 08 A8 */	bge lbl_809A2550
/* 809A1CAC  48 00 05 64 */	b lbl_809A2210
lbl_809A1CB0:
/* 809A1CB0  54 80 10 3A */	slwi r0, r4, 2
/* 809A1CB4  7C 63 02 14 */	add r3, r3, r0
/* 809A1CB8  C3 C3 00 28 */	lfs f30, 0x28(r3)
/* 809A1CBC  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 809A1CC0  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 809A1CC4  40 81 08 8C */	ble lbl_809A2550
/* 809A1CC8  2C 04 00 01 */	cmpwi r4, 1
/* 809A1CCC  41 82 08 84 */	beq lbl_809A2550
/* 809A1CD0  38 00 00 01 */	li r0, 1
/* 809A1CD4  90 1F 0C F0 */	stw r0, 0xcf0(r31)
/* 809A1CD8  3C 60 80 9A */	lis r3, l_horseAnmParam@ha /* 0x809A5134@ha */
/* 809A1CDC  38 63 51 34 */	addi r3, r3, l_horseAnmParam@l /* 0x809A5134@l */
/* 809A1CE0  80 83 00 18 */	lwz r4, 0x18(r3)
/* 809A1CE4  2C 04 00 00 */	cmpwi r4, 0
/* 809A1CE8  41 80 00 2C */	blt lbl_809A1D14
/* 809A1CEC  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 809A1CF0  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 809A1CF4  80 63 00 00 */	lwz r3, 0(r3)
/* 809A1CF8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A1CFC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A1D00  3C A5 00 02 */	addis r5, r5, 2
/* 809A1D04  38 C0 00 80 */	li r6, 0x80
/* 809A1D08  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A1D0C  4B 69 A5 E1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A1D10  48 00 00 08 */	b lbl_809A1D18
lbl_809A1D14:
/* 809A1D14  38 60 00 00 */	li r3, 0
lbl_809A1D18:
/* 809A1D18  7C 7D 1B 78 */	mr r29, r3
/* 809A1D1C  3C 60 80 9A */	lis r3, l_horseAnmParam@ha /* 0x809A5134@ha */
/* 809A1D20  38 63 51 34 */	addi r3, r3, l_horseAnmParam@l /* 0x809A5134@l */
/* 809A1D24  80 83 00 24 */	lwz r4, 0x24(r3)
/* 809A1D28  2C 04 00 00 */	cmpwi r4, 0
/* 809A1D2C  41 80 00 30 */	blt lbl_809A1D5C
/* 809A1D30  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 809A1D34  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 809A1D38  80 63 00 00 */	lwz r3, 0(r3)
/* 809A1D3C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A1D40  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A1D44  3C A5 00 02 */	addis r5, r5, 2
/* 809A1D48  38 C0 00 80 */	li r6, 0x80
/* 809A1D4C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A1D50  4B 69 A5 9D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A1D54  7C 65 1B 78 */	mr r5, r3
/* 809A1D58  48 00 00 08 */	b lbl_809A1D60
lbl_809A1D5C:
/* 809A1D5C  38 A0 00 00 */	li r5, 0
lbl_809A1D60:
/* 809A1D60  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A1D64  C3 A3 00 1C */	lfs f29, 0x1c(r3)
/* 809A1D68  C3 83 00 18 */	lfs f28, 0x18(r3)
/* 809A1D6C  7F A4 EB 78 */	mr r4, r29
/* 809A1D70  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 809A1D74  38 C0 00 02 */	li r6, 2
/* 809A1D78  C0 5E 02 00 */	lfs f2, 0x200(r30)
/* 809A1D7C  C0 7E 01 5C */	lfs f3, 0x15c(r30)
/* 809A1D80  FC 80 08 90 */	fmr f4, f1
/* 809A1D84  C0 BE 01 68 */	lfs f5, 0x168(r30)
/* 809A1D88  4B 66 FF E9 */	bl setAnm__15mDoExt_McaMorf2FP15J3DAnmTransformP15J3DAnmTransformfiffff
/* 809A1D8C  EC 1D E0 2A */	fadds f0, f29, f28
/* 809A1D90  FC 00 00 1E */	fctiwz f0, f0
/* 809A1D94  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 809A1D98  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 809A1D9C  7C 00 07 34 */	extsh r0, r0
/* 809A1DA0  C8 3E 01 78 */	lfd f1, 0x178(r30)
/* 809A1DA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A1DA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809A1DAC  3C 00 43 30 */	lis r0, 0x4330
/* 809A1DB0  90 01 00 20 */	stw r0, 0x20(r1)
/* 809A1DB4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 809A1DB8  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A1DBC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A1DC0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 809A1DC4  48 00 07 8C */	b lbl_809A2550
lbl_809A1DC8:
/* 809A1DC8  54 80 10 3A */	slwi r0, r4, 2
/* 809A1DCC  7C 63 02 14 */	add r3, r3, r0
/* 809A1DD0  C3 E3 00 24 */	lfs f31, 0x24(r3)
/* 809A1DD4  C3 C3 00 28 */	lfs f30, 0x28(r3)
/* 809A1DD8  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 809A1DDC  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 809A1DE0  4C 40 13 82 */	cror 2, 0, 2
/* 809A1DE4  40 82 00 FC */	bne lbl_809A1EE0
/* 809A1DE8  2C 04 00 00 */	cmpwi r4, 0
/* 809A1DEC  41 82 07 64 */	beq lbl_809A2550
/* 809A1DF0  38 60 00 00 */	li r3, 0
/* 809A1DF4  90 7F 0C F0 */	stw r3, 0xcf0(r31)
/* 809A1DF8  3C 80 80 9A */	lis r4, l_horseAnmParam@ha /* 0x809A5134@ha */
/* 809A1DFC  38 84 51 34 */	addi r4, r4, l_horseAnmParam@l /* 0x809A5134@l */
/* 809A1E00  80 84 00 00 */	lwz r4, 0(r4)
/* 809A1E04  2C 04 00 00 */	cmpwi r4, 0
/* 809A1E08  41 80 00 28 */	blt lbl_809A1E30
/* 809A1E0C  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 809A1E10  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 809A1E14  80 63 00 00 */	lwz r3, 0(r3)
/* 809A1E18  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A1E1C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A1E20  3C A5 00 02 */	addis r5, r5, 2
/* 809A1E24  38 C0 00 80 */	li r6, 0x80
/* 809A1E28  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A1E2C  4B 69 A4 C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
lbl_809A1E30:
/* 809A1E30  7C 7D 1B 78 */	mr r29, r3
/* 809A1E34  3C 60 80 9A */	lis r3, l_horseAnmParam@ha /* 0x809A5134@ha */
/* 809A1E38  38 63 51 34 */	addi r3, r3, l_horseAnmParam@l /* 0x809A5134@l */
/* 809A1E3C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 809A1E40  2C 04 00 00 */	cmpwi r4, 0
/* 809A1E44  41 80 00 30 */	blt lbl_809A1E74
/* 809A1E48  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 809A1E4C  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 809A1E50  80 63 00 00 */	lwz r3, 0(r3)
/* 809A1E54  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A1E58  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A1E5C  3C A5 00 02 */	addis r5, r5, 2
/* 809A1E60  38 C0 00 80 */	li r6, 0x80
/* 809A1E64  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A1E68  4B 69 A4 85 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A1E6C  7C 65 1B 78 */	mr r5, r3
/* 809A1E70  48 00 00 08 */	b lbl_809A1E78
lbl_809A1E74:
/* 809A1E74  38 A0 00 00 */	li r5, 0
lbl_809A1E78:
/* 809A1E78  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A1E7C  C3 83 00 1C */	lfs f28, 0x1c(r3)
/* 809A1E80  C3 A3 00 18 */	lfs f29, 0x18(r3)
/* 809A1E84  7F A4 EB 78 */	mr r4, r29
/* 809A1E88  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 809A1E8C  38 C0 00 02 */	li r6, 2
/* 809A1E90  C0 5E 02 00 */	lfs f2, 0x200(r30)
/* 809A1E94  C0 7E 01 5C */	lfs f3, 0x15c(r30)
/* 809A1E98  FC 80 08 90 */	fmr f4, f1
/* 809A1E9C  C0 BE 01 68 */	lfs f5, 0x168(r30)
/* 809A1EA0  4B 66 FE D1 */	bl setAnm__15mDoExt_McaMorf2FP15J3DAnmTransformP15J3DAnmTransformfiffff
/* 809A1EA4  EC 1C E8 2A */	fadds f0, f28, f29
/* 809A1EA8  FC 00 00 1E */	fctiwz f0, f0
/* 809A1EAC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 809A1EB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809A1EB4  7C 00 07 34 */	extsh r0, r0
/* 809A1EB8  C8 3E 01 78 */	lfd f1, 0x178(r30)
/* 809A1EBC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A1EC0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809A1EC4  3C 00 43 30 */	lis r0, 0x4330
/* 809A1EC8  90 01 00 18 */	stw r0, 0x18(r1)
/* 809A1ECC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 809A1ED0  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A1ED4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A1ED8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 809A1EDC  48 00 06 74 */	b lbl_809A2550
lbl_809A1EE0:
/* 809A1EE0  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 809A1EE4  40 81 06 6C */	ble lbl_809A2550
/* 809A1EE8  2C 04 00 02 */	cmpwi r4, 2
/* 809A1EEC  41 82 06 64 */	beq lbl_809A2550
/* 809A1EF0  38 00 00 02 */	li r0, 2
/* 809A1EF4  90 1F 0C F0 */	stw r0, 0xcf0(r31)
/* 809A1EF8  3C 60 80 9A */	lis r3, l_horseAnmParam@ha /* 0x809A5134@ha */
/* 809A1EFC  38 63 51 34 */	addi r3, r3, l_horseAnmParam@l /* 0x809A5134@l */
/* 809A1F00  80 83 00 30 */	lwz r4, 0x30(r3)
/* 809A1F04  2C 04 00 00 */	cmpwi r4, 0
/* 809A1F08  41 80 00 2C */	blt lbl_809A1F34
/* 809A1F0C  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 809A1F10  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 809A1F14  80 63 00 00 */	lwz r3, 0(r3)
/* 809A1F18  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A1F1C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A1F20  3C A5 00 02 */	addis r5, r5, 2
/* 809A1F24  38 C0 00 80 */	li r6, 0x80
/* 809A1F28  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A1F2C  4B 69 A3 C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A1F30  48 00 00 08 */	b lbl_809A1F38
lbl_809A1F34:
/* 809A1F34  38 60 00 00 */	li r3, 0
lbl_809A1F38:
/* 809A1F38  7C 7D 1B 78 */	mr r29, r3
/* 809A1F3C  3C 60 80 9A */	lis r3, l_horseAnmParam@ha /* 0x809A5134@ha */
/* 809A1F40  38 63 51 34 */	addi r3, r3, l_horseAnmParam@l /* 0x809A5134@l */
/* 809A1F44  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 809A1F48  2C 04 00 00 */	cmpwi r4, 0
/* 809A1F4C  41 80 00 30 */	blt lbl_809A1F7C
/* 809A1F50  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 809A1F54  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 809A1F58  80 63 00 00 */	lwz r3, 0(r3)
/* 809A1F5C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A1F60  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A1F64  3C A5 00 02 */	addis r5, r5, 2
/* 809A1F68  38 C0 00 80 */	li r6, 0x80
/* 809A1F6C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A1F70  4B 69 A3 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A1F74  7C 65 1B 78 */	mr r5, r3
/* 809A1F78  48 00 00 08 */	b lbl_809A1F80
lbl_809A1F7C:
/* 809A1F7C  38 A0 00 00 */	li r5, 0
lbl_809A1F80:
/* 809A1F80  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A1F84  C3 83 00 1C */	lfs f28, 0x1c(r3)
/* 809A1F88  C3 A3 00 18 */	lfs f29, 0x18(r3)
/* 809A1F8C  7F A4 EB 78 */	mr r4, r29
/* 809A1F90  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 809A1F94  38 C0 00 02 */	li r6, 2
/* 809A1F98  C0 5E 02 00 */	lfs f2, 0x200(r30)
/* 809A1F9C  C0 7E 01 5C */	lfs f3, 0x15c(r30)
/* 809A1FA0  FC 80 08 90 */	fmr f4, f1
/* 809A1FA4  C0 BE 01 68 */	lfs f5, 0x168(r30)
/* 809A1FA8  4B 66 FD C9 */	bl setAnm__15mDoExt_McaMorf2FP15J3DAnmTransformP15J3DAnmTransformfiffff
/* 809A1FAC  EC 1C E8 2A */	fadds f0, f28, f29
/* 809A1FB0  FC 00 00 1E */	fctiwz f0, f0
/* 809A1FB4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 809A1FB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809A1FBC  7C 00 07 34 */	extsh r0, r0
/* 809A1FC0  C8 3E 01 78 */	lfd f1, 0x178(r30)
/* 809A1FC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A1FC8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809A1FCC  3C 00 43 30 */	lis r0, 0x4330
/* 809A1FD0  90 01 00 18 */	stw r0, 0x18(r1)
/* 809A1FD4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 809A1FD8  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A1FDC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A1FE0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 809A1FE4  48 00 05 6C */	b lbl_809A2550
lbl_809A1FE8:
/* 809A1FE8  54 80 10 3A */	slwi r0, r4, 2
/* 809A1FEC  7C 63 02 14 */	add r3, r3, r0
/* 809A1FF0  C3 E3 00 24 */	lfs f31, 0x24(r3)
/* 809A1FF4  C3 C3 00 28 */	lfs f30, 0x28(r3)
/* 809A1FF8  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 809A1FFC  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 809A2000  4C 40 13 82 */	cror 2, 0, 2
/* 809A2004  40 82 01 04 */	bne lbl_809A2108
/* 809A2008  2C 04 00 01 */	cmpwi r4, 1
/* 809A200C  41 82 05 44 */	beq lbl_809A2550
/* 809A2010  38 00 00 01 */	li r0, 1
/* 809A2014  90 1F 0C F0 */	stw r0, 0xcf0(r31)
/* 809A2018  3C 60 80 9A */	lis r3, l_horseAnmParam@ha /* 0x809A5134@ha */
/* 809A201C  38 63 51 34 */	addi r3, r3, l_horseAnmParam@l /* 0x809A5134@l */
/* 809A2020  80 83 00 18 */	lwz r4, 0x18(r3)
/* 809A2024  2C 04 00 00 */	cmpwi r4, 0
/* 809A2028  41 80 00 2C */	blt lbl_809A2054
/* 809A202C  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 809A2030  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 809A2034  80 63 00 00 */	lwz r3, 0(r3)
/* 809A2038  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A203C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A2040  3C A5 00 02 */	addis r5, r5, 2
/* 809A2044  38 C0 00 80 */	li r6, 0x80
/* 809A2048  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A204C  4B 69 A2 A1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A2050  48 00 00 08 */	b lbl_809A2058
lbl_809A2054:
/* 809A2054  38 60 00 00 */	li r3, 0
lbl_809A2058:
/* 809A2058  7C 7D 1B 78 */	mr r29, r3
/* 809A205C  3C 60 80 9A */	lis r3, l_horseAnmParam@ha /* 0x809A5134@ha */
/* 809A2060  38 63 51 34 */	addi r3, r3, l_horseAnmParam@l /* 0x809A5134@l */
/* 809A2064  80 83 00 24 */	lwz r4, 0x24(r3)
/* 809A2068  2C 04 00 00 */	cmpwi r4, 0
/* 809A206C  41 80 00 30 */	blt lbl_809A209C
/* 809A2070  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 809A2074  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 809A2078  80 63 00 00 */	lwz r3, 0(r3)
/* 809A207C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A2080  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A2084  3C A5 00 02 */	addis r5, r5, 2
/* 809A2088  38 C0 00 80 */	li r6, 0x80
/* 809A208C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A2090  4B 69 A2 5D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A2094  7C 65 1B 78 */	mr r5, r3
/* 809A2098  48 00 00 08 */	b lbl_809A20A0
lbl_809A209C:
/* 809A209C  38 A0 00 00 */	li r5, 0
lbl_809A20A0:
/* 809A20A0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A20A4  C3 83 00 1C */	lfs f28, 0x1c(r3)
/* 809A20A8  C3 A3 00 18 */	lfs f29, 0x18(r3)
/* 809A20AC  7F A4 EB 78 */	mr r4, r29
/* 809A20B0  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 809A20B4  38 C0 00 02 */	li r6, 2
/* 809A20B8  C0 5E 02 00 */	lfs f2, 0x200(r30)
/* 809A20BC  C0 7E 01 5C */	lfs f3, 0x15c(r30)
/* 809A20C0  FC 80 08 90 */	fmr f4, f1
/* 809A20C4  C0 BE 01 68 */	lfs f5, 0x168(r30)
/* 809A20C8  4B 66 FC A9 */	bl setAnm__15mDoExt_McaMorf2FP15J3DAnmTransformP15J3DAnmTransformfiffff
/* 809A20CC  EC 1C E8 2A */	fadds f0, f28, f29
/* 809A20D0  FC 00 00 1E */	fctiwz f0, f0
/* 809A20D4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 809A20D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809A20DC  7C 00 07 34 */	extsh r0, r0
/* 809A20E0  C8 3E 01 78 */	lfd f1, 0x178(r30)
/* 809A20E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A20E8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809A20EC  3C 00 43 30 */	lis r0, 0x4330
/* 809A20F0  90 01 00 18 */	stw r0, 0x18(r1)
/* 809A20F4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 809A20F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A20FC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A2100  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 809A2104  48 00 04 4C */	b lbl_809A2550
lbl_809A2108:
/* 809A2108  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 809A210C  40 81 04 44 */	ble lbl_809A2550
/* 809A2110  2C 04 00 03 */	cmpwi r4, 3
/* 809A2114  41 82 04 3C */	beq lbl_809A2550
/* 809A2118  38 00 00 03 */	li r0, 3
/* 809A211C  90 1F 0C F0 */	stw r0, 0xcf0(r31)
/* 809A2120  3C 60 80 9A */	lis r3, l_horseAnmParam@ha /* 0x809A5134@ha */
/* 809A2124  38 63 51 34 */	addi r3, r3, l_horseAnmParam@l /* 0x809A5134@l */
/* 809A2128  80 83 00 48 */	lwz r4, 0x48(r3)
/* 809A212C  2C 04 00 00 */	cmpwi r4, 0
/* 809A2130  41 80 00 2C */	blt lbl_809A215C
/* 809A2134  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 809A2138  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 809A213C  80 63 00 00 */	lwz r3, 0(r3)
/* 809A2140  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A2144  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A2148  3C A5 00 02 */	addis r5, r5, 2
/* 809A214C  38 C0 00 80 */	li r6, 0x80
/* 809A2150  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A2154  4B 69 A1 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A2158  48 00 00 08 */	b lbl_809A2160
lbl_809A215C:
/* 809A215C  38 60 00 00 */	li r3, 0
lbl_809A2160:
/* 809A2160  7C 7D 1B 78 */	mr r29, r3
/* 809A2164  3C 60 80 9A */	lis r3, l_horseAnmParam@ha /* 0x809A5134@ha */
/* 809A2168  38 63 51 34 */	addi r3, r3, l_horseAnmParam@l /* 0x809A5134@l */
/* 809A216C  80 83 00 54 */	lwz r4, 0x54(r3)
/* 809A2170  2C 04 00 00 */	cmpwi r4, 0
/* 809A2174  41 80 00 30 */	blt lbl_809A21A4
/* 809A2178  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 809A217C  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 809A2180  80 63 00 00 */	lwz r3, 0(r3)
/* 809A2184  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A2188  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A218C  3C A5 00 02 */	addis r5, r5, 2
/* 809A2190  38 C0 00 80 */	li r6, 0x80
/* 809A2194  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A2198  4B 69 A1 55 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A219C  7C 65 1B 78 */	mr r5, r3
/* 809A21A0  48 00 00 08 */	b lbl_809A21A8
lbl_809A21A4:
/* 809A21A4  38 A0 00 00 */	li r5, 0
lbl_809A21A8:
/* 809A21A8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A21AC  C3 83 00 1C */	lfs f28, 0x1c(r3)
/* 809A21B0  C3 A3 00 18 */	lfs f29, 0x18(r3)
/* 809A21B4  7F A4 EB 78 */	mr r4, r29
/* 809A21B8  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 809A21BC  38 C0 00 02 */	li r6, 2
/* 809A21C0  C0 5E 02 00 */	lfs f2, 0x200(r30)
/* 809A21C4  C0 7E 01 5C */	lfs f3, 0x15c(r30)
/* 809A21C8  FC 80 08 90 */	fmr f4, f1
/* 809A21CC  C0 BE 01 68 */	lfs f5, 0x168(r30)
/* 809A21D0  4B 66 FB A1 */	bl setAnm__15mDoExt_McaMorf2FP15J3DAnmTransformP15J3DAnmTransformfiffff
/* 809A21D4  EC 1C E8 2A */	fadds f0, f28, f29
/* 809A21D8  FC 00 00 1E */	fctiwz f0, f0
/* 809A21DC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 809A21E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809A21E4  7C 00 07 34 */	extsh r0, r0
/* 809A21E8  C8 3E 01 78 */	lfd f1, 0x178(r30)
/* 809A21EC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A21F0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809A21F4  3C 00 43 30 */	lis r0, 0x4330
/* 809A21F8  90 01 00 18 */	stw r0, 0x18(r1)
/* 809A21FC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 809A2200  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A2204  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A2208  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 809A220C  48 00 03 44 */	b lbl_809A2550
lbl_809A2210:
/* 809A2210  54 80 10 3A */	slwi r0, r4, 2
/* 809A2214  7C 63 02 14 */	add r3, r3, r0
/* 809A2218  C3 E3 00 24 */	lfs f31, 0x24(r3)
/* 809A221C  C3 C3 00 28 */	lfs f30, 0x28(r3)
/* 809A2220  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 809A2224  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 809A2228  4C 40 13 82 */	cror 2, 0, 2
/* 809A222C  40 82 01 04 */	bne lbl_809A2330
/* 809A2230  2C 04 00 02 */	cmpwi r4, 2
/* 809A2234  41 82 03 1C */	beq lbl_809A2550
/* 809A2238  38 00 00 02 */	li r0, 2
/* 809A223C  90 1F 0C F0 */	stw r0, 0xcf0(r31)
/* 809A2240  3C 60 80 9A */	lis r3, l_horseAnmParam@ha /* 0x809A5134@ha */
/* 809A2244  38 63 51 34 */	addi r3, r3, l_horseAnmParam@l /* 0x809A5134@l */
/* 809A2248  80 83 00 30 */	lwz r4, 0x30(r3)
/* 809A224C  2C 04 00 00 */	cmpwi r4, 0
/* 809A2250  41 80 00 2C */	blt lbl_809A227C
/* 809A2254  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 809A2258  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 809A225C  80 63 00 00 */	lwz r3, 0(r3)
/* 809A2260  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A2264  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A2268  3C A5 00 02 */	addis r5, r5, 2
/* 809A226C  38 C0 00 80 */	li r6, 0x80
/* 809A2270  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A2274  4B 69 A0 79 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A2278  48 00 00 08 */	b lbl_809A2280
lbl_809A227C:
/* 809A227C  38 60 00 00 */	li r3, 0
lbl_809A2280:
/* 809A2280  7C 7D 1B 78 */	mr r29, r3
/* 809A2284  3C 60 80 9A */	lis r3, l_horseAnmParam@ha /* 0x809A5134@ha */
/* 809A2288  38 63 51 34 */	addi r3, r3, l_horseAnmParam@l /* 0x809A5134@l */
/* 809A228C  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 809A2290  2C 04 00 00 */	cmpwi r4, 0
/* 809A2294  41 80 00 30 */	blt lbl_809A22C4
/* 809A2298  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 809A229C  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 809A22A0  80 63 00 00 */	lwz r3, 0(r3)
/* 809A22A4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A22A8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A22AC  3C A5 00 02 */	addis r5, r5, 2
/* 809A22B0  38 C0 00 80 */	li r6, 0x80
/* 809A22B4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A22B8  4B 69 A0 35 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A22BC  7C 65 1B 78 */	mr r5, r3
/* 809A22C0  48 00 00 08 */	b lbl_809A22C8
lbl_809A22C4:
/* 809A22C4  38 A0 00 00 */	li r5, 0
lbl_809A22C8:
/* 809A22C8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A22CC  C3 83 00 1C */	lfs f28, 0x1c(r3)
/* 809A22D0  C3 A3 00 18 */	lfs f29, 0x18(r3)
/* 809A22D4  7F A4 EB 78 */	mr r4, r29
/* 809A22D8  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 809A22DC  38 C0 00 02 */	li r6, 2
/* 809A22E0  C0 5E 02 00 */	lfs f2, 0x200(r30)
/* 809A22E4  C0 7E 01 5C */	lfs f3, 0x15c(r30)
/* 809A22E8  FC 80 08 90 */	fmr f4, f1
/* 809A22EC  C0 BE 01 68 */	lfs f5, 0x168(r30)
/* 809A22F0  4B 66 FA 81 */	bl setAnm__15mDoExt_McaMorf2FP15J3DAnmTransformP15J3DAnmTransformfiffff
/* 809A22F4  EC 1C E8 2A */	fadds f0, f28, f29
/* 809A22F8  FC 00 00 1E */	fctiwz f0, f0
/* 809A22FC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 809A2300  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809A2304  7C 00 07 34 */	extsh r0, r0
/* 809A2308  C8 3E 01 78 */	lfd f1, 0x178(r30)
/* 809A230C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A2310  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809A2314  3C 00 43 30 */	lis r0, 0x4330
/* 809A2318  90 01 00 18 */	stw r0, 0x18(r1)
/* 809A231C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 809A2320  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A2324  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A2328  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 809A232C  48 00 02 24 */	b lbl_809A2550
lbl_809A2330:
/* 809A2330  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 809A2334  40 81 02 1C */	ble lbl_809A2550
/* 809A2338  2C 04 00 04 */	cmpwi r4, 4
/* 809A233C  41 82 02 14 */	beq lbl_809A2550
/* 809A2340  38 00 00 04 */	li r0, 4
/* 809A2344  90 1F 0C F0 */	stw r0, 0xcf0(r31)
/* 809A2348  3C 60 80 9A */	lis r3, l_horseAnmParam@ha /* 0x809A5134@ha */
/* 809A234C  38 63 51 34 */	addi r3, r3, l_horseAnmParam@l /* 0x809A5134@l */
/* 809A2350  80 83 00 60 */	lwz r4, 0x60(r3)
/* 809A2354  2C 04 00 00 */	cmpwi r4, 0
/* 809A2358  41 80 00 2C */	blt lbl_809A2384
/* 809A235C  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 809A2360  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 809A2364  80 63 00 00 */	lwz r3, 0(r3)
/* 809A2368  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A236C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A2370  3C A5 00 02 */	addis r5, r5, 2
/* 809A2374  38 C0 00 80 */	li r6, 0x80
/* 809A2378  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A237C  4B 69 9F 71 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A2380  48 00 00 08 */	b lbl_809A2388
lbl_809A2384:
/* 809A2384  38 60 00 00 */	li r3, 0
lbl_809A2388:
/* 809A2388  7C 7D 1B 78 */	mr r29, r3
/* 809A238C  3C 60 80 9A */	lis r3, l_horseAnmParam@ha /* 0x809A5134@ha */
/* 809A2390  38 63 51 34 */	addi r3, r3, l_horseAnmParam@l /* 0x809A5134@l */
/* 809A2394  80 83 00 6C */	lwz r4, 0x6c(r3)
/* 809A2398  2C 04 00 00 */	cmpwi r4, 0
/* 809A239C  41 80 00 30 */	blt lbl_809A23CC
/* 809A23A0  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 809A23A4  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 809A23A8  80 63 00 00 */	lwz r3, 0(r3)
/* 809A23AC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A23B0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A23B4  3C A5 00 02 */	addis r5, r5, 2
/* 809A23B8  38 C0 00 80 */	li r6, 0x80
/* 809A23BC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A23C0  4B 69 9F 2D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A23C4  7C 65 1B 78 */	mr r5, r3
/* 809A23C8  48 00 00 08 */	b lbl_809A23D0
lbl_809A23CC:
/* 809A23CC  38 A0 00 00 */	li r5, 0
lbl_809A23D0:
/* 809A23D0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A23D4  C3 83 00 1C */	lfs f28, 0x1c(r3)
/* 809A23D8  C3 A3 00 18 */	lfs f29, 0x18(r3)
/* 809A23DC  7F A4 EB 78 */	mr r4, r29
/* 809A23E0  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 809A23E4  38 C0 00 02 */	li r6, 2
/* 809A23E8  C0 5E 02 00 */	lfs f2, 0x200(r30)
/* 809A23EC  C0 7E 01 5C */	lfs f3, 0x15c(r30)
/* 809A23F0  FC 80 08 90 */	fmr f4, f1
/* 809A23F4  C0 BE 01 68 */	lfs f5, 0x168(r30)
/* 809A23F8  4B 66 F9 79 */	bl setAnm__15mDoExt_McaMorf2FP15J3DAnmTransformP15J3DAnmTransformfiffff
/* 809A23FC  EC 1C E8 2A */	fadds f0, f28, f29
/* 809A2400  FC 00 00 1E */	fctiwz f0, f0
/* 809A2404  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 809A2408  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809A240C  7C 00 07 34 */	extsh r0, r0
/* 809A2410  C8 3E 01 78 */	lfd f1, 0x178(r30)
/* 809A2414  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A2418  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809A241C  3C 00 43 30 */	lis r0, 0x4330
/* 809A2420  90 01 00 18 */	stw r0, 0x18(r1)
/* 809A2424  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 809A2428  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A242C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A2430  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 809A2434  48 00 01 1C */	b lbl_809A2550
lbl_809A2438:
/* 809A2438  54 80 10 3A */	slwi r0, r4, 2
/* 809A243C  7C 63 02 14 */	add r3, r3, r0
/* 809A2440  C3 E3 00 24 */	lfs f31, 0x24(r3)
/* 809A2444  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 809A2448  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 809A244C  4C 40 13 82 */	cror 2, 0, 2
/* 809A2450  40 82 01 00 */	bne lbl_809A2550
/* 809A2454  2C 04 00 03 */	cmpwi r4, 3
/* 809A2458  41 82 00 F8 */	beq lbl_809A2550
/* 809A245C  38 00 00 03 */	li r0, 3
/* 809A2460  90 1F 0C F0 */	stw r0, 0xcf0(r31)
/* 809A2464  3C 60 80 9A */	lis r3, l_horseAnmParam@ha /* 0x809A5134@ha */
/* 809A2468  38 63 51 34 */	addi r3, r3, l_horseAnmParam@l /* 0x809A5134@l */
/* 809A246C  80 83 00 48 */	lwz r4, 0x48(r3)
/* 809A2470  2C 04 00 00 */	cmpwi r4, 0
/* 809A2474  41 80 00 2C */	blt lbl_809A24A0
/* 809A2478  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 809A247C  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 809A2480  80 63 00 00 */	lwz r3, 0(r3)
/* 809A2484  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A2488  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A248C  3C A5 00 02 */	addis r5, r5, 2
/* 809A2490  38 C0 00 80 */	li r6, 0x80
/* 809A2494  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A2498  4B 69 9E 55 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A249C  48 00 00 08 */	b lbl_809A24A4
lbl_809A24A0:
/* 809A24A0  38 60 00 00 */	li r3, 0
lbl_809A24A4:
/* 809A24A4  7C 7D 1B 78 */	mr r29, r3
/* 809A24A8  3C 60 80 9A */	lis r3, l_horseAnmParam@ha /* 0x809A5134@ha */
/* 809A24AC  38 63 51 34 */	addi r3, r3, l_horseAnmParam@l /* 0x809A5134@l */
/* 809A24B0  80 83 00 54 */	lwz r4, 0x54(r3)
/* 809A24B4  2C 04 00 00 */	cmpwi r4, 0
/* 809A24B8  41 80 00 30 */	blt lbl_809A24E8
/* 809A24BC  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 809A24C0  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 809A24C4  80 63 00 00 */	lwz r3, 0(r3)
/* 809A24C8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A24CC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A24D0  3C A5 00 02 */	addis r5, r5, 2
/* 809A24D4  38 C0 00 80 */	li r6, 0x80
/* 809A24D8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A24DC  4B 69 9E 11 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A24E0  7C 65 1B 78 */	mr r5, r3
/* 809A24E4  48 00 00 08 */	b lbl_809A24EC
lbl_809A24E8:
/* 809A24E8  38 A0 00 00 */	li r5, 0
lbl_809A24EC:
/* 809A24EC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A24F0  C3 83 00 1C */	lfs f28, 0x1c(r3)
/* 809A24F4  C3 A3 00 18 */	lfs f29, 0x18(r3)
/* 809A24F8  7F A4 EB 78 */	mr r4, r29
/* 809A24FC  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 809A2500  38 C0 00 02 */	li r6, 2
/* 809A2504  C0 5E 02 00 */	lfs f2, 0x200(r30)
/* 809A2508  C0 7E 01 5C */	lfs f3, 0x15c(r30)
/* 809A250C  FC 80 08 90 */	fmr f4, f1
/* 809A2510  C0 BE 01 68 */	lfs f5, 0x168(r30)
/* 809A2514  4B 66 F8 5D */	bl setAnm__15mDoExt_McaMorf2FP15J3DAnmTransformP15J3DAnmTransformfiffff
/* 809A2518  EC 1C E8 2A */	fadds f0, f28, f29
/* 809A251C  FC 00 00 1E */	fctiwz f0, f0
/* 809A2520  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 809A2524  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809A2528  7C 00 07 34 */	extsh r0, r0
/* 809A252C  C8 3E 01 78 */	lfd f1, 0x178(r30)
/* 809A2530  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A2534  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809A2538  3C 00 43 30 */	lis r0, 0x4330
/* 809A253C  90 01 00 18 */	stw r0, 0x18(r1)
/* 809A2540  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 809A2544  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A2548  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A254C  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_809A2550:
/* 809A2550  80 1F 0C F0 */	lwz r0, 0xcf0(r31)
/* 809A2554  2C 00 00 04 */	cmpwi r0, 4
/* 809A2558  40 80 00 5C */	bge lbl_809A25B4
/* 809A255C  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 809A2560  EF 80 F0 24 */	fdivs f28, f0, f30
/* 809A2564  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 809A2568  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 809A256C  40 81 00 08 */	ble lbl_809A2574
/* 809A2570  FF 80 00 90 */	fmr f28, f0
lbl_809A2574:
/* 809A2574  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A2578  FC 20 E0 90 */	fmr f1, f28
/* 809A257C  4B 66 FA 51 */	bl setAnmRate__15mDoExt_McaMorf2Ff
/* 809A2580  80 1F 0C F0 */	lwz r0, 0xcf0(r31)
/* 809A2584  1C 80 00 18 */	mulli r4, r0, 0x18
/* 809A2588  3C 60 80 9A */	lis r3, l_horseAnmParam@ha /* 0x809A5134@ha */
/* 809A258C  38 03 51 34 */	addi r0, r3, l_horseAnmParam@l /* 0x809A5134@l */
/* 809A2590  7C 60 22 14 */	add r3, r0, r4
/* 809A2594  C0 23 00 08 */	lfs f1, 8(r3)
/* 809A2598  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 809A259C  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A25A0  EC 1C 00 32 */	fmuls f0, f28, f0
/* 809A25A4  EC 00 08 2A */	fadds f0, f0, f1
/* 809A25A8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A25AC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809A25B0  48 00 00 3C */	b lbl_809A25EC
lbl_809A25B4:
/* 809A25B4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A25B8  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 809A25BC  4B 66 FA 11 */	bl setAnmRate__15mDoExt_McaMorf2Ff
/* 809A25C0  3C 60 80 9A */	lis r3, l_horseAnmParam@ha /* 0x809A5134@ha */
/* 809A25C4  38 63 51 34 */	addi r3, r3, l_horseAnmParam@l /* 0x809A5134@l */
/* 809A25C8  80 1F 0C F0 */	lwz r0, 0xcf0(r31)
/* 809A25CC  1C 00 00 18 */	mulli r0, r0, 0x18
/* 809A25D0  7C 63 02 14 */	add r3, r3, r0
/* 809A25D4  C0 23 00 08 */	lfs f1, 8(r3)
/* 809A25D8  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 809A25DC  EC 00 F8 24 */	fdivs f0, f0, f31
/* 809A25E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 809A25E4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A25E8  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_809A25EC:
/* 809A25EC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 809A25F0  7C 03 07 74 */	extsb r3, r0
/* 809A25F4  4B 68 AA 79 */	bl dComIfGp_getReverb__Fi
/* 809A25F8  7C 65 1B 78 */	mr r5, r3
/* 809A25FC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A2600  38 80 00 00 */	li r4, 0
/* 809A2604  4B 66 FA 9D */	bl play__15mDoExt_McaMorf2FUlSc
/* 809A2608  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 809A260C  4B 66 AE 1D */	bl play__14mDoExt_baseAnmFv
/* 809A2610  80 1F 0C F4 */	lwz r0, 0xcf4(r31)
/* 809A2614  2C 00 00 00 */	cmpwi r0, 0
/* 809A2618  41 82 00 54 */	beq lbl_809A266C
/* 809A261C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 809A2620  4B 66 AE 09 */	bl play__14mDoExt_baseAnmFv
/* 809A2624  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 809A2628  38 60 00 01 */	li r3, 1
/* 809A262C  88 04 00 05 */	lbz r0, 5(r4)
/* 809A2630  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809A2634  40 82 00 18 */	bne lbl_809A264C
/* 809A2638  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 809A263C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 809A2640  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809A2644  41 82 00 08 */	beq lbl_809A264C
/* 809A2648  38 60 00 00 */	li r3, 0
lbl_809A264C:
/* 809A264C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809A2650  41 82 00 10 */	beq lbl_809A2660
/* 809A2654  38 00 00 00 */	li r0, 0
/* 809A2658  90 1F 0C F4 */	stw r0, 0xcf4(r31)
/* 809A265C  48 00 00 10 */	b lbl_809A266C
lbl_809A2660:
/* 809A2660  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 809A2664  80 64 00 14 */	lwz r3, 0x14(r4)
/* 809A2668  D0 03 00 08 */	stfs f0, 8(r3)
lbl_809A266C:
/* 809A266C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A2670  4B 66 FB 01 */	bl modelCalc__15mDoExt_McaMorf2Fv
/* 809A2674  80 7F 0C F8 */	lwz r3, 0xcf8(r31)
/* 809A2678  38 03 FF FF */	addi r0, r3, -1
/* 809A267C  90 1F 0C F8 */	stw r0, 0xcf8(r31)
/* 809A2680  80 1F 0C F8 */	lwz r0, 0xcf8(r31)
/* 809A2684  2C 00 00 00 */	cmpwi r0, 0
/* 809A2688  40 80 00 80 */	bge lbl_809A2708
/* 809A268C  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 809A2690  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 809A2694  80 63 00 00 */	lwz r3, 0(r3)
/* 809A2698  38 80 00 2D */	li r4, 0x2d
/* 809A269C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A26A0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A26A4  3C A5 00 02 */	addis r5, r5, 2
/* 809A26A8  38 C0 00 80 */	li r6, 0x80
/* 809A26AC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A26B0  4B 69 9C 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A26B4  7C 65 1B 78 */	mr r5, r3
/* 809A26B8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A26BC  80 63 00 04 */	lwz r3, 4(r3)
/* 809A26C0  80 83 00 04 */	lwz r4, 4(r3)
/* 809A26C4  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 809A26C8  38 84 00 58 */	addi r4, r4, 0x58
/* 809A26CC  38 C0 00 01 */	li r6, 1
/* 809A26D0  38 E0 00 00 */	li r7, 0
/* 809A26D4  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 809A26D8  39 00 00 00 */	li r8, 0
/* 809A26DC  39 20 FF FF */	li r9, -1
/* 809A26E0  4B 66 AE 6D */	bl init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 809A26E4  4B 8C 51 89 */	bl cM_rnd__Fv
/* 809A26E8  C0 1E 02 04 */	lfs f0, 0x204(r30)
/* 809A26EC  EC 20 00 72 */	fmuls f1, f0, f1
/* 809A26F0  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 809A26F4  EC 00 08 2A */	fadds f0, f0, f1
/* 809A26F8  FC 00 00 1E */	fctiwz f0, f0
/* 809A26FC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 809A2700  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809A2704  90 1F 0C F8 */	stw r0, 0xcf8(r31)
lbl_809A2708:
/* 809A2708  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 809A270C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 809A2710  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 809A2714  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 809A2718  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 809A271C  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 809A2720  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 809A2724  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 809A2728  39 61 00 40 */	addi r11, r1, 0x40
/* 809A272C  4B 9B FA FD */	bl _restgpr_29
/* 809A2730  80 01 00 84 */	lwz r0, 0x84(r1)
/* 809A2734  7C 08 03 A6 */	mtlr r0
/* 809A2738  38 21 00 80 */	addi r1, r1, 0x80
/* 809A273C  4E 80 00 20 */	blr 
