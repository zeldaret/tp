lbl_80241E00:
/* 80241E00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80241E04  7C 08 02 A6 */	mflr r0
/* 80241E08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80241E0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80241E10  93 C1 00 08 */	stw r30, 8(r1)
/* 80241E14  7C 7E 1B 78 */	mr r30, r3
/* 80241E18  48 00 1A 21 */	bl calcMain__14dMsgScrnHowl_cFv
/* 80241E1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80241E20  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80241E24  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 80241E28  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80241E2C  81 8C 02 98 */	lwz r12, 0x298(r12)
/* 80241E30  7D 89 03 A6 */	mtctr r12
/* 80241E34  4E 80 04 21 */	bctrl 
/* 80241E38  88 03 00 8C */	lbz r0, 0x8c(r3)
/* 80241E3C  28 00 00 1E */	cmplwi r0, 0x1e
/* 80241E40  41 82 00 14 */	beq lbl_80241E54
/* 80241E44  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 80241E48  80 03 2E 0C */	lwz r0, 0x2e0c(r3)
/* 80241E4C  28 00 00 00 */	cmplwi r0, 0
/* 80241E50  40 82 00 14 */	bne lbl_80241E64
lbl_80241E54:
/* 80241E54  38 00 00 02 */	li r0, 2
/* 80241E58  98 1E 27 98 */	stb r0, 0x2798(r30)
/* 80241E5C  7F C3 F3 78 */	mr r3, r30
/* 80241E60  48 00 02 75 */	bl resetLine__14dMsgScrnHowl_cFv
lbl_80241E64:
/* 80241E64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80241E68  83 C1 00 08 */	lwz r30, 8(r1)
/* 80241E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80241E70  7C 08 03 A6 */	mtlr r0
/* 80241E74  38 21 00 10 */	addi r1, r1, 0x10
/* 80241E78  4E 80 00 20 */	blr 
