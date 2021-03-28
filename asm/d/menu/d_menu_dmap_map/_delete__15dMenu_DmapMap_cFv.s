lbl_801C0D04:
/* 801C0D04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C0D08  7C 08 02 A6 */	mflr r0
/* 801C0D0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C0D10  39 61 00 20 */	addi r11, r1, 0x20
/* 801C0D14  48 1A 14 C5 */	bl _savegpr_28
/* 801C0D18  7C 7C 1B 78 */	mr r28, r3
/* 801C0D1C  3B A0 00 00 */	li r29, 0
/* 801C0D20  3B E0 00 00 */	li r31, 0
lbl_801C0D24:
/* 801C0D24  7F DC FA 14 */	add r30, r28, r31
/* 801C0D28  80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 801C0D2C  28 03 00 00 */	cmplwi r3, 0
/* 801C0D30  41 82 00 08 */	beq lbl_801C0D38
/* 801C0D34  48 10 E0 2D */	bl __dla__FPv
lbl_801C0D38:
/* 801C0D38  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 801C0D3C  28 03 00 00 */	cmplwi r3, 0
/* 801C0D40  41 82 00 08 */	beq lbl_801C0D48
/* 801C0D44  48 10 E0 1D */	bl __dla__FPv
lbl_801C0D48:
/* 801C0D48  3B BD 00 01 */	addi r29, r29, 1
/* 801C0D4C  2C 1D 00 02 */	cmpwi r29, 2
/* 801C0D50  3B FF 00 04 */	addi r31, r31, 4
/* 801C0D54  41 80 FF D0 */	blt lbl_801C0D24
/* 801C0D58  39 61 00 20 */	addi r11, r1, 0x20
/* 801C0D5C  48 1A 14 C9 */	bl _restgpr_28
/* 801C0D60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C0D64  7C 08 03 A6 */	mtlr r0
/* 801C0D68  38 21 00 20 */	addi r1, r1, 0x20
/* 801C0D6C  4E 80 00 20 */	blr 
