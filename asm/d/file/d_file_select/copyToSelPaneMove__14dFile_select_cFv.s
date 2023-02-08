lbl_80188B54:
/* 80188B54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80188B58  7C 08 02 A6 */	mflr r0
/* 80188B5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80188B60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80188B64  93 C1 00 08 */	stw r30, 8(r1)
/* 80188B68  7C 7E 1B 78 */	mr r30, r3
/* 80188B6C  48 00 46 F1 */	bl headerTxtChangeAnm__14dFile_select_cFv
/* 80188B70  7C 7F 1B 78 */	mr r31, r3
/* 80188B74  7F C3 F3 78 */	mr r3, r30
/* 80188B78  48 00 01 C1 */	bl yesnoMenuMoveAnm__14dFile_select_cFv
/* 80188B7C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80188B80  28 00 00 01 */	cmplwi r0, 1
/* 80188B84  40 82 00 20 */	bne lbl_80188BA4
/* 80188B88  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80188B8C  28 00 00 01 */	cmplwi r0, 1
/* 80188B90  40 82 00 14 */	bne lbl_80188BA4
/* 80188B94  7F C3 F3 78 */	mr r3, r30
/* 80188B98  48 00 05 95 */	bl yesnoCursorShow__14dFile_select_cFv
/* 80188B9C  38 00 00 1A */	li r0, 0x1a
/* 80188BA0  98 1E 02 6F */	stb r0, 0x26f(r30)
lbl_80188BA4:
/* 80188BA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80188BA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80188BAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80188BB0  7C 08 03 A6 */	mtlr r0
/* 80188BB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80188BB8  4E 80 00 20 */	blr 
