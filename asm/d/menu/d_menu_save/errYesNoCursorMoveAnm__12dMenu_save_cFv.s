lbl_801F5054:
/* 801F5054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F5058  7C 08 02 A6 */	mflr r0
/* 801F505C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F5060  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F5064  93 C1 00 08 */	stw r30, 8(r1)
/* 801F5068  7C 7E 1B 78 */	mr r30, r3
/* 801F506C  88 83 21 95 */	lbz r4, 0x2195(r3)
/* 801F5070  48 00 0A 75 */	bl yesnoSelectMoveAnm__12dMenu_save_cFUc
/* 801F5074  7C 7F 1B 78 */	mr r31, r3
/* 801F5078  7F C3 F3 78 */	mr r3, r30
/* 801F507C  88 9E 01 B7 */	lbz r4, 0x1b7(r30)
/* 801F5080  48 00 15 D5 */	bl yesnoWakuAlpahAnm__12dMenu_save_cFUc
/* 801F5084  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F5088  28 00 00 01 */	cmplwi r0, 1
/* 801F508C  40 82 00 20 */	bne lbl_801F50AC
/* 801F5090  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F5094  28 00 00 01 */	cmplwi r0, 1
/* 801F5098  40 82 00 14 */	bne lbl_801F50AC
/* 801F509C  7F C3 F3 78 */	mr r3, r30
/* 801F50A0  48 00 0C E5 */	bl yesnoCursorShow__12dMenu_save_cFv
/* 801F50A4  88 1E 01 B3 */	lbz r0, 0x1b3(r30)
/* 801F50A8  98 1E 01 B2 */	stb r0, 0x1b2(r30)
lbl_801F50AC:
/* 801F50AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F50B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F50B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F50B8  7C 08 03 A6 */	mtlr r0
/* 801F50BC  38 21 00 10 */	addi r1, r1, 0x10
/* 801F50C0  4E 80 00 20 */	blr 
