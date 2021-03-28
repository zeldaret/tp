lbl_80099E30:
/* 80099E30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099E34  7C 08 02 A6 */	mflr r0
/* 80099E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099E3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099E40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80099E44  38 63 00 9C */	addi r3, r3, 0x9c
/* 80099E48  38 80 00 00 */	li r4, 0
/* 80099E4C  38 A0 00 01 */	li r5, 1
/* 80099E50  4B F9 91 E1 */	bl getItem__17dSv_player_item_cCFib
/* 80099E54  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80099E58  20 00 00 40 */	subfic r0, r0, 0x40
/* 80099E5C  7C 00 00 34 */	cntlzw r0, r0
/* 80099E60  54 03 D9 7E */	srwi r3, r0, 5
/* 80099E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099E68  7C 08 03 A6 */	mtlr r0
/* 80099E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80099E70  4E 80 00 20 */	blr 
