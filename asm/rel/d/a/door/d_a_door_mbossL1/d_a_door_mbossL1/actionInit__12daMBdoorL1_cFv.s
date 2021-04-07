lbl_80676ED8:
/* 80676ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80676EDC  7C 08 02 A6 */	mflr r0
/* 80676EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80676EE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80676EE8  7C 7F 1B 78 */	mr r31, r3
/* 80676EEC  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80676EF0  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80676EF4  41 82 00 14 */	beq lbl_80676F08
/* 80676EF8  38 00 00 01 */	li r0, 1
/* 80676EFC  98 1F 05 CC */	stb r0, 0x5cc(r31)
/* 80676F00  48 00 00 E5 */	bl actionStartDemo__12daMBdoorL1_cFv
/* 80676F04  48 00 00 C8 */	b lbl_80676FCC
lbl_80676F08:
/* 80676F08  4B FF B9 31 */	bl getNowLevel__FP10fopAc_ac_c
/* 80676F0C  2C 03 00 01 */	cmpwi r3, 1
/* 80676F10  41 82 00 AC */	beq lbl_80676FBC
/* 80676F14  7F E3 FB 78 */	mr r3, r31
/* 80676F18  4B FF F3 8D */	bl checkFront__12daMBdoorL1_cFv
/* 80676F1C  2C 03 00 00 */	cmpwi r3, 0
/* 80676F20  41 82 00 2C */	beq lbl_80676F4C
/* 80676F24  7F E3 FB 78 */	mr r3, r31
/* 80676F28  4B 9C 32 A9 */	bl getSwbit__13door_param2_cFP10fopAc_ac_c
/* 80676F2C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80676F30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80676F34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80676F38  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80676F3C  7C 05 07 74 */	extsb r5, r0
/* 80676F40  4B 9B E4 21 */	bl isSwitch__10dSv_info_cCFii
/* 80676F44  2C 03 00 00 */	cmpwi r3, 0
/* 80676F48  41 82 00 3C */	beq lbl_80676F84
lbl_80676F4C:
/* 80676F4C  7F E3 FB 78 */	mr r3, r31
/* 80676F50  4B FF F3 55 */	bl checkFront__12daMBdoorL1_cFv
/* 80676F54  2C 03 00 00 */	cmpwi r3, 0
/* 80676F58  40 82 00 44 */	bne lbl_80676F9C
/* 80676F5C  7F E3 FB 78 */	mr r3, r31
/* 80676F60  4B 9C 32 7D */	bl getSwbit2__13door_param2_cFP10fopAc_ac_c
/* 80676F64  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80676F68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80676F6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80676F70  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80676F74  7C 05 07 74 */	extsb r5, r0
/* 80676F78  4B 9B E3 E9 */	bl isSwitch__10dSv_info_cCFii
/* 80676F7C  2C 03 00 00 */	cmpwi r3, 0
/* 80676F80  40 82 00 1C */	bne lbl_80676F9C
lbl_80676F84:
/* 80676F84  38 00 00 01 */	li r0, 1
/* 80676F88  98 1F 06 00 */	stb r0, 0x600(r31)
/* 80676F8C  3C 60 80 67 */	lis r3, lit_3740@ha /* 0x80677598@ha */
/* 80676F90  C0 03 75 98 */	lfs f0, lit_3740@l(r3)  /* 0x80677598@l */
/* 80676F94  D0 1F 05 FC */	stfs f0, 0x5fc(r31)
/* 80676F98  48 00 00 18 */	b lbl_80676FB0
lbl_80676F9C:
/* 80676F9C  38 00 00 00 */	li r0, 0
/* 80676FA0  98 1F 06 00 */	stb r0, 0x600(r31)
/* 80676FA4  3C 60 80 67 */	lis r3, lit_3834@ha /* 0x806775B4@ha */
/* 80676FA8  C0 03 75 B4 */	lfs f0, lit_3834@l(r3)  /* 0x806775B4@l */
/* 80676FAC  D0 1F 05 FC */	stfs f0, 0x5fc(r31)
lbl_80676FB0:
/* 80676FB0  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80676FB4  7F E4 FB 78 */	mr r4, r31
/* 80676FB8  4B FF B8 FD */	bl calcMtx__13dDoor_stop2_cFP10fopAc_ac_c
lbl_80676FBC:
/* 80676FBC  38 00 00 03 */	li r0, 3
/* 80676FC0  98 1F 05 CC */	stb r0, 0x5cc(r31)
/* 80676FC4  7F E3 FB 78 */	mr r3, r31
/* 80676FC8  4B FF FC 21 */	bl actionCloseWait__12daMBdoorL1_cFv
lbl_80676FCC:
/* 80676FCC  38 60 00 01 */	li r3, 1
/* 80676FD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80676FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80676FD8  7C 08 03 A6 */	mtlr r0
/* 80676FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80676FE0  4E 80 00 20 */	blr 
