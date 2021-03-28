lbl_80019D18:
/* 80019D18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80019D1C  7C 08 02 A6 */	mflr r0
/* 80019D20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80019D24  39 61 00 20 */	addi r11, r1, 0x20
/* 80019D28  48 34 84 B5 */	bl _savegpr_29
/* 80019D2C  7C 7D 1B 78 */	mr r29, r3
/* 80019D30  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80019D34  7C 83 23 78 */	mr r3, r4
/* 80019D38  7C A4 2B 78 */	mr r4, r5
/* 80019D3C  7C C5 33 78 */	mr r5, r6
/* 80019D40  7C E6 3B 78 */	mr r6, r7
/* 80019D44  7D 07 43 78 */	mr r7, r8
/* 80019D48  7D 28 4B 78 */	mr r8, r9
/* 80019D4C  7D 49 53 78 */	mr r9, r10
/* 80019D50  39 40 FF FF */	li r10, -1
/* 80019D54  4B FF FD C9 */	bl createAppend__FUsUlPC4cXyziPC5csXyzPC4cXyzScUi
/* 80019D58  7C 7F 1B 79 */	or. r31, r3, r3
/* 80019D5C  40 82 00 0C */	bne lbl_80019D68
/* 80019D60  38 60 FF FF */	li r3, -1
/* 80019D64  48 00 00 1C */	b lbl_80019D80
lbl_80019D68:
/* 80019D68  48 00 79 8D */	bl fpcLy_CurrentLayer__Fv
/* 80019D6C  7F A4 EB 78 */	mr r4, r29
/* 80019D70  7F C5 F3 78 */	mr r5, r30
/* 80019D74  38 C0 00 00 */	li r6, 0
/* 80019D78  7F E7 FB 78 */	mr r7, r31
/* 80019D7C  48 00 A0 19 */	bl fpcSCtRq_Request__FP11layer_classsPFPvPv_iPvPv
lbl_80019D80:
/* 80019D80  39 61 00 20 */	addi r11, r1, 0x20
/* 80019D84  48 34 84 A5 */	bl _restgpr_29
/* 80019D88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80019D8C  7C 08 03 A6 */	mtlr r0
/* 80019D90  38 21 00 20 */	addi r1, r1, 0x20
/* 80019D94  4E 80 00 20 */	blr 
