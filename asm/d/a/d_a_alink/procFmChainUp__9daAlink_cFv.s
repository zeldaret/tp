lbl_800E7CC0:
/* 800E7CC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E7CC4  7C 08 02 A6 */	mflr r0
/* 800E7CC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E7CCC  39 61 00 20 */	addi r11, r1, 0x20
/* 800E7CD0  48 27 A5 0D */	bl _savegpr_29
/* 800E7CD4  7C 7D 1B 78 */	mr r29, r3
/* 800E7CD8  3B FD 1F D0 */	addi r31, r29, 0x1fd0
/* 800E7CDC  38 80 00 96 */	li r4, 0x96
/* 800E7CE0  38 A0 00 02 */	li r5, 2
/* 800E7CE4  48 00 01 ED */	bl setWallGrabStatus__9daAlink_cFUcUc
/* 800E7CE8  7F A3 EB 78 */	mr r3, r29
/* 800E7CEC  38 80 00 00 */	li r4, 0
/* 800E7CF0  4B FC BA 45 */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 800E7CF4  7F E3 FB 78 */	mr r3, r31
/* 800E7CF8  48 07 67 D5 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E7CFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E7D00  40 82 00 2C */	bne lbl_800E7D2C
/* 800E7D04  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 800E7D08  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800E7D0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E7D10  40 81 00 78 */	ble lbl_800E7D88
/* 800E7D14  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800E7D18  3C 60 80 39 */	lis r3, m__21daAlinkHIO_fmChain_c0@ha
/* 800E7D1C  38 63 E7 CC */	addi r3, r3, m__21daAlinkHIO_fmChain_c0@l
/* 800E7D20  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800E7D24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E7D28  40 81 00 60 */	ble lbl_800E7D88
lbl_800E7D2C:
/* 800E7D2C  8B DD 2F A3 */	lbz r30, 0x2fa3(r29)
/* 800E7D30  83 FD 28 48 */	lwz r31, 0x2848(r29)
/* 800E7D34  7F A3 EB 78 */	mr r3, r29
/* 800E7D38  4B FD B6 81 */	bl procWaitInit__9daAlink_cFv
/* 800E7D3C  7F A3 EB 78 */	mr r3, r29
/* 800E7D40  38 80 01 82 */	li r4, 0x182
/* 800E7D44  4B FC 47 0D */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800E7D48  A0 83 00 02 */	lhz r4, 2(r3)
/* 800E7D4C  7F A3 EB 78 */	mr r3, r29
/* 800E7D50  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E7D54  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 800E7D58  4B FC 56 51 */	bl setUpperAnimeBaseSpeed__9daAlink_cFUsff
/* 800E7D5C  38 00 00 03 */	li r0, 3
/* 800E7D60  98 1D 2F 96 */	stb r0, 0x2f96(r29)
/* 800E7D64  38 00 00 09 */	li r0, 9
/* 800E7D68  98 1D 2F 97 */	stb r0, 0x2f97(r29)
/* 800E7D6C  28 1F 00 00 */	cmplwi r31, 0
/* 800E7D70  41 82 00 4C */	beq lbl_800E7DBC
/* 800E7D74  9B DD 2F A3 */	stb r30, 0x2fa3(r29)
/* 800E7D78  38 7D 28 44 */	addi r3, r29, 0x2844
/* 800E7D7C  7F E4 FB 78 */	mr r4, r31
/* 800E7D80  48 07 6F 39 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 800E7D84  48 00 00 38 */	b lbl_800E7DBC
lbl_800E7D88:
/* 800E7D88  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800E7D8C  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 800E7D90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E7D94  4C 41 13 82 */	cror 2, 1, 2
/* 800E7D98  40 82 00 18 */	bne lbl_800E7DB0
/* 800E7D9C  38 00 00 03 */	li r0, 3
/* 800E7DA0  98 1D 2F 92 */	stb r0, 0x2f92(r29)
/* 800E7DA4  38 00 00 09 */	li r0, 9
/* 800E7DA8  98 1D 2F 93 */	stb r0, 0x2f93(r29)
/* 800E7DAC  48 00 00 10 */	b lbl_800E7DBC
lbl_800E7DB0:
/* 800E7DB0  38 00 00 FE */	li r0, 0xfe
/* 800E7DB4  98 1D 2F 92 */	stb r0, 0x2f92(r29)
/* 800E7DB8  98 1D 2F 93 */	stb r0, 0x2f93(r29)
lbl_800E7DBC:
/* 800E7DBC  38 60 00 01 */	li r3, 1
/* 800E7DC0  39 61 00 20 */	addi r11, r1, 0x20
/* 800E7DC4  48 27 A4 65 */	bl _restgpr_29
/* 800E7DC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E7DCC  7C 08 03 A6 */	mtlr r0
/* 800E7DD0  38 21 00 20 */	addi r1, r1, 0x20
/* 800E7DD4  4E 80 00 20 */	blr 
