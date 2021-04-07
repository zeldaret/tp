lbl_80C67AD4:
/* 80C67AD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67AD8  7C 08 02 A6 */	mflr r0
/* 80C67ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67AE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C67AE4  7C 7F 1B 78 */	mr r31, r3
/* 80C67AE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C67AEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C67AF0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C67AF4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C67AF8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C67AFC  7C 05 07 74 */	extsb r5, r0
/* 80C67B00  4B 3C D8 61 */	bl isSwitch__10dSv_info_cCFii
/* 80C67B04  2C 03 00 00 */	cmpwi r3, 0
/* 80C67B08  41 82 00 0C */	beq lbl_80C67B14
/* 80C67B0C  7F E3 FB 78 */	mr r3, r31
/* 80C67B10  48 00 00 19 */	bl mode_init_move__15daObjLv4Floor_cFv
lbl_80C67B14:
/* 80C67B14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C67B18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C67B1C  7C 08 03 A6 */	mtlr r0
/* 80C67B20  38 21 00 10 */	addi r1, r1, 0x10
/* 80C67B24  4E 80 00 20 */	blr 
