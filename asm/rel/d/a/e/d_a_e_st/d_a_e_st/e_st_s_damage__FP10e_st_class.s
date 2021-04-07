lbl_807A1FA4:
/* 807A1FA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807A1FA8  7C 08 02 A6 */	mflr r0
/* 807A1FAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 807A1FB0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807A1FB4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807A1FB8  7C 7F 1B 78 */	mr r31, r3
/* 807A1FBC  3C 80 80 7A */	lis r4, lit_3903@ha /* 0x807A6824@ha */
/* 807A1FC0  3B C4 68 24 */	addi r30, r4, lit_3903@l /* 0x807A6824@l */
/* 807A1FC4  A8 03 06 80 */	lha r0, 0x680(r3)
/* 807A1FC8  2C 00 00 01 */	cmpwi r0, 1
/* 807A1FCC  41 82 00 34 */	beq lbl_807A2000
/* 807A1FD0  40 80 00 78 */	bge lbl_807A2048
/* 807A1FD4  2C 00 00 00 */	cmpwi r0, 0
/* 807A1FD8  40 80 00 08 */	bge lbl_807A1FE0
/* 807A1FDC  48 00 00 6C */	b lbl_807A2048
lbl_807A1FE0:
/* 807A1FE0  38 00 00 01 */	li r0, 1
/* 807A1FE4  B0 1F 06 80 */	sth r0, 0x680(r31)
/* 807A1FE8  38 80 00 09 */	li r4, 9
/* 807A1FEC  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807A1FF0  38 A0 00 00 */	li r5, 0
/* 807A1FF4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A1FF8  4B FF BE 55 */	bl anm_init__FP10e_st_classifUcf
/* 807A1FFC  48 00 00 4C */	b lbl_807A2048
lbl_807A2000:
/* 807A2000  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807A2004  38 80 00 01 */	li r4, 1
/* 807A2008  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807A200C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807A2010  40 82 00 18 */	bne lbl_807A2028
/* 807A2014  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807A2018  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807A201C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807A2020  41 82 00 08 */	beq lbl_807A2028
/* 807A2024  38 80 00 00 */	li r4, 0
lbl_807A2028:
/* 807A2028  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807A202C  41 82 00 1C */	beq lbl_807A2048
/* 807A2030  38 00 00 33 */	li r0, 0x33
/* 807A2034  B0 1F 06 7E */	sth r0, 0x67e(r31)
/* 807A2038  38 00 00 00 */	li r0, 0
/* 807A203C  B0 1F 06 80 */	sth r0, 0x680(r31)
/* 807A2040  38 00 00 02 */	li r0, 2
/* 807A2044  98 1F 05 B4 */	stb r0, 0x5b4(r31)
lbl_807A2048:
/* 807A2048  7F E3 FB 78 */	mr r3, r31
/* 807A204C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A2050  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A2054  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807A2058  4B 87 86 B9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807A205C  7C 64 1B 78 */	mr r4, r3
/* 807A2060  38 7F 04 DE */	addi r3, r31, 0x4de
/* 807A2064  38 A0 00 04 */	li r5, 4
/* 807A2068  38 C0 10 00 */	li r6, 0x1000
/* 807A206C  4B AC E5 9D */	bl cLib_addCalcAngleS2__FPssss
/* 807A2070  C0 3F 07 E0 */	lfs f1, 0x7e0(r31)
/* 807A2074  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 807A2078  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A207C  40 81 00 7C */	ble lbl_807A20F8
/* 807A2080  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A2084  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807A2088  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807A208C  FC 00 08 50 */	fneg f0, f1
/* 807A2090  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807A2094  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807A2098  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807A209C  80 63 00 00 */	lwz r3, 0(r3)
/* 807A20A0  A8 9F 07 DE */	lha r4, 0x7de(r31)
/* 807A20A4  4B 86 A3 39 */	bl mDoMtx_YrotS__FPA4_fs
/* 807A20A8  38 61 00 14 */	addi r3, r1, 0x14
/* 807A20AC  38 81 00 08 */	addi r4, r1, 8
/* 807A20B0  4B AC EE 3D */	bl MtxPosition__FP4cXyzP4cXyz
/* 807A20B4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807A20B8  38 81 00 08 */	addi r4, r1, 8
/* 807A20BC  7C 65 1B 78 */	mr r5, r3
/* 807A20C0  4B BA 4F D1 */	bl PSVECAdd
/* 807A20C4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807A20C8  D0 1F 06 90 */	stfs f0, 0x690(r31)
/* 807A20CC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807A20D0  D0 1F 06 98 */	stfs f0, 0x698(r31)
/* 807A20D4  38 7F 07 E0 */	addi r3, r31, 0x7e0
/* 807A20D8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807A20DC  C0 5E 00 98 */	lfs f2, 0x98(r30)
/* 807A20E0  4B AC D9 A1 */	bl cLib_addCalc0__FPfff
/* 807A20E4  38 7F 08 40 */	addi r3, r31, 0x840
/* 807A20E8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A20EC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A20F0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807A20F4  4B 8D 49 B9 */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_807A20F8:
/* 807A20F8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807A20FC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807A2100  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807A2104  7C 08 03 A6 */	mtlr r0
/* 807A2108  38 21 00 30 */	addi r1, r1, 0x30
/* 807A210C  4E 80 00 20 */	blr 
