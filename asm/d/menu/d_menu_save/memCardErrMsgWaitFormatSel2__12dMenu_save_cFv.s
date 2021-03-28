lbl_801F219C:
/* 801F219C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F21A0  7C 08 02 A6 */	mflr r0
/* 801F21A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F21A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F21AC  7C 7F 1B 78 */	mr r31, r3
/* 801F21B0  38 80 00 01 */	li r4, 1
/* 801F21B4  38 A0 00 00 */	li r5, 0
/* 801F21B8  48 00 2C 91 */	bl errYesNoSelect__12dMenu_save_cFUcUc
/* 801F21BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F21C0  41 82 00 7C */	beq lbl_801F223C
/* 801F21C4  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F21C8  28 00 00 00 */	cmplwi r0, 0
/* 801F21CC  41 82 00 40 */	beq lbl_801F220C
/* 801F21D0  38 00 00 01 */	li r0, 1
/* 801F21D4  98 1F 01 BF */	stb r0, 0x1bf(r31)
/* 801F21D8  7F E3 FB 78 */	mr r3, r31
/* 801F21DC  38 80 03 B8 */	li r4, 0x3b8
/* 801F21E0  48 00 2E E5 */	bl errorTxtSet__12dMenu_save_cFUs
/* 801F21E4  38 00 00 00 */	li r0, 0
/* 801F21E8  98 1F 00 9E */	stb r0, 0x9e(r31)
/* 801F21EC  7F E3 FB 78 */	mr r3, r31
/* 801F21F0  38 80 0B C1 */	li r4, 0xbc1
/* 801F21F4  38 A0 0B B7 */	li r5, 0xbb7
/* 801F21F8  38 C0 00 00 */	li r6, 0
/* 801F21FC  48 00 35 49 */	bl yesnoMenuMoveAnmInitSet__12dMenu_save_cFiiUc
/* 801F2200  38 00 00 14 */	li r0, 0x14
/* 801F2204  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F2208  48 00 00 34 */	b lbl_801F223C
lbl_801F220C:
/* 801F220C  7F E3 FB 78 */	mr r3, r31
/* 801F2210  38 80 03 BC */	li r4, 0x3bc
/* 801F2214  48 00 2E B1 */	bl errorTxtSet__12dMenu_save_cFUs
/* 801F2218  38 00 00 00 */	li r0, 0
/* 801F221C  98 1F 00 9E */	stb r0, 0x9e(r31)
/* 801F2220  7F E3 FB 78 */	mr r3, r31
/* 801F2224  38 80 0B C1 */	li r4, 0xbc1
/* 801F2228  38 A0 0B B7 */	li r5, 0xbb7
/* 801F222C  38 C0 00 00 */	li r6, 0
/* 801F2230  48 00 35 15 */	bl yesnoMenuMoveAnmInitSet__12dMenu_save_cFiiUc
/* 801F2234  38 00 00 12 */	li r0, 0x12
/* 801F2238  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F223C:
/* 801F223C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F2240  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F2244  7C 08 03 A6 */	mtlr r0
/* 801F2248  38 21 00 10 */	addi r1, r1, 0x10
/* 801F224C  4E 80 00 20 */	blr 
