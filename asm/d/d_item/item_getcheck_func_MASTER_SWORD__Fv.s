lbl_80099B5C:
/* 80099B5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099B60  7C 08 02 A6 */	mflr r0
/* 80099B64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099B68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80099B6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80099B70  38 63 01 00 */	addi r3, r3, 0x100
/* 80099B74  38 80 00 01 */	li r4, 1
/* 80099B78  38 A0 00 01 */	li r5, 1
/* 80099B7C  4B F9 A6 8D */	bl isCollect__20dSv_player_collect_cCFiUc
/* 80099B80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099B84  7C 08 03 A6 */	mtlr r0
/* 80099B88  38 21 00 10 */	addi r1, r1, 0x10
/* 80099B8C  4E 80 00 20 */	blr 
