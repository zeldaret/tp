lbl_80CC22A0:
/* 80CC22A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CC22A4  7C 08 02 A6 */	mflr r0
/* 80CC22A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC22AC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CC22B0  4B 69 FF 29 */	bl _savegpr_28
/* 80CC22B4  7C 7C 1B 78 */	mr r28, r3
/* 80CC22B8  7C 9D 23 78 */	mr r29, r4
/* 80CC22BC  3B C0 00 00 */	li r30, 0
/* 80CC22C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC22C4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80CC22C8:
/* 80CC22C8  A0 1C 05 CA */	lhz r0, 0x5ca(r28)
/* 80CC22CC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CC22D0  7C 9E 02 14 */	add r4, r30, r0
/* 80CC22D4  7C 1D F0 00 */	cmpw r29, r30
/* 80CC22D8  41 82 00 14 */	beq lbl_80CC22EC
/* 80CC22DC  7F E3 FB 78 */	mr r3, r31
/* 80CC22E0  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80CC22E4  7C 05 07 74 */	extsb r5, r0
/* 80CC22E8  4B 37 2F C9 */	bl offSwitch__10dSv_info_cFii
lbl_80CC22EC:
/* 80CC22EC  3B DE 00 01 */	addi r30, r30, 1
/* 80CC22F0  2C 1E 00 04 */	cmpwi r30, 4
/* 80CC22F4  41 80 FF D4 */	blt lbl_80CC22C8
/* 80CC22F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80CC22FC  4B 69 FF 29 */	bl _restgpr_28
/* 80CC2300  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CC2304  7C 08 03 A6 */	mtlr r0
/* 80CC2308  38 21 00 20 */	addi r1, r1, 0x20
/* 80CC230C  4E 80 00 20 */	blr 
