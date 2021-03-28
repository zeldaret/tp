lbl_801F4D10:
/* 801F4D10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F4D14  7C 08 02 A6 */	mflr r0
/* 801F4D18  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F4D1C  39 61 00 20 */	addi r11, r1, 0x20
/* 801F4D20  48 16 D4 BD */	bl _savegpr_29
/* 801F4D24  7C 7D 1B 78 */	mr r29, r3
/* 801F4D28  48 00 12 5D */	bl errorMoveAnm__12dMenu_save_cFv
/* 801F4D2C  7C 7F 1B 78 */	mr r31, r3
/* 801F4D30  3B C0 00 01 */	li r30, 1
/* 801F4D34  88 1D 00 9E */	lbz r0, 0x9e(r29)
/* 801F4D38  28 00 00 00 */	cmplwi r0, 0
/* 801F4D3C  41 82 00 10 */	beq lbl_801F4D4C
/* 801F4D40  7F A3 EB 78 */	mr r3, r29
/* 801F4D44  48 00 0B 85 */	bl yesnoMenuMoveAnm__12dMenu_save_cFv
/* 801F4D48  7C 7E 1B 78 */	mr r30, r3
lbl_801F4D4C:
/* 801F4D4C  7F A3 EB 78 */	mr r3, r29
/* 801F4D50  48 00 15 29 */	bl ketteiTxtDispAnm__12dMenu_save_cFv
/* 801F4D54  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F4D58  28 00 00 01 */	cmplwi r0, 1
/* 801F4D5C  40 82 00 38 */	bne lbl_801F4D94
/* 801F4D60  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F4D64  28 00 00 01 */	cmplwi r0, 1
/* 801F4D68  40 82 00 2C */	bne lbl_801F4D94
/* 801F4D6C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F4D70  28 00 00 01 */	cmplwi r0, 1
/* 801F4D74  40 82 00 20 */	bne lbl_801F4D94
/* 801F4D78  88 1D 00 9E */	lbz r0, 0x9e(r29)
/* 801F4D7C  28 00 00 00 */	cmplwi r0, 0
/* 801F4D80  41 82 00 0C */	beq lbl_801F4D8C
/* 801F4D84  7F A3 EB 78 */	mr r3, r29
/* 801F4D88  48 00 0F FD */	bl yesnoCursorShow__12dMenu_save_cFv
lbl_801F4D8C:
/* 801F4D8C  88 1D 01 B4 */	lbz r0, 0x1b4(r29)
/* 801F4D90  98 1D 01 B2 */	stb r0, 0x1b2(r29)
lbl_801F4D94:
/* 801F4D94  39 61 00 20 */	addi r11, r1, 0x20
/* 801F4D98  48 16 D4 91 */	bl _restgpr_29
/* 801F4D9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F4DA0  7C 08 03 A6 */	mtlr r0
/* 801F4DA4  38 21 00 20 */	addi r1, r1, 0x20
/* 801F4DA8  4E 80 00 20 */	blr 
