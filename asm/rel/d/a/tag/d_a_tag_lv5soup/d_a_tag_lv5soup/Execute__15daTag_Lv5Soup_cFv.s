lbl_80D5ADF4:
/* 80D5ADF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5ADF8  7C 08 02 A6 */	mflr r0
/* 80D5ADFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5AE00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5AE04  48 00 00 A1 */	bl isAreaCheck__15daTag_Lv5Soup_cFv
/* 80D5AE08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D5AE0C  41 82 00 78 */	beq lbl_80D5AE84
/* 80D5AE10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5AE14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5AE18  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 80D5AE1C  7F E3 FB 78 */	mr r3, r31
/* 80D5AE20  38 80 00 20 */	li r4, 0x20
/* 80D5AE24  4B 2D 9B 98 */	b isEventBit__11dSv_event_cCFUs
/* 80D5AE28  2C 03 00 00 */	cmpwi r3, 0
/* 80D5AE2C  41 82 00 24 */	beq lbl_80D5AE50
/* 80D5AE30  7F E3 FB 78 */	mr r3, r31
/* 80D5AE34  38 80 00 02 */	li r4, 2
/* 80D5AE38  4B 2D 9B 84 */	b isEventBit__11dSv_event_cCFUs
/* 80D5AE3C  2C 03 00 00 */	cmpwi r3, 0
/* 80D5AE40  40 82 00 10 */	bne lbl_80D5AE50
/* 80D5AE44  7F E3 FB 78 */	mr r3, r31
/* 80D5AE48  38 80 00 02 */	li r4, 2
/* 80D5AE4C  4B 2D 9B 40 */	b onEventBit__11dSv_event_cFUs
lbl_80D5AE50:
/* 80D5AE50  7F E3 FB 78 */	mr r3, r31
/* 80D5AE54  38 80 00 10 */	li r4, 0x10
/* 80D5AE58  4B 2D 9B 64 */	b isEventBit__11dSv_event_cCFUs
/* 80D5AE5C  2C 03 00 00 */	cmpwi r3, 0
/* 80D5AE60  41 82 00 24 */	beq lbl_80D5AE84
/* 80D5AE64  7F E3 FB 78 */	mr r3, r31
/* 80D5AE68  38 80 00 01 */	li r4, 1
/* 80D5AE6C  4B 2D 9B 50 */	b isEventBit__11dSv_event_cCFUs
/* 80D5AE70  2C 03 00 00 */	cmpwi r3, 0
/* 80D5AE74  40 82 00 10 */	bne lbl_80D5AE84
/* 80D5AE78  7F E3 FB 78 */	mr r3, r31
/* 80D5AE7C  38 80 00 01 */	li r4, 1
/* 80D5AE80  4B 2D 9B 0C */	b onEventBit__11dSv_event_cFUs
lbl_80D5AE84:
/* 80D5AE84  38 60 00 01 */	li r3, 1
/* 80D5AE88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5AE8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5AE90  7C 08 03 A6 */	mtlr r0
/* 80D5AE94  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5AE98  4E 80 00 20 */	blr 
