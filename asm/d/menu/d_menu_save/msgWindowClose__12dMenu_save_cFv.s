lbl_801F4DAC:
/* 801F4DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F4DB0  7C 08 02 A6 */	mflr r0
/* 801F4DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F4DB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F4DBC  93 C1 00 08 */	stw r30, 8(r1)
/* 801F4DC0  7C 7E 1B 78 */	mr r30, r3
/* 801F4DC4  48 00 11 C1 */	bl errorMoveAnm__12dMenu_save_cFv
/* 801F4DC8  7C 7F 1B 78 */	mr r31, r3
/* 801F4DCC  38 60 00 01 */	li r3, 1
/* 801F4DD0  88 1E 00 9C */	lbz r0, 0x9c(r30)
/* 801F4DD4  28 00 00 00 */	cmplwi r0, 0
/* 801F4DD8  41 82 00 0C */	beq lbl_801F4DE4
/* 801F4DDC  7F C3 F3 78 */	mr r3, r30
/* 801F4DE0  48 00 0A E9 */	bl yesnoMenuMoveAnm__12dMenu_save_cFv
lbl_801F4DE4:
/* 801F4DE4  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F4DE8  28 00 00 01 */	cmplwi r0, 1
/* 801F4DEC  40 82 00 44 */	bne lbl_801F4E30
/* 801F4DF0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F4DF4  28 00 00 01 */	cmplwi r0, 1
/* 801F4DF8  40 82 00 38 */	bne lbl_801F4E30
/* 801F4DFC  38 00 00 00 */	li r0, 0
/* 801F4E00  98 1E 00 9E */	stb r0, 0x9e(r30)
/* 801F4E04  38 7E 01 C4 */	addi r3, r30, 0x1c4
/* 801F4E08  48 16 D2 11 */	bl __ptmf_test
/* 801F4E0C  2C 03 00 00 */	cmpwi r3, 0
/* 801F4E10  41 82 00 18 */	beq lbl_801F4E28
/* 801F4E14  7F C3 F3 78 */	mr r3, r30
/* 801F4E18  39 9E 01 C4 */	addi r12, r30, 0x1c4
/* 801F4E1C  48 16 D2 69 */	bl __ptmf_scall
/* 801F4E20  60 00 00 00 */	nop 
/* 801F4E24  48 00 00 0C */	b lbl_801F4E30
lbl_801F4E28:
/* 801F4E28  88 1E 01 B4 */	lbz r0, 0x1b4(r30)
/* 801F4E2C  98 1E 01 B2 */	stb r0, 0x1b2(r30)
lbl_801F4E30:
/* 801F4E30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F4E34  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F4E38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F4E3C  7C 08 03 A6 */	mtlr r0
/* 801F4E40  38 21 00 10 */	addi r1, r1, 0x10
/* 801F4E44  4E 80 00 20 */	blr 
