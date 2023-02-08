lbl_801E7D60:
/* 801E7D60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E7D64  7C 08 02 A6 */	mflr r0
/* 801E7D68  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E7D6C  39 61 00 20 */	addi r11, r1, 0x20
/* 801E7D70  48 17 A4 6D */	bl _savegpr_29
/* 801E7D74  7C 7D 1B 78 */	mr r29, r3
/* 801E7D78  54 80 04 3F */	clrlwi. r0, r4, 0x10
/* 801E7D7C  40 82 00 34 */	bne lbl_801E7DB0
/* 801E7D80  3B C0 00 00 */	li r30, 0
/* 801E7D84  3B E0 00 00 */	li r31, 0
lbl_801E7D88:
/* 801E7D88  38 1F 01 D0 */	addi r0, r31, 0x1d0
/* 801E7D8C  7C 7D 00 2E */	lwzx r3, r29, r0
/* 801E7D90  28 03 00 00 */	cmplwi r3, 0
/* 801E7D94  41 82 00 08 */	beq lbl_801E7D9C
/* 801E7D98  48 06 D8 71 */	bl hide__13CPaneMgrAlphaFv
lbl_801E7D9C:
/* 801E7D9C  3B DE 00 01 */	addi r30, r30, 1
/* 801E7DA0  2C 1E 00 03 */	cmpwi r30, 3
/* 801E7DA4  3B FF 00 04 */	addi r31, r31, 4
/* 801E7DA8  41 80 FF E0 */	blt lbl_801E7D88
/* 801E7DAC  48 00 00 30 */	b lbl_801E7DDC
lbl_801E7DB0:
/* 801E7DB0  3B C0 00 00 */	li r30, 0
/* 801E7DB4  3B E0 00 00 */	li r31, 0
lbl_801E7DB8:
/* 801E7DB8  38 1F 01 D0 */	addi r0, r31, 0x1d0
/* 801E7DBC  7C 7D 00 2E */	lwzx r3, r29, r0
/* 801E7DC0  28 03 00 00 */	cmplwi r3, 0
/* 801E7DC4  41 82 00 08 */	beq lbl_801E7DCC
/* 801E7DC8  48 06 D8 01 */	bl show__13CPaneMgrAlphaFv
lbl_801E7DCC:
/* 801E7DCC  3B DE 00 01 */	addi r30, r30, 1
/* 801E7DD0  2C 1E 00 03 */	cmpwi r30, 3
/* 801E7DD4  3B FF 00 04 */	addi r31, r31, 4
/* 801E7DD8  41 80 FF E0 */	blt lbl_801E7DB8
lbl_801E7DDC:
/* 801E7DDC  39 61 00 20 */	addi r11, r1, 0x20
/* 801E7DE0  48 17 A4 49 */	bl _restgpr_29
/* 801E7DE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E7DE8  7C 08 03 A6 */	mtlr r0
/* 801E7DEC  38 21 00 20 */	addi r1, r1, 0x20
/* 801E7DF0  4E 80 00 20 */	blr 
