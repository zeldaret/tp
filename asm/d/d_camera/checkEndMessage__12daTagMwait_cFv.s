lbl_80182D9C:
/* 80182D9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80182DA0  7C 08 02 A6 */	mflr r0
/* 80182DA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80182DA8  7C 65 1B 78 */	mr r5, r3
/* 80182DAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80182DB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80182DB4  88 85 05 69 */	lbz r4, 0x569(r5)
/* 80182DB8  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 80182DBC  7C 05 07 74 */	extsb r5, r0
/* 80182DC0  4B EB 25 A1 */	bl isSwitch__10dSv_info_cCFii
/* 80182DC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80182DC8  7C 08 03 A6 */	mtlr r0
/* 80182DCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80182DD0  4E 80 00 20 */	blr 
