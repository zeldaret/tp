lbl_807F1AD4:
/* 807F1AD4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807F1AD8  7C 08 02 A6 */	mflr r0
/* 807F1ADC  90 01 00 34 */	stw r0, 0x34(r1)
/* 807F1AE0  39 61 00 30 */	addi r11, r1, 0x30
/* 807F1AE4  4B B7 06 F9 */	bl _savegpr_29
/* 807F1AE8  7C 7D 1B 78 */	mr r29, r3
/* 807F1AEC  3C 80 80 7F */	lis r4, lit_3715@ha /* 0x807F2864@ha */
/* 807F1AF0  3B C4 28 64 */	addi r30, r4, lit_3715@l /* 0x807F2864@l */
/* 807F1AF4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F1AF8  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F1AFC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807F1B00  4B 82 8C 11 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807F1B04  B0 7D 06 80 */	sth r3, 0x680(r29)
/* 807F1B08  7F A3 EB 78 */	mr r3, r29
/* 807F1B0C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807F1B10  4B 82 8E 55 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807F1B14  D0 3D 06 84 */	stfs f1, 0x684(r29)
/* 807F1B18  7F A3 EB 78 */	mr r3, r29
/* 807F1B1C  4B FF E5 A1 */	bl damage_check__FP10e_yc_class
/* 807F1B20  A8 1D 06 6E */	lha r0, 0x66e(r29)
/* 807F1B24  28 00 00 14 */	cmplwi r0, 0x14
/* 807F1B28  41 81 00 54 */	bgt lbl_807F1B7C
/* 807F1B2C  3C 60 80 7F */	lis r3, lit_4315@ha /* 0x807F298C@ha */
/* 807F1B30  38 63 29 8C */	addi r3, r3, lit_4315@l /* 0x807F298C@l */
/* 807F1B34  54 00 10 3A */	slwi r0, r0, 2
/* 807F1B38  7C 03 00 2E */	lwzx r0, r3, r0
/* 807F1B3C  7C 09 03 A6 */	mtctr r0
/* 807F1B40  4E 80 04 20 */	bctr 
lbl_807F1B44:
/* 807F1B44  7F A3 EB 78 */	mr r3, r29
/* 807F1B48  4B FF E6 65 */	bl e_yc_fly__FP10e_yc_class
/* 807F1B4C  48 00 00 30 */	b lbl_807F1B7C
lbl_807F1B50:
/* 807F1B50  7F A3 EB 78 */	mr r3, r29
/* 807F1B54  4B FF EB 59 */	bl e_yc_f_fly__FP10e_yc_class
/* 807F1B58  48 00 00 24 */	b lbl_807F1B7C
lbl_807F1B5C:
/* 807F1B5C  7F A3 EB 78 */	mr r3, r29
/* 807F1B60  4B FF EF 41 */	bl e_yc_hovering__FP10e_yc_class
/* 807F1B64  48 00 00 18 */	b lbl_807F1B7C
lbl_807F1B68:
/* 807F1B68  7F A3 EB 78 */	mr r3, r29
/* 807F1B6C  4B FF F0 D5 */	bl e_yc_attack__FP10e_yc_class
/* 807F1B70  48 00 00 0C */	b lbl_807F1B7C
lbl_807F1B74:
/* 807F1B74  7F A3 EB 78 */	mr r3, r29
/* 807F1B78  4B FF F6 A1 */	bl e_yc_wolfbite__FP10e_yc_class
lbl_807F1B7C:
/* 807F1B7C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807F1B80  38 80 00 00 */	li r4, 0
/* 807F1B84  4B AC FF F9 */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 807F1B88  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F1B8C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807F1B90  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807F1B94  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 807F1B98  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807F1B9C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807F1BA0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807F1BA4  80 63 00 00 */	lwz r3, 0(r3)
/* 807F1BA8  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 807F1BAC  4B 81 A8 31 */	bl mDoMtx_YrotS__FPA4_fs
/* 807F1BB0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807F1BB4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807F1BB8  80 63 00 00 */	lwz r3, 0(r3)
/* 807F1BBC  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 807F1BC0  4B 81 A7 DD */	bl mDoMtx_XrotM__FPA4_fs
/* 807F1BC4  38 61 00 14 */	addi r3, r1, 0x14
/* 807F1BC8  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 807F1BCC  4B A7 F3 21 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807F1BD0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807F1BD4  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 807F1BD8  7C 65 1B 78 */	mr r5, r3
/* 807F1BDC  4B B5 54 B5 */	bl PSVECAdd
/* 807F1BE0  C0 3D 06 9C */	lfs f1, 0x69c(r29)
/* 807F1BE4  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 807F1BE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F1BEC  40 81 00 58 */	ble lbl_807F1C44
/* 807F1BF0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F1BF4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807F1BF8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807F1BFC  FC 00 08 50 */	fneg f0, f1
/* 807F1C00  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807F1C04  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807F1C08  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807F1C0C  80 63 00 00 */	lwz r3, 0(r3)
/* 807F1C10  A8 9D 06 A0 */	lha r4, 0x6a0(r29)
/* 807F1C14  4B 81 A7 C9 */	bl mDoMtx_YrotS__FPA4_fs
/* 807F1C18  38 61 00 14 */	addi r3, r1, 0x14
/* 807F1C1C  38 81 00 08 */	addi r4, r1, 8
/* 807F1C20  4B A7 F2 CD */	bl MtxPosition__FP4cXyzP4cXyz
/* 807F1C24  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807F1C28  38 81 00 08 */	addi r4, r1, 8
/* 807F1C2C  7C 65 1B 78 */	mr r5, r3
/* 807F1C30  4B B5 54 61 */	bl PSVECAdd
/* 807F1C34  38 7D 06 9C */	addi r3, r29, 0x69c
/* 807F1C38  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807F1C3C  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 807F1C40  4B A7 DE 41 */	bl cLib_addCalc0__FPfff
lbl_807F1C44:
/* 807F1C44  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807F1C48  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 807F1C4C  38 A0 00 04 */	li r5, 4
/* 807F1C50  38 C0 20 00 */	li r6, 0x2000
/* 807F1C54  4B A7 E9 B5 */	bl cLib_addCalcAngleS2__FPssss
/* 807F1C58  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 807F1C5C  38 80 00 00 */	li r4, 0
/* 807F1C60  38 A0 00 04 */	li r5, 4
/* 807F1C64  38 C0 20 00 */	li r6, 0x2000
/* 807F1C68  4B A7 E9 A1 */	bl cLib_addCalcAngleS2__FPssss
/* 807F1C6C  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 807F1C70  A8 9D 04 E0 */	lha r4, 0x4e0(r29)
/* 807F1C74  38 A0 00 04 */	li r5, 4
/* 807F1C78  38 C0 20 00 */	li r6, 0x2000
/* 807F1C7C  4B A7 E9 8D */	bl cLib_addCalcAngleS2__FPssss
/* 807F1C80  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807F1C84  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 807F1C88  EC 00 08 28 */	fsubs f0, f0, f1
/* 807F1C8C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 807F1C90  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 807F1C94  EC 00 08 28 */	fsubs f0, f0, f1
/* 807F1C98  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 807F1C9C  38 7D 06 F4 */	addi r3, r29, 0x6f4
/* 807F1CA0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F1CA4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F1CA8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807F1CAC  4B 88 4E 01 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 807F1CB0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807F1CB4  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 807F1CB8  EC 00 08 2A */	fadds f0, f0, f1
/* 807F1CBC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 807F1CC0  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 807F1CC4  EC 00 08 2A */	fadds f0, f0, f1
/* 807F1CC8  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 807F1CCC  39 61 00 30 */	addi r11, r1, 0x30
/* 807F1CD0  4B B7 05 59 */	bl _restgpr_29
/* 807F1CD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807F1CD8  7C 08 03 A6 */	mtlr r0
/* 807F1CDC  38 21 00 30 */	addi r1, r1, 0x30
/* 807F1CE0  4E 80 00 20 */	blr 
