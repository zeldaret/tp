lbl_8003E510:
/* 8003E510  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003E514  7C 08 02 A6 */	mflr r0
/* 8003E518  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003E51C  39 61 00 20 */	addi r11, r1, 0x20
/* 8003E520  48 32 3C BD */	bl _savegpr_29
/* 8003E524  7C 7D 1B 78 */	mr r29, r3
/* 8003E528  3B C0 00 00 */	li r30, 0
lbl_8003E52C:
/* 8003E52C  7F A3 EB 78 */	mr r3, r29
/* 8003E530  4B FF FD 8D */	bl getData__22dMenuFmapIconPointer_cFv
/* 8003E534  7C 7F 1B 78 */	mr r31, r3
/* 8003E538  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8003E53C  40 82 00 10 */	bne lbl_8003E54C
/* 8003E540  7F A3 EB 78 */	mr r3, r29
/* 8003E544  4B FF FF 4D */	bl nextData__22dMenuFmapIconPointer_cFv
/* 8003E548  7C 7E 1B 78 */	mr r30, r3
lbl_8003E54C:
/* 8003E54C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8003E550  40 82 00 0C */	bne lbl_8003E55C
/* 8003E554  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8003E558  41 82 FF D4 */	beq lbl_8003E52C
lbl_8003E55C:
/* 8003E55C  7F C3 F3 78 */	mr r3, r30
/* 8003E560  39 61 00 20 */	addi r11, r1, 0x20
/* 8003E564  48 32 3C C5 */	bl _restgpr_29
/* 8003E568  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003E56C  7C 08 03 A6 */	mtlr r0
/* 8003E570  38 21 00 20 */	addi r1, r1, 0x20
/* 8003E574  4E 80 00 20 */	blr 
