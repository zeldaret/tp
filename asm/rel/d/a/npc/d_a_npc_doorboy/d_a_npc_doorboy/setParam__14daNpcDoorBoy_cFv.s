lbl_809AC994:
/* 809AC994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AC998  7C 08 02 A6 */	mflr r0
/* 809AC99C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AC9A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AC9A4  7C 7F 1B 78 */	mr r31, r3
/* 809AC9A8  3C 80 80 9B */	lis r4, m__20daNpcDoorBoy_Param_c@ha /* 0x809AD9A8@ha */
/* 809AC9AC  38 A4 D9 A8 */	addi r5, r4, m__20daNpcDoorBoy_Param_c@l /* 0x809AD9A8@l */
/* 809AC9B0  A8 85 00 4C */	lha r4, 0x4c(r5)
/* 809AC9B4  A8 A5 00 4E */	lha r5, 0x4e(r5)
/* 809AC9B8  4B 7A 78 C1 */	bl getDistTableIdx__8daNpcF_cFii
/* 809AC9BC  98 7F 05 44 */	stb r3, 0x544(r31)
/* 809AC9C0  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 809AC9C4  98 1F 05 45 */	stb r0, 0x545(r31)
/* 809AC9C8  7F E3 FB 78 */	mr r3, r31
/* 809AC9CC  3C 80 80 9B */	lis r4, m__20daNpcDoorBoy_Param_c@ha /* 0x809AD9A8@ha */
/* 809AC9D0  38 A4 D9 A8 */	addi r5, r4, m__20daNpcDoorBoy_Param_c@l /* 0x809AD9A8@l */
/* 809AC9D4  A8 85 00 48 */	lha r4, 0x48(r5)
/* 809AC9D8  A8 A5 00 4A */	lha r5, 0x4a(r5)
/* 809AC9DC  4B 7A 78 9D */	bl getDistTableIdx__8daNpcF_cFii
/* 809AC9E0  98 7F 05 47 */	stb r3, 0x547(r31)
/* 809AC9E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809AC9E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809AC9EC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809AC9F0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809AC9F4  54 00 3F FE */	rlwinm r0, r0, 7, 0x1f, 0x1f
/* 809AC9F8  7C 60 00 D0 */	neg r3, r0
/* 809AC9FC  38 00 00 0A */	li r0, 0xa
/* 809ACA00  7C 00 18 78 */	andc r0, r0, r3
/* 809ACA04  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 809ACA08  3C 60 80 9B */	lis r3, m__20daNpcDoorBoy_Param_c@ha /* 0x809AD9A8@ha */
/* 809ACA0C  38 83 D9 A8 */	addi r4, r3, m__20daNpcDoorBoy_Param_c@l /* 0x809AD9A8@l */
/* 809ACA10  C0 04 00 08 */	lfs f0, 8(r4)
/* 809ACA14  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 809ACA18  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 809ACA1C  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 809ACA20  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 809ACA24  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809ACA28  4B 6C 95 19 */	bl SetWallR__12dBgS_AcchCirFf
/* 809ACA2C  3C 60 80 9B */	lis r3, m__20daNpcDoorBoy_Param_c@ha /* 0x809AD9A8@ha */
/* 809ACA30  38 63 D9 A8 */	addi r3, r3, m__20daNpcDoorBoy_Param_c@l /* 0x809AD9A8@l */
/* 809ACA34  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809ACA38  D0 1F 08 14 */	stfs f0, 0x814(r31)
/* 809ACA3C  C0 03 00 04 */	lfs f0, 4(r3)
/* 809ACA40  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 809ACA44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809ACA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809ACA4C  7C 08 03 A6 */	mtlr r0
/* 809ACA50  38 21 00 10 */	addi r1, r1, 0x10
/* 809ACA54  4E 80 00 20 */	blr 
