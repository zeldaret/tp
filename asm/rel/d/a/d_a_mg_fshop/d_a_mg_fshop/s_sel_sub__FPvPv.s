lbl_8086D48C:
/* 8086D48C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8086D490  7C 08 02 A6 */	mflr r0
/* 8086D494  90 01 00 14 */	stw r0, 0x14(r1)
/* 8086D498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8086D49C  93 C1 00 08 */	stw r30, 8(r1)
/* 8086D4A0  7C 7E 1B 78 */	mr r30, r3
/* 8086D4A4  7C 9F 23 78 */	mr r31, r4
/* 8086D4A8  4B 7A B8 38 */	b fopAc_IsActor__FPv
/* 8086D4AC  2C 03 00 00 */	cmpwi r3, 0
/* 8086D4B0  41 82 00 34 */	beq lbl_8086D4E4
/* 8086D4B4  A8 1E 00 08 */	lha r0, 8(r30)
/* 8086D4B8  2C 00 01 37 */	cmpwi r0, 0x137
/* 8086D4BC  40 82 00 28 */	bne lbl_8086D4E4
/* 8086D4C0  88 9E 40 0E */	lbz r4, 0x400e(r30)
/* 8086D4C4  88 1F 40 0C */	lbz r0, 0x400c(r31)
/* 8086D4C8  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8086D4CC  38 03 00 01 */	addi r0, r3, 1
/* 8086D4D0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8086D4D4  7C 04 00 40 */	cmplw r4, r0
/* 8086D4D8  40 82 00 0C */	bne lbl_8086D4E4
/* 8086D4DC  7F C3 F3 78 */	mr r3, r30
/* 8086D4E0  48 00 00 08 */	b lbl_8086D4E8
lbl_8086D4E4:
/* 8086D4E4  38 60 00 00 */	li r3, 0
lbl_8086D4E8:
/* 8086D4E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8086D4EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8086D4F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086D4F4  7C 08 03 A6 */	mtlr r0
/* 8086D4F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8086D4FC  4E 80 00 20 */	blr 
