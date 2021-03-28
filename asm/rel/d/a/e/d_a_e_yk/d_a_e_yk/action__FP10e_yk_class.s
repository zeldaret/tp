lbl_808068E4:
/* 808068E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 808068E8  7C 08 02 A6 */	mflr r0
/* 808068EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 808068F0  39 61 00 30 */	addi r11, r1, 0x30
/* 808068F4  4B B5 B8 E8 */	b _savegpr_29
/* 808068F8  7C 7E 1B 78 */	mr r30, r3
/* 808068FC  3C 80 80 80 */	lis r4, lit_3941@ha
/* 80806900  3B E4 7C 9C */	addi r31, r4, lit_3941@l
/* 80806904  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80806908  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 8080690C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80806910  4B 81 3E 00 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80806914  B0 7E 06 80 */	sth r3, 0x680(r30)
/* 80806918  7F C3 F3 78 */	mr r3, r30
/* 8080691C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80806920  4B 81 40 44 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80806924  D0 3E 06 84 */	stfs f1, 0x684(r30)
/* 80806928  7F C3 F3 78 */	mr r3, r30
/* 8080692C  4B FF E4 0D */	bl damage_check__FP10e_yk_class
/* 80806930  80 1E 09 1C */	lwz r0, 0x91c(r30)
/* 80806934  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 80806938  90 1E 09 1C */	stw r0, 0x91c(r30)
/* 8080693C  3B A0 00 00 */	li r29, 0
/* 80806940  A8 1E 06 6E */	lha r0, 0x66e(r30)
/* 80806944  28 00 00 0E */	cmplwi r0, 0xe
/* 80806948  41 81 00 A4 */	bgt lbl_808069EC
/* 8080694C  3C 60 80 80 */	lis r3, lit_4726@ha
/* 80806950  38 63 7D A8 */	addi r3, r3, lit_4726@l
/* 80806954  54 00 10 3A */	slwi r0, r0, 2
/* 80806958  7C 03 00 2E */	lwzx r0, r3, r0
/* 8080695C  7C 09 03 A6 */	mtctr r0
/* 80806960  4E 80 04 20 */	bctr 
lbl_80806964:
/* 80806964  7F C3 F3 78 */	mr r3, r30
/* 80806968  4B FF E9 F9 */	bl e_yk_roof__FP10e_yk_class
/* 8080696C  48 00 00 80 */	b lbl_808069EC
lbl_80806970:
/* 80806970  7F C3 F3 78 */	mr r3, r30
/* 80806974  4B FF EB 35 */	bl e_yk_fight_fly__FP10e_yk_class
/* 80806978  48 00 00 74 */	b lbl_808069EC
lbl_8080697C:
/* 8080697C  7F C3 F3 78 */	mr r3, r30
/* 80806980  4B FF EC E1 */	bl e_yk_fight__FP10e_yk_class
/* 80806984  3B A0 00 01 */	li r29, 1
/* 80806988  48 00 00 64 */	b lbl_808069EC
lbl_8080698C:
/* 8080698C  7F C3 F3 78 */	mr r3, r30
/* 80806990  4B FF F0 2D */	bl e_yk_attack__FP10e_yk_class
/* 80806994  80 1E 09 1C */	lwz r0, 0x91c(r30)
/* 80806998  60 00 00 0C */	ori r0, r0, 0xc
/* 8080699C  90 1E 09 1C */	stw r0, 0x91c(r30)
/* 808069A0  3B A0 00 01 */	li r29, 1
/* 808069A4  48 00 00 48 */	b lbl_808069EC
lbl_808069A8:
/* 808069A8  7F C3 F3 78 */	mr r3, r30
/* 808069AC  4B FF F4 35 */	bl e_yk_return__FP10e_yk_class
/* 808069B0  48 00 00 3C */	b lbl_808069EC
lbl_808069B4:
/* 808069B4  7F C3 F3 78 */	mr r3, r30
/* 808069B8  4B FF F1 FD */	bl e_yk_fly__FP10e_yk_class
/* 808069BC  48 00 00 30 */	b lbl_808069EC
lbl_808069C0:
/* 808069C0  7F C3 F3 78 */	mr r3, r30
/* 808069C4  4B FF F6 2D */	bl e_yk_path_fly__FP10e_yk_class
/* 808069C8  48 00 00 24 */	b lbl_808069EC
lbl_808069CC:
/* 808069CC  7F C3 F3 78 */	mr r3, r30
/* 808069D0  4B FF F9 39 */	bl e_yk_chance__FP10e_yk_class
/* 808069D4  48 00 00 18 */	b lbl_808069EC
lbl_808069D8:
/* 808069D8  7F C3 F3 78 */	mr r3, r30
/* 808069DC  4B FF FB 25 */	bl e_yk_wolfbite__FP10e_yk_class
/* 808069E0  48 00 00 0C */	b lbl_808069EC
lbl_808069E4:
/* 808069E4  7F C3 F3 78 */	mr r3, r30
/* 808069E8  4B FF FD 59 */	bl e_yk_wind__FP10e_yk_class
lbl_808069EC:
/* 808069EC  7F A0 07 75 */	extsb. r0, r29
/* 808069F0  41 82 00 14 */	beq lbl_80806A04
/* 808069F4  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 808069F8  38 80 00 01 */	li r4, 1
/* 808069FC  4B AB B1 80 */	b setLinkSearch__15Z2CreatureEnemyFb
/* 80806A00  48 00 00 10 */	b lbl_80806A10
lbl_80806A04:
/* 80806A04  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80806A08  38 80 00 00 */	li r4, 0
/* 80806A0C  4B AB B1 70 */	b setLinkSearch__15Z2CreatureEnemyFb
lbl_80806A10:
/* 80806A10  C0 3E 06 94 */	lfs f1, 0x694(r30)
/* 80806A14  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80806A18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80806A1C  40 81 00 B0 */	ble lbl_80806ACC
/* 80806A20  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80806A24  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80806A28  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80806A2C  FC 00 08 50 */	fneg f0, f1
/* 80806A30  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80806A34  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80806A38  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80806A3C  80 63 00 00 */	lwz r3, 0(r3)
/* 80806A40  A8 9E 06 98 */	lha r4, 0x698(r30)
/* 80806A44  4B 80 59 98 */	b mDoMtx_YrotS__FPA4_fs
/* 80806A48  38 61 00 14 */	addi r3, r1, 0x14
/* 80806A4C  38 81 00 08 */	addi r4, r1, 8
/* 80806A50  4B A6 A4 9C */	b MtxPosition__FP4cXyzP4cXyz
/* 80806A54  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80806A58  38 81 00 08 */	addi r4, r1, 8
/* 80806A5C  7C 65 1B 78 */	mr r5, r3
/* 80806A60  4B B4 06 30 */	b PSVECAdd
/* 80806A64  38 7E 06 94 */	addi r3, r30, 0x694
/* 80806A68  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80806A6C  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 80806A70  4B A6 90 10 */	b cLib_addCalc0__FPfff
/* 80806A74  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 80806A78  7C 00 07 75 */	extsb. r0, r0
/* 80806A7C  41 82 00 98 */	beq lbl_80806B14
/* 80806A80  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80806A84  38 03 13 00 */	addi r0, r3, 0x1300
/* 80806A88  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80806A8C  A8 7E 04 E8 */	lha r3, 0x4e8(r30)
/* 80806A90  38 03 17 00 */	addi r0, r3, 0x1700
/* 80806A94  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80806A98  C0 3E 06 94 */	lfs f1, 0x694(r30)
/* 80806A9C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80806AA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80806AA4  4C 40 13 82 */	cror 2, 0, 2
/* 80806AA8  41 82 00 10 */	beq lbl_80806AB8
/* 80806AAC  80 1E 07 34 */	lwz r0, 0x734(r30)
/* 80806AB0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80806AB4  41 82 00 60 */	beq lbl_80806B14
lbl_80806AB8:
/* 80806AB8  7F C3 F3 78 */	mr r3, r30
/* 80806ABC  4B FF DD B5 */	bl yk_disappear__FP10e_yk_class
/* 80806AC0  7F C3 F3 78 */	mr r3, r30
/* 80806AC4  4B 81 31 B8 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80806AC8  48 00 00 4C */	b lbl_80806B14
lbl_80806ACC:
/* 80806ACC  A8 1E 06 6E */	lha r0, 0x66e(r30)
/* 80806AD0  2C 00 00 0E */	cmpwi r0, 0xe
/* 80806AD4  41 82 00 40 */	beq lbl_80806B14
/* 80806AD8  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80806ADC  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80806AE0  38 A0 00 04 */	li r5, 4
/* 80806AE4  38 C0 20 00 */	li r6, 0x2000
/* 80806AE8  4B A6 9B 20 */	b cLib_addCalcAngleS2__FPssss
/* 80806AEC  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80806AF0  38 80 00 00 */	li r4, 0
/* 80806AF4  38 A0 00 04 */	li r5, 4
/* 80806AF8  38 C0 20 00 */	li r6, 0x2000
/* 80806AFC  4B A6 9B 0C */	b cLib_addCalcAngleS2__FPssss
/* 80806B00  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 80806B04  A8 9E 04 E0 */	lha r4, 0x4e0(r30)
/* 80806B08  38 A0 00 04 */	li r5, 4
/* 80806B0C  38 C0 20 00 */	li r6, 0x2000
/* 80806B10  4B A6 9A F8 */	b cLib_addCalcAngleS2__FPssss
lbl_80806B14:
/* 80806B14  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80806B18  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80806B1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80806B20  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80806B24  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 80806B28  EC 00 08 28 */	fsubs f0, f0, f1
/* 80806B2C  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80806B30  38 7E 07 08 */	addi r3, r30, 0x708
/* 80806B34  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80806B38  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80806B3C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80806B40  4B 86 FF 6C */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80806B44  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80806B48  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80806B4C  EC 00 08 2A */	fadds f0, f0, f1
/* 80806B50  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80806B54  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 80806B58  EC 00 08 2A */	fadds f0, f0, f1
/* 80806B5C  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80806B60  39 61 00 30 */	addi r11, r1, 0x30
/* 80806B64  4B B5 B6 C4 */	b _restgpr_29
/* 80806B68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80806B6C  7C 08 03 A6 */	mtlr r0
/* 80806B70  38 21 00 30 */	addi r1, r1, 0x30
/* 80806B74  4E 80 00 20 */	blr 
