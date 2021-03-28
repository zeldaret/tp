lbl_8024BE4C:
/* 8024BE4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024BE50  7C 08 02 A6 */	mflr r0
/* 8024BE54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024BE58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024BE5C  93 C1 00 08 */	stw r30, 8(r1)
/* 8024BE60  A0 64 00 04 */	lhz r3, 4(r4)
/* 8024BE64  2C 03 00 01 */	cmpwi r3, 1
/* 8024BE68  41 80 00 18 */	blt lbl_8024BE80
/* 8024BE6C  2C 03 00 04 */	cmpwi r3, 4
/* 8024BE70  40 80 00 10 */	bge lbl_8024BE80
/* 8024BE74  38 03 FF FF */	addi r0, r3, -1
/* 8024BE78  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 8024BE7C  48 00 00 48 */	b lbl_8024BEC4
lbl_8024BE80:
/* 8024BE80  2C 03 00 04 */	cmpwi r3, 4
/* 8024BE84  40 82 00 20 */	bne lbl_8024BEA4
/* 8024BE88  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8024BE8C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8024BE90  88 03 00 DC */	lbz r0, 0xdc(r3)
/* 8024BE94  28 00 00 FF */	cmplwi r0, 0xff
/* 8024BE98  41 82 00 2C */	beq lbl_8024BEC4
/* 8024BE9C  7C 1E 03 78 */	mr r30, r0
/* 8024BEA0  48 00 00 24 */	b lbl_8024BEC4
lbl_8024BEA4:
/* 8024BEA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024BEA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024BEAC  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8024BEB0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FBFF@ha */
/* 8024BEB4  38 84 FB FF */	addi r4, r4, 0xFBFF /* 0x0000FBFF@l */
/* 8024BEB8  4B DE 8B 4D */	bl getEventReg__11dSv_event_cCFUs
/* 8024BEBC  38 03 FF FF */	addi r0, r3, -1
/* 8024BEC0  54 1E 06 3E */	clrlwi r30, r0, 0x18
lbl_8024BEC4:
/* 8024BEC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024BEC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024BECC  38 63 00 EC */	addi r3, r3, 0xec
/* 8024BED0  7F C4 F3 78 */	mr r4, r30
/* 8024BED4  4B DE 80 A9 */	bl getBombNum__24dSv_player_item_record_cCFUc
/* 8024BED8  7C 7F 1B 78 */	mr r31, r3
/* 8024BEDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024BEE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024BEE4  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024BEE8  38 1E 00 0F */	addi r0, r30, 0xf
/* 8024BEEC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8024BEF0  38 A0 00 00 */	li r5, 0
/* 8024BEF4  4B DE 71 3D */	bl getItem__17dSv_player_item_cCFib
/* 8024BEF8  7C 64 1B 78 */	mr r4, r3
/* 8024BEFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024BF00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024BF04  38 63 00 F8 */	addi r3, r3, 0xf8
/* 8024BF08  4B DE 81 F1 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 8024BF0C  57 E4 06 3F */	clrlwi. r4, r31, 0x18
/* 8024BF10  40 82 00 0C */	bne lbl_8024BF1C
/* 8024BF14  38 00 00 00 */	li r0, 0
/* 8024BF18  48 00 00 1C */	b lbl_8024BF34
lbl_8024BF1C:
/* 8024BF1C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8024BF20  7C 04 00 40 */	cmplw r4, r0
/* 8024BF24  41 80 00 0C */	blt lbl_8024BF30
/* 8024BF28  38 00 00 02 */	li r0, 2
/* 8024BF2C  48 00 00 08 */	b lbl_8024BF34
lbl_8024BF30:
/* 8024BF30  38 00 00 01 */	li r0, 1
lbl_8024BF34:
/* 8024BF34  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8024BF38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024BF3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8024BF40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024BF44  7C 08 03 A6 */	mtlr r0
/* 8024BF48  38 21 00 10 */	addi r1, r1, 0x10
/* 8024BF4C  4E 80 00 20 */	blr 
