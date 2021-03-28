lbl_8095B48C:
/* 8095B48C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8095B490  7C 08 02 A6 */	mflr r0
/* 8095B494  90 01 00 24 */	stw r0, 0x24(r1)
/* 8095B498  39 61 00 20 */	addi r11, r1, 0x20
/* 8095B49C  4B A0 6D 3C */	b _savegpr_28
/* 8095B4A0  7C 7C 1B 78 */	mr r28, r3
/* 8095B4A4  7C 9D 23 78 */	mr r29, r4
/* 8095B4A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8095B4AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8095B4B0  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 8095B4B4  7F C3 F3 78 */	mr r3, r30
/* 8095B4B8  3C A0 80 96 */	lis r5, stringBase0@ha
/* 8095B4BC  38 A5 D9 10 */	addi r5, r5, stringBase0@l
/* 8095B4C0  38 A5 00 7B */	addi r5, r5, 0x7b
/* 8095B4C4  38 C0 00 03 */	li r6, 3
/* 8095B4C8  4B 6E CC 24 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8095B4CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8095B4D0  40 82 00 0C */	bne lbl_8095B4DC
/* 8095B4D4  38 60 00 00 */	li r3, 0
/* 8095B4D8  48 00 00 9C */	b lbl_8095B574
lbl_8095B4DC:
/* 8095B4DC  7F C3 F3 78 */	mr r3, r30
/* 8095B4E0  7F A4 EB 78 */	mr r4, r29
/* 8095B4E4  4B 6E C8 68 */	b getIsAddvance__16dEvent_manager_cFi
/* 8095B4E8  2C 03 00 00 */	cmpwi r3, 0
/* 8095B4EC  41 82 00 84 */	beq lbl_8095B570
/* 8095B4F0  80 1F 00 00 */	lwz r0, 0(r31)
/* 8095B4F4  2C 00 00 01 */	cmpwi r0, 1
/* 8095B4F8  41 82 00 48 */	beq lbl_8095B540
/* 8095B4FC  40 80 00 10 */	bge lbl_8095B50C
/* 8095B500  2C 00 00 00 */	cmpwi r0, 0
/* 8095B504  40 80 00 10 */	bge lbl_8095B514
/* 8095B508  48 00 00 68 */	b lbl_8095B570
lbl_8095B50C:
/* 8095B50C  2C 00 00 03 */	cmpwi r0, 3
/* 8095B510  40 80 00 60 */	bge lbl_8095B570
lbl_8095B514:
/* 8095B514  A8 1C 0F 5A */	lha r0, 0xf5a(r28)
/* 8095B518  2C 00 00 00 */	cmpwi r0, 0
/* 8095B51C  40 82 00 10 */	bne lbl_8095B52C
/* 8095B520  80 1C 0C B0 */	lwz r0, 0xcb0(r28)
/* 8095B524  28 00 00 00 */	cmplwi r0, 0
/* 8095B528  41 82 00 10 */	beq lbl_8095B538
lbl_8095B52C:
/* 8095B52C  38 00 00 00 */	li r0, 0
/* 8095B530  B0 1C 0F 5A */	sth r0, 0xf5a(r28)
/* 8095B534  90 1C 0C B0 */	stw r0, 0xcb0(r28)
lbl_8095B538:
/* 8095B538  38 60 00 01 */	li r3, 1
/* 8095B53C  48 00 00 38 */	b lbl_8095B574
lbl_8095B540:
/* 8095B540  A8 1C 0F 5A */	lha r0, 0xf5a(r28)
/* 8095B544  2C 00 00 02 */	cmpwi r0, 2
/* 8095B548  40 82 00 10 */	bne lbl_8095B558
/* 8095B54C  80 1C 0C B0 */	lwz r0, 0xcb0(r28)
/* 8095B550  28 00 00 00 */	cmplwi r0, 0
/* 8095B554  41 82 00 14 */	beq lbl_8095B568
lbl_8095B558:
/* 8095B558  38 00 00 02 */	li r0, 2
/* 8095B55C  B0 1C 0F 5A */	sth r0, 0xf5a(r28)
/* 8095B560  38 00 00 00 */	li r0, 0
/* 8095B564  90 1C 0C B0 */	stw r0, 0xcb0(r28)
lbl_8095B568:
/* 8095B568  38 60 00 01 */	li r3, 1
/* 8095B56C  48 00 00 08 */	b lbl_8095B574
lbl_8095B570:
/* 8095B570  38 60 00 00 */	li r3, 0
lbl_8095B574:
/* 8095B574  39 61 00 20 */	addi r11, r1, 0x20
/* 8095B578  4B A0 6C AC */	b _restgpr_28
/* 8095B57C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8095B580  7C 08 03 A6 */	mtlr r0
/* 8095B584  38 21 00 20 */	addi r1, r1, 0x20
/* 8095B588  4E 80 00 20 */	blr 
