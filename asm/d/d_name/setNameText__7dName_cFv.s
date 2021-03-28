lbl_8024F88C:
/* 8024F88C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024F890  7C 08 02 A6 */	mflr r0
/* 8024F894  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024F898  39 61 00 20 */	addi r11, r1, 0x20
/* 8024F89C  48 11 29 39 */	bl _savegpr_27
/* 8024F8A0  7C 7B 1B 78 */	mr r27, r3
/* 8024F8A4  3B 80 00 00 */	li r28, 0
/* 8024F8A8  3B E0 00 00 */	li r31, 0
/* 8024F8AC  3B C0 00 00 */	li r30, 0
/* 8024F8B0  3C 60 80 3A */	lis r3, d_d_name__stringBase0@ha
/* 8024F8B4  3B A3 9C C8 */	addi r29, r3, d_d_name__stringBase0@l
lbl_8024F8B8:
/* 8024F8B8  7C 7B F2 14 */	add r3, r27, r30
/* 8024F8BC  88 03 02 CF */	lbz r0, 0x2cf(r3)
/* 8024F8C0  28 00 00 00 */	cmplwi r0, 0
/* 8024F8C4  41 82 00 24 */	beq lbl_8024F8E8
/* 8024F8C8  80 03 02 D0 */	lwz r0, 0x2d0(r3)
/* 8024F8CC  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8024F8D0  38 1F 00 54 */	addi r0, r31, 0x54
/* 8024F8D4  7C 7B 00 2E */	lwzx r3, r27, r0
/* 8024F8D8  38 9D 02 74 */	addi r4, r29, 0x274
/* 8024F8DC  7C A6 2B 78 */	mr r6, r5
/* 8024F8E0  4C C6 31 82 */	crclr 6
/* 8024F8E4  48 11 6B F9 */	bl sprintf
lbl_8024F8E8:
/* 8024F8E8  3B 9C 00 01 */	addi r28, r28, 1
/* 8024F8EC  2C 1C 00 08 */	cmpwi r28, 8
/* 8024F8F0  3B FF 00 04 */	addi r31, r31, 4
/* 8024F8F4  3B DE 00 08 */	addi r30, r30, 8
/* 8024F8F8  41 80 FF C0 */	blt lbl_8024F8B8
/* 8024F8FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8024F900  48 11 29 21 */	bl _restgpr_27
/* 8024F904  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024F908  7C 08 03 A6 */	mtlr r0
/* 8024F90C  38 21 00 20 */	addi r1, r1, 0x20
/* 8024F910  4E 80 00 20 */	blr 
