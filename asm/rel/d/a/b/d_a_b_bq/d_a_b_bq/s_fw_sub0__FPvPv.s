lbl_805B3ABC:
/* 805B3ABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B3AC0  7C 08 02 A6 */	mflr r0
/* 805B3AC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B3AC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B3ACC  7C 7F 1B 78 */	mr r31, r3
/* 805B3AD0  4B A6 52 10 */	b fopAc_IsActor__FPv
/* 805B3AD4  2C 03 00 00 */	cmpwi r3, 0
/* 805B3AD8  41 82 00 1C */	beq lbl_805B3AF4
/* 805B3ADC  A8 1F 00 08 */	lha r0, 8(r31)
/* 805B3AE0  2C 00 02 F0 */	cmpwi r0, 0x2f0
/* 805B3AE4  40 82 00 10 */	bne lbl_805B3AF4
/* 805B3AE8  3C 60 80 5C */	lis r3, lit_3830@ha
/* 805B3AEC  C0 03 A5 8C */	lfs f0, lit_3830@l(r3)
/* 805B3AF0  D0 1F 05 8C */	stfs f0, 0x58c(r31)
lbl_805B3AF4:
/* 805B3AF4  38 60 00 00 */	li r3, 0
/* 805B3AF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B3AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B3B00  7C 08 03 A6 */	mtlr r0
/* 805B3B04  38 21 00 10 */	addi r1, r1, 0x10
/* 805B3B08  4E 80 00 20 */	blr 
