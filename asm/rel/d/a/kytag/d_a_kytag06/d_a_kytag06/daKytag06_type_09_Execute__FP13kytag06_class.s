lbl_80858D00:
/* 80858D00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80858D04  7C 08 02 A6 */	mflr r0
/* 80858D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80858D0C  3C 80 80 43 */	lis r4, g_env_light@ha
/* 80858D10  38 84 CA 54 */	addi r4, r4, g_env_light@l
/* 80858D14  88 84 12 CC */	lbz r4, 0x12cc(r4)
/* 80858D18  4B FF F5 35 */	bl daKytag06_Ganon_wether_proc__FP13kytag06_classUc
/* 80858D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80858D20  7C 08 03 A6 */	mtlr r0
/* 80858D24  38 21 00 10 */	addi r1, r1, 0x10
/* 80858D28  4E 80 00 20 */	blr 
