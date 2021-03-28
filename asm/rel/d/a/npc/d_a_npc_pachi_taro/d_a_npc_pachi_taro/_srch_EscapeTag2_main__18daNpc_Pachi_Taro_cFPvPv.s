lbl_80A9D464:
/* 80A9D464  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9D468  7C 08 02 A6 */	mflr r0
/* 80A9D46C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9D470  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9D474  7C 7F 1B 78 */	mr r31, r3
/* 80A9D478  4B 57 B8 68 */	b fopAc_IsActor__FPv
/* 80A9D47C  2C 03 00 00 */	cmpwi r3, 0
/* 80A9D480  40 82 00 0C */	bne lbl_80A9D48C
/* 80A9D484  38 60 00 00 */	li r3, 0
/* 80A9D488  48 00 00 30 */	b lbl_80A9D4B8
lbl_80A9D48C:
/* 80A9D48C  A8 1F 00 08 */	lha r0, 8(r31)
/* 80A9D490  2C 00 02 72 */	cmpwi r0, 0x272
/* 80A9D494  41 82 00 0C */	beq lbl_80A9D4A0
/* 80A9D498  38 60 00 00 */	li r3, 0
/* 80A9D49C  48 00 00 1C */	b lbl_80A9D4B8
lbl_80A9D4A0:
/* 80A9D4A0  80 1F 06 E0 */	lwz r0, 0x6e0(r31)
/* 80A9D4A4  28 00 00 03 */	cmplwi r0, 3
/* 80A9D4A8  40 82 00 0C */	bne lbl_80A9D4B4
/* 80A9D4AC  7F E3 FB 78 */	mr r3, r31
/* 80A9D4B0  48 00 00 08 */	b lbl_80A9D4B8
lbl_80A9D4B4:
/* 80A9D4B4  38 60 00 00 */	li r3, 0
lbl_80A9D4B8:
/* 80A9D4B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9D4BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9D4C0  7C 08 03 A6 */	mtlr r0
/* 80A9D4C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9D4C8  4E 80 00 20 */	blr 
