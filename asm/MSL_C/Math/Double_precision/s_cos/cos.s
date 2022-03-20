lbl_8036C028:
/* 8036C028  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036C02C  7C 08 02 A6 */	mflr r0
/* 8036C030  3C 60 3F E9 */	lis r3, 0x3FE9 /* 0x3FE921FB@ha */
/* 8036C034  D8 21 00 08 */	stfd f1, 8(r1)
/* 8036C038  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036C03C  38 03 21 FB */	addi r0, r3, 0x21FB /* 0x3FE921FB@l */
/* 8036C040  80 61 00 08 */	lwz r3, 8(r1)
/* 8036C044  54 63 00 7E */	clrlwi r3, r3, 1
/* 8036C048  7C 03 00 00 */	cmpw r3, r0
/* 8036C04C  41 81 00 10 */	bgt lbl_8036C05C
/* 8036C050  C8 42 D0 F0 */	lfd f2, lit_67(r2)
/* 8036C054  4B FF EA 55 */	bl __kernel_cos
/* 8036C058  48 00 00 94 */	b lbl_8036C0EC
lbl_8036C05C:
/* 8036C05C  3C 00 7F F0 */	lis r0, 0x7ff0
/* 8036C060  7C 03 00 00 */	cmpw r3, r0
/* 8036C064  41 80 00 0C */	blt lbl_8036C070
/* 8036C068  FC 21 08 28 */	fsub f1, f1, f1
/* 8036C06C  48 00 00 80 */	b lbl_8036C0EC
lbl_8036C070:
/* 8036C070  38 61 00 10 */	addi r3, r1, 0x10
/* 8036C074  4B FF E6 95 */	bl __ieee754_rem_pio2
/* 8036C078  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 8036C07C  2C 00 00 01 */	cmpwi r0, 1
/* 8036C080  41 82 00 30 */	beq lbl_8036C0B0
/* 8036C084  40 80 00 10 */	bge lbl_8036C094
/* 8036C088  2C 00 00 00 */	cmpwi r0, 0
/* 8036C08C  40 80 00 14 */	bge lbl_8036C0A0
/* 8036C090  48 00 00 4C */	b lbl_8036C0DC
lbl_8036C094:
/* 8036C094  2C 00 00 03 */	cmpwi r0, 3
/* 8036C098  40 80 00 44 */	bge lbl_8036C0DC
/* 8036C09C  48 00 00 2C */	b lbl_8036C0C8
lbl_8036C0A0:
/* 8036C0A0  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8036C0A4  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8036C0A8  4B FF EA 01 */	bl __kernel_cos
/* 8036C0AC  48 00 00 40 */	b lbl_8036C0EC
lbl_8036C0B0:
/* 8036C0B0  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8036C0B4  38 60 00 01 */	li r3, 1
/* 8036C0B8  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8036C0BC  4B FF F9 35 */	bl __kernel_sin
/* 8036C0C0  FC 20 08 50 */	fneg f1, f1
/* 8036C0C4  48 00 00 28 */	b lbl_8036C0EC
lbl_8036C0C8:
/* 8036C0C8  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8036C0CC  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8036C0D0  4B FF E9 D9 */	bl __kernel_cos
/* 8036C0D4  FC 20 08 50 */	fneg f1, f1
/* 8036C0D8  48 00 00 14 */	b lbl_8036C0EC
lbl_8036C0DC:
/* 8036C0DC  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8036C0E0  38 60 00 01 */	li r3, 1
/* 8036C0E4  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8036C0E8  4B FF F9 09 */	bl __kernel_sin
lbl_8036C0EC:
/* 8036C0EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036C0F0  7C 08 03 A6 */	mtlr r0
/* 8036C0F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8036C0F8  4E 80 00 20 */	blr 
