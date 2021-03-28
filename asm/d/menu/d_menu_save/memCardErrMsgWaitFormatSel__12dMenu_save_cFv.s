lbl_801F2000:
/* 801F2000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F2004  7C 08 02 A6 */	mflr r0
/* 801F2008  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F200C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F2010  7C 7F 1B 78 */	mr r31, r3
/* 801F2014  38 80 00 01 */	li r4, 1
/* 801F2018  38 A0 00 00 */	li r5, 0
/* 801F201C  48 00 2E 2D */	bl errYesNoSelect__12dMenu_save_cFUcUc
/* 801F2020  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F2024  41 82 00 74 */	beq lbl_801F2098
/* 801F2028  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F202C  28 00 00 00 */	cmplwi r0, 0
/* 801F2030  41 82 00 38 */	beq lbl_801F2068
/* 801F2034  7F E3 FB 78 */	mr r3, r31
/* 801F2038  38 80 03 B9 */	li r4, 0x3b9
/* 801F203C  48 00 30 89 */	bl errorTxtSet__12dMenu_save_cFUs
/* 801F2040  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F2044  98 1F 01 B7 */	stb r0, 0x1b7(r31)
/* 801F2048  38 00 00 00 */	li r0, 0
/* 801F204C  98 1F 01 B6 */	stb r0, 0x1b6(r31)
/* 801F2050  7F E3 FB 78 */	mr r3, r31
/* 801F2054  38 80 00 01 */	li r4, 1
/* 801F2058  48 00 24 B9 */	bl yesnoSelectAnmSet__12dMenu_save_cFUc
/* 801F205C  38 00 00 11 */	li r0, 0x11
/* 801F2060  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F2064  48 00 00 34 */	b lbl_801F2098
lbl_801F2068:
/* 801F2068  7F E3 FB 78 */	mr r3, r31
/* 801F206C  38 80 03 BC */	li r4, 0x3bc
/* 801F2070  48 00 30 55 */	bl errorTxtSet__12dMenu_save_cFUs
/* 801F2074  38 00 00 00 */	li r0, 0
/* 801F2078  98 1F 00 9E */	stb r0, 0x9e(r31)
/* 801F207C  7F E3 FB 78 */	mr r3, r31
/* 801F2080  38 80 0B C1 */	li r4, 0xbc1
/* 801F2084  38 A0 0B B7 */	li r5, 0xbb7
/* 801F2088  38 C0 00 00 */	li r6, 0
/* 801F208C  48 00 36 B9 */	bl yesnoMenuMoveAnmInitSet__12dMenu_save_cFiiUc
/* 801F2090  38 00 00 12 */	li r0, 0x12
/* 801F2094  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F2098:
/* 801F2098  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F209C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F20A0  7C 08 03 A6 */	mtlr r0
/* 801F20A4  38 21 00 10 */	addi r1, r1, 0x10
/* 801F20A8  4E 80 00 20 */	blr 
