lbl_8002F6B0:
/* 8002F6B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002F6B4  7C 08 02 A6 */	mflr r0
/* 8002F6B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002F6BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8002F6C0  48 33 2B 1D */	bl _savegpr_29
/* 8002F6C4  7C 7D 1B 78 */	mr r29, r3
/* 8002F6C8  7C 9E 23 78 */	mr r30, r4
/* 8002F6CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002F6D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002F6D4  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 8002F6D8  7F E3 FB 78 */	mr r3, r31
/* 8002F6DC  4B FF D4 E1 */	bl getTimerMode__14dComIfG_play_cFv
/* 8002F6E0  7C 1D 18 00 */	cmpw r29, r3
/* 8002F6E4  40 82 00 2C */	bne lbl_8002F710
/* 8002F6E8  7F E3 FB 78 */	mr r3, r31
/* 8002F6EC  4B FF D4 F1 */	bl getTimerPtr__14dComIfG_play_cFv
/* 8002F6F0  28 03 00 00 */	cmplwi r3, 0
/* 8002F6F4  41 82 00 14 */	beq lbl_8002F708
/* 8002F6F8  7F C4 F3 78 */	mr r4, r30
/* 8002F6FC  48 22 E2 25 */	bl end__8dTimer_cFi
/* 8002F700  38 60 00 01 */	li r3, 1
/* 8002F704  48 00 00 10 */	b lbl_8002F714
lbl_8002F708:
/* 8002F708  38 60 00 00 */	li r3, 0
/* 8002F70C  48 00 00 08 */	b lbl_8002F714
lbl_8002F710:
/* 8002F710  38 60 00 00 */	li r3, 0
lbl_8002F714:
/* 8002F714  39 61 00 20 */	addi r11, r1, 0x20
/* 8002F718  48 33 2B 11 */	bl _restgpr_29
/* 8002F71C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002F720  7C 08 03 A6 */	mtlr r0
/* 8002F724  38 21 00 20 */	addi r1, r1, 0x20
/* 8002F728  4E 80 00 20 */	blr 
