/* 800987B4 000956F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800987B8 000956F8  7C 08 02 A6 */	mflr r0
/* 800987BC 000956FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800987C0 00095700  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800987C4 00095704  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800987C8 00095708  38 63 00 9C */	addi r3, r3, 0x9c
/* 800987CC 0009570C  38 80 00 04 */	li r4, 4
/* 800987D0 00095710  38 A0 00 43 */	li r5, 0x43
/* 800987D4 00095714  4B F9 A7 E5 */	bl setItem__17dSv_player_item_cFiUc
/* 800987D8 00095718  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800987DC 0009571C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800987E0 00095720  38 00 00 1E */	li r0, 0x1e
/* 800987E4 00095724  98 03 00 EC */	stb r0, 0xec(r3)
/* 800987E8 00095728  98 03 00 F8 */	stb r0, 0xf8(r3)
/* 800987EC 0009572C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800987F0 00095730  7C 08 03 A6 */	mtlr r0
/* 800987F4 00095734  38 21 00 10 */	addi r1, r1, 0x10
/* 800987F8 00095738  4E 80 00 20 */	blr 