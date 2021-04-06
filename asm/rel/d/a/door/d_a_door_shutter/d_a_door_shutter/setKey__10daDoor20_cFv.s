lbl_80462EB4:
/* 80462EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80462EB8  7C 08 02 A6 */	mflr r0
/* 80462EBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80462EC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80462EC4  93 C1 00 08 */	stw r30, 8(r1)
/* 80462EC8  7C 7E 1B 78 */	mr r30, r3
/* 80462ECC  4B BD 73 05 */	bl getSwbit__13door_param2_cFP10fopAc_ac_c
/* 80462ED0  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 80462ED4  7F C3 F3 78 */	mr r3, r30
/* 80462ED8  48 00 31 C5 */	bl chkMakeKey__10daDoor20_cFv
/* 80462EDC  2C 03 00 01 */	cmpwi r3, 1
/* 80462EE0  40 82 00 2C */	bne lbl_80462F0C
/* 80462EE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80462EE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80462EEC  7F E4 FB 78 */	mr r4, r31
/* 80462EF0  38 A0 FF FF */	li r5, -1
/* 80462EF4  4B BD 24 6D */	bl isSwitch__10dSv_info_cCFii
/* 80462EF8  2C 03 00 00 */	cmpwi r3, 0
/* 80462EFC  40 82 00 10 */	bne lbl_80462F0C
/* 80462F00  38 00 00 01 */	li r0, 1
/* 80462F04  98 1E 05 F0 */	stb r0, 0x5f0(r30)
/* 80462F08  48 00 00 0C */	b lbl_80462F14
lbl_80462F0C:
/* 80462F0C  38 00 00 00 */	li r0, 0
/* 80462F10  98 1E 05 F0 */	stb r0, 0x5f0(r30)
lbl_80462F14:
/* 80462F14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80462F18  83 C1 00 08 */	lwz r30, 8(r1)
/* 80462F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80462F20  7C 08 03 A6 */	mtlr r0
/* 80462F24  38 21 00 10 */	addi r1, r1, 0x10
/* 80462F28  4E 80 00 20 */	blr 
