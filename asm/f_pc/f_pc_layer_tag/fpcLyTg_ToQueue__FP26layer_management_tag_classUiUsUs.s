lbl_80021CD4:
/* 80021CD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80021CD8  7C 08 02 A6 */	mflr r0
/* 80021CDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80021CE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80021CE4  48 34 04 F5 */	bl _savegpr_28
/* 80021CE8  7C 7C 1B 78 */	mr r28, r3
/* 80021CEC  7C 9D 23 78 */	mr r29, r4
/* 80021CF0  7C BE 2B 78 */	mr r30, r5
/* 80021CF4  7C DF 33 78 */	mr r31, r6
/* 80021CF8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80021CFC  28 03 00 00 */	cmplwi r3, 0
/* 80021D00  40 82 00 18 */	bne lbl_80021D18
/* 80021D04  3C 1D 00 01 */	addis r0, r29, 1
/* 80021D08  28 00 FF FF */	cmplwi r0, 0xffff
/* 80021D0C  40 82 00 0C */	bne lbl_80021D18
/* 80021D10  38 60 00 00 */	li r3, 0
/* 80021D14  48 00 00 A0 */	b lbl_80021DB4
lbl_80021D18:
/* 80021D18  3C 1D 00 01 */	addis r0, r29, 1
/* 80021D1C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80021D20  41 82 00 24 */	beq lbl_80021D44
/* 80021D24  28 00 FF FD */	cmplwi r0, 0xfffd
/* 80021D28  41 82 00 1C */	beq lbl_80021D44
/* 80021D2C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80021D30  7C 00 E8 40 */	cmplw r0, r29
/* 80021D34  41 82 00 10 */	beq lbl_80021D44
/* 80021D38  7F A3 EB 78 */	mr r3, r29
/* 80021D3C  4B FF FA 11 */	bl fpcLy_Layer__FUi
/* 80021D40  90 7C 00 14 */	stw r3, 0x14(r28)
lbl_80021D44:
/* 80021D44  3C 1D 00 01 */	addis r0, r29, 1
/* 80021D48  28 00 FF FF */	cmplwi r0, 0xffff
/* 80021D4C  41 82 00 0C */	beq lbl_80021D58
/* 80021D50  28 00 FF FD */	cmplwi r0, 0xfffd
/* 80021D54  40 82 00 30 */	bne lbl_80021D84
lbl_80021D58:
/* 80021D58  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 80021D5C  57 C4 04 3E */	clrlwi r4, r30, 0x10
/* 80021D60  7F 85 E3 78 */	mr r5, r28
/* 80021D64  4B FF F8 B9 */	bl fpcLy_ToQueue__FP11layer_classiP16create_tag_class
/* 80021D68  2C 03 00 00 */	cmpwi r3, 0
/* 80021D6C  41 82 00 44 */	beq lbl_80021DB0
/* 80021D70  B3 DC 00 18 */	sth r30, 0x18(r28)
/* 80021D74  38 03 FF FF */	addi r0, r3, -1
/* 80021D78  B0 1C 00 1A */	sth r0, 0x1a(r28)
/* 80021D7C  38 60 00 01 */	li r3, 1
/* 80021D80  48 00 00 34 */	b lbl_80021DB4
lbl_80021D84:
/* 80021D84  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 80021D88  57 C4 04 3E */	clrlwi r4, r30, 0x10
/* 80021D8C  7F 85 E3 78 */	mr r5, r28
/* 80021D90  57 E6 04 3E */	clrlwi r6, r31, 0x10
/* 80021D94  4B FF F8 65 */	bl fpcLy_IntoQueue__FP11layer_classiP16create_tag_classi
/* 80021D98  2C 03 00 00 */	cmpwi r3, 0
/* 80021D9C  41 82 00 14 */	beq lbl_80021DB0
/* 80021DA0  B3 DC 00 18 */	sth r30, 0x18(r28)
/* 80021DA4  B3 FC 00 1A */	sth r31, 0x1a(r28)
/* 80021DA8  38 60 00 01 */	li r3, 1
/* 80021DAC  48 00 00 08 */	b lbl_80021DB4
lbl_80021DB0:
/* 80021DB0  38 60 00 00 */	li r3, 0
lbl_80021DB4:
/* 80021DB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80021DB8  48 34 04 6D */	bl _restgpr_28
/* 80021DBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80021DC0  7C 08 03 A6 */	mtlr r0
/* 80021DC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80021DC8  4E 80 00 20 */	blr 
