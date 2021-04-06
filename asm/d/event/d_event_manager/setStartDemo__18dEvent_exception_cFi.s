lbl_800463F0:
/* 800463F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800463F4  7C 08 02 A6 */	mflr r0
/* 800463F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800463FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80046400  48 31 BD DD */	bl _savegpr_29
/* 80046404  7C 7D 1B 78 */	mr r29, r3
/* 80046408  7C 9E 23 78 */	mr r30, r4
/* 8004640C  8B ED 87 E4 */	lbz r31, struct_80450D64+0x0(r13)
/* 80046410  7F FF 07 74 */	extsb r31, r31
/* 80046414  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 80046418  7F E4 FB 78 */	mr r4, r31
/* 8004641C  4B FF D0 E5 */	bl searchMapEventData__14dEvt_control_cFUcl
/* 80046420  28 03 00 00 */	cmplwi r3, 0
/* 80046424  41 82 00 30 */	beq lbl_80046454
/* 80046428  88 83 00 1B */	lbz r4, 0x1b(r3)
/* 8004642C  28 04 00 FF */	cmplwi r4, 0xff
/* 80046430  41 82 00 24 */	beq lbl_80046454
/* 80046434  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80046438  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8004643C  7F E5 FB 78 */	mr r5, r31
/* 80046440  4B FE EF 21 */	bl isSwitch__10dSv_info_cCFii
/* 80046444  2C 03 00 00 */	cmpwi r3, 0
/* 80046448  41 82 00 0C */	beq lbl_80046454
/* 8004644C  38 60 00 FF */	li r3, 0xff
/* 80046450  48 00 00 18 */	b lbl_80046468
lbl_80046454:
/* 80046454  80 1D 00 00 */	lwz r0, 0(r29)
/* 80046458  7C 00 F0 00 */	cmpw r0, r30
/* 8004645C  41 82 00 08 */	beq lbl_80046464
/* 80046460  93 DD 00 00 */	stw r30, 0(r29)
lbl_80046464:
/* 80046464  7F C3 F3 78 */	mr r3, r30
lbl_80046468:
/* 80046468  39 61 00 20 */	addi r11, r1, 0x20
/* 8004646C  48 31 BD BD */	bl _restgpr_29
/* 80046470  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80046474  7C 08 03 A6 */	mtlr r0
/* 80046478  38 21 00 20 */	addi r1, r1, 0x20
/* 8004647C  4E 80 00 20 */	blr 
