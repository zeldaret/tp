lbl_80698D6C:
/* 80698D6C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80698D70  7C 08 02 A6 */	mflr r0
/* 80698D74  90 01 00 54 */	stw r0, 0x54(r1)
/* 80698D78  39 61 00 50 */	addi r11, r1, 0x50
/* 80698D7C  4B CC 94 60 */	b _savegpr_29
/* 80698D80  7C 7E 1B 78 */	mr r30, r3
/* 80698D84  3C 80 80 6A */	lis r4, lit_3788@ha
/* 80698D88  3B E4 9C B0 */	addi r31, r4, lit_3788@l
/* 80698D8C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80698D90  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80698D94  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80698D98  4B 98 19 78 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80698D9C  B0 7E 06 7C */	sth r3, 0x67c(r30)
/* 80698DA0  7F C3 F3 78 */	mr r3, r30
/* 80698DA4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80698DA8  4B 98 1A 38 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80698DAC  D0 3E 06 80 */	stfs f1, 0x680(r30)
/* 80698DB0  7F C3 F3 78 */	mr r3, r30
/* 80698DB4  4B FF F5 F1 */	bl damage_check__FP10e_cr_class
/* 80698DB8  80 1E 08 EC */	lwz r0, 0x8ec(r30)
/* 80698DBC  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 80698DC0  90 1E 08 EC */	stw r0, 0x8ec(r30)
/* 80698DC4  3B A0 00 01 */	li r29, 1
/* 80698DC8  A8 1E 06 66 */	lha r0, 0x666(r30)
/* 80698DCC  2C 00 00 09 */	cmpwi r0, 9
/* 80698DD0  41 82 00 38 */	beq lbl_80698E08
/* 80698DD4  40 80 00 10 */	bge lbl_80698DE4
/* 80698DD8  2C 00 00 00 */	cmpwi r0, 0
/* 80698DDC  41 82 00 14 */	beq lbl_80698DF0
/* 80698DE0  48 00 00 40 */	b lbl_80698E20
lbl_80698DE4:
/* 80698DE4  2C 00 00 0B */	cmpwi r0, 0xb
/* 80698DE8  40 80 00 38 */	bge lbl_80698E20
/* 80698DEC  48 00 00 28 */	b lbl_80698E14
lbl_80698DF0:
/* 80698DF0  7F C3 F3 78 */	mr r3, r30
/* 80698DF4  4B FF F7 B1 */	bl e_cr_move__FP10e_cr_class
/* 80698DF8  80 1E 08 EC */	lwz r0, 0x8ec(r30)
/* 80698DFC  60 00 00 0C */	ori r0, r0, 0xc
/* 80698E00  90 1E 08 EC */	stw r0, 0x8ec(r30)
/* 80698E04  48 00 00 1C */	b lbl_80698E20
lbl_80698E08:
/* 80698E08  7F C3 F3 78 */	mr r3, r30
/* 80698E0C  4B FF FC 51 */	bl e_cr_s_damage__FP10e_cr_class
/* 80698E10  48 00 00 10 */	b lbl_80698E20
lbl_80698E14:
/* 80698E14  7F C3 F3 78 */	mr r3, r30
/* 80698E18  4B FF FD 69 */	bl e_cr_damage__FP10e_cr_class
/* 80698E1C  3B A0 00 00 */	li r29, 0
lbl_80698E20:
/* 80698E20  2C 1D 00 00 */	cmpwi r29, 0
/* 80698E24  41 82 00 10 */	beq lbl_80698E34
/* 80698E28  38 00 00 04 */	li r0, 4
/* 80698E2C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80698E30  48 00 00 18 */	b lbl_80698E48
lbl_80698E34:
/* 80698E34  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80698E38  54 00 00 3E */	slwi r0, r0, 0
/* 80698E3C  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80698E40  38 00 00 00 */	li r0, 0
/* 80698E44  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80698E48:
/* 80698E48  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80698E4C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80698E50  80 63 00 00 */	lwz r3, 0(r3)
/* 80698E54  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80698E58  4B 97 35 84 */	b mDoMtx_YrotS__FPA4_fs
/* 80698E5C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80698E60  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80698E64  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80698E68  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80698E6C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80698E70  38 61 00 20 */	addi r3, r1, 0x20
/* 80698E74  38 81 00 14 */	addi r4, r1, 0x14
/* 80698E78  4B BD 80 74 */	b MtxPosition__FP4cXyzP4cXyz
/* 80698E7C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80698E80  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80698E84  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80698E88  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80698E8C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80698E90  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80698E94  7C 65 1B 78 */	mr r5, r3
/* 80698E98  4B CA E1 F8 */	b PSVECAdd
/* 80698E9C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80698EA0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80698EA4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80698EA8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80698EAC  38 7E 06 D8 */	addi r3, r30, 0x6d8
/* 80698EB0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80698EB4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80698EB8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80698EBC  4B 9D DB F0 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80698EC0  88 1E 06 90 */	lbz r0, 0x690(r30)
/* 80698EC4  7C 00 07 75 */	extsb. r0, r0
/* 80698EC8  41 82 00 68 */	beq lbl_80698F30
/* 80698ECC  A8 7E 06 92 */	lha r3, 0x692(r30)
/* 80698ED0  2C 03 00 00 */	cmpwi r3, 0
/* 80698ED4  40 82 00 48 */	bne lbl_80698F1C
/* 80698ED8  A8 1E 06 96 */	lha r0, 0x696(r30)
/* 80698EDC  2C 00 00 00 */	cmpwi r0, 0
/* 80698EE0  41 80 00 10 */	blt lbl_80698EF0
/* 80698EE4  38 00 EA 84 */	li r0, -5500
/* 80698EE8  B0 1E 06 96 */	sth r0, 0x696(r30)
/* 80698EEC  48 00 00 0C */	b lbl_80698EF8
lbl_80698EF0:
/* 80698EF0  38 00 15 7C */	li r0, 0x157c
/* 80698EF4  B0 1E 06 96 */	sth r0, 0x696(r30)
lbl_80698EF8:
/* 80698EF8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80698EFC  4B BC EA 58 */	b cM_rndF__Ff
/* 80698F00  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80698F04  EC 00 08 2A */	fadds f0, f0, f1
/* 80698F08  FC 00 00 1E */	fctiwz f0, f0
/* 80698F0C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80698F10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80698F14  B0 1E 06 92 */	sth r0, 0x692(r30)
/* 80698F18  48 00 00 0C */	b lbl_80698F24
lbl_80698F1C:
/* 80698F1C  38 03 FF FF */	addi r0, r3, -1
/* 80698F20  B0 1E 06 92 */	sth r0, 0x692(r30)
lbl_80698F24:
/* 80698F24  38 00 00 00 */	li r0, 0
/* 80698F28  98 1E 06 90 */	stb r0, 0x690(r30)
/* 80698F2C  48 00 00 0C */	b lbl_80698F38
lbl_80698F30:
/* 80698F30  38 00 00 00 */	li r0, 0
/* 80698F34  B0 1E 06 96 */	sth r0, 0x696(r30)
lbl_80698F38:
/* 80698F38  38 7E 06 94 */	addi r3, r30, 0x694
/* 80698F3C  A8 9E 06 96 */	lha r4, 0x696(r30)
/* 80698F40  38 A0 00 02 */	li r5, 2
/* 80698F44  38 C0 10 00 */	li r6, 0x1000
/* 80698F48  4B BD 76 C0 */	b cLib_addCalcAngleS2__FPssss
/* 80698F4C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80698F50  D0 01 00 08 */	stfs f0, 8(r1)
/* 80698F54  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80698F58  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80698F5C  7F C3 F3 78 */	mr r3, r30
/* 80698F60  38 9E 05 BC */	addi r4, r30, 0x5bc
/* 80698F64  38 BE 05 38 */	addi r5, r30, 0x538
/* 80698F68  38 C1 00 08 */	addi r6, r1, 8
/* 80698F6C  48 00 09 1D */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 80698F70  39 61 00 50 */	addi r11, r1, 0x50
/* 80698F74  4B CC 92 B4 */	b _restgpr_29
/* 80698F78  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80698F7C  7C 08 03 A6 */	mtlr r0
/* 80698F80  38 21 00 50 */	addi r1, r1, 0x50
/* 80698F84  4E 80 00 20 */	blr 
