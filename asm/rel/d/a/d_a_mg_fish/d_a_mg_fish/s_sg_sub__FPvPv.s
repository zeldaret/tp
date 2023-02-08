lbl_8052B468:
/* 8052B468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052B46C  7C 08 02 A6 */	mflr r0
/* 8052B470  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052B474  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052B478  7C 7F 1B 78 */	mr r31, r3
/* 8052B47C  4B AE D8 65 */	bl fopAc_IsActor__FPv
/* 8052B480  2C 03 00 00 */	cmpwi r3, 0
/* 8052B484  41 82 00 18 */	beq lbl_8052B49C
/* 8052B488  A8 1F 00 08 */	lha r0, 8(r31)
/* 8052B48C  2C 00 01 B6 */	cmpwi r0, 0x1b6
/* 8052B490  40 82 00 0C */	bne lbl_8052B49C
/* 8052B494  7F E3 FB 78 */	mr r3, r31
/* 8052B498  48 00 00 08 */	b lbl_8052B4A0
lbl_8052B49C:
/* 8052B49C  38 60 00 00 */	li r3, 0
lbl_8052B4A0:
/* 8052B4A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052B4A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052B4A8  7C 08 03 A6 */	mtlr r0
/* 8052B4AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8052B4B0  4E 80 00 20 */	blr 
