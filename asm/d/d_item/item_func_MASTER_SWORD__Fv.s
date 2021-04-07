lbl_8009848C:
/* 8009848C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098490  7C 08 02 A6 */	mflr r0
/* 80098494  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098498  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009849C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800984A0  38 63 01 00 */	addi r3, r3, 0x100
/* 800984A4  38 80 00 01 */	li r4, 1
/* 800984A8  38 A0 00 01 */	li r5, 1
/* 800984AC  4B F9 BD 3D */	bl setCollect__20dSv_player_collect_cFiUc
/* 800984B0  38 60 00 29 */	li r3, 0x29
/* 800984B4  4B F9 6A 0D */	bl dComIfGs_setSelectEquipSword__FUc
/* 800984B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800984BC  7C 08 03 A6 */	mtlr r0
/* 800984C0  38 21 00 10 */	addi r1, r1, 0x10
/* 800984C4  4E 80 00 20 */	blr 
