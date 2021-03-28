lbl_8002DDC8:
/* 8002DDC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002DDCC  7C 08 02 A6 */	mflr r0
/* 8002DDD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002DDD4  7C 64 1B 78 */	mr r4, r3
/* 8002DDD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002DDDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002DDE0  48 00 4C AD */	bl getMixItemIndex__21dSv_player_status_a_cCFi
/* 8002DDE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002DDE8  7C 08 03 A6 */	mtlr r0
/* 8002DDEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8002DDF0  4E 80 00 20 */	blr 
