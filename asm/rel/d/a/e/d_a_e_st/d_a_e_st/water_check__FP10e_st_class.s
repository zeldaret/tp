lbl_807A28A0:
/* 807A28A0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 807A28A4  7C 08 02 A6 */	mflr r0
/* 807A28A8  90 01 00 74 */	stw r0, 0x74(r1)
/* 807A28AC  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 807A28B0  93 C1 00 68 */	stw r30, 0x68(r1)
/* 807A28B4  7C 7E 1B 78 */	mr r30, r3
/* 807A28B8  3C 60 80 7A */	lis r3, lit_3903@ha
/* 807A28BC  3B E3 68 24 */	addi r31, r3, lit_3903@l
/* 807A28C0  3C 60 80 7A */	lis r3, small@ha
/* 807A28C4  80 03 6D E0 */	lwz r0, small@l(r3)
/* 807A28C8  2C 00 00 00 */	cmpwi r0, 0
/* 807A28CC  41 82 00 10 */	beq lbl_807A28DC
/* 807A28D0  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 807A28D4  D0 1E 0A 18 */	stfs f0, 0xa18(r30)
/* 807A28D8  48 00 00 5C */	b lbl_807A2934
lbl_807A28DC:
/* 807A28DC  38 61 00 14 */	addi r3, r1, 0x14
/* 807A28E0  4B 8D 4E D0 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 807A28E4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807A28E8  D0 01 00 08 */	stfs f0, 8(r1)
/* 807A28EC  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 807A28F0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807A28F4  EC 01 00 2A */	fadds f0, f1, f0
/* 807A28F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807A28FC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807A2900  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807A2904  38 61 00 14 */	addi r3, r1, 0x14
/* 807A2908  38 81 00 08 */	addi r4, r1, 8
/* 807A290C  4B AC 54 00 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 807A2910  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807A2914  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807A2918  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807A291C  38 81 00 14 */	addi r4, r1, 0x14
/* 807A2920  4B 8D 1B 80 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807A2924  D0 3E 0A 18 */	stfs f1, 0xa18(r30)
/* 807A2928  38 61 00 14 */	addi r3, r1, 0x14
/* 807A292C  38 80 FF FF */	li r4, -1
/* 807A2930  4B 8D 4F 18 */	b __dt__18dBgS_ObjGndChk_SplFv
lbl_807A2934:
/* 807A2934  C0 5E 0A 18 */	lfs f2, 0xa18(r30)
/* 807A2938  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807A293C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807A2940  EC 01 00 2A */	fadds f0, f1, f0
/* 807A2944  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807A2948  40 81 00 0C */	ble lbl_807A2954
/* 807A294C  38 60 00 01 */	li r3, 1
/* 807A2950  48 00 00 08 */	b lbl_807A2958
lbl_807A2954:
/* 807A2954  38 60 00 00 */	li r3, 0
lbl_807A2958:
/* 807A2958  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 807A295C  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 807A2960  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807A2964  7C 08 03 A6 */	mtlr r0
/* 807A2968  38 21 00 70 */	addi r1, r1, 0x70
/* 807A296C  4E 80 00 20 */	blr 
