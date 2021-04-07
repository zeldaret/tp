lbl_80D5B410:
/* 80D5B410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B414  7C 08 02 A6 */	mflr r0
/* 80D5B418  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B41C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5B420  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D5B424  41 82 00 24 */	beq lbl_80D5B448
/* 80D5B428  4B 2B D8 B9 */	bl fopAc_IsActor__FPv
/* 80D5B42C  2C 03 00 00 */	cmpwi r3, 0
/* 80D5B430  41 82 00 18 */	beq lbl_80D5B448
/* 80D5B434  A8 1F 00 0E */	lha r0, 0xe(r31)
/* 80D5B438  2C 00 01 98 */	cmpwi r0, 0x198
/* 80D5B43C  40 82 00 0C */	bne lbl_80D5B448
/* 80D5B440  7F E3 FB 78 */	mr r3, r31
/* 80D5B444  48 00 00 08 */	b lbl_80D5B44C
lbl_80D5B448:
/* 80D5B448  38 60 00 00 */	li r3, 0
lbl_80D5B44C:
/* 80D5B44C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5B450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B454  7C 08 03 A6 */	mtlr r0
/* 80D5B458  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B45C  4E 80 00 20 */	blr 
