lbl_8002F52C:
/* 8002F52C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002F530  7C 08 02 A6 */	mflr r0
/* 8002F534  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002F538  39 61 00 20 */	addi r11, r1, 0x20
/* 8002F53C  48 33 2C A1 */	bl _savegpr_29
/* 8002F540  7C 7D 1B 78 */	mr r29, r3
/* 8002F544  7C 9E 23 78 */	mr r30, r4
/* 8002F548  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002F54C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002F550  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 8002F554  7F E3 FB 78 */	mr r3, r31
/* 8002F558  4B FF D6 65 */	bl getTimerMode__14dComIfG_play_cFv
/* 8002F55C  7C 1D 18 00 */	cmpw r29, r3
/* 8002F560  40 82 00 44 */	bne lbl_8002F5A4
/* 8002F564  7F E3 FB 78 */	mr r3, r31
/* 8002F568  4B FF D6 75 */	bl getTimerPtr__14dComIfG_play_cFv
/* 8002F56C  28 03 00 00 */	cmplwi r3, 0
/* 8002F570  41 82 00 2C */	beq lbl_8002F59C
/* 8002F574  7F C0 07 35 */	extsh. r0, r30
/* 8002F578  40 82 00 10 */	bne lbl_8002F588
/* 8002F57C  7F A4 EB 78 */	mr r4, r29
/* 8002F580  48 22 DF B9 */	bl start__8dTimer_cFi
/* 8002F584  48 00 00 10 */	b lbl_8002F594
lbl_8002F588:
/* 8002F588  7F A4 EB 78 */	mr r4, r29
/* 8002F58C  7F C5 F3 78 */	mr r5, r30
/* 8002F590  48 22 E0 89 */	bl start__8dTimer_cFis
lbl_8002F594:
/* 8002F594  38 60 00 01 */	li r3, 1
/* 8002F598  48 00 00 10 */	b lbl_8002F5A8
lbl_8002F59C:
/* 8002F59C  38 60 00 00 */	li r3, 0
/* 8002F5A0  48 00 00 08 */	b lbl_8002F5A8
lbl_8002F5A4:
/* 8002F5A4  38 60 00 00 */	li r3, 0
lbl_8002F5A8:
/* 8002F5A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8002F5AC  48 33 2C 7D */	bl _restgpr_29
/* 8002F5B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002F5B4  7C 08 03 A6 */	mtlr r0
/* 8002F5B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8002F5BC  4E 80 00 20 */	blr 
