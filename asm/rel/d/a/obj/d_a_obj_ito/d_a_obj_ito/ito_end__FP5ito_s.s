lbl_8047BF8C:
/* 8047BF8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047BF90  7C 08 02 A6 */	mflr r0
/* 8047BF94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047BF98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047BF9C  7C 7F 1B 78 */	mr r31, r3
/* 8047BFA0  38 7F 02 50 */	addi r3, r31, 0x250
/* 8047BFA4  3C 80 80 48 */	lis r4, lit_3946@ha /* 0x8047D83C@ha */
/* 8047BFA8  C0 24 D8 3C */	lfs f1, lit_3946@l(r4)  /* 0x8047D83C@l */
/* 8047BFAC  FC 40 08 90 */	fmr f2, f1
/* 8047BFB0  4B DF 3A D1 */	bl cLib_addCalc0__FPfff
/* 8047BFB4  38 C0 00 00 */	li r6, 0
/* 8047BFB8  38 60 00 00 */	li r3, 0
/* 8047BFBC  38 80 00 00 */	li r4, 0
/* 8047BFC0  3C A0 80 48 */	lis r5, lit_4150@ha /* 0x8047D884@ha */
/* 8047BFC4  C0 25 D8 84 */	lfs f1, lit_4150@l(r5)  /* 0x8047D884@l */
lbl_8047BFC8:
/* 8047BFC8  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 8047BFCC  7C A5 20 2E */	lwzx r5, r5, r4
/* 8047BFD0  38 E3 00 1C */	addi r7, r3, 0x1c
/* 8047BFD4  7C FF 3A 14 */	add r7, r31, r7
/* 8047BFD8  38 00 00 14 */	li r0, 0x14
/* 8047BFDC  7C 09 03 A6 */	mtctr r0
lbl_8047BFE0:
/* 8047BFE0  C0 05 00 04 */	lfs f0, 4(r5)
/* 8047BFE4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8047BFE8  D0 05 00 04 */	stfs f0, 4(r5)
/* 8047BFEC  C0 05 00 04 */	lfs f0, 4(r5)
/* 8047BFF0  C0 47 00 00 */	lfs f2, 0(r7)
/* 8047BFF4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8047BFF8  40 80 00 08 */	bge lbl_8047C000
/* 8047BFFC  D0 45 00 04 */	stfs f2, 4(r5)
lbl_8047C000:
/* 8047C000  38 A5 00 0C */	addi r5, r5, 0xc
/* 8047C004  38 E7 00 04 */	addi r7, r7, 4
/* 8047C008  42 00 FF D8 */	bdnz lbl_8047BFE0
/* 8047C00C  38 C6 00 01 */	addi r6, r6, 1
/* 8047C010  2C 06 00 06 */	cmpwi r6, 6
/* 8047C014  38 63 00 50 */	addi r3, r3, 0x50
/* 8047C018  38 84 00 20 */	addi r4, r4, 0x20
/* 8047C01C  41 80 FF AC */	blt lbl_8047BFC8
/* 8047C020  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047C024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047C028  7C 08 03 A6 */	mtlr r0
/* 8047C02C  38 21 00 10 */	addi r1, r1, 0x10
/* 8047C030  4E 80 00 20 */	blr 
