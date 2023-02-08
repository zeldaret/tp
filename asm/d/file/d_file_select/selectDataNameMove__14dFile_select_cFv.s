lbl_80186638:
/* 80186638  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018663C  7C 08 02 A6 */	mflr r0
/* 80186640  90 01 00 24 */	stw r0, 0x24(r1)
/* 80186644  39 61 00 20 */	addi r11, r1, 0x20
/* 80186648  48 1D BB 91 */	bl _savegpr_28
/* 8018664C  7C 7C 1B 78 */	mr r28, r3
/* 80186650  48 00 6C 0D */	bl headerTxtChangeAnm__14dFile_select_cFv
/* 80186654  7C 7D 1B 78 */	mr r29, r3
/* 80186658  7F 83 E3 78 */	mr r3, r28
/* 8018665C  48 00 98 99 */	bl fileRecScaleAnm2__14dFile_select_cFv
/* 80186660  7C 7E 1B 78 */	mr r30, r3
/* 80186664  7F 83 E3 78 */	mr r3, r28
/* 80186668  48 00 9A BD */	bl nameMoveAnm__14dFile_select_cFv
/* 8018666C  7C 7F 1B 78 */	mr r31, r3
/* 80186670  7F 83 E3 78 */	mr r3, r28
/* 80186674  48 00 6D A9 */	bl modoruTxtDispAnm__14dFile_select_cFv
/* 80186678  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8018667C  28 00 00 01 */	cmplwi r0, 1
/* 80186680  40 82 00 30 */	bne lbl_801866B0
/* 80186684  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80186688  28 00 00 01 */	cmplwi r0, 1
/* 8018668C  40 82 00 24 */	bne lbl_801866B0
/* 80186690  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80186694  28 00 00 01 */	cmplwi r0, 1
/* 80186698  40 82 00 18 */	bne lbl_801866B0
/* 8018669C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801866A0  28 00 00 01 */	cmplwi r0, 1
/* 801866A4  40 82 00 0C */	bne lbl_801866B0
/* 801866A8  38 00 00 0F */	li r0, 0xf
/* 801866AC  98 1C 02 6F */	stb r0, 0x26f(r28)
lbl_801866B0:
/* 801866B0  39 61 00 20 */	addi r11, r1, 0x20
/* 801866B4  48 1D BB 71 */	bl _restgpr_28
/* 801866B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801866BC  7C 08 03 A6 */	mtlr r0
/* 801866C0  38 21 00 20 */	addi r1, r1, 0x20
/* 801866C4  4E 80 00 20 */	blr 
