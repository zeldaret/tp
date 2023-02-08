lbl_801BF464:
/* 801BF464  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BF468  7C 08 02 A6 */	mflr r0
/* 801BF46C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BF470  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801BF474  7C 7F 1B 78 */	mr r31, r3
/* 801BF478  4B FF FF 99 */	bl isSync__12dMenu_Dmap_cFv
/* 801BF47C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801BF480  41 82 00 0C */	beq lbl_801BF48C
/* 801BF484  88 7F 01 85 */	lbz r3, 0x185(r31)
/* 801BF488  48 00 00 08 */	b lbl_801BF490
lbl_801BF48C:
/* 801BF48C  38 60 00 01 */	li r3, 1
lbl_801BF490:
/* 801BF490  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801BF494  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BF498  7C 08 03 A6 */	mtlr r0
/* 801BF49C  38 21 00 10 */	addi r1, r1, 0x10
/* 801BF4A0  4E 80 00 20 */	blr 
