lbl_80CC1CF0:
/* 80CC1CF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC1CF4  7C 08 02 A6 */	mflr r0
/* 80CC1CF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC1CFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC1D00  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC1D04  7C 7F 1B 78 */	mr r31, r3
/* 80CC1D08  8B C3 05 E3 */	lbz r30, 0x5e3(r3)
/* 80CC1D0C  7F C0 07 74 */	extsb r0, r30
/* 80CC1D10  2C 00 00 04 */	cmpwi r0, 4
/* 80CC1D14  41 80 00 08 */	blt lbl_80CC1D1C
/* 80CC1D18  3B DE FF FC */	addi r30, r30, -4
lbl_80CC1D1C:
/* 80CC1D1C  7F C0 07 74 */	extsb r0, r30
/* 80CC1D20  2C 00 00 03 */	cmpwi r0, 3
/* 80CC1D24  40 82 00 28 */	bne lbl_80CC1D4C
/* 80CC1D28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC1D2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC1D30  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CC1D34  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CC1D38  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CC1D3C  7C 05 07 74 */	extsb r5, r0
/* 80CC1D40  4B 37 36 20 */	b isSwitch__10dSv_info_cCFii
/* 80CC1D44  2C 03 00 00 */	cmpwi r3, 0
/* 80CC1D48  40 82 00 34 */	bne lbl_80CC1D7C
lbl_80CC1D4C:
/* 80CC1D4C  7F C0 07 74 */	extsb r0, r30
/* 80CC1D50  2C 00 00 01 */	cmpwi r0, 1
/* 80CC1D54  40 82 00 34 */	bne lbl_80CC1D88
/* 80CC1D58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC1D5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC1D60  A0 1F 05 CA */	lhz r0, 0x5ca(r31)
/* 80CC1D64  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CC1D68  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CC1D6C  7C 05 07 74 */	extsb r5, r0
/* 80CC1D70  4B 37 35 F0 */	b isSwitch__10dSv_info_cCFii
/* 80CC1D74  2C 03 00 00 */	cmpwi r3, 0
/* 80CC1D78  41 82 00 10 */	beq lbl_80CC1D88
lbl_80CC1D7C:
/* 80CC1D7C  7F E3 FB 78 */	mr r3, r31
/* 80CC1D80  48 00 05 91 */	bl onWaterModel__15daObjRotStair_cFv
/* 80CC1D84  48 00 00 0C */	b lbl_80CC1D90
lbl_80CC1D88:
/* 80CC1D88  7F E3 FB 78 */	mr r3, r31
/* 80CC1D8C  48 00 05 D9 */	bl offWaterModel__15daObjRotStair_cFv
lbl_80CC1D90:
/* 80CC1D90  7F E3 FB 78 */	mr r3, r31
/* 80CC1D94  48 00 04 8D */	bl checkChangeSw__15daObjRotStair_cFv
/* 80CC1D98  2C 03 00 00 */	cmpwi r3, 0
/* 80CC1D9C  41 80 00 44 */	blt lbl_80CC1DE0
/* 80CC1DA0  38 00 00 01 */	li r0, 1
/* 80CC1DA4  98 1F 05 E2 */	stb r0, 0x5e2(r31)
/* 80CC1DA8  98 7F 05 E3 */	stb r3, 0x5e3(r31)
/* 80CC1DAC  88 1F 05 E3 */	lbz r0, 0x5e3(r31)
/* 80CC1DB0  7C 00 07 74 */	extsb r0, r0
/* 80CC1DB4  54 00 08 3C */	slwi r0, r0, 1
/* 80CC1DB8  3C 60 80 CC */	lis r3, l_target_angleY@ha
/* 80CC1DBC  38 63 27 10 */	addi r3, r3, l_target_angleY@l
/* 80CC1DC0  7C 03 02 AE */	lhax r0, r3, r0
/* 80CC1DC4  B0 1F 05 D4 */	sth r0, 0x5d4(r31)
/* 80CC1DC8  7F E3 FB 78 */	mr r3, r31
/* 80CC1DCC  88 9F 05 E3 */	lbz r4, 0x5e3(r31)
/* 80CC1DD0  7C 84 07 74 */	extsb r4, r4
/* 80CC1DD4  48 00 04 CD */	bl offSwitch__15daObjRotStair_cFi
/* 80CC1DD8  7F E3 FB 78 */	mr r3, r31
/* 80CC1DDC  48 00 00 1D */	bl init_modeRotate__15daObjRotStair_cFv
lbl_80CC1DE0:
/* 80CC1DE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC1DE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC1DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC1DEC  7C 08 03 A6 */	mtlr r0
/* 80CC1DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC1DF4  4E 80 00 20 */	blr 
