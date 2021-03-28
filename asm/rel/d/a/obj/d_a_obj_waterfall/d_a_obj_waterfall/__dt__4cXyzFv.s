lbl_80D2EFF8:
/* 80D2EFF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2EFFC  7C 08 02 A6 */	mflr r0
/* 80D2F000  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2F004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2F008  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D2F00C  41 82 00 10 */	beq lbl_80D2F01C
/* 80D2F010  7C 80 07 35 */	extsh. r0, r4
/* 80D2F014  40 81 00 08 */	ble lbl_80D2F01C
/* 80D2F018  4B 59 FD 24 */	b __dl__FPv
lbl_80D2F01C:
/* 80D2F01C  7F E3 FB 78 */	mr r3, r31
/* 80D2F020  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2F024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2F028  7C 08 03 A6 */	mtlr r0
/* 80D2F02C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2F030  4E 80 00 20 */	blr 
