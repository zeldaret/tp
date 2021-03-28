lbl_80653F58:
/* 80653F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80653F5C  7C 08 02 A6 */	mflr r0
/* 80653F60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80653F64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80653F68  93 C1 00 08 */	stw r30, 8(r1)
/* 80653F6C  7C 7E 1B 78 */	mr r30, r3
/* 80653F70  7C 9F 23 78 */	mr r31, r4
/* 80653F74  88 83 07 44 */	lbz r4, 0x744(r3)
/* 80653F78  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 80653F7C  7C 04 00 40 */	cmplw r4, r0
/* 80653F80  41 82 00 0C */	beq lbl_80653F8C
/* 80653F84  7C A4 2B 78 */	mr r4, r5
/* 80653F88  48 00 01 35 */	bl setComboNum__13daBalloon2D_cFUc
lbl_80653F8C:
/* 80653F8C  88 7E 07 45 */	lbz r3, 0x745(r30)
/* 80653F90  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80653F94  7C 03 00 40 */	cmplw r3, r0
/* 80653F98  41 82 00 10 */	beq lbl_80653FA8
/* 80653F9C  7F C3 F3 78 */	mr r3, r30
/* 80653FA0  7F E4 FB 78 */	mr r4, r31
/* 80653FA4  48 00 02 11 */	bl setBalloonSize__13daBalloon2D_cFUc
lbl_80653FA8:
/* 80653FA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80653FAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80653FB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80653FB4  7C 08 03 A6 */	mtlr r0
/* 80653FB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80653FBC  4E 80 00 20 */	blr 
