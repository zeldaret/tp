lbl_800DCE6C:
/* 800DCE6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DCE70  7C 08 02 A6 */	mflr r0
/* 800DCE74  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DCE78  39 61 00 20 */	addi r11, r1, 0x20
/* 800DCE7C  48 28 53 5D */	bl _savegpr_28
/* 800DCE80  7C 7C 1B 78 */	mr r28, r3
/* 800DCE84  3B E0 00 01 */	li r31, 1
/* 800DCE88  7F FE FB 78 */	mr r30, r31
/* 800DCE8C  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 800DCE90  28 00 00 16 */	cmplwi r0, 0x16
/* 800DCE94  41 82 00 38 */	beq lbl_800DCECC
/* 800DCE98  3B A0 00 00 */	li r29, 0
/* 800DCE9C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 800DCEA0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 800DCEA4  88 04 00 15 */	lbz r0, 0x15(r4)
/* 800DCEA8  28 00 00 FF */	cmplwi r0, 0xff
/* 800DCEAC  41 82 00 14 */	beq lbl_800DCEC0
/* 800DCEB0  48 01 00 55 */	bl checkHorseLieAnime__9daAlink_cCFv
/* 800DCEB4  2C 03 00 00 */	cmpwi r3, 0
/* 800DCEB8  41 82 00 08 */	beq lbl_800DCEC0
/* 800DCEBC  3B A0 00 01 */	li r29, 1
lbl_800DCEC0:
/* 800DCEC0  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800DCEC4  40 82 00 08 */	bne lbl_800DCECC
/* 800DCEC8  3B C0 00 00 */	li r30, 0
lbl_800DCECC:
/* 800DCECC  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800DCED0  40 82 00 18 */	bne lbl_800DCEE8
/* 800DCED4  7F 83 E3 78 */	mr r3, r28
/* 800DCED8  4B FF FF 19 */	bl checkUpperGuardAnime__9daAlink_cCFv
/* 800DCEDC  2C 03 00 00 */	cmpwi r3, 0
/* 800DCEE0  40 82 00 08 */	bne lbl_800DCEE8
/* 800DCEE4  3B E0 00 00 */	li r31, 0
lbl_800DCEE8:
/* 800DCEE8  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800DCEEC  39 61 00 20 */	addi r11, r1, 0x20
/* 800DCEF0  48 28 53 35 */	bl _restgpr_28
/* 800DCEF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DCEF8  7C 08 03 A6 */	mtlr r0
/* 800DCEFC  38 21 00 20 */	addi r1, r1, 0x20
/* 800DCF00  4E 80 00 20 */	blr 
