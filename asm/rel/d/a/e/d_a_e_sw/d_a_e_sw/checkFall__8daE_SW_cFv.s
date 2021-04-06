lbl_807A7DAC:
/* 807A7DAC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 807A7DB0  7C 08 02 A6 */	mflr r0
/* 807A7DB4  90 01 00 84 */	stw r0, 0x84(r1)
/* 807A7DB8  39 61 00 80 */	addi r11, r1, 0x80
/* 807A7DBC  4B BB A4 21 */	bl _savegpr_29
/* 807A7DC0  7C 7D 1B 78 */	mr r29, r3
/* 807A7DC4  3C 60 80 7B */	lis r3, lit_3909@ha /* 0x807AFD2C@ha */
/* 807A7DC8  3B E3 FD 2C */	addi r31, r3, lit_3909@l /* 0x807AFD2C@l */
/* 807A7DCC  A8 1D 06 82 */	lha r0, 0x682(r29)
/* 807A7DD0  2C 00 00 0B */	cmpwi r0, 0xb
/* 807A7DD4  41 82 01 10 */	beq lbl_807A7EE4
/* 807A7DD8  2C 00 00 05 */	cmpwi r0, 5
/* 807A7DDC  41 82 01 08 */	beq lbl_807A7EE4
/* 807A7DE0  2C 00 00 0D */	cmpwi r0, 0xd
/* 807A7DE4  41 82 01 00 */	beq lbl_807A7EE4
/* 807A7DE8  2C 00 00 03 */	cmpwi r0, 3
/* 807A7DEC  40 82 00 08 */	bne lbl_807A7DF4
/* 807A7DF0  48 00 00 F4 */	b lbl_807A7EE4
lbl_807A7DF4:
/* 807A7DF4  80 1D 07 A4 */	lwz r0, 0x7a4(r29)
/* 807A7DF8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807A7DFC  40 82 00 E8 */	bne lbl_807A7EE4
/* 807A7E00  38 61 00 14 */	addi r3, r1, 0x14
/* 807A7E04  4B 8C F7 79 */	bl __ct__11dBgS_GndChkFv
/* 807A7E08  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807A7E0C  D0 01 00 08 */	stfs f0, 8(r1)
/* 807A7E10  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807A7E14  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807A7E18  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807A7E1C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807A7E20  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807A7E24  EC 01 00 2A */	fadds f0, f1, f0
/* 807A7E28  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807A7E2C  38 61 00 14 */	addi r3, r1, 0x14
/* 807A7E30  38 81 00 08 */	addi r4, r1, 8
/* 807A7E34  4B AB FE F5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 807A7E38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A7E3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A7E40  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 807A7E44  7F C3 F3 78 */	mr r3, r30
/* 807A7E48  38 81 00 14 */	addi r4, r1, 0x14
/* 807A7E4C  4B 8C C6 55 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 807A7E50  C0 5D 04 FC */	lfs f2, 0x4fc(r29)
/* 807A7E54  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A7E58  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807A7E5C  40 80 00 7C */	bge lbl_807A7ED8
/* 807A7E60  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 807A7E64  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807A7E68  41 82 00 60 */	beq lbl_807A7EC8
/* 807A7E6C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807A7E70  EC 01 00 28 */	fsubs f0, f1, f0
/* 807A7E74  FC 00 02 10 */	fabs f0, f0
/* 807A7E78  FC 20 00 18 */	frsp f1, f0
/* 807A7E7C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 807A7E80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A7E84  41 81 00 44 */	bgt lbl_807A7EC8
/* 807A7E88  7F C3 F3 78 */	mr r3, r30
/* 807A7E8C  3B E1 00 28 */	addi r31, r1, 0x28
/* 807A7E90  7F E4 FB 78 */	mr r4, r31
/* 807A7E94  4B 8C D0 5D */	bl GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 807A7E98  2C 03 00 04 */	cmpwi r3, 4
/* 807A7E9C  41 82 00 2C */	beq lbl_807A7EC8
/* 807A7EA0  7F C3 F3 78 */	mr r3, r30
/* 807A7EA4  7F E4 FB 78 */	mr r4, r31
/* 807A7EA8  4B 8C D0 49 */	bl GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 807A7EAC  2C 03 00 0A */	cmpwi r3, 0xa
/* 807A7EB0  41 82 00 18 */	beq lbl_807A7EC8
/* 807A7EB4  7F C3 F3 78 */	mr r3, r30
/* 807A7EB8  7F E4 FB 78 */	mr r4, r31
/* 807A7EBC  4B 8C D0 35 */	bl GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 807A7EC0  2C 03 00 05 */	cmpwi r3, 5
/* 807A7EC4  40 82 00 14 */	bne lbl_807A7ED8
lbl_807A7EC8:
/* 807A7EC8  7F A3 EB 78 */	mr r3, r29
/* 807A7ECC  38 80 00 0D */	li r4, 0xd
/* 807A7ED0  38 A0 00 00 */	li r5, 0
/* 807A7ED4  4B FF FC 91 */	bl setActionMode__8daE_SW_cFss
lbl_807A7ED8:
/* 807A7ED8  38 61 00 14 */	addi r3, r1, 0x14
/* 807A7EDC  38 80 FF FF */	li r4, -1
/* 807A7EE0  4B 8C F7 11 */	bl __dt__11dBgS_GndChkFv
lbl_807A7EE4:
/* 807A7EE4  39 61 00 80 */	addi r11, r1, 0x80
/* 807A7EE8  4B BB A3 41 */	bl _restgpr_29
/* 807A7EEC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 807A7EF0  7C 08 03 A6 */	mtlr r0
/* 807A7EF4  38 21 00 80 */	addi r1, r1, 0x80
/* 807A7EF8  4E 80 00 20 */	blr 
