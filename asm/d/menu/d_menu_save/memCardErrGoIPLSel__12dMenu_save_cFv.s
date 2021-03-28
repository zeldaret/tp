lbl_801F1DD4:
/* 801F1DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F1DD8  7C 08 02 A6 */	mflr r0
/* 801F1DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F1DE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F1DE4  7C 7F 1B 78 */	mr r31, r3
/* 801F1DE8  38 80 00 01 */	li r4, 1
/* 801F1DEC  38 A0 00 00 */	li r5, 0
/* 801F1DF0  48 00 30 59 */	bl errYesNoSelect__12dMenu_save_cFUcUc
/* 801F1DF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F1DF8  41 82 00 4C */	beq lbl_801F1E44
/* 801F1DFC  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F1E00  28 00 00 00 */	cmplwi r0, 0
/* 801F1E04  41 82 00 38 */	beq lbl_801F1E3C
/* 801F1E08  7F E3 FB 78 */	mr r3, r31
/* 801F1E0C  38 80 03 BD */	li r4, 0x3bd
/* 801F1E10  48 00 32 B5 */	bl errorTxtSet__12dMenu_save_cFUs
/* 801F1E14  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F1E18  98 1F 01 B7 */	stb r0, 0x1b7(r31)
/* 801F1E1C  38 00 00 00 */	li r0, 0
/* 801F1E20  98 1F 01 B6 */	stb r0, 0x1b6(r31)
/* 801F1E24  7F E3 FB 78 */	mr r3, r31
/* 801F1E28  38 80 00 01 */	li r4, 1
/* 801F1E2C  48 00 26 E5 */	bl yesnoSelectAnmSet__12dMenu_save_cFUc
/* 801F1E30  38 00 00 0D */	li r0, 0xd
/* 801F1E34  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F1E38  48 00 00 0C */	b lbl_801F1E44
lbl_801F1E3C:
/* 801F1E3C  7F E3 FB 78 */	mr r3, r31
/* 801F1E40  4B FF FC F9 */	bl closeSelect__12dMenu_save_cFv
lbl_801F1E44:
/* 801F1E44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F1E48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F1E4C  7C 08 03 A6 */	mtlr r0
/* 801F1E50  38 21 00 10 */	addi r1, r1, 0x10
/* 801F1E54  4E 80 00 20 */	blr 
