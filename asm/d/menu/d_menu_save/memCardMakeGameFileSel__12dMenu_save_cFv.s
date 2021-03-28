lbl_801F247C:
/* 801F247C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F2480  7C 08 02 A6 */	mflr r0
/* 801F2484  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F2488  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F248C  7C 7F 1B 78 */	mr r31, r3
/* 801F2490  38 80 00 01 */	li r4, 1
/* 801F2494  38 A0 00 00 */	li r5, 0
/* 801F2498  48 00 29 B1 */	bl errYesNoSelect__12dMenu_save_cFUcUc
/* 801F249C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F24A0  41 82 00 60 */	beq lbl_801F2500
/* 801F24A4  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F24A8  28 00 00 00 */	cmplwi r0, 0
/* 801F24AC  41 82 00 4C */	beq lbl_801F24F8
/* 801F24B0  38 00 00 01 */	li r0, 1
/* 801F24B4  98 1F 01 BF */	stb r0, 0x1bf(r31)
/* 801F24B8  7F E3 FB 78 */	mr r3, r31
/* 801F24BC  38 80 03 C5 */	li r4, 0x3c5
/* 801F24C0  48 00 2C 05 */	bl errorTxtSet__12dMenu_save_cFUs
/* 801F24C4  7F E3 FB 78 */	mr r3, r31
/* 801F24C8  38 80 00 00 */	li r4, 0
/* 801F24CC  48 00 3D 31 */	bl ketteiTxtDispAnmInit__12dMenu_save_cFUc
/* 801F24D0  38 00 00 00 */	li r0, 0
/* 801F24D4  98 1F 00 9E */	stb r0, 0x9e(r31)
/* 801F24D8  7F E3 FB 78 */	mr r3, r31
/* 801F24DC  38 80 0B C1 */	li r4, 0xbc1
/* 801F24E0  38 A0 0B B7 */	li r5, 0xbb7
/* 801F24E4  38 C0 00 00 */	li r6, 0
/* 801F24E8  48 00 32 5D */	bl yesnoMenuMoveAnmInitSet__12dMenu_save_cFiiUc
/* 801F24EC  38 00 00 19 */	li r0, 0x19
/* 801F24F0  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F24F4  48 00 00 0C */	b lbl_801F2500
lbl_801F24F8:
/* 801F24F8  7F E3 FB 78 */	mr r3, r31
/* 801F24FC  4B FF F6 3D */	bl closeSelect__12dMenu_save_cFv
lbl_801F2500:
/* 801F2500  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F2504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F2508  7C 08 03 A6 */	mtlr r0
/* 801F250C  38 21 00 10 */	addi r1, r1, 0x10
/* 801F2510  4E 80 00 20 */	blr 
