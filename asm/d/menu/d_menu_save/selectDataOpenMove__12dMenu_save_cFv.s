lbl_801F3BE0:
/* 801F3BE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F3BE4  7C 08 02 A6 */	mflr r0
/* 801F3BE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F3BEC  39 61 00 20 */	addi r11, r1, 0x20
/* 801F3BF0  48 16 E5 E9 */	bl _savegpr_28
/* 801F3BF4  7C 7C 1B 78 */	mr r28, r3
/* 801F3BF8  48 00 0D 31 */	bl headerTxtChangeAnm__12dMenu_save_cFv
/* 801F3BFC  7C 7D 1B 78 */	mr r29, r3
/* 801F3C00  7F 83 E3 78 */	mr r3, r28
/* 801F3C04  48 00 19 FD */	bl selectDataMoveAnm__12dMenu_save_cFv
/* 801F3C08  7C 7E 1B 78 */	mr r30, r3
/* 801F3C0C  7F 83 E3 78 */	mr r3, r28
/* 801F3C10  48 00 1C B9 */	bl yesnoMenuMoveAnm__12dMenu_save_cFv
/* 801F3C14  7C 7F 1B 78 */	mr r31, r3
/* 801F3C18  7F 83 E3 78 */	mr r3, r28
/* 801F3C1C  88 9C 00 54 */	lbz r4, 0x54(r28)
/* 801F3C20  48 00 27 71 */	bl selectWakuAlpahAnm__12dMenu_save_cFUc
/* 801F3C24  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 801F3C28  28 00 00 01 */	cmplwi r0, 1
/* 801F3C2C  40 82 00 38 */	bne lbl_801F3C64
/* 801F3C30  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F3C34  28 00 00 01 */	cmplwi r0, 1
/* 801F3C38  40 82 00 2C */	bne lbl_801F3C64
/* 801F3C3C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F3C40  28 00 00 01 */	cmplwi r0, 1
/* 801F3C44  40 82 00 20 */	bne lbl_801F3C64
/* 801F3C48  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F3C4C  28 00 00 01 */	cmplwi r0, 1
/* 801F3C50  40 82 00 14 */	bne lbl_801F3C64
/* 801F3C54  7F 83 E3 78 */	mr r3, r28
/* 801F3C58  48 00 21 2D */	bl yesnoCursorShow__12dMenu_save_cFv
/* 801F3C5C  38 00 00 34 */	li r0, 0x34
/* 801F3C60  98 1C 01 B2 */	stb r0, 0x1b2(r28)
lbl_801F3C64:
/* 801F3C64  39 61 00 20 */	addi r11, r1, 0x20
/* 801F3C68  48 16 E5 BD */	bl _restgpr_28
/* 801F3C6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F3C70  7C 08 03 A6 */	mtlr r0
/* 801F3C74  38 21 00 20 */	addi r1, r1, 0x20
/* 801F3C78  4E 80 00 20 */	blr 
