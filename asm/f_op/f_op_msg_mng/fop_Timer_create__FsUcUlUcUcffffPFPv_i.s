lbl_8001FCC0:
/* 8001FCC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001FCC4  7C 08 02 A6 */	mflr r0
/* 8001FCC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001FCCC  39 61 00 20 */	addi r11, r1, 0x20
/* 8001FCD0  48 34 25 0D */	bl _savegpr_29
/* 8001FCD4  7C 7D 1B 78 */	mr r29, r3
/* 8001FCD8  7D 1E 43 78 */	mr r30, r8
/* 8001FCDC  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8001FCE0  7C A4 2B 78 */	mr r4, r5
/* 8001FCE4  7C C5 33 78 */	mr r5, r6
/* 8001FCE8  7C E6 3B 78 */	mr r6, r7
/* 8001FCEC  38 E0 FF FF */	li r7, -1
/* 8001FCF0  4B FF FE 61 */	bl createTimerAppend__FiUlUcUcffffUi
/* 8001FCF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8001FCF8  40 82 00 0C */	bne lbl_8001FD04
/* 8001FCFC  38 60 FF FF */	li r3, -1
/* 8001FD00  48 00 00 1C */	b lbl_8001FD1C
lbl_8001FD04:
/* 8001FD04  48 00 19 F1 */	bl fpcLy_CurrentLayer__Fv
/* 8001FD08  7F A4 EB 78 */	mr r4, r29
/* 8001FD0C  7F C5 F3 78 */	mr r5, r30
/* 8001FD10  38 C0 00 00 */	li r6, 0
/* 8001FD14  7F E7 FB 78 */	mr r7, r31
/* 8001FD18  48 00 40 7D */	bl fpcSCtRq_Request__FP11layer_classsPFPvPv_iPvPv
lbl_8001FD1C:
/* 8001FD1C  39 61 00 20 */	addi r11, r1, 0x20
/* 8001FD20  48 34 25 09 */	bl _restgpr_29
/* 8001FD24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001FD28  7C 08 03 A6 */	mtlr r0
/* 8001FD2C  38 21 00 20 */	addi r1, r1, 0x20
/* 8001FD30  4E 80 00 20 */	blr 
