lbl_800DC5DC:
/* 800DC5DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DC5E0  7C 08 02 A6 */	mflr r0
/* 800DC5E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DC5E8  39 61 00 20 */	addi r11, r1, 0x20
/* 800DC5EC  48 28 5B F1 */	bl _savegpr_29
/* 800DC5F0  7C 7D 1B 78 */	mr r29, r3
/* 800DC5F4  3B C0 00 00 */	li r30, 0
/* 800DC5F8  7F DF F3 78 */	mr r31, r30
/* 800DC5FC  80 83 27 EC */	lwz r4, 0x27ec(r3)
/* 800DC600  28 04 00 00 */	cmplwi r4, 0
/* 800DC604  41 82 00 20 */	beq lbl_800DC624
/* 800DC608  80 04 05 5C */	lwz r0, 0x55c(r4)
/* 800DC60C  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 800DC610  41 82 00 14 */	beq lbl_800DC624
/* 800DC614  4B FF 62 E1 */	bl checkCutHeadState__9daAlink_cFv
/* 800DC618  2C 03 00 00 */	cmpwi r3, 0
/* 800DC61C  40 82 00 08 */	bne lbl_800DC624
/* 800DC620  3B E0 00 01 */	li r31, 1
lbl_800DC624:
/* 800DC624  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 800DC628  41 82 00 34 */	beq lbl_800DC65C
/* 800DC62C  38 60 00 01 */	li r3, 1
/* 800DC630  80 9D 27 EC */	lwz r4, 0x27ec(r29)
/* 800DC634  88 04 04 96 */	lbz r0, 0x496(r4)
/* 800DC638  28 00 00 02 */	cmplwi r0, 2
/* 800DC63C  40 82 00 14 */	bne lbl_800DC650
/* 800DC640  A0 04 05 8E */	lhz r0, 0x58e(r4)
/* 800DC644  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800DC648  41 82 00 08 */	beq lbl_800DC650
/* 800DC64C  38 60 00 00 */	li r3, 0
lbl_800DC650:
/* 800DC650  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DC654  41 82 00 08 */	beq lbl_800DC65C
/* 800DC658  3B C0 00 01 */	li r30, 1
lbl_800DC65C:
/* 800DC65C  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 800DC660  39 61 00 20 */	addi r11, r1, 0x20
/* 800DC664  48 28 5B C5 */	bl _restgpr_29
/* 800DC668  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DC66C  7C 08 03 A6 */	mtlr r0
/* 800DC670  38 21 00 20 */	addi r1, r1, 0x20
/* 800DC674  4E 80 00 20 */	blr 
