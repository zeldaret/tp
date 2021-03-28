lbl_802FFBC4:
/* 802FFBC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FFBC8  7C 08 02 A6 */	mflr r0
/* 802FFBCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FFBD0  39 61 00 20 */	addi r11, r1, 0x20
/* 802FFBD4  48 06 25 FD */	bl _savegpr_26
/* 802FFBD8  7C 7A 1B 78 */	mr r26, r3
/* 802FFBDC  7D 1B 43 78 */	mr r27, r8
/* 802FFBE0  7D 3C 4B 78 */	mr r28, r9
/* 802FFBE4  7D 5D 53 78 */	mr r29, r10
/* 802FFBE8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802FFBEC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802FFBF0  4B FF 62 99 */	bl func_802F5E88
/* 802FFBF4  3C 60 80 3D */	lis r3, __vt__10J2DTextBox@ha
/* 802FFBF8  38 03 D3 28 */	addi r0, r3, __vt__10J2DTextBox@l
/* 802FFBFC  90 1A 00 00 */	stw r0, 0(r26)
/* 802FFC00  38 60 00 00 */	li r3, 0
/* 802FFC04  90 7A 01 00 */	stw r3, 0x100(r26)
/* 802FFC08  38 00 FF FF */	li r0, -1
/* 802FFC0C  90 1A 01 04 */	stw r0, 0x104(r26)
/* 802FFC10  90 1A 01 08 */	stw r0, 0x108(r26)
/* 802FFC14  90 7A 01 24 */	stw r3, 0x124(r26)
/* 802FFC18  90 1A 01 28 */	stw r0, 0x128(r26)
/* 802FFC1C  90 1A 01 2C */	stw r0, 0x12c(r26)
/* 802FFC20  7F 43 D3 78 */	mr r3, r26
/* 802FFC24  7F 64 DB 78 */	mr r4, r27
/* 802FFC28  7F 85 E3 78 */	mr r5, r28
/* 802FFC2C  7F A6 EB 78 */	mr r6, r29
/* 802FFC30  7F C7 F3 78 */	mr r7, r30
/* 802FFC34  7F E8 FB 78 */	mr r8, r31
/* 802FFC38  48 00 00 21 */	bl initiate__10J2DTextBoxFPC7ResFONTPCcs18J2DTextBoxHBinding18J2DTextBoxVBinding
/* 802FFC3C  7F 43 D3 78 */	mr r3, r26
/* 802FFC40  39 61 00 20 */	addi r11, r1, 0x20
/* 802FFC44  48 06 25 D9 */	bl _restgpr_26
/* 802FFC48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FFC4C  7C 08 03 A6 */	mtlr r0
/* 802FFC50  38 21 00 20 */	addi r1, r1, 0x20
/* 802FFC54  4E 80 00 20 */	blr 
