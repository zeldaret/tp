lbl_800D58A0:
/* 800D58A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800D58A4  7C 08 02 A6 */	mflr r0
/* 800D58A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 800D58AC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800D58B0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800D58B4  7C 7F 1B 78 */	mr r31, r3
/* 800D58B8  7C 9E 23 78 */	mr r30, r4
/* 800D58BC  38 80 00 2C */	li r4, 0x2c
/* 800D58C0  4B FE C6 AD */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D58C4  7F E3 FB 78 */	mr r3, r31
/* 800D58C8  48 00 17 19 */	bl checkCutLandDamage__9daAlink_cFv
/* 800D58CC  7F E3 FB 78 */	mr r3, r31
/* 800D58D0  38 80 00 7A */	li r4, 0x7a
/* 800D58D4  3C A0 80 39 */	lis r5, m__21daAlinkHIO_cutDown_c0@ha
/* 800D58D8  38 A5 DD 44 */	addi r5, r5, m__21daAlinkHIO_cutDown_c0@l
/* 800D58DC  38 A5 00 28 */	addi r5, r5, 0x28
/* 800D58E0  4B FD 78 15 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D58E4  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 800D58E8  28 00 00 51 */	cmplwi r0, 0x51
/* 800D58EC  41 82 00 7C */	beq lbl_800D5968
/* 800D58F0  28 1E 00 00 */	cmplwi r30, 0
/* 800D58F4  41 82 01 14 */	beq lbl_800D5A08
/* 800D58F8  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 800D58FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800D5900  41 82 01 08 */	beq lbl_800D5A08
/* 800D5904  C0 5F 05 C4 */	lfs f2, 0x5c4(r31)
/* 800D5908  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 800D590C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800D5910  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D5914  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800D5918  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 800D591C  C0 5E 05 70 */	lfs f2, 0x570(r30)
/* 800D5920  C0 1E 05 68 */	lfs f0, 0x568(r30)
/* 800D5924  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800D5928  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 800D592C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 800D5930  38 61 00 10 */	addi r3, r1, 0x10
/* 800D5934  38 81 00 1C */	addi r4, r1, 0x1c
/* 800D5938  48 27 1A 65 */	bl PSVECSquareDistance
/* 800D593C  C0 02 93 5C */	lfs f0, lit_8322(r2)
/* 800D5940  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D5944  40 80 00 C4 */	bge lbl_800D5A08
/* 800D5948  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 800D594C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800D5950  EC 01 00 28 */	fsubs f0, f1, f0
/* 800D5954  FC 00 02 10 */	fabs f0, f0
/* 800D5958  FC 20 00 18 */	frsp f1, f0
/* 800D595C  C0 02 93 50 */	lfs f0, lit_8247(r2)
/* 800D5960  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D5964  40 80 00 A4 */	bge lbl_800D5A08
lbl_800D5968:
/* 800D5968  38 00 00 01 */	li r0, 1
/* 800D596C  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800D5970  28 1E 00 00 */	cmplwi r30, 0
/* 800D5974  41 82 00 4C */	beq lbl_800D59C0
/* 800D5978  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 800D597C  60 00 00 02 */	ori r0, r0, 2
/* 800D5980  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 800D5984  38 61 00 08 */	addi r3, r1, 8
/* 800D5988  38 80 40 00 */	li r4, 0x4000
/* 800D598C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 800D5990  38 C0 00 00 */	li r6, 0
/* 800D5994  48 19 1A 61 */	bl __ct__5csXyzFsss
/* 800D5998  38 DE 05 68 */	addi r6, r30, 0x568
/* 800D599C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D59A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D59A4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 800D59A8  38 80 00 03 */	li r4, 3
/* 800D59AC  38 A0 00 00 */	li r5, 0
/* 800D59B0  38 E1 00 08 */	addi r7, r1, 8
/* 800D59B4  39 00 00 00 */	li r8, 0
/* 800D59B8  39 20 00 00 */	li r9, 0
/* 800D59BC  4B F7 68 5D */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_800D59C0:
/* 800D59C0  3B C0 00 20 */	li r30, 0x20
/* 800D59C4  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutDown_c0@ha
/* 800D59C8  38 63 DD 44 */	addi r3, r3, m__21daAlinkHIO_cutDown_c0@l
/* 800D59CC  A8 03 00 64 */	lha r0, 0x64(r3)
/* 800D59D0  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800D59D4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D59D8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 800D59DC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D59E0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800D59E4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 800D59E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D59EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D59F0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800D59F4  38 80 00 04 */	li r4, 4
/* 800D59F8  38 A0 00 1F */	li r5, 0x1f
/* 800D59FC  38 C1 00 28 */	addi r6, r1, 0x28
/* 800D5A00  4B F9 A0 25 */	bl StartShock__12dVibration_cFii4cXyz
/* 800D5A04  48 00 00 20 */	b lbl_800D5A24
lbl_800D5A08:
/* 800D5A08  8B DF 2F A5 */	lbz r30, 0x2fa5(r31)
/* 800D5A0C  38 00 00 00 */	li r0, 0
/* 800D5A10  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800D5A14  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutDown_c0@ha
/* 800D5A18  38 63 DD 44 */	addi r3, r3, m__21daAlinkHIO_cutDown_c0@l
/* 800D5A1C  A8 03 00 66 */	lha r0, 0x66(r3)
/* 800D5A20  B0 1F 30 08 */	sth r0, 0x3008(r31)
lbl_800D5A24:
/* 800D5A24  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 800D5A28  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040001@ha */
/* 800D5A2C  38 84 00 01 */	addi r4, r4, 0x0001 /* 0x00040001@l */
/* 800D5A30  7F C5 F3 78 */	mr r5, r30
/* 800D5A34  81 9F 2C A8 */	lwz r12, 0x2ca8(r31)
/* 800D5A38  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800D5A3C  7D 89 03 A6 */	mtctr r12
/* 800D5A40  4E 80 04 21 */	bctrl 
/* 800D5A44  38 00 00 00 */	li r0, 0
/* 800D5A48  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800D5A4C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D5A50  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800D5A54  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800D5A58  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 800D5A5C  90 1F 05 80 */	stw r0, 0x580(r31)
/* 800D5A60  38 00 00 04 */	li r0, 4
/* 800D5A64  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 800D5A68  7F E3 FB 78 */	mr r3, r31
/* 800D5A6C  38 80 00 02 */	li r4, 2
/* 800D5A70  48 04 B7 51 */	bl setFootEffectProcType__9daAlink_cFi
/* 800D5A74  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 800D5A78  60 00 00 30 */	ori r0, r0, 0x30
/* 800D5A7C  90 1F 05 84 */	stw r0, 0x584(r31)
/* 800D5A80  38 00 00 00 */	li r0, 0
/* 800D5A84  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 800D5A88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D5A8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D5A90  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 800D5A94  64 00 00 40 */	oris r0, r0, 0x40
/* 800D5A98  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 800D5A9C  3C 60 80 42 */	lis r3, l_halfAtnWaitBaseAnime@ha
/* 800D5AA0  C4 03 55 44 */	lfsu f0, l_halfAtnWaitBaseAnime@l(r3)
/* 800D5AA4  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 800D5AA8  C0 03 00 04 */	lfs f0, 4(r3)
/* 800D5AAC  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 800D5AB0  C0 03 00 08 */	lfs f0, 8(r3)
/* 800D5AB4  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 800D5AB8  38 00 00 04 */	li r0, 4
/* 800D5ABC  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800D5AC0  38 60 00 01 */	li r3, 1
/* 800D5AC4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800D5AC8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800D5ACC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800D5AD0  7C 08 03 A6 */	mtlr r0
/* 800D5AD4  38 21 00 40 */	addi r1, r1, 0x40
/* 800D5AD8  4E 80 00 20 */	blr 
