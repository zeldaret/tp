lbl_8050E668:
/* 8050E668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050E66C  7C 08 02 A6 */	mflr r0
/* 8050E670  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050E674  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050E678  7C 7F 1B 78 */	mr r31, r3
/* 8050E67C  4B B0 A6 64 */	b fopAc_IsActor__FPv
/* 8050E680  2C 03 00 00 */	cmpwi r3, 0
/* 8050E684  41 82 00 18 */	beq lbl_8050E69C
/* 8050E688  A8 1F 00 08 */	lha r0, 8(r31)
/* 8050E68C  2C 00 01 D5 */	cmpwi r0, 0x1d5
/* 8050E690  40 82 00 0C */	bne lbl_8050E69C
/* 8050E694  7F E3 FB 78 */	mr r3, r31
/* 8050E698  48 00 00 08 */	b lbl_8050E6A0
lbl_8050E69C:
/* 8050E69C  38 60 00 00 */	li r3, 0
lbl_8050E6A0:
/* 8050E6A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050E6A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050E6A8  7C 08 03 A6 */	mtlr r0
/* 8050E6AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8050E6B0  4E 80 00 20 */	blr 
