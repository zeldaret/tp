lbl_80A2C044:
/* 80A2C044  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A2C048  7C 08 02 A6 */	mflr r0
/* 80A2C04C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A2C050  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2C054  4B 93 61 88 */	b _savegpr_29
/* 80A2C058  7C 7D 1B 78 */	mr r29, r3
/* 80A2C05C  3C 60 80 A4 */	lis r3, m__16daNpc_Kn_Param_c@ha
/* 80A2C060  38 83 09 70 */	addi r4, r3, m__16daNpc_Kn_Param_c@l
/* 80A2C064  AB C4 00 48 */	lha r30, 0x48(r4)
/* 80A2C068  AB E4 00 4A */	lha r31, 0x4a(r4)
/* 80A2C06C  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80A2C070  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80A2C074  4B 72 09 A4 */	b daNpcT_getDistTableIdx__Fii
/* 80A2C078  98 7D 05 44 */	stb r3, 0x544(r29)
/* 80A2C07C  38 00 00 E4 */	li r0, 0xe4
/* 80A2C080  98 1D 05 46 */	stb r0, 0x546(r29)
/* 80A2C084  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 80A2C088  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80A2C08C  7F C3 07 34 */	extsh r3, r30
/* 80A2C090  7F E4 07 34 */	extsh r4, r31
/* 80A2C094  4B 72 09 84 */	b daNpcT_getDistTableIdx__Fii
/* 80A2C098  98 7D 05 47 */	stb r3, 0x547(r29)
/* 80A2C09C  88 1D 15 AE */	lbz r0, 0x15ae(r29)
/* 80A2C0A0  7C 00 07 74 */	extsb r0, r0
/* 80A2C0A4  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A2C0A8  41 82 00 0C */	beq lbl_80A2C0B4
/* 80A2C0AC  2C 00 00 0B */	cmpwi r0, 0xb
/* 80A2C0B0  40 82 00 2C */	bne lbl_80A2C0DC
lbl_80A2C0B4:
/* 80A2C0B4  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80A2C0B8  3C 80 80 A4 */	lis r4, lit_5395@ha
/* 80A2C0BC  C0 24 09 38 */	lfs f1, lit_5395@l(r4)
/* 80A2C0C0  4B 64 9E 80 */	b SetWallR__12dBgS_AcchCirFf
/* 80A2C0C4  3C 60 80 A4 */	lis r3, m__16daNpc_Kn_Param_c@ha
/* 80A2C0C8  38 63 09 70 */	addi r3, r3, m__16daNpc_Kn_Param_c@l
/* 80A2C0CC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A2C0D0  D0 1D 09 14 */	stfs f0, 0x914(r29)
/* 80A2C0D4  38 60 00 04 */	li r3, 4
/* 80A2C0D8  48 00 00 0C */	b lbl_80A2C0E4
lbl_80A2C0DC:
/* 80A2C0DC  3C 60 00 20 */	lis r3, 0x0020 /* 0x00200004@ha */
/* 80A2C0E0  38 63 00 04 */	addi r3, r3, 0x0004 /* 0x00200004@l */
lbl_80A2C0E4:
/* 80A2C0E4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2C0E8  4B 93 61 40 */	b _restgpr_29
/* 80A2C0EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A2C0F0  7C 08 03 A6 */	mtlr r0
/* 80A2C0F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A2C0F8  4E 80 00 20 */	blr 
