lbl_8007E4C0:
/* 8007E4C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007E4C4  7C 08 02 A6 */	mflr r0
/* 8007E4C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007E4CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8007E4D0  48 2E 3D 09 */	bl _savegpr_28
/* 8007E4D4  7C 7C 1B 78 */	mr r28, r3
/* 8007E4D8  7C 9D 23 78 */	mr r29, r4
/* 8007E4DC  7C BE 2B 78 */	mr r30, r5
/* 8007E4E0  38 60 00 C0 */	li r3, 0xc0
/* 8007E4E4  48 25 07 69 */	bl __nw__FUl
/* 8007E4E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007E4EC  41 82 00 0C */	beq lbl_8007E4F8
/* 8007E4F0  4B FF D4 81 */	bl __ct__4dBgWFv
/* 8007E4F4  7C 7F 1B 78 */	mr r31, r3
lbl_8007E4F8:
/* 8007E4F8  28 1F 00 00 */	cmplwi r31, 0
/* 8007E4FC  40 82 00 0C */	bne lbl_8007E508
/* 8007E500  38 60 00 00 */	li r3, 0
/* 8007E504  48 00 00 2C */	b lbl_8007E530
lbl_8007E508:
/* 8007E508  7F E3 FB 78 */	mr r3, r31
/* 8007E50C  7F 84 E3 78 */	mr r4, r28
/* 8007E510  7F A5 EB 78 */	mr r5, r29
/* 8007E514  7F C6 F3 78 */	mr r6, r30
/* 8007E518  4B FF BA 21 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 8007E51C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007E520  41 82 00 0C */	beq lbl_8007E52C
/* 8007E524  38 60 00 00 */	li r3, 0
/* 8007E528  48 00 00 08 */	b lbl_8007E530
lbl_8007E52C:
/* 8007E52C  7F E3 FB 78 */	mr r3, r31
lbl_8007E530:
/* 8007E530  39 61 00 20 */	addi r11, r1, 0x20
/* 8007E534  48 2E 3C F1 */	bl _restgpr_28
/* 8007E538  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007E53C  7C 08 03 A6 */	mtlr r0
/* 8007E540  38 21 00 20 */	addi r1, r1, 0x20
/* 8007E544  4E 80 00 20 */	blr 
