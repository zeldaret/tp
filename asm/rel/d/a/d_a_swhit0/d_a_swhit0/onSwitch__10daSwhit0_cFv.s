lbl_80486800:
/* 80486800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80486804  7C 08 02 A6 */	mflr r0
/* 80486808  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048680C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80486810  7C 7F 1B 78 */	mr r31, r3
/* 80486814  4B FF F7 E5 */	bl getSwNo__10daSwhit0_cFv
/* 80486818  7C 64 1B 78 */	mr r4, r3
/* 8048681C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80486820  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80486824  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80486828  7C 05 07 74 */	extsb r5, r0
/* 8048682C  4B BA E9 D4 */	b onSwitch__10dSv_info_cFii
/* 80486830  A0 1F 07 54 */	lhz r0, 0x754(r31)
/* 80486834  60 00 00 01 */	ori r0, r0, 1
/* 80486838  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 8048683C  7F E3 FB 78 */	mr r3, r31
/* 80486840  4B FF FE C5 */	bl setCombackTimer__10daSwhit0_cFv
/* 80486844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80486848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048684C  7C 08 03 A6 */	mtlr r0
/* 80486850  38 21 00 10 */	addi r1, r1, 0x10
/* 80486854  4E 80 00 20 */	blr 
