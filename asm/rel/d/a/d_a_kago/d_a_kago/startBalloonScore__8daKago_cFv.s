lbl_8084AFB0:
/* 8084AFB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8084AFB4  7C 08 02 A6 */	mflr r0
/* 8084AFB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8084AFBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8084AFC0  7C 7F 1B 78 */	mr r31, r3
/* 8084AFC4  88 03 06 E7 */	lbz r0, 0x6e7(r3)
/* 8084AFC8  28 00 00 00 */	cmplwi r0, 0
/* 8084AFCC  41 82 00 44 */	beq lbl_8084B010
/* 8084AFD0  88 1F 06 E9 */	lbz r0, 0x6e9(r31)
/* 8084AFD4  28 00 00 01 */	cmplwi r0, 1
/* 8084AFD8  40 82 00 38 */	bne lbl_8084B010
/* 8084AFDC  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 8084AFE0  38 81 00 08 */	addi r4, r1, 8
/* 8084AFE4  4B 7C E9 D8 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8084AFE8  80 61 00 08 */	lwz r3, 8(r1)
/* 8084AFEC  28 03 00 00 */	cmplwi r3, 0
/* 8084AFF0  41 82 00 20 */	beq lbl_8084B010
/* 8084AFF4  38 00 00 01 */	li r0, 1
/* 8084AFF8  98 03 07 46 */	stb r0, 0x746(r3)
/* 8084AFFC  80 61 00 08 */	lwz r3, 8(r1)
/* 8084B000  38 80 00 00 */	li r4, 0
/* 8084B004  4B E0 8F BC */	b setScoreCount__13daBalloon2D_cFUl
/* 8084B008  38 00 00 02 */	li r0, 2
/* 8084B00C  98 1F 06 E9 */	stb r0, 0x6e9(r31)
lbl_8084B010:
/* 8084B010  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8084B014  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8084B018  7C 08 03 A6 */	mtlr r0
/* 8084B01C  38 21 00 20 */	addi r1, r1, 0x20
/* 8084B020  4E 80 00 20 */	blr 
