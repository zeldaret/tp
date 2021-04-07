lbl_80032FB8:
/* 80032FB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80032FBC  7C 08 02 A6 */	mflr r0
/* 80032FC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80032FC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80032FC8  48 32 F2 15 */	bl _savegpr_29
/* 80032FCC  7C 9D 23 78 */	mr r29, r4
/* 80032FD0  2C 1D 00 18 */	cmpwi r29, 0x18
/* 80032FD4  40 80 00 0C */	bge lbl_80032FE0
/* 80032FD8  7C A3 E9 AE */	stbx r5, r3, r29
/* 80032FDC  48 00 03 1D */	bl setLineUpItem__17dSv_player_item_cFv
lbl_80032FE0:
/* 80032FE0  3B C0 00 00 */	li r30, 0
/* 80032FE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80032FE8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80032FEC:
/* 80032FEC  7F E3 FB 78 */	mr r3, r31
/* 80032FF0  7F C4 F3 78 */	mr r4, r30
/* 80032FF4  4B FF FA 69 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 80032FF8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80032FFC  7C 1D 00 00 */	cmpw r29, r0
/* 80033000  40 82 00 0C */	bne lbl_8003300C
/* 80033004  7F C3 F3 78 */	mr r3, r30
/* 80033008  4B FF AD ED */	bl dComIfGp_setSelectItem__Fi
lbl_8003300C:
/* 8003300C  3B DE 00 01 */	addi r30, r30, 1
/* 80033010  2C 1E 00 03 */	cmpwi r30, 3
/* 80033014  41 80 FF D8 */	blt lbl_80032FEC
/* 80033018  39 61 00 20 */	addi r11, r1, 0x20
/* 8003301C  48 32 F2 0D */	bl _restgpr_29
/* 80033020  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80033024  7C 08 03 A6 */	mtlr r0
/* 80033028  38 21 00 20 */	addi r1, r1, 0x20
/* 8003302C  4E 80 00 20 */	blr 
