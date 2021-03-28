lbl_805D41CC:
/* 805D41CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D41D0  7C 08 02 A6 */	mflr r0
/* 805D41D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D41D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D41DC  7C 7F 1B 78 */	mr r31, r3
/* 805D41E0  3C 80 80 5E */	lis r4, lit_3932@ha
/* 805D41E4  38 C4 CA 54 */	addi r6, r4, lit_3932@l
/* 805D41E8  80 03 06 84 */	lwz r0, 0x684(r3)
/* 805D41EC  2C 00 00 00 */	cmpwi r0, 0
/* 805D41F0  41 82 00 08 */	beq lbl_805D41F8
/* 805D41F4  48 00 00 80 */	b lbl_805D4274
lbl_805D41F8:
/* 805D41F8  38 00 48 00 */	li r0, 0x4800
/* 805D41FC  B0 1F 07 CC */	sth r0, 0x7cc(r31)
/* 805D4200  B0 1F 07 CE */	sth r0, 0x7ce(r31)
/* 805D4204  3C 80 80 5E */	lis r4, l_HIO@ha
/* 805D4208  38 84 DA BC */	addi r4, r4, l_HIO@l
/* 805D420C  A8 04 00 30 */	lha r0, 0x30(r4)
/* 805D4210  90 1F 08 34 */	stw r0, 0x834(r31)
/* 805D4214  38 00 00 00 */	li r0, 0
/* 805D4218  98 1F 08 5F */	stb r0, 0x85f(r31)
/* 805D421C  90 1F 08 2C */	stw r0, 0x82c(r31)
/* 805D4220  C0 06 00 04 */	lfs f0, 4(r6)
/* 805D4224  D0 1F 08 08 */	stfs f0, 0x808(r31)
/* 805D4228  98 1F 08 5A */	stb r0, 0x85a(r31)
/* 805D422C  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D4230  C0 06 00 70 */	lfs f0, 0x70(r6)
/* 805D4234  D0 1F 08 10 */	stfs f0, 0x810(r31)
/* 805D4238  38 80 00 2C */	li r4, 0x2c
/* 805D423C  38 A0 00 02 */	li r5, 2
/* 805D4240  C0 26 01 90 */	lfs f1, 0x190(r6)
/* 805D4244  C0 46 00 08 */	lfs f2, 8(r6)
/* 805D4248  4B FF 78 81 */	bl setBck__8daB_DS_cFiUcff
/* 805D424C  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805D4250  38 63 DA BC */	addi r3, r3, l_HIO@l
/* 805D4254  A8 03 00 32 */	lha r0, 0x32(r3)
/* 805D4258  90 1F 06 90 */	stw r0, 0x690(r31)
/* 805D425C  38 00 00 00 */	li r0, 0
/* 805D4260  98 1F 08 60 */	stb r0, 0x860(r31)
/* 805D4264  7F E3 FB 78 */	mr r3, r31
/* 805D4268  38 80 00 02 */	li r4, 2
/* 805D426C  38 A0 00 00 */	li r5, 0
/* 805D4270  4B FF 79 05 */	bl setActionMode__8daB_DS_cFii
lbl_805D4274:
/* 805D4274  7F E3 FB 78 */	mr r3, r31
/* 805D4278  4B FF FB 09 */	bl mNeckAngleSet__8daB_DS_cFv
/* 805D427C  7F E3 FB 78 */	mr r3, r31
/* 805D4280  38 80 00 01 */	li r4, 1
/* 805D4284  4B FF F7 21 */	bl mFuwafuwaSet__8daB_DS_cFb
/* 805D4288  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D428C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D4290  7C 08 03 A6 */	mtlr r0
/* 805D4294  38 21 00 10 */	addi r1, r1, 0x10
/* 805D4298  4E 80 00 20 */	blr 
