lbl_80650D0C:
/* 80650D0C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80650D10  7C 08 02 A6 */	mflr r0
/* 80650D14  90 01 00 54 */	stw r0, 0x54(r1)
/* 80650D18  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80650D1C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80650D20  7C 7E 1B 78 */	mr r30, r3
/* 80650D24  3C A0 80 65 */	lis r5, lit_3649@ha /* 0x8065273C@ha */
/* 80650D28  3B E5 27 3C */	addi r31, r5, lit_3649@l /* 0x8065273C@l */
/* 80650D2C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80650D30  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80650D34  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80650D38  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80650D3C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80650D40  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80650D44  28 00 00 02 */	cmplwi r0, 2
/* 80650D48  40 82 00 9C */	bne lbl_80650DE4
/* 80650D4C  88 1E 06 6D */	lbz r0, 0x66d(r30)
/* 80650D50  28 00 00 00 */	cmplwi r0, 0
/* 80650D54  41 82 00 0C */	beq lbl_80650D60
/* 80650D58  28 00 00 01 */	cmplwi r0, 1
/* 80650D5C  40 82 03 4C */	bne lbl_806510A8
lbl_80650D60:
/* 80650D60  38 00 00 02 */	li r0, 2
/* 80650D64  98 1E 06 6D */	stb r0, 0x66d(r30)
/* 80650D68  3C 60 80 65 */	lis r3, d_a_b_zant_mobile__stringBase0@ha /* 0x806527D0@ha */
/* 80650D6C  38 63 27 D0 */	addi r3, r3, d_a_b_zant_mobile__stringBase0@l /* 0x806527D0@l */
/* 80650D70  38 80 00 42 */	li r4, 0x42
/* 80650D74  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80650D78  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80650D7C  3C A5 00 02 */	addis r5, r5, 2
/* 80650D80  38 C0 00 80 */	li r6, 0x80
/* 80650D84  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80650D88  4B 9E B5 65 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80650D8C  7C 64 1B 78 */	mr r4, r3
/* 80650D90  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80650D94  38 A0 00 02 */	li r5, 2
/* 80650D98  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80650D9C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80650DA0  FC 60 08 90 */	fmr f3, f1
/* 80650DA4  C0 9F 00 04 */	lfs f4, 4(r31)
/* 80650DA8  4B 9C 00 C9 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80650DAC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80650DB0  D0 3E 06 60 */	stfs f1, 0x660(r30)
/* 80650DB4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80650DB8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80650DBC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80650DC0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80650DC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80650DC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80650DCC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80650DD0  38 80 00 01 */	li r4, 1
/* 80650DD4  38 A0 00 1F */	li r5, 0x1f
/* 80650DD8  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80650DDC  4B A1 ED 35 */	bl StartQuake__12dVibration_cFii4cXyz
/* 80650DE0  48 00 02 C8 */	b lbl_806510A8
lbl_80650DE4:
/* 80650DE4  28 00 00 00 */	cmplwi r0, 0
/* 80650DE8  40 82 01 64 */	bne lbl_80650F4C
/* 80650DEC  88 1E 06 6D */	lbz r0, 0x66d(r30)
/* 80650DF0  28 00 00 02 */	cmplwi r0, 2
/* 80650DF4  41 82 00 0C */	beq lbl_80650E00
/* 80650DF8  28 00 00 03 */	cmplwi r0, 3
/* 80650DFC  40 82 02 AC */	bne lbl_806510A8
lbl_80650E00:
/* 80650E00  38 00 00 00 */	li r0, 0
/* 80650E04  98 1E 06 6D */	stb r0, 0x66d(r30)
/* 80650E08  3C 60 80 65 */	lis r3, d_a_b_zant_mobile__stringBase0@ha /* 0x806527D0@ha */
/* 80650E0C  38 63 27 D0 */	addi r3, r3, d_a_b_zant_mobile__stringBase0@l /* 0x806527D0@l */
/* 80650E10  38 80 00 42 */	li r4, 0x42
/* 80650E14  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80650E18  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80650E1C  3C A5 00 02 */	addis r5, r5, 2
/* 80650E20  38 C0 00 80 */	li r6, 0x80
/* 80650E24  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80650E28  4B 9E B4 C5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80650E2C  7C 64 1B 78 */	mr r4, r3
/* 80650E30  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80650E34  38 A0 00 02 */	li r5, 2
/* 80650E38  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80650E3C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80650E40  FC 60 08 90 */	fmr f3, f1
/* 80650E44  C0 9F 00 04 */	lfs f4, 4(r31)
/* 80650E48  4B 9C 00 29 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80650E4C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80650E50  D0 3E 06 60 */	stfs f1, 0x660(r30)
/* 80650E54  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80650E58  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80650E5C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80650E60  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80650E64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80650E68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80650E6C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80650E70  38 80 00 01 */	li r4, 1
/* 80650E74  38 A0 00 1F */	li r5, 0x1f
/* 80650E78  38 C1 00 20 */	addi r6, r1, 0x20
/* 80650E7C  4B A1 EC 95 */	bl StartQuake__12dVibration_cFii4cXyz
/* 80650E80  88 1E 06 6F */	lbz r0, 0x66f(r30)
/* 80650E84  28 00 00 00 */	cmplwi r0, 0
/* 80650E88  40 82 00 3C */	bne lbl_80650EC4
/* 80650E8C  38 00 00 01 */	li r0, 1
/* 80650E90  98 1E 06 6F */	stb r0, 0x66f(r30)
/* 80650E94  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 80650E98  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80650E9C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80650EA0  D0 5E 04 D8 */	stfs f2, 0x4d8(r30)
/* 80650EA4  7F C3 F3 78 */	mr r3, r30
/* 80650EA8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80650EAC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80650EB0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80650EB4  4B 9C 98 5D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80650EB8  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 80650EBC  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 80650EC0  48 00 00 7C */	b lbl_80650F3C
lbl_80650EC4:
/* 80650EC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80650EC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80650ECC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80650ED0  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80650ED4  38 81 00 38 */	addi r4, r1, 0x38
/* 80650ED8  4B C1 FD 2D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80650EDC  88 1E 06 70 */	lbz r0, 0x670(r30)
/* 80650EE0  54 00 70 22 */	slwi r0, r0, 0xe
/* 80650EE4  7C 63 02 14 */	add r3, r3, r0
/* 80650EE8  38 03 20 00 */	addi r0, r3, 0x2000
/* 80650EEC  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80650EF0  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80650EF4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80650EF8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80650EFC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80650F00  7C 64 02 14 */	add r3, r4, r0
/* 80650F04  C0 03 00 04 */	lfs f0, 4(r3)
/* 80650F08  EC 02 00 32 */	fmuls f0, f2, f0
/* 80650F0C  EC 81 00 2A */	fadds f4, f1, f0
/* 80650F10  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80650F14  7C 04 04 2E */	lfsx f0, r4, r0
/* 80650F18  EC 02 00 32 */	fmuls f0, f2, f0
/* 80650F1C  EC 01 00 2A */	fadds f0, f1, f0
/* 80650F20  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80650F24  D0 9E 04 D8 */	stfs f4, 0x4d8(r30)
/* 80650F28  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80650F2C  38 81 00 38 */	addi r4, r1, 0x38
/* 80650F30  4B C1 FC D5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80650F34  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 80650F38  B0 7E 04 DE */	sth r3, 0x4de(r30)
lbl_80650F3C:
/* 80650F3C  7F C3 F3 78 */	mr r3, r30
/* 80650F40  48 00 01 81 */	bl getGroundPos__11daB_ZANTZ_cFv
/* 80650F44  D0 3E 06 64 */	stfs f1, 0x664(r30)
/* 80650F48  48 00 01 60 */	b lbl_806510A8
lbl_80650F4C:
/* 80650F4C  28 00 00 04 */	cmplwi r0, 4
/* 80650F50  40 82 00 BC */	bne lbl_8065100C
/* 80650F54  88 1E 06 6D */	lbz r0, 0x66d(r30)
/* 80650F58  28 00 00 01 */	cmplwi r0, 1
/* 80650F5C  40 82 01 4C */	bne lbl_806510A8
/* 80650F60  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80650F64  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80650F68  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80650F6C  4B 9C 97 A5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80650F70  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80650F74  7C 00 18 50 */	subf r0, r0, r3
/* 80650F78  7C 03 07 34 */	extsh r3, r0
/* 80650F7C  4B D1 41 55 */	bl abs
/* 80650F80  2C 03 18 00 */	cmpwi r3, 0x1800
/* 80650F84  40 81 01 24 */	ble lbl_806510A8
/* 80650F88  38 00 00 04 */	li r0, 4
/* 80650F8C  98 1E 06 6D */	stb r0, 0x66d(r30)
/* 80650F90  3C 60 80 65 */	lis r3, d_a_b_zant_mobile__stringBase0@ha /* 0x806527D0@ha */
/* 80650F94  38 63 27 D0 */	addi r3, r3, d_a_b_zant_mobile__stringBase0@l /* 0x806527D0@l */
/* 80650F98  38 80 00 42 */	li r4, 0x42
/* 80650F9C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80650FA0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80650FA4  3C A5 00 02 */	addis r5, r5, 2
/* 80650FA8  38 C0 00 80 */	li r6, 0x80
/* 80650FAC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80650FB0  4B 9E B3 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80650FB4  7C 64 1B 78 */	mr r4, r3
/* 80650FB8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80650FBC  38 A0 00 02 */	li r5, 2
/* 80650FC0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80650FC4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80650FC8  FC 60 08 90 */	fmr f3, f1
/* 80650FCC  C0 9F 00 04 */	lfs f4, 4(r31)
/* 80650FD0  4B 9B FE A1 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80650FD4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80650FD8  D0 3E 06 60 */	stfs f1, 0x660(r30)
/* 80650FDC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80650FE0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80650FE4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80650FE8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80650FEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80650FF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80650FF4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80650FF8  38 80 00 01 */	li r4, 1
/* 80650FFC  38 A0 00 1F */	li r5, 0x1f
/* 80651000  38 C1 00 14 */	addi r6, r1, 0x14
/* 80651004  4B A1 EB 0D */	bl StartQuake__12dVibration_cFii4cXyz
/* 80651008  48 00 00 A0 */	b lbl_806510A8
lbl_8065100C:
/* 8065100C  28 00 00 05 */	cmplwi r0, 5
/* 80651010  40 82 00 98 */	bne lbl_806510A8
/* 80651014  88 1E 06 6D */	lbz r0, 0x66d(r30)
/* 80651018  28 00 00 01 */	cmplwi r0, 1
/* 8065101C  40 82 00 8C */	bne lbl_806510A8
/* 80651020  38 00 00 05 */	li r0, 5
/* 80651024  98 1E 06 6D */	stb r0, 0x66d(r30)
/* 80651028  38 00 00 01 */	li r0, 1
/* 8065102C  98 1E 06 71 */	stb r0, 0x671(r30)
/* 80651030  3C 60 80 65 */	lis r3, d_a_b_zant_mobile__stringBase0@ha /* 0x806527D0@ha */
/* 80651034  38 63 27 D0 */	addi r3, r3, d_a_b_zant_mobile__stringBase0@l /* 0x806527D0@l */
/* 80651038  38 80 00 42 */	li r4, 0x42
/* 8065103C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80651040  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80651044  3C A5 00 02 */	addis r5, r5, 2
/* 80651048  38 C0 00 80 */	li r6, 0x80
/* 8065104C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80651050  4B 9E B2 9D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80651054  7C 64 1B 78 */	mr r4, r3
/* 80651058  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8065105C  38 A0 00 02 */	li r5, 2
/* 80651060  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80651064  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80651068  FC 60 08 90 */	fmr f3, f1
/* 8065106C  C0 9F 00 04 */	lfs f4, 4(r31)
/* 80651070  4B 9B FE 01 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80651074  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80651078  D0 3E 06 60 */	stfs f1, 0x660(r30)
/* 8065107C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80651080  D0 01 00 08 */	stfs f0, 8(r1)
/* 80651084  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80651088  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8065108C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80651090  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80651094  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80651098  38 80 00 01 */	li r4, 1
/* 8065109C  38 A0 00 1F */	li r5, 0x1f
/* 806510A0  38 C1 00 08 */	addi r6, r1, 8
/* 806510A4  4B A1 EA 6D */	bl StartQuake__12dVibration_cFii4cXyz
lbl_806510A8:
/* 806510A8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 806510AC  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 806510B0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806510B4  7C 08 03 A6 */	mtlr r0
/* 806510B8  38 21 00 50 */	addi r1, r1, 0x50
/* 806510BC  4E 80 00 20 */	blr 
