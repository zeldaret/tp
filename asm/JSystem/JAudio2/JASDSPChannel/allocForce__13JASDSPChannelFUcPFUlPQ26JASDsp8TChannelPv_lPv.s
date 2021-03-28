lbl_8029D4BC:
/* 8029D4BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029D4C0  7C 08 02 A6 */	mflr r0
/* 8029D4C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029D4C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8029D4CC  48 0C 4D 0D */	bl _savegpr_28
/* 8029D4D0  7C 7C 1B 78 */	mr r28, r3
/* 8029D4D4  7C 9D 23 78 */	mr r29, r4
/* 8029D4D8  7C BE 2B 78 */	mr r30, r5
/* 8029D4DC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8029D4E0  48 00 00 61 */	bl getLowestChannel__13JASDSPChannelFi
/* 8029D4E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8029D4E8  40 82 00 0C */	bne lbl_8029D4F4
/* 8029D4EC  38 60 00 00 */	li r3, 0
/* 8029D4F0  48 00 00 2C */	b lbl_8029D51C
lbl_8029D4F4:
/* 8029D4F4  38 00 00 01 */	li r0, 1
/* 8029D4F8  90 1F 00 00 */	stw r0, 0(r31)
/* 8029D4FC  4B FF FE 45 */	bl drop__13JASDSPChannelFv
/* 8029D500  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8029D504  B0 1F 00 04 */	sth r0, 4(r31)
/* 8029D508  38 00 00 00 */	li r0, 0
/* 8029D50C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8029D510  93 BF 00 10 */	stw r29, 0x10(r31)
/* 8029D514  93 DF 00 14 */	stw r30, 0x14(r31)
/* 8029D518  7F E3 FB 78 */	mr r3, r31
lbl_8029D51C:
/* 8029D51C  39 61 00 20 */	addi r11, r1, 0x20
/* 8029D520  48 0C 4D 05 */	bl _restgpr_28
/* 8029D524  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029D528  7C 08 03 A6 */	mtlr r0
/* 8029D52C  38 21 00 20 */	addi r1, r1, 0x20
/* 8029D530  4E 80 00 20 */	blr 
