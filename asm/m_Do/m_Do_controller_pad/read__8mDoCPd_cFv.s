lbl_80007A94:
/* 80007A94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80007A98  7C 08 02 A6 */	mflr r0
/* 80007A9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80007AA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80007AA4  48 35 A7 39 */	bl _savegpr_29
/* 80007AA8  48 2D 8E 3D */	bl read__10JUTGamePadFv
/* 80007AAC  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80007AB0  80 03 00 00 */	lwz r0, 0(r3)
/* 80007AB4  2C 00 00 00 */	cmpwi r0, 0
/* 80007AB8  40 82 00 4C */	bne lbl_80007B04
/* 80007ABC  80 03 00 08 */	lwz r0, 8(r3)
/* 80007AC0  2C 00 00 00 */	cmpwi r0, 0
/* 80007AC4  41 82 00 40 */	beq lbl_80007B04
/* 80007AC8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80007ACC  48 2D 9E D1 */	bl getGamePad__10JUTGamePadFi
/* 80007AD0  38 80 00 00 */	li r4, 0
/* 80007AD4  A8 03 00 7C */	lha r0, 0x7c(r3)
/* 80007AD8  2C 00 FF FF */	cmpwi r0, -1
/* 80007ADC  41 82 00 14 */	beq lbl_80007AF0
/* 80007AE0  88 03 00 98 */	lbz r0, 0x98(r3)
/* 80007AE4  28 00 00 00 */	cmplwi r0, 0
/* 80007AE8  41 82 00 08 */	beq lbl_80007AF0
/* 80007AEC  38 80 00 01 */	li r4, 1
lbl_80007AF0:
/* 80007AF0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80007AF4  40 82 00 10 */	bne lbl_80007B04
/* 80007AF8  38 00 00 00 */	li r0, 0
/* 80007AFC  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80007B00  90 03 00 08 */	stw r0, 8(r3)
lbl_80007B04:
/* 80007B04  3C 60 80 3E */	lis r3, m_gamePad__8mDoCPd_c@ha
/* 80007B08  38 03 D2 D8 */	addi r0, r3, m_gamePad__8mDoCPd_c@l
/* 80007B0C  7C 1F 03 78 */	mr r31, r0
/* 80007B10  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 80007B14  38 03 D2 E8 */	addi r0, r3, m_cpadInfo__8mDoCPd_c@l
/* 80007B18  7C 1E 03 78 */	mr r30, r0
/* 80007B1C  3B A0 00 00 */	li r29, 0
lbl_80007B20:
/* 80007B20  80 9F 00 00 */	lwz r4, 0(r31)
/* 80007B24  28 04 00 00 */	cmplwi r4, 0
/* 80007B28  40 82 00 18 */	bne lbl_80007B40
/* 80007B2C  7F C3 F3 78 */	mr r3, r30
/* 80007B30  38 80 00 00 */	li r4, 0
/* 80007B34  38 A0 00 40 */	li r5, 0x40
/* 80007B38  48 26 7E 25 */	bl cLib_memSet__FPviUl
/* 80007B3C  48 00 00 14 */	b lbl_80007B50
lbl_80007B40:
/* 80007B40  7F C3 F3 78 */	mr r3, r30
/* 80007B44  48 00 00 39 */	bl convert__8mDoCPd_cFP27interface_of_controller_padP10JUTGamePad
/* 80007B48  7F C3 F3 78 */	mr r3, r30
/* 80007B4C  48 00 01 85 */	bl LRlockCheck__8mDoCPd_cFP27interface_of_controller_pad
lbl_80007B50:
/* 80007B50  3B BD 00 01 */	addi r29, r29, 1
/* 80007B54  28 1D 00 04 */	cmplwi r29, 4
/* 80007B58  3B FF 00 04 */	addi r31, r31, 4
/* 80007B5C  3B DE 00 40 */	addi r30, r30, 0x40
/* 80007B60  41 80 FF C0 */	blt lbl_80007B20
/* 80007B64  39 61 00 20 */	addi r11, r1, 0x20
/* 80007B68  48 35 A6 C1 */	bl _restgpr_29
/* 80007B6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80007B70  7C 08 03 A6 */	mtlr r0
/* 80007B74  38 21 00 20 */	addi r1, r1, 0x20
/* 80007B78  4E 80 00 20 */	blr 
