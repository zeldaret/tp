lbl_8002DD08:
/* 8002DD08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002DD0C  7C 08 02 A6 */	mflr r0
/* 8002DD10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002DD14  7C 60 1B 78 */	mr r0, r3
/* 8002DD18  7C 85 23 78 */	mr r5, r4
/* 8002DD1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002DD20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002DD24  7C 04 03 78 */	mr r4, r0
/* 8002DD28  48 00 4D 51 */	bl setMixItemIndex__21dSv_player_status_a_cFiUc
/* 8002DD2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002DD30  7C 08 03 A6 */	mtlr r0
/* 8002DD34  38 21 00 10 */	addi r1, r1, 0x10
/* 8002DD38  4E 80 00 20 */	blr 
