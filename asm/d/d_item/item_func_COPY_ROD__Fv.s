lbl_80098864:
/* 80098864  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098868  7C 08 02 A6 */	mflr r0
/* 8009886C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098870  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098874  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098878  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009887C  38 80 00 08 */	li r4, 8
/* 80098880  38 A0 00 46 */	li r5, 0x46
/* 80098884  4B F9 A7 35 */	bl setItem__17dSv_player_item_cFiUc
/* 80098888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009888C  7C 08 03 A6 */	mtlr r0
/* 80098890  38 21 00 10 */	addi r1, r1, 0x10
/* 80098894  4E 80 00 20 */	blr 
