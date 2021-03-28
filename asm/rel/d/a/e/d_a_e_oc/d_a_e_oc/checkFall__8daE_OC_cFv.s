lbl_80732E64:
/* 80732E64  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80732E68  7C 08 02 A6 */	mflr r0
/* 80732E6C  90 01 00 94 */	stw r0, 0x94(r1)
/* 80732E70  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80732E74  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80732E78  39 61 00 80 */	addi r11, r1, 0x80
/* 80732E7C  4B C2 F3 5C */	b _savegpr_28
/* 80732E80  7C 7C 1B 78 */	mr r28, r3
/* 80732E84  3C 60 80 73 */	lis r3, lit_3911@ha
/* 80732E88  3B E3 5B 28 */	addi r31, r3, lit_3911@l
/* 80732E8C  38 61 00 14 */	addi r3, r1, 0x14
/* 80732E90  4B 94 46 EC */	b __ct__11dBgS_GndChkFv
/* 80732E94  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80732E98  D0 01 00 08 */	stfs f0, 8(r1)
/* 80732E9C  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80732EA0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80732EA4  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80732EA8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80732EAC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80732EB0  EC 01 00 2A */	fadds f0, f1, f0
/* 80732EB4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80732EB8  38 61 00 14 */	addi r3, r1, 0x14
/* 80732EBC  38 81 00 08 */	addi r4, r1, 8
/* 80732EC0  4B B3 4E 68 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80732EC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80732EC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80732ECC  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80732ED0  7F C3 F3 78 */	mr r3, r30
/* 80732ED4  38 81 00 14 */	addi r4, r1, 0x14
/* 80732ED8  4B 94 15 C8 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80732EDC  FF E0 08 90 */	fmr f31, f1
/* 80732EE0  80 1C 07 74 */	lwz r0, 0x774(r28)
/* 80732EE4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80732EE8  41 82 00 18 */	beq lbl_80732F00
/* 80732EEC  D3 FC 06 9C */	stfs f31, 0x69c(r28)
/* 80732EF0  38 61 00 14 */	addi r3, r1, 0x14
/* 80732EF4  38 80 FF FF */	li r4, -1
/* 80732EF8  4B 94 46 F8 */	b __dt__11dBgS_GndChkFv
/* 80732EFC  48 00 01 00 */	b lbl_80732FFC
lbl_80732F00:
/* 80732F00  80 1C 06 A8 */	lwz r0, 0x6a8(r28)
/* 80732F04  2C 00 00 0D */	cmpwi r0, 0xd
/* 80732F08  41 82 00 E8 */	beq lbl_80732FF0
/* 80732F0C  2C 00 00 0E */	cmpwi r0, 0xe
/* 80732F10  41 82 00 E0 */	beq lbl_80732FF0
/* 80732F14  2C 00 00 0A */	cmpwi r0, 0xa
/* 80732F18  41 82 00 D8 */	beq lbl_80732FF0
/* 80732F1C  2C 00 00 0B */	cmpwi r0, 0xb
/* 80732F20  41 82 00 D0 */	beq lbl_80732FF0
/* 80732F24  2C 00 00 0C */	cmpwi r0, 0xc
/* 80732F28  41 82 00 C8 */	beq lbl_80732FF0
/* 80732F2C  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80732F30  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80732F34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80732F38  40 80 00 B8 */	bge lbl_80732FF0
/* 80732F3C  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80732F40  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80732F44  41 82 00 44 */	beq lbl_80732F88
/* 80732F48  7F C3 F3 78 */	mr r3, r30
/* 80732F4C  3B A1 00 28 */	addi r29, r1, 0x28
/* 80732F50  7F A4 EB 78 */	mr r4, r29
/* 80732F54  4B 94 1F 9C */	b GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 80732F58  2C 03 00 04 */	cmpwi r3, 4
/* 80732F5C  41 82 00 2C */	beq lbl_80732F88
/* 80732F60  7F C3 F3 78 */	mr r3, r30
/* 80732F64  7F A4 EB 78 */	mr r4, r29
/* 80732F68  4B 94 1F 88 */	b GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 80732F6C  2C 03 00 0A */	cmpwi r3, 0xa
/* 80732F70  41 82 00 18 */	beq lbl_80732F88
/* 80732F74  7F C3 F3 78 */	mr r3, r30
/* 80732F78  7F A4 EB 78 */	mr r4, r29
/* 80732F7C  4B 94 1F 74 */	b GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 80732F80  2C 03 00 05 */	cmpwi r3, 5
/* 80732F84  40 82 00 28 */	bne lbl_80732FAC
lbl_80732F88:
/* 80732F88  C0 3C 06 9C */	lfs f1, 0x69c(r28)
/* 80732F8C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80732F90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80732F94  40 81 00 5C */	ble lbl_80732FF0
/* 80732F98  7F 83 E3 78 */	mr r3, r28
/* 80732F9C  38 80 00 0D */	li r4, 0xd
/* 80732FA0  38 A0 00 00 */	li r5, 0
/* 80732FA4  4B FF AD 19 */	bl setActionMode__8daE_OC_cFii
/* 80732FA8  48 00 00 48 */	b lbl_80732FF0
lbl_80732FAC:
/* 80732FAC  80 1C 06 A8 */	lwz r0, 0x6a8(r28)
/* 80732FB0  2C 00 00 06 */	cmpwi r0, 6
/* 80732FB4  41 82 00 3C */	beq lbl_80732FF0
/* 80732FB8  C0 5C 06 9C */	lfs f2, 0x69c(r28)
/* 80732FBC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80732FC0  EC 22 00 28 */	fsubs f1, f2, f0
/* 80732FC4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80732FC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80732FCC  40 81 00 24 */	ble lbl_80732FF0
/* 80732FD0  EC 22 F8 28 */	fsubs f1, f2, f31
/* 80732FD4  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80732FD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80732FDC  40 81 00 14 */	ble lbl_80732FF0
/* 80732FE0  7F 83 E3 78 */	mr r3, r28
/* 80732FE4  38 80 00 0E */	li r4, 0xe
/* 80732FE8  38 A0 00 00 */	li r5, 0
/* 80732FEC  4B FF AC D1 */	bl setActionMode__8daE_OC_cFii
lbl_80732FF0:
/* 80732FF0  38 61 00 14 */	addi r3, r1, 0x14
/* 80732FF4  38 80 FF FF */	li r4, -1
/* 80732FF8  4B 94 45 F8 */	b __dt__11dBgS_GndChkFv
lbl_80732FFC:
/* 80732FFC  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80733000  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80733004  39 61 00 80 */	addi r11, r1, 0x80
/* 80733008  4B C2 F2 1C */	b _restgpr_28
/* 8073300C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80733010  7C 08 03 A6 */	mtlr r0
/* 80733014  38 21 00 90 */	addi r1, r1, 0x90
/* 80733018  4E 80 00 20 */	blr 
