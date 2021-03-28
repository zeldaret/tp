lbl_8015D700:
/* 8015D700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015D704  7C 08 02 A6 */	mflr r0
/* 8015D708  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015D70C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8015D710  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8015D714  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8015D718  38 63 05 8C */	addi r3, r3, 0x58c
/* 8015D71C  4B F1 93 91 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8015D720  38 60 00 01 */	li r3, 1
/* 8015D724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015D728  7C 08 03 A6 */	mtlr r0
/* 8015D72C  38 21 00 10 */	addi r1, r1, 0x10
/* 8015D730  4E 80 00 20 */	blr 
