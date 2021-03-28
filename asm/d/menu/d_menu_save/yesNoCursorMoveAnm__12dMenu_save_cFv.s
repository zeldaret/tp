lbl_801F46B4:
/* 801F46B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F46B8  7C 08 02 A6 */	mflr r0
/* 801F46BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F46C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F46C4  93 C1 00 08 */	stw r30, 8(r1)
/* 801F46C8  7C 7E 1B 78 */	mr r30, r3
/* 801F46CC  38 80 00 00 */	li r4, 0
/* 801F46D0  48 00 14 15 */	bl yesnoSelectMoveAnm__12dMenu_save_cFUc
/* 801F46D4  7C 7F 1B 78 */	mr r31, r3
/* 801F46D8  7F C3 F3 78 */	mr r3, r30
/* 801F46DC  88 9E 01 B7 */	lbz r4, 0x1b7(r30)
/* 801F46E0  48 00 1F 75 */	bl yesnoWakuAlpahAnm__12dMenu_save_cFUc
/* 801F46E4  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F46E8  28 00 00 01 */	cmplwi r0, 1
/* 801F46EC  40 82 00 20 */	bne lbl_801F470C
/* 801F46F0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F46F4  28 00 00 01 */	cmplwi r0, 1
/* 801F46F8  40 82 00 14 */	bne lbl_801F470C
/* 801F46FC  7F C3 F3 78 */	mr r3, r30
/* 801F4700  48 00 16 85 */	bl yesnoCursorShow__12dMenu_save_cFv
/* 801F4704  38 00 00 34 */	li r0, 0x34
/* 801F4708  98 1E 01 B2 */	stb r0, 0x1b2(r30)
lbl_801F470C:
/* 801F470C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F4710  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F4714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F4718  7C 08 03 A6 */	mtlr r0
/* 801F471C  38 21 00 10 */	addi r1, r1, 0x10
/* 801F4720  4E 80 00 20 */	blr 
