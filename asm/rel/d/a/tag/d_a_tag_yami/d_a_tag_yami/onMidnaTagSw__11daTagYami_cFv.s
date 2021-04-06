lbl_80D65EEC:
/* 80D65EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D65EF0  7C 08 02 A6 */	mflr r0
/* 80D65EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D65EF8  7C 65 1B 78 */	mr r5, r3
/* 80D65EFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D65F00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D65F04  80 85 06 E4 */	lwz r4, 0x6e4(r5)
/* 80D65F08  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 80D65F0C  7C 05 07 74 */	extsb r5, r0
/* 80D65F10  4B 2C F2 F1 */	bl onSwitch__10dSv_info_cFii
/* 80D65F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D65F18  7C 08 03 A6 */	mtlr r0
/* 80D65F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D65F20  4E 80 00 20 */	blr 
