lbl_801F4B84:
/* 801F4B84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F4B88  7C 08 02 A6 */	mflr r0
/* 801F4B8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F4B90  39 61 00 20 */	addi r11, r1, 0x20
/* 801F4B94  48 16 D6 3D */	bl _savegpr_26
/* 801F4B98  7C 7F 1B 78 */	mr r31, r3
/* 801F4B9C  3B A0 00 01 */	li r29, 1
/* 801F4BA0  88 03 01 7A */	lbz r0, 0x17a(r3)
/* 801F4BA4  28 00 00 00 */	cmplwi r0, 0
/* 801F4BA8  40 82 00 0C */	bne lbl_801F4BB4
/* 801F4BAC  4B FF FD 7D */	bl headerTxtChangeAnm__12dMenu_save_cFv
/* 801F4BB0  7C 7D 1B 78 */	mr r29, r3
lbl_801F4BB4:
/* 801F4BB4  3B 80 00 01 */	li r28, 1
/* 801F4BB8  3B 60 00 01 */	li r27, 1
/* 801F4BBC  3B 40 00 01 */	li r26, 1
/* 801F4BC0  88 1F 00 64 */	lbz r0, 0x64(r31)
/* 801F4BC4  28 00 00 00 */	cmplwi r0, 0
/* 801F4BC8  40 82 00 10 */	bne lbl_801F4BD8
/* 801F4BCC  88 1F 00 65 */	lbz r0, 0x65(r31)
/* 801F4BD0  28 00 00 00 */	cmplwi r0, 0
/* 801F4BD4  41 82 00 10 */	beq lbl_801F4BE4
lbl_801F4BD8:
/* 801F4BD8  7F E3 FB 78 */	mr r3, r31
/* 801F4BDC  48 00 07 F9 */	bl selectDataBaseMoveAnm__12dMenu_save_cFv
/* 801F4BE0  7C 7C 1B 78 */	mr r28, r3
lbl_801F4BE4:
/* 801F4BE4  88 1F 00 9C */	lbz r0, 0x9c(r31)
/* 801F4BE8  28 00 00 00 */	cmplwi r0, 0
/* 801F4BEC  40 82 00 10 */	bne lbl_801F4BFC
/* 801F4BF0  88 1F 00 9D */	lbz r0, 0x9d(r31)
/* 801F4BF4  28 00 00 00 */	cmplwi r0, 0
/* 801F4BF8  41 82 00 10 */	beq lbl_801F4C08
lbl_801F4BFC:
/* 801F4BFC  7F E3 FB 78 */	mr r3, r31
/* 801F4C00  48 00 0C C9 */	bl yesnoMenuMoveAnm__12dMenu_save_cFv
/* 801F4C04  7C 7B 1B 78 */	mr r27, r3
lbl_801F4C08:
/* 801F4C08  88 1F 00 D2 */	lbz r0, 0xd2(r31)
/* 801F4C0C  28 00 00 00 */	cmplwi r0, 0
/* 801F4C10  40 82 00 10 */	bne lbl_801F4C20
/* 801F4C14  88 1F 00 D3 */	lbz r0, 0xd3(r31)
/* 801F4C18  28 00 00 00 */	cmplwi r0, 0
/* 801F4C1C  41 82 00 10 */	beq lbl_801F4C2C
lbl_801F4C20:
/* 801F4C20  7F E3 FB 78 */	mr r3, r31
/* 801F4C24  48 00 13 61 */	bl errorMoveAnm__12dMenu_save_cFv
/* 801F4C28  7C 7A 1B 78 */	mr r26, r3
lbl_801F4C2C:
/* 801F4C2C  7F E3 FB 78 */	mr r3, r31
/* 801F4C30  48 00 14 F1 */	bl modoruTxtDispAnm__12dMenu_save_cFv
/* 801F4C34  7C 7E 1B 78 */	mr r30, r3
/* 801F4C38  7F E3 FB 78 */	mr r3, r31
/* 801F4C3C  48 00 16 3D */	bl ketteiTxtDispAnm__12dMenu_save_cFv
/* 801F4C40  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 801F4C44  28 00 00 01 */	cmplwi r0, 1
/* 801F4C48  40 82 00 B0 */	bne lbl_801F4CF8
/* 801F4C4C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 801F4C50  28 00 00 01 */	cmplwi r0, 1
/* 801F4C54  40 82 00 A4 */	bne lbl_801F4CF8
/* 801F4C58  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 801F4C5C  28 00 00 01 */	cmplwi r0, 1
/* 801F4C60  40 82 00 98 */	bne lbl_801F4CF8
/* 801F4C64  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 801F4C68  28 00 00 01 */	cmplwi r0, 1
/* 801F4C6C  40 82 00 8C */	bne lbl_801F4CF8
/* 801F4C70  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F4C74  28 00 00 01 */	cmplwi r0, 1
/* 801F4C78  40 82 00 80 */	bne lbl_801F4CF8
/* 801F4C7C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F4C80  28 00 00 01 */	cmplwi r0, 1
/* 801F4C84  40 82 00 74 */	bne lbl_801F4CF8
/* 801F4C88  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F4C8C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F4C90  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 801F4C94  7D 89 03 A6 */	mtctr r12
/* 801F4C98  4E 80 04 21 */	bctrl 
/* 801F4C9C  7F E3 FB 78 */	mr r3, r31
/* 801F4CA0  38 80 0B 21 */	li r4, 0xb21
/* 801F4CA4  38 A0 0B 2B */	li r5, 0xb2b
/* 801F4CA8  48 00 12 4D */	bl errorMoveAnmInitSet__12dMenu_save_cFii
/* 801F4CAC  88 1F 00 9E */	lbz r0, 0x9e(r31)
/* 801F4CB0  28 00 00 00 */	cmplwi r0, 0
/* 801F4CB4  41 82 00 28 */	beq lbl_801F4CDC
/* 801F4CB8  7F E3 FB 78 */	mr r3, r31
/* 801F4CBC  38 80 0B B7 */	li r4, 0xbb7
/* 801F4CC0  38 A0 0B C1 */	li r5, 0xbc1
/* 801F4CC4  38 C0 00 00 */	li r6, 0
/* 801F4CC8  48 00 0A 7D */	bl yesnoMenuMoveAnmInitSet__12dMenu_save_cFiiUc
/* 801F4CCC  7F E3 FB 78 */	mr r3, r31
/* 801F4CD0  38 80 00 01 */	li r4, 1
/* 801F4CD4  48 00 15 29 */	bl ketteiTxtDispAnmInit__12dMenu_save_cFUc
/* 801F4CD8  48 00 00 10 */	b lbl_801F4CE8
lbl_801F4CDC:
/* 801F4CDC  7F E3 FB 78 */	mr r3, r31
/* 801F4CE0  38 80 00 00 */	li r4, 0
/* 801F4CE4  48 00 15 19 */	bl ketteiTxtDispAnmInit__12dMenu_save_cFUc
lbl_801F4CE8:
/* 801F4CE8  38 00 00 01 */	li r0, 1
/* 801F4CEC  98 1F 01 7A */	stb r0, 0x17a(r31)
/* 801F4CF0  38 00 00 3A */	li r0, 0x3a
/* 801F4CF4  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F4CF8:
/* 801F4CF8  39 61 00 20 */	addi r11, r1, 0x20
/* 801F4CFC  48 16 D5 21 */	bl _restgpr_26
/* 801F4D00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F4D04  7C 08 03 A6 */	mtlr r0
/* 801F4D08  38 21 00 20 */	addi r1, r1, 0x20
/* 801F4D0C  4E 80 00 20 */	blr 
