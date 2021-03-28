lbl_801ADD5C:
/* 801ADD5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ADD60  7C 08 02 A6 */	mflr r0
/* 801ADD64  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ADD68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801ADD6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801ADD70  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 801ADD74  3C 80 80 39 */	lis r4, d_d_kyeff__stringBase0@ha
/* 801ADD78  38 84 4F 38 */	addi r4, r4, d_d_kyeff__stringBase0@l
/* 801ADD7C  48 1B AC 19 */	bl strcmp
/* 801ADD80  2C 03 00 00 */	cmpwi r3, 0
/* 801ADD84  41 82 00 08 */	beq lbl_801ADD8C
/* 801ADD88  4B EA A5 71 */	bl dKyw_wether_move__Fv
lbl_801ADD8C:
/* 801ADD8C  4B EA C3 2D */	bl dKyw_wether_move_draw__Fv
/* 801ADD90  4B FE FF BD */	bl dKy_FiveSenses_fullthrottle_dark__Fv
/* 801ADD94  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 801ADD98  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l
/* 801ADD9C  48 11 89 15 */	bl framework__10Z2EnvSeMgrFv
/* 801ADDA0  38 60 00 01 */	li r3, 1
/* 801ADDA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ADDA8  7C 08 03 A6 */	mtlr r0
/* 801ADDAC  38 21 00 10 */	addi r1, r1, 0x10
/* 801ADDB0  4E 80 00 20 */	blr 
