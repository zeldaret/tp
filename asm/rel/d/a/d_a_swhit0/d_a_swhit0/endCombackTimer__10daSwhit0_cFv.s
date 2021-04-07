lbl_80486788:
/* 80486788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048678C  7C 08 02 A6 */	mflr r0
/* 80486790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80486794  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80486798  7C 7F 1B 78 */	mr r31, r3
/* 8048679C  A8 03 07 50 */	lha r0, 0x750(r3)
/* 804867A0  2C 00 00 00 */	cmpwi r0, 0
/* 804867A4  40 81 00 44 */	ble lbl_804867E8
/* 804867A8  4B FF F8 5D */	bl getSwNo2__10daSwhit0_cFv
/* 804867AC  7C 64 1B 78 */	mr r4, r3
/* 804867B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804867B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804867B8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 804867BC  7C 05 07 74 */	extsb r5, r0
/* 804867C0  4B BA EB A1 */	bl isSwitch__10dSv_info_cCFii
/* 804867C4  2C 03 00 00 */	cmpwi r3, 0
/* 804867C8  40 82 00 20 */	bne lbl_804867E8
/* 804867CC  A8 7F 07 50 */	lha r3, 0x750(r31)
/* 804867D0  38 03 FF FF */	addi r0, r3, -1
/* 804867D4  B0 1F 07 50 */	sth r0, 0x750(r31)
/* 804867D8  7C 00 07 35 */	extsh. r0, r0
/* 804867DC  40 82 00 0C */	bne lbl_804867E8
/* 804867E0  38 60 00 01 */	li r3, 1
/* 804867E4  48 00 00 08 */	b lbl_804867EC
lbl_804867E8:
/* 804867E8  38 60 00 00 */	li r3, 0
lbl_804867EC:
/* 804867EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804867F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804867F4  7C 08 03 A6 */	mtlr r0
/* 804867F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804867FC  4E 80 00 20 */	blr 
