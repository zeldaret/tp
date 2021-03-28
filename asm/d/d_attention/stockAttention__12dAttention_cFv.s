lbl_800718A4:
/* 800718A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800718A8  7C 08 02 A6 */	mflr r0
/* 800718AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800718B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800718B4  93 C1 00 08 */	stw r30, 8(r1)
/* 800718B8  7C 7E 1B 78 */	mr r30, r3
/* 800718BC  38 80 00 00 */	li r4, 0
/* 800718C0  48 00 1C 7D */	bl LockonTarget__12dAttention_cFl
/* 800718C4  7C 7F 1B 78 */	mr r31, r3
/* 800718C8  7F C3 F3 78 */	mr r3, r30
/* 800718CC  38 80 FF FF */	li r4, -1
/* 800718D0  4B FF F9 71 */	bl initList__12dAttention_cFUl
/* 800718D4  7F C3 F3 78 */	mr r3, r30
/* 800718D8  4B FF FA F5 */	bl makeList__12dAttention_cFv
/* 800718DC  2C 03 00 00 */	cmpwi r3, 0
/* 800718E0  41 82 00 0C */	beq lbl_800718EC
/* 800718E4  7F C3 F3 78 */	mr r3, r30
/* 800718E8  4B FF FD D1 */	bl sortList__12dAttention_cFv
lbl_800718EC:
/* 800718EC  38 7E 03 38 */	addi r3, r30, 0x338
/* 800718F0  48 00 1F 75 */	bl getActor__10dAttList_cFv
/* 800718F4  7C 1F 18 40 */	cmplw r31, r3
/* 800718F8  41 82 00 44 */	beq lbl_8007193C
/* 800718FC  28 1F 00 00 */	cmplwi r31, 0
/* 80071900  41 82 00 24 */	beq lbl_80071924
/* 80071904  38 7E 03 38 */	addi r3, r30, 0x338
/* 80071908  48 00 1F 5D */	bl getActor__10dAttList_cFv
/* 8007190C  28 03 00 00 */	cmplwi r3, 0
/* 80071910  41 82 00 20 */	beq lbl_80071930
/* 80071914  80 1E 03 34 */	lwz r0, 0x334(r30)
/* 80071918  60 00 00 02 */	ori r0, r0, 2
/* 8007191C  90 1E 03 34 */	stw r0, 0x334(r30)
/* 80071920  48 00 00 10 */	b lbl_80071930
lbl_80071924:
/* 80071924  80 1E 03 34 */	lwz r0, 0x334(r30)
/* 80071928  60 00 00 01 */	ori r0, r0, 1
/* 8007192C  90 1E 03 34 */	stw r0, 0x334(r30)
lbl_80071930:
/* 80071930  80 1E 03 34 */	lwz r0, 0x334(r30)
/* 80071934  60 00 00 04 */	ori r0, r0, 4
/* 80071938  90 1E 03 34 */	stw r0, 0x334(r30)
lbl_8007193C:
/* 8007193C  7F C3 F3 78 */	mr r3, r30
/* 80071940  38 80 00 00 */	li r4, 0
/* 80071944  48 00 1B F9 */	bl LockonTarget__12dAttention_cFl
/* 80071948  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007194C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80071950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80071954  7C 08 03 A6 */	mtlr r0
/* 80071958  38 21 00 10 */	addi r1, r1, 0x10
/* 8007195C  4E 80 00 20 */	blr 
