lbl_801F2B5C:
/* 801F2B5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F2B60  7C 08 02 A6 */	mflr r0
/* 801F2B64  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F2B68  39 61 00 20 */	addi r11, r1, 0x20
/* 801F2B6C  48 16 F6 71 */	bl _savegpr_29
/* 801F2B70  7C 7D 1B 78 */	mr r29, r3
/* 801F2B74  48 00 1D B5 */	bl headerTxtChangeAnm__12dMenu_save_cFv
/* 801F2B78  7C 7E 1B 78 */	mr r30, r3
/* 801F2B7C  7F A3 EB 78 */	mr r3, r29
/* 801F2B80  48 00 2D 49 */	bl yesnoMenuMoveAnm__12dMenu_save_cFv
/* 801F2B84  7C 7F 1B 78 */	mr r31, r3
/* 801F2B88  7F A3 EB 78 */	mr r3, r29
/* 801F2B8C  48 00 36 ED */	bl ketteiTxtDispAnm__12dMenu_save_cFv
/* 801F2B90  80 9D 00 30 */	lwz r4, 0x30(r29)
/* 801F2B94  88 84 00 3D */	lbz r4, 0x3d(r4)
/* 801F2B98  30 04 FF FF */	addic r0, r4, -1
/* 801F2B9C  7C 00 21 10 */	subfe r0, r0, r4
/* 801F2BA0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801F2BA4  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F2BA8  28 00 00 01 */	cmplwi r0, 1
/* 801F2BAC  40 82 00 34 */	bne lbl_801F2BE0
/* 801F2BB0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F2BB4  28 00 00 01 */	cmplwi r0, 1
/* 801F2BB8  40 82 00 28 */	bne lbl_801F2BE0
/* 801F2BBC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F2BC0  28 00 00 01 */	cmplwi r0, 1
/* 801F2BC4  40 82 00 1C */	bne lbl_801F2BE0
/* 801F2BC8  28 04 00 01 */	cmplwi r4, 1
/* 801F2BCC  40 82 00 14 */	bne lbl_801F2BE0
/* 801F2BD0  7F A3 EB 78 */	mr r3, r29
/* 801F2BD4  48 00 31 B1 */	bl yesnoCursorShow__12dMenu_save_cFv
/* 801F2BD8  38 00 00 22 */	li r0, 0x22
/* 801F2BDC  98 1D 01 B2 */	stb r0, 0x1b2(r29)
lbl_801F2BE0:
/* 801F2BE0  39 61 00 20 */	addi r11, r1, 0x20
/* 801F2BE4  48 16 F6 45 */	bl _restgpr_29
/* 801F2BE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F2BEC  7C 08 03 A6 */	mtlr r0
/* 801F2BF0  38 21 00 20 */	addi r1, r1, 0x20
/* 801F2BF4  4E 80 00 20 */	blr 
