lbl_8053BE84:
/* 8053BE84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053BE88  7C 08 02 A6 */	mflr r0
/* 8053BE8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053BE90  39 61 00 20 */	addi r11, r1, 0x20
/* 8053BE94  4B E2 63 40 */	b _savegpr_27
/* 8053BE98  7C 7B 1B 78 */	mr r27, r3
/* 8053BE9C  7C 9C 23 78 */	mr r28, r4
/* 8053BEA0  3B C0 00 00 */	li r30, 0
/* 8053BEA4  3B A0 FF FF */	li r29, -1
/* 8053BEA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8053BEAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8053BEB0  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8053BEB4  7F E3 FB 78 */	mr r3, r31
/* 8053BEB8  3C A0 80 54 */	lis r5, struct_8053E908+0x0@ha
/* 8053BEBC  38 A5 E9 08 */	addi r5, r5, struct_8053E908+0x0@l
/* 8053BEC0  38 A5 01 F3 */	addi r5, r5, 0x1f3
/* 8053BEC4  38 C0 00 03 */	li r6, 3
/* 8053BEC8  4B B0 C2 24 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8053BECC  28 03 00 00 */	cmplwi r3, 0
/* 8053BED0  41 82 00 08 */	beq lbl_8053BED8
/* 8053BED4  83 A3 00 00 */	lwz r29, 0(r3)
lbl_8053BED8:
/* 8053BED8  7F E3 FB 78 */	mr r3, r31
/* 8053BEDC  7F 84 E3 78 */	mr r4, r28
/* 8053BEE0  4B B0 BE 6C */	b getIsAddvance__16dEvent_manager_cFi
/* 8053BEE4  2C 03 00 00 */	cmpwi r3, 0
/* 8053BEE8  41 82 00 30 */	beq lbl_8053BF18
/* 8053BEEC  2C 1D 00 01 */	cmpwi r29, 1
/* 8053BEF0  41 82 00 20 */	beq lbl_8053BF10
/* 8053BEF4  40 80 00 24 */	bge lbl_8053BF18
/* 8053BEF8  2C 1D 00 00 */	cmpwi r29, 0
/* 8053BEFC  40 80 00 08 */	bge lbl_8053BF04
/* 8053BF00  48 00 00 18 */	b lbl_8053BF18
lbl_8053BF04:
/* 8053BF04  38 00 00 01 */	li r0, 1
/* 8053BF08  98 1B 0E 25 */	stb r0, 0xe25(r27)
/* 8053BF0C  48 00 00 0C */	b lbl_8053BF18
lbl_8053BF10:
/* 8053BF10  38 00 00 00 */	li r0, 0
/* 8053BF14  98 1B 0E 25 */	stb r0, 0xe25(r27)
lbl_8053BF18:
/* 8053BF18  2C 1D 00 02 */	cmpwi r29, 2
/* 8053BF1C  40 80 00 28 */	bge lbl_8053BF44
/* 8053BF20  2C 1D 00 00 */	cmpwi r29, 0
/* 8053BF24  40 80 00 08 */	bge lbl_8053BF2C
/* 8053BF28  48 00 00 1C */	b lbl_8053BF44
lbl_8053BF2C:
/* 8053BF2C  7F 63 DB 78 */	mr r3, r27
/* 8053BF30  81 9B 0E 3C */	lwz r12, 0xe3c(r27)
/* 8053BF34  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8053BF38  7D 89 03 A6 */	mtctr r12
/* 8053BF3C  4E 80 04 21 */	bctrl 
/* 8053BF40  3B C0 00 01 */	li r30, 1
lbl_8053BF44:
/* 8053BF44  7F C3 F3 78 */	mr r3, r30
/* 8053BF48  39 61 00 20 */	addi r11, r1, 0x20
/* 8053BF4C  4B E2 62 D4 */	b _restgpr_27
/* 8053BF50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053BF54  7C 08 03 A6 */	mtlr r0
/* 8053BF58  38 21 00 20 */	addi r1, r1, 0x20
/* 8053BF5C  4E 80 00 20 */	blr 
