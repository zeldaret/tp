lbl_8014C5E0:
/* 8014C5E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014C5E4  7C 08 02 A6 */	mflr r0
/* 8014C5E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014C5EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8014C5F0  48 21 5B E9 */	bl _savegpr_28
/* 8014C5F4  7C 7C 1B 78 */	mr r28, r3
/* 8014C5F8  3B C0 00 00 */	li r30, 0
/* 8014C5FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8014C600  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8014C604  88 03 5E 24 */	lbz r0, 0x5e24(r3)
/* 8014C608  28 00 00 1C */	cmplwi r0, 0x1c
/* 8014C60C  40 82 00 D8 */	bne lbl_8014C6E4
/* 8014C610  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8014C614  7F 84 E3 78 */	mr r4, r28
/* 8014C618  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8014C61C  81 8C 01 D8 */	lwz r12, 0x1d8(r12)
/* 8014C620  7D 89 03 A6 */	mtctr r12
/* 8014C624  4E 80 04 21 */	bctrl 
/* 8014C628  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8014C62C  41 82 00 B8 */	beq lbl_8014C6E4
/* 8014C630  3B A0 00 00 */	li r29, 0
/* 8014C634  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8014C638  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8014C63C  3B E3 56 B8 */	addi r31, r3, 0x56b8
/* 8014C640  48 00 00 44 */	b lbl_8014C684
lbl_8014C644:
/* 8014C644  7F E3 FB 78 */	mr r3, r31
/* 8014C648  7F A4 EB 78 */	mr r4, r29
/* 8014C64C  4B F2 70 E9 */	bl ActionTarget__12dAttention_cFl
/* 8014C650  7C 03 E0 40 */	cmplw r3, r28
/* 8014C654  40 82 00 2C */	bne lbl_8014C680
/* 8014C658  7F E3 FB 78 */	mr r3, r31
/* 8014C65C  4B F2 42 25 */	bl getActionBtnB__12dAttention_cFv
/* 8014C660  28 03 00 00 */	cmplwi r3, 0
/* 8014C664  41 82 00 1C */	beq lbl_8014C680
/* 8014C668  7F E3 FB 78 */	mr r3, r31
/* 8014C66C  4B F2 42 15 */	bl getActionBtnB__12dAttention_cFv
/* 8014C670  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8014C674  28 00 00 03 */	cmplwi r0, 3
/* 8014C678  40 82 00 08 */	bne lbl_8014C680
/* 8014C67C  3B C0 00 01 */	li r30, 1
lbl_8014C680:
/* 8014C680  3B BD 00 01 */	addi r29, r29, 1
lbl_8014C684:
/* 8014C684  80 1F 04 30 */	lwz r0, 0x430(r31)
/* 8014C688  7C 1D 00 00 */	cmpw r29, r0
/* 8014C68C  41 80 FF B8 */	blt lbl_8014C644
/* 8014C690  3B A0 00 00 */	li r29, 0
/* 8014C694  48 00 00 44 */	b lbl_8014C6D8
lbl_8014C698:
/* 8014C698  7F E3 FB 78 */	mr r3, r31
/* 8014C69C  7F A4 EB 78 */	mr r4, r29
/* 8014C6A0  4B F2 6E 9D */	bl LockonTarget__12dAttention_cFl
/* 8014C6A4  7C 03 E0 40 */	cmplw r3, r28
/* 8014C6A8  40 82 00 2C */	bne lbl_8014C6D4
/* 8014C6AC  7F E3 FB 78 */	mr r3, r31
/* 8014C6B0  4B F2 41 D1 */	bl getActionBtnB__12dAttention_cFv
/* 8014C6B4  28 03 00 00 */	cmplwi r3, 0
/* 8014C6B8  41 82 00 1C */	beq lbl_8014C6D4
/* 8014C6BC  7F E3 FB 78 */	mr r3, r31
/* 8014C6C0  4B F2 41 C1 */	bl getActionBtnB__12dAttention_cFv
/* 8014C6C4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8014C6C8  28 00 00 01 */	cmplwi r0, 1
/* 8014C6CC  40 82 00 08 */	bne lbl_8014C6D4
/* 8014C6D0  3B C0 00 01 */	li r30, 1
lbl_8014C6D4:
/* 8014C6D4  3B BD 00 01 */	addi r29, r29, 1
lbl_8014C6D8:
/* 8014C6D8  80 1F 03 D8 */	lwz r0, 0x3d8(r31)
/* 8014C6DC  7C 1D 00 00 */	cmpw r29, r0
/* 8014C6E0  41 80 FF B8 */	blt lbl_8014C698
lbl_8014C6E4:
/* 8014C6E4  7F C3 F3 78 */	mr r3, r30
/* 8014C6E8  39 61 00 20 */	addi r11, r1, 0x20
/* 8014C6EC  48 21 5B 39 */	bl _restgpr_28
/* 8014C6F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014C6F4  7C 08 03 A6 */	mtlr r0
/* 8014C6F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8014C6FC  4E 80 00 20 */	blr 
