lbl_8018FBF8:
/* 8018FBF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018FBFC  7C 08 02 A6 */	mflr r0
/* 8018FC00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018FC04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018FC08  93 C1 00 08 */	stw r30, 8(r1)
/* 8018FC0C  7C 7E 1B 78 */	mr r30, r3
/* 8018FC10  4B FF 92 C1 */	bl yesnoSelectMoveAnm__14dFile_select_cFv
/* 8018FC14  7C 7F 1B 78 */	mr r31, r3
/* 8018FC18  7F C3 F3 78 */	mr r3, r30
/* 8018FC1C  88 9E 02 69 */	lbz r4, 0x269(r30)
/* 8018FC20  4B FF DF AD */	bl yesnoWakuAlpahAnm__14dFile_select_cFUc
/* 8018FC24  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8018FC28  28 00 00 01 */	cmplwi r0, 1
/* 8018FC2C  40 82 00 20 */	bne lbl_8018FC4C
/* 8018FC30  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018FC34  28 00 00 01 */	cmplwi r0, 1
/* 8018FC38  40 82 00 14 */	bne lbl_8018FC4C
/* 8018FC3C  7F C3 F3 78 */	mr r3, r30
/* 8018FC40  4B FF 94 ED */	bl yesnoCursorShow__14dFile_select_cFv
/* 8018FC44  88 1E 02 72 */	lbz r0, 0x272(r30)
/* 8018FC48  98 1E 02 71 */	stb r0, 0x271(r30)
lbl_8018FC4C:
/* 8018FC4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018FC50  83 C1 00 08 */	lwz r30, 8(r1)
/* 8018FC54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018FC58  7C 08 03 A6 */	mtlr r0
/* 8018FC5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8018FC60  4E 80 00 20 */	blr 
