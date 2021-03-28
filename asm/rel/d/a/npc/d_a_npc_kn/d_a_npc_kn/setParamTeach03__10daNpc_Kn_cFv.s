lbl_80A2BFB0:
/* 80A2BFB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A2BFB4  7C 08 02 A6 */	mflr r0
/* 80A2BFB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A2BFBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2BFC0  4B 93 62 1C */	b _savegpr_29
/* 80A2BFC4  7C 7D 1B 78 */	mr r29, r3
/* 80A2BFC8  3C 60 80 A4 */	lis r3, m__16daNpc_Kn_Param_c@ha
/* 80A2BFCC  38 83 09 70 */	addi r4, r3, m__16daNpc_Kn_Param_c@l
/* 80A2BFD0  AB C4 00 48 */	lha r30, 0x48(r4)
/* 80A2BFD4  AB E4 00 4A */	lha r31, 0x4a(r4)
/* 80A2BFD8  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80A2BFDC  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80A2BFE0  4B 72 0A 38 */	b daNpcT_getDistTableIdx__Fii
/* 80A2BFE4  98 7D 05 44 */	stb r3, 0x544(r29)
/* 80A2BFE8  38 00 00 E4 */	li r0, 0xe4
/* 80A2BFEC  98 1D 05 46 */	stb r0, 0x546(r29)
/* 80A2BFF0  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 80A2BFF4  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80A2BFF8  7F C3 07 34 */	extsh r3, r30
/* 80A2BFFC  7F E4 07 34 */	extsh r4, r31
/* 80A2C000  4B 72 0A 18 */	b daNpcT_getDistTableIdx__Fii
/* 80A2C004  98 7D 05 47 */	stb r3, 0x547(r29)
/* 80A2C008  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80A2C00C  3C 80 80 A4 */	lis r4, lit_5395@ha
/* 80A2C010  C0 24 09 38 */	lfs f1, lit_5395@l(r4)
/* 80A2C014  4B 64 9F 2C */	b SetWallR__12dBgS_AcchCirFf
/* 80A2C018  3C 60 80 A4 */	lis r3, m__16daNpc_Kn_Param_c@ha
/* 80A2C01C  38 63 09 70 */	addi r3, r3, m__16daNpc_Kn_Param_c@l
/* 80A2C020  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A2C024  D0 1D 09 14 */	stfs f0, 0x914(r29)
/* 80A2C028  38 60 00 04 */	li r3, 4
/* 80A2C02C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2C030  4B 93 61 F8 */	b _restgpr_29
/* 80A2C034  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A2C038  7C 08 03 A6 */	mtlr r0
/* 80A2C03C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A2C040  4E 80 00 20 */	blr 
