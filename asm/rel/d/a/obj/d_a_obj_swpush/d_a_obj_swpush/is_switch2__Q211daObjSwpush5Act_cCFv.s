lbl_80482D7C:
/* 80482D7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80482D80  7C 08 02 A6 */	mflr r0
/* 80482D84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80482D88  7C 65 1B 78 */	mr r5, r3
/* 80482D8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80482D90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80482D94  A0 05 05 BC */	lhz r0, 0x5bc(r5)
/* 80482D98  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80482D9C  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 80482DA0  7C 05 07 74 */	extsb r5, r0
/* 80482DA4  4B BB 25 BD */	bl isSwitch__10dSv_info_cCFii
/* 80482DA8  30 03 FF FF */	addic r0, r3, -1
/* 80482DAC  7C 00 19 10 */	subfe r0, r0, r3
/* 80482DB0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80482DB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80482DB8  7C 08 03 A6 */	mtlr r0
/* 80482DBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80482DC0  4E 80 00 20 */	blr 
