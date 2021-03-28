lbl_80098450:
/* 80098450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098454  7C 08 02 A6 */	mflr r0
/* 80098458  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009845C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098460  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098464  38 63 01 00 */	addi r3, r3, 0x100
/* 80098468  38 80 00 01 */	li r4, 1
/* 8009846C  38 A0 00 00 */	li r5, 0
/* 80098470  4B F9 BD 79 */	bl setCollect__20dSv_player_collect_cFiUc
/* 80098474  38 60 00 28 */	li r3, 0x28
/* 80098478  4B F9 6A 49 */	bl dComIfGs_setSelectEquipSword__FUc
/* 8009847C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098480  7C 08 03 A6 */	mtlr r0
/* 80098484  38 21 00 10 */	addi r1, r1, 0x10
/* 80098488  4E 80 00 20 */	blr 
