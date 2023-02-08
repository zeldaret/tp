lbl_80A9D33C:
/* 80A9D33C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9D340  7C 08 02 A6 */	mflr r0
/* 80A9D344  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9D348  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9D34C  7C 7F 1B 78 */	mr r31, r3
/* 80A9D350  4B 57 B9 91 */	bl fopAc_IsActor__FPv
/* 80A9D354  2C 03 00 00 */	cmpwi r3, 0
/* 80A9D358  40 82 00 0C */	bne lbl_80A9D364
/* 80A9D35C  38 60 00 00 */	li r3, 0
/* 80A9D360  48 00 00 30 */	b lbl_80A9D390
lbl_80A9D364:
/* 80A9D364  A8 1F 00 08 */	lha r0, 8(r31)
/* 80A9D368  2C 00 02 72 */	cmpwi r0, 0x272
/* 80A9D36C  41 82 00 0C */	beq lbl_80A9D378
/* 80A9D370  38 60 00 00 */	li r3, 0
/* 80A9D374  48 00 00 1C */	b lbl_80A9D390
lbl_80A9D378:
/* 80A9D378  80 1F 06 E0 */	lwz r0, 0x6e0(r31)
/* 80A9D37C  28 00 00 01 */	cmplwi r0, 1
/* 80A9D380  40 82 00 0C */	bne lbl_80A9D38C
/* 80A9D384  7F E3 FB 78 */	mr r3, r31
/* 80A9D388  48 00 00 08 */	b lbl_80A9D390
lbl_80A9D38C:
/* 80A9D38C  38 60 00 00 */	li r3, 0
lbl_80A9D390:
/* 80A9D390  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9D394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9D398  7C 08 03 A6 */	mtlr r0
/* 80A9D39C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9D3A0  4E 80 00 20 */	blr 
