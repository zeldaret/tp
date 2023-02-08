lbl_801E4E9C:
/* 801E4E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E4EA0  7C 08 02 A6 */	mflr r0
/* 801E4EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E4EA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E4EAC  93 C1 00 08 */	stw r30, 8(r1)
/* 801E4EB0  7C 7E 1B 78 */	mr r30, r3
/* 801E4EB4  48 00 37 21 */	bl yesnoSelectMoveAnm__14dMenu_Option_cFv
/* 801E4EB8  7C 7F 1B 78 */	mr r31, r3
/* 801E4EBC  7F C3 F3 78 */	mr r3, r30
/* 801E4EC0  88 9E 03 FA */	lbz r4, 0x3fa(r30)
/* 801E4EC4  48 00 3E 39 */	bl yesnoWakuAlpahAnm__14dMenu_Option_cFUc
/* 801E4EC8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801E4ECC  28 00 00 01 */	cmplwi r0, 1
/* 801E4ED0  40 82 00 20 */	bne lbl_801E4EF0
/* 801E4ED4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801E4ED8  28 00 00 01 */	cmplwi r0, 1
/* 801E4EDC  40 82 00 14 */	bne lbl_801E4EF0
/* 801E4EE0  7F C3 F3 78 */	mr r3, r30
/* 801E4EE4  48 00 39 A5 */	bl yesnoCursorShow__14dMenu_Option_cFv
/* 801E4EE8  38 00 00 05 */	li r0, 5
/* 801E4EEC  98 1E 03 EF */	stb r0, 0x3ef(r30)
lbl_801E4EF0:
/* 801E4EF0  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 801E4EF4  4B FA D0 25 */	bl _move__15dFile_warning_cFv
/* 801E4EF8  7F C3 F3 78 */	mr r3, r30
/* 801E4EFC  4B FF EB F1 */	bl setAnimation__14dMenu_Option_cFv
/* 801E4F00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E4F04  83 C1 00 08 */	lwz r30, 8(r1)
/* 801E4F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E4F0C  7C 08 03 A6 */	mtlr r0
/* 801E4F10  38 21 00 10 */	addi r1, r1, 0x10
/* 801E4F14  4E 80 00 20 */	blr 
