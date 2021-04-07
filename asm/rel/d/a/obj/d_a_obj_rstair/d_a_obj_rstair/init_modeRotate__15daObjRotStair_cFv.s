lbl_80CC1DF8:
/* 80CC1DF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC1DFC  7C 08 02 A6 */	mflr r0
/* 80CC1E00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC1E04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC1E08  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC1E0C  7C 7F 1B 78 */	mr r31, r3
/* 80CC1E10  8B C3 05 E3 */	lbz r30, 0x5e3(r3)
/* 80CC1E14  7F C0 07 74 */	extsb r0, r30
/* 80CC1E18  2C 00 00 04 */	cmpwi r0, 4
/* 80CC1E1C  41 80 00 08 */	blt lbl_80CC1E24
/* 80CC1E20  3B DE FF FC */	addi r30, r30, -4
lbl_80CC1E24:
/* 80CC1E24  7F C0 07 74 */	extsb r0, r30
/* 80CC1E28  2C 00 00 03 */	cmpwi r0, 3
/* 80CC1E2C  40 82 00 28 */	bne lbl_80CC1E54
/* 80CC1E30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC1E34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC1E38  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CC1E3C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CC1E40  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CC1E44  7C 05 07 74 */	extsb r5, r0
/* 80CC1E48  4B 37 35 19 */	bl isSwitch__10dSv_info_cCFii
/* 80CC1E4C  2C 03 00 00 */	cmpwi r3, 0
/* 80CC1E50  40 82 00 34 */	bne lbl_80CC1E84
lbl_80CC1E54:
/* 80CC1E54  7F C0 07 74 */	extsb r0, r30
/* 80CC1E58  2C 00 00 01 */	cmpwi r0, 1
/* 80CC1E5C  40 82 00 34 */	bne lbl_80CC1E90
/* 80CC1E60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC1E64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC1E68  A0 1F 05 CA */	lhz r0, 0x5ca(r31)
/* 80CC1E6C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CC1E70  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CC1E74  7C 05 07 74 */	extsb r5, r0
/* 80CC1E78  4B 37 34 E9 */	bl isSwitch__10dSv_info_cCFii
/* 80CC1E7C  2C 03 00 00 */	cmpwi r3, 0
/* 80CC1E80  41 82 00 10 */	beq lbl_80CC1E90
lbl_80CC1E84:
/* 80CC1E84  7F E3 FB 78 */	mr r3, r31
/* 80CC1E88  48 00 04 89 */	bl onWaterModel__15daObjRotStair_cFv
/* 80CC1E8C  48 00 00 0C */	b lbl_80CC1E98
lbl_80CC1E90:
/* 80CC1E90  7F E3 FB 78 */	mr r3, r31
/* 80CC1E94  48 00 04 D1 */	bl offWaterModel__15daObjRotStair_cFv
lbl_80CC1E98:
/* 80CC1E98  38 00 00 00 */	li r0, 0
/* 80CC1E9C  B0 1F 05 D0 */	sth r0, 0x5d0(r31)
/* 80CC1EA0  38 00 01 2C */	li r0, 0x12c
/* 80CC1EA4  B0 1F 05 D2 */	sth r0, 0x5d2(r31)
/* 80CC1EA8  38 00 00 01 */	li r0, 1
/* 80CC1EAC  98 1F 05 CD */	stb r0, 0x5cd(r31)
/* 80CC1EB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC1EB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC1EB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC1EBC  7C 08 03 A6 */	mtlr r0
/* 80CC1EC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC1EC4  4E 80 00 20 */	blr 
