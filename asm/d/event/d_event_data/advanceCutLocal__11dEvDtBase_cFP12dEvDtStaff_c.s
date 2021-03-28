lbl_800462FC:
/* 800462FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80046300  7C 08 02 A6 */	mflr r0
/* 80046304  90 01 00 24 */	stw r0, 0x24(r1)
/* 80046308  39 61 00 20 */	addi r11, r1, 0x20
/* 8004630C  48 31 BE CD */	bl _savegpr_28
/* 80046310  7C 7C 1B 78 */	mr r28, r3
/* 80046314  7C 9D 23 78 */	mr r29, r4
/* 80046318  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8004631C  80 04 00 38 */	lwz r0, 0x38(r4)
/* 80046320  1C 00 00 50 */	mulli r0, r0, 0x50
/* 80046324  7F C3 02 14 */	add r30, r3, r0
/* 80046328  80 9E 00 34 */	lwz r4, 0x34(r30)
/* 8004632C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80046330  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80046334  38 7F 51 B4 */	addi r3, r31, 0x51b4
/* 80046338  4B FF DA 29 */	bl flagCheck__11dEvDtFlag_cFi
/* 8004633C  2C 03 00 00 */	cmpwi r3, 0
/* 80046340  41 82 00 78 */	beq lbl_800463B8
/* 80046344  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 80046348  2C 00 FF FF */	cmpwi r0, -1
/* 8004634C  41 82 00 6C */	beq lbl_800463B8
/* 80046350  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 80046354  1C 00 00 50 */	mulli r0, r0, 0x50
/* 80046358  7C 63 02 14 */	add r3, r3, r0
/* 8004635C  4B FF FD 4D */	bl startCheck__10dEvDtCut_cFv
/* 80046360  2C 03 00 00 */	cmpwi r3, 0
/* 80046364  41 82 00 54 */	beq lbl_800463B8
/* 80046368  40 80 00 10 */	bge lbl_80046378
/* 8004636C  2C 03 FF FF */	cmpwi r3, -1
/* 80046370  40 80 00 14 */	bge lbl_80046384
/* 80046374  48 00 00 44 */	b lbl_800463B8
lbl_80046378:
/* 80046378  2C 03 00 02 */	cmpwi r3, 2
/* 8004637C  40 80 00 3C */	bge lbl_800463B8
/* 80046380  48 00 00 18 */	b lbl_80046398
lbl_80046384:
/* 80046384  7F A3 EB 78 */	mr r3, r29
/* 80046388  80 9E 00 3C */	lwz r4, 0x3c(r30)
/* 8004638C  4B FF DD E5 */	bl advanceCut__12dEvDtStaff_cFi
/* 80046390  38 60 00 01 */	li r3, 1
/* 80046394  48 00 00 30 */	b lbl_800463C4
lbl_80046398:
/* 80046398  80 9E 00 34 */	lwz r4, 0x34(r30)
/* 8004639C  38 7F 51 B4 */	addi r3, r31, 0x51b4
/* 800463A0  4B FF DA 29 */	bl flagSet__11dEvDtFlag_cFi
/* 800463A4  7F A3 EB 78 */	mr r3, r29
/* 800463A8  80 9E 00 3C */	lwz r4, 0x3c(r30)
/* 800463AC  4B FF DD C5 */	bl advanceCut__12dEvDtStaff_cFi
/* 800463B0  38 60 00 01 */	li r3, 1
/* 800463B4  48 00 00 10 */	b lbl_800463C4
lbl_800463B8:
/* 800463B8  38 00 00 00 */	li r0, 0
/* 800463BC  98 1D 00 40 */	stb r0, 0x40(r29)
/* 800463C0  38 60 00 00 */	li r3, 0
lbl_800463C4:
/* 800463C4  39 61 00 20 */	addi r11, r1, 0x20
/* 800463C8  48 31 BE 5D */	bl _restgpr_28
/* 800463CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800463D0  7C 08 03 A6 */	mtlr r0
/* 800463D4  38 21 00 20 */	addi r1, r1, 0x20
/* 800463D8  4E 80 00 20 */	blr 
