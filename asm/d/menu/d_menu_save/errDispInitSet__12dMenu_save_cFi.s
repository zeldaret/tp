lbl_801F4A10:
/* 801F4A10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F4A14  7C 08 02 A6 */	mflr r0
/* 801F4A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F4A1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F4A20  93 C1 00 08 */	stw r30, 8(r1)
/* 801F4A24  7C 7F 1B 78 */	mr r31, r3
/* 801F4A28  7C 9E 23 78 */	mr r30, r4
/* 801F4A2C  38 80 00 01 */	li r4, 1
/* 801F4A30  4B FF FE 2D */	bl headerTxtSet__12dMenu_save_cFUs
/* 801F4A34  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 801F4A38  54 00 10 3A */	slwi r0, r0, 2
/* 801F4A3C  7C 7F 02 14 */	add r3, r31, r0
/* 801F4A40  80 63 00 C0 */	lwz r3, 0xc0(r3)
/* 801F4A44  38 80 00 FF */	li r4, 0xff
/* 801F4A48  81 83 00 00 */	lwz r12, 0(r3)
/* 801F4A4C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F4A50  7D 89 03 A6 */	mtctr r12
/* 801F4A54  4E 80 04 21 */	bctrl 
/* 801F4A58  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 801F4A5C  68 00 00 01 */	xori r0, r0, 1
/* 801F4A60  54 00 10 3A */	slwi r0, r0, 2
/* 801F4A64  7C 7F 02 14 */	add r3, r31, r0
/* 801F4A68  80 63 00 C0 */	lwz r3, 0xc0(r3)
/* 801F4A6C  38 80 00 00 */	li r4, 0
/* 801F4A70  81 83 00 00 */	lwz r12, 0(r3)
/* 801F4A74  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F4A78  7D 89 03 A6 */	mtctr r12
/* 801F4A7C  4E 80 04 21 */	bctrl 
/* 801F4A80  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 801F4A84  54 00 10 3A */	slwi r0, r0, 2
/* 801F4A88  7C 7F 02 14 */	add r3, r31, r0
/* 801F4A8C  80 63 00 C0 */	lwz r3, 0xc0(r3)
/* 801F4A90  80 A3 00 04 */	lwz r5, 4(r3)
/* 801F4A94  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801F4A98  7F C4 F3 78 */	mr r4, r30
/* 801F4A9C  38 C0 00 00 */	li r6, 0
/* 801F4AA0  80 FF 00 20 */	lwz r7, 0x20(r31)
/* 801F4AA4  39 00 00 00 */	li r8, 0
/* 801F4AA8  39 20 00 00 */	li r9, 0
/* 801F4AAC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F4AB0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F4AB4  7D 89 03 A6 */	mtctr r12
/* 801F4AB8  4E 80 04 21 */	bctrl 
/* 801F4ABC  88 1F 00 D2 */	lbz r0, 0xd2(r31)
/* 801F4AC0  28 00 00 00 */	cmplwi r0, 0
/* 801F4AC4  40 82 00 10 */	bne lbl_801F4AD4
/* 801F4AC8  88 1F 00 D3 */	lbz r0, 0xd3(r31)
/* 801F4ACC  28 00 00 00 */	cmplwi r0, 0
/* 801F4AD0  41 82 00 14 */	beq lbl_801F4AE4
lbl_801F4AD4:
/* 801F4AD4  7F E3 FB 78 */	mr r3, r31
/* 801F4AD8  38 80 0B 2B */	li r4, 0xb2b
/* 801F4ADC  38 A0 0B 21 */	li r5, 0xb21
/* 801F4AE0  48 00 14 15 */	bl errorMoveAnmInitSet__12dMenu_save_cFii
lbl_801F4AE4:
/* 801F4AE4  88 1F 00 64 */	lbz r0, 0x64(r31)
/* 801F4AE8  28 00 00 00 */	cmplwi r0, 0
/* 801F4AEC  40 82 00 10 */	bne lbl_801F4AFC
/* 801F4AF0  88 1F 00 65 */	lbz r0, 0x65(r31)
/* 801F4AF4  28 00 00 00 */	cmplwi r0, 0
/* 801F4AF8  41 82 00 14 */	beq lbl_801F4B0C
lbl_801F4AFC:
/* 801F4AFC  7F E3 FB 78 */	mr r3, r31
/* 801F4B00  38 80 00 21 */	li r4, 0x21
/* 801F4B04  38 A0 00 01 */	li r5, 1
/* 801F4B08  48 00 08 35 */	bl selectDataBaseMoveAnmInitSet__12dMenu_save_cFii
lbl_801F4B0C:
/* 801F4B0C  88 1F 00 9C */	lbz r0, 0x9c(r31)
/* 801F4B10  28 00 00 00 */	cmplwi r0, 0
/* 801F4B14  40 82 00 10 */	bne lbl_801F4B24
/* 801F4B18  88 1F 00 9D */	lbz r0, 0x9d(r31)
/* 801F4B1C  28 00 00 00 */	cmplwi r0, 0
/* 801F4B20  41 82 00 18 */	beq lbl_801F4B38
lbl_801F4B24:
/* 801F4B24  7F E3 FB 78 */	mr r3, r31
/* 801F4B28  38 80 08 33 */	li r4, 0x833
/* 801F4B2C  38 A0 08 29 */	li r5, 0x829
/* 801F4B30  38 C0 00 00 */	li r6, 0
/* 801F4B34  48 00 0C 11 */	bl yesnoMenuMoveAnmInitSet__12dMenu_save_cFiiUc
lbl_801F4B38:
/* 801F4B38  7F E3 FB 78 */	mr r3, r31
/* 801F4B3C  38 80 00 00 */	li r4, 0
/* 801F4B40  48 00 15 65 */	bl modoruTxtDispAnmInit__12dMenu_save_cFUc
/* 801F4B44  7F E3 FB 78 */	mr r3, r31
/* 801F4B48  38 80 00 00 */	li r4, 0
/* 801F4B4C  48 00 16 B1 */	bl ketteiTxtDispAnmInit__12dMenu_save_cFUc
/* 801F4B50  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801F4B54  4B F9 D6 0D */	bl init__15dFile_warning_cFv
/* 801F4B58  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801F4B5C  C0 22 AA 48 */	lfs f1, lit_4175(r2)
/* 801F4B60  4B FA 07 41 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801F4B64  38 00 00 39 */	li r0, 0x39
/* 801F4B68  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F4B6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F4B70  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F4B74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F4B78  7C 08 03 A6 */	mtlr r0
/* 801F4B7C  38 21 00 10 */	addi r1, r1, 0x10
/* 801F4B80  4E 80 00 20 */	blr 
