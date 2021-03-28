lbl_80019EF0:
/* 80019EF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80019EF4  7C 08 02 A6 */	mflr r0
/* 80019EF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80019EFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80019F00  48 34 82 DD */	bl _savegpr_29
/* 80019F04  7C 7D 1B 78 */	mr r29, r3
/* 80019F08  7C 80 23 78 */	mr r0, r4
/* 80019F0C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80019F10  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80019F14  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80019F18  7C A4 2B 78 */	mr r4, r5
/* 80019F1C  7C C5 33 78 */	mr r5, r6
/* 80019F20  7C E6 3B 78 */	mr r6, r7
/* 80019F24  7D 07 43 78 */	mr r7, r8
/* 80019F28  7D 28 4B 78 */	mr r8, r9
/* 80019F2C  7D 49 53 78 */	mr r9, r10
/* 80019F30  7C 0A 03 78 */	mr r10, r0
/* 80019F34  4B FF FB E9 */	bl createAppend__FUsUlPC4cXyziPC5csXyzPC4cXyzScUi
/* 80019F38  7C 7F 1B 79 */	or. r31, r3, r3
/* 80019F3C  40 82 00 0C */	bne lbl_80019F48
/* 80019F40  38 60 FF FF */	li r3, -1
/* 80019F44  48 00 00 1C */	b lbl_80019F60
lbl_80019F48:
/* 80019F48  48 00 77 AD */	bl fpcLy_CurrentLayer__Fv
/* 80019F4C  7F A4 EB 78 */	mr r4, r29
/* 80019F50  7F C5 F3 78 */	mr r5, r30
/* 80019F54  38 C0 00 00 */	li r6, 0
/* 80019F58  7F E7 FB 78 */	mr r7, r31
/* 80019F5C  48 00 9E 39 */	bl fpcSCtRq_Request__FP11layer_classsPFPvPv_iPvPv
lbl_80019F60:
/* 80019F60  39 61 00 20 */	addi r11, r1, 0x20
/* 80019F64  48 34 82 C5 */	bl _restgpr_29
/* 80019F68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80019F6C  7C 08 03 A6 */	mtlr r0
/* 80019F70  38 21 00 20 */	addi r1, r1, 0x20
/* 80019F74  4E 80 00 20 */	blr 
