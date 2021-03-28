lbl_801F1A48:
/* 801F1A48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F1A4C  7C 08 02 A6 */	mflr r0
/* 801F1A50  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F1A54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F1A58  7C 7F 1B 78 */	mr r31, r3
/* 801F1A5C  88 83 01 BD */	lbz r4, 0x1bd(r3)
/* 801F1A60  28 04 00 00 */	cmplwi r4, 0
/* 801F1A64  41 82 00 10 */	beq lbl_801F1A74
/* 801F1A68  38 04 FF FF */	addi r0, r4, -1
/* 801F1A6C  98 1F 01 BD */	stb r0, 0x1bd(r31)
/* 801F1A70  48 00 00 B4 */	b lbl_801F1B24
lbl_801F1A74:
/* 801F1A74  88 1F 01 BC */	lbz r0, 0x1bc(r31)
/* 801F1A78  28 00 00 04 */	cmplwi r0, 4
/* 801F1A7C  40 82 00 38 */	bne lbl_801F1AB4
/* 801F1A80  88 1F 21 A2 */	lbz r0, 0x21a2(r31)
/* 801F1A84  28 00 00 01 */	cmplwi r0, 1
/* 801F1A88  40 82 00 24 */	bne lbl_801F1AAC
/* 801F1A8C  38 00 00 00 */	li r0, 0
/* 801F1A90  98 1F 21 90 */	stb r0, 0x2190(r31)
/* 801F1A94  38 00 00 01 */	li r0, 1
/* 801F1A98  98 1F 01 B6 */	stb r0, 0x1b6(r31)
/* 801F1A9C  38 80 04 E4 */	li r4, 0x4e4
/* 801F1AA0  38 A0 00 01 */	li r5, 1
/* 801F1AA4  48 00 1A 19 */	bl msgTxtSet__12dMenu_save_cFUsb
/* 801F1AA8  48 00 00 10 */	b lbl_801F1AB8
lbl_801F1AAC:
/* 801F1AAC  4B FF FE FD */	bl backSaveQuestionInitSet__12dMenu_save_cFv
/* 801F1AB0  48 00 00 08 */	b lbl_801F1AB8
lbl_801F1AB4:
/* 801F1AB4  4B FF FE F5 */	bl backSaveQuestionInitSet__12dMenu_save_cFv
lbl_801F1AB8:
/* 801F1AB8  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 801F1ABC  80 63 00 04 */	lwz r3, 4(r3)
/* 801F1AC0  28 03 00 00 */	cmplwi r3, 0
/* 801F1AC4  41 82 00 18 */	beq lbl_801F1ADC
/* 801F1AC8  38 80 00 01 */	li r4, 1
/* 801F1ACC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F1AD0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F1AD4  7D 89 03 A6 */	mtctr r12
/* 801F1AD8  4E 80 04 21 */	bctrl 
lbl_801F1ADC:
/* 801F1ADC  38 60 00 00 */	li r3, 0
/* 801F1AE0  98 7F 21 A0 */	stb r3, 0x21a0(r31)
/* 801F1AE4  98 7F 01 C0 */	stb r3, 0x1c0(r31)
/* 801F1AE8  38 00 00 01 */	li r0, 1
/* 801F1AEC  98 1F 01 BF */	stb r0, 0x1bf(r31)
/* 801F1AF0  98 7F 01 B0 */	stb r3, 0x1b0(r31)
/* 801F1AF4  88 1F 01 BC */	lbz r0, 0x1bc(r31)
/* 801F1AF8  28 00 00 04 */	cmplwi r0, 4
/* 801F1AFC  40 82 00 24 */	bne lbl_801F1B20
/* 801F1B00  88 1F 21 A2 */	lbz r0, 0x21a2(r31)
/* 801F1B04  28 00 00 01 */	cmplwi r0, 1
/* 801F1B08  40 82 00 10 */	bne lbl_801F1B18
/* 801F1B0C  38 00 00 05 */	li r0, 5
/* 801F1B10  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F1B14  48 00 00 10 */	b lbl_801F1B24
lbl_801F1B18:
/* 801F1B18  98 7F 01 B2 */	stb r3, 0x1b2(r31)
/* 801F1B1C  48 00 00 08 */	b lbl_801F1B24
lbl_801F1B20:
/* 801F1B20  98 7F 01 B2 */	stb r3, 0x1b2(r31)
lbl_801F1B24:
/* 801F1B24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F1B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F1B2C  7C 08 03 A6 */	mtlr r0
/* 801F1B30  38 21 00 10 */	addi r1, r1, 0x10
/* 801F1B34  4E 80 00 20 */	blr 
