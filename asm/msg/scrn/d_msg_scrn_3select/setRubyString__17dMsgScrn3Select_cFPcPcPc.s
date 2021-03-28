lbl_80239D08:
/* 80239D08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80239D0C  7C 08 02 A6 */	mflr r0
/* 80239D10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80239D14  39 61 00 20 */	addi r11, r1, 0x20
/* 80239D18  48 12 84 C1 */	bl _savegpr_28
/* 80239D1C  7C 7C 1B 78 */	mr r28, r3
/* 80239D20  7C 9D 23 78 */	mr r29, r4
/* 80239D24  7C BE 2B 78 */	mr r30, r5
/* 80239D28  7C DF 33 78 */	mr r31, r6
/* 80239D2C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80239D30  28 03 00 00 */	cmplwi r3, 0
/* 80239D34  41 82 00 14 */	beq lbl_80239D48
/* 80239D38  80 63 00 04 */	lwz r3, 4(r3)
/* 80239D3C  48 0C 69 1D */	bl getStringPtr__10J2DTextBoxCFv
/* 80239D40  7F A4 EB 78 */	mr r4, r29
/* 80239D44  48 12 ED E9 */	bl strcpy
lbl_80239D48:
/* 80239D48  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 80239D4C  28 03 00 00 */	cmplwi r3, 0
/* 80239D50  41 82 00 14 */	beq lbl_80239D64
/* 80239D54  80 63 00 04 */	lwz r3, 4(r3)
/* 80239D58  48 0C 69 01 */	bl getStringPtr__10J2DTextBoxCFv
/* 80239D5C  7F C4 F3 78 */	mr r4, r30
/* 80239D60  48 12 ED CD */	bl strcpy
lbl_80239D64:
/* 80239D64  80 7C 00 30 */	lwz r3, 0x30(r28)
/* 80239D68  28 03 00 00 */	cmplwi r3, 0
/* 80239D6C  41 82 00 14 */	beq lbl_80239D80
/* 80239D70  80 63 00 04 */	lwz r3, 4(r3)
/* 80239D74  48 0C 68 E5 */	bl getStringPtr__10J2DTextBoxCFv
/* 80239D78  7F E4 FB 78 */	mr r4, r31
/* 80239D7C  48 12 ED B1 */	bl strcpy
lbl_80239D80:
/* 80239D80  39 61 00 20 */	addi r11, r1, 0x20
/* 80239D84  48 12 84 A1 */	bl _restgpr_28
/* 80239D88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80239D8C  7C 08 03 A6 */	mtlr r0
/* 80239D90  38 21 00 20 */	addi r1, r1, 0x20
/* 80239D94  4E 80 00 20 */	blr 
