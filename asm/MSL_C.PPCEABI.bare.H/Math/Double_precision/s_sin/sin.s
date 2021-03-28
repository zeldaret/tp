lbl_8036C590:
/* 8036C590  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036C594  7C 08 02 A6 */	mflr r0
/* 8036C598  3C 60 3F E9 */	lis r3, 0x3FE9 /* 0x3FE921FB@ha */
/* 8036C59C  D8 21 00 08 */	stfd f1, 8(r1)
/* 8036C5A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036C5A4  38 03 21 FB */	addi r0, r3, 0x21FB /* 0x3FE921FB@l */
/* 8036C5A8  80 61 00 08 */	lwz r3, 8(r1)
/* 8036C5AC  54 63 00 7E */	clrlwi r3, r3, 1
/* 8036C5B0  7C 03 00 00 */	cmpw r3, r0
/* 8036C5B4  41 81 00 14 */	bgt lbl_8036C5C8
/* 8036C5B8  C8 42 D1 38 */	lfd f2, lit_67(r2)
/* 8036C5BC  38 60 00 00 */	li r3, 0
/* 8036C5C0  4B FF F4 31 */	bl __kernel_sin
/* 8036C5C4  48 00 00 94 */	b lbl_8036C658
lbl_8036C5C8:
/* 8036C5C8  3C 00 7F F0 */	lis r0, 0x7ff0
/* 8036C5CC  7C 03 00 00 */	cmpw r3, r0
/* 8036C5D0  41 80 00 0C */	blt lbl_8036C5DC
/* 8036C5D4  FC 21 08 28 */	fsub f1, f1, f1
/* 8036C5D8  48 00 00 80 */	b lbl_8036C658
lbl_8036C5DC:
/* 8036C5DC  38 61 00 10 */	addi r3, r1, 0x10
/* 8036C5E0  4B FF E1 29 */	bl __ieee754_rem_pio2
/* 8036C5E4  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 8036C5E8  2C 00 00 01 */	cmpwi r0, 1
/* 8036C5EC  41 82 00 34 */	beq lbl_8036C620
/* 8036C5F0  40 80 00 10 */	bge lbl_8036C600
/* 8036C5F4  2C 00 00 00 */	cmpwi r0, 0
/* 8036C5F8  40 80 00 14 */	bge lbl_8036C60C
/* 8036C5FC  48 00 00 4C */	b lbl_8036C648
lbl_8036C600:
/* 8036C600  2C 00 00 03 */	cmpwi r0, 3
/* 8036C604  40 80 00 44 */	bge lbl_8036C648
/* 8036C608  48 00 00 28 */	b lbl_8036C630
lbl_8036C60C:
/* 8036C60C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8036C610  38 60 00 01 */	li r3, 1
/* 8036C614  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8036C618  4B FF F3 D9 */	bl __kernel_sin
/* 8036C61C  48 00 00 3C */	b lbl_8036C658
lbl_8036C620:
/* 8036C620  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8036C624  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8036C628  4B FF E4 81 */	bl __kernel_cos
/* 8036C62C  48 00 00 2C */	b lbl_8036C658
lbl_8036C630:
/* 8036C630  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8036C634  38 60 00 01 */	li r3, 1
/* 8036C638  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8036C63C  4B FF F3 B5 */	bl __kernel_sin
/* 8036C640  FC 20 08 50 */	fneg f1, f1
/* 8036C644  48 00 00 14 */	b lbl_8036C658
lbl_8036C648:
/* 8036C648  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8036C64C  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8036C650  4B FF E4 59 */	bl __kernel_cos
/* 8036C654  FC 20 08 50 */	fneg f1, f1
lbl_8036C658:
/* 8036C658  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036C65C  7C 08 03 A6 */	mtlr r0
/* 8036C660  38 21 00 20 */	addi r1, r1, 0x20
/* 8036C664  4E 80 00 20 */	blr 
