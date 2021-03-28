lbl_80668624:
/* 80668624  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80668628  7C 08 02 A6 */	mflr r0
/* 8066862C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80668630  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80668634  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 80668638  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 8066863C  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 80668640  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80668644  4B CF 9B 98 */	b _savegpr_29
/* 80668648  7C 7D 1B 78 */	mr r29, r3
/* 8066864C  7C 9E 23 78 */	mr r30, r4
/* 80668650  FF C0 08 90 */	fmr f30, f1
/* 80668654  3C 60 80 67 */	lis r3, lit_3662@ha
/* 80668658  3B E3 ED E8 */	addi r31, r3, lit_3662@l
/* 8066865C  38 61 00 68 */	addi r3, r1, 0x68
/* 80668660  4B A0 EF 1C */	b __ct__11dBgS_GndChkFv
/* 80668664  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80668668  D0 01 00 08 */	stfs f0, 8(r1)
/* 8066866C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80668670  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80668674  EC 01 00 2A */	fadds f0, f1, f0
/* 80668678  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8066867C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80668680  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80668684  38 61 00 68 */	addi r3, r1, 0x68
/* 80668688  38 81 00 08 */	addi r4, r1, 8
/* 8066868C  4B BF F6 80 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 80668690  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80668694  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80668698  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8066869C  7F C3 F3 78 */	mr r3, r30
/* 806686A0  38 81 00 68 */	addi r4, r1, 0x68
/* 806686A4  4B A0 BD FC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806686A8  FF E0 08 90 */	fmr f31, f1
/* 806686AC  38 61 00 14 */	addi r3, r1, 0x14
/* 806686B0  4B A0 F1 00 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 806686B4  38 61 00 14 */	addi r3, r1, 0x14
/* 806686B8  38 81 00 08 */	addi r4, r1, 8
/* 806686BC  4B BF F6 50 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 806686C0  7F C3 F3 78 */	mr r3, r30
/* 806686C4  38 81 00 14 */	addi r4, r1, 0x14
/* 806686C8  4B A0 BD D8 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806686CC  EC 41 F8 28 */	fsubs f2, f1, f31
/* 806686D0  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 806686D4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 806686D8  EC 00 07 B2 */	fmuls f0, f0, f30
/* 806686DC  EC 21 00 32 */	fmuls f1, f1, f0
/* 806686E0  C0 1D 06 7C */	lfs f0, 0x67c(r29)
/* 806686E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 806686E8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806686EC  40 81 00 24 */	ble lbl_80668710
/* 806686F0  38 61 00 14 */	addi r3, r1, 0x14
/* 806686F4  38 80 FF FF */	li r4, -1
/* 806686F8  4B A0 F1 50 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 806686FC  38 61 00 68 */	addi r3, r1, 0x68
/* 80668700  38 80 FF FF */	li r4, -1
/* 80668704  4B A0 EE EC */	b __dt__11dBgS_GndChkFv
/* 80668708  38 60 00 01 */	li r3, 1
/* 8066870C  48 00 00 20 */	b lbl_8066872C
lbl_80668710:
/* 80668710  38 61 00 14 */	addi r3, r1, 0x14
/* 80668714  38 80 FF FF */	li r4, -1
/* 80668718  4B A0 F1 30 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 8066871C  38 61 00 68 */	addi r3, r1, 0x68
/* 80668720  38 80 FF FF */	li r4, -1
/* 80668724  4B A0 EE CC */	b __dt__11dBgS_GndChkFv
/* 80668728  38 60 00 00 */	li r3, 0
lbl_8066872C:
/* 8066872C  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 80668730  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80668734  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 80668738  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 8066873C  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80668740  4B CF 9A E8 */	b _restgpr_29
/* 80668744  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80668748  7C 08 03 A6 */	mtlr r0
/* 8066874C  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80668750  4E 80 00 20 */	blr 
