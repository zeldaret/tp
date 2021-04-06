lbl_80C4EFEC:
/* 80C4EFEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4EFF0  7C 08 02 A6 */	mflr r0
/* 80C4EFF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4EFF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4EFFC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C4F000  41 82 00 30 */	beq lbl_80C4F030
/* 80C4F004  4B 3C 9C DD */	bl fopAc_IsActor__FPv
/* 80C4F008  2C 03 00 00 */	cmpwi r3, 0
/* 80C4F00C  41 82 00 24 */	beq lbl_80C4F030
/* 80C4F010  A8 1F 00 0E */	lha r0, 0xe(r31)
/* 80C4F014  2C 00 00 C7 */	cmpwi r0, 0xc7
/* 80C4F018  40 82 00 18 */	bne lbl_80C4F030
/* 80C4F01C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C4F020  54 00 7F FF */	rlwinm. r0, r0, 0xf, 0x1f, 0x1f
/* 80C4F024  40 82 00 0C */	bne lbl_80C4F030
/* 80C4F028  7F E3 FB 78 */	mr r3, r31
/* 80C4F02C  48 00 00 08 */	b lbl_80C4F034
lbl_80C4F030:
/* 80C4F030  38 60 00 00 */	li r3, 0
lbl_80C4F034:
/* 80C4F034  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4F038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4F03C  7C 08 03 A6 */	mtlr r0
/* 80C4F040  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4F044  4E 80 00 20 */	blr 
