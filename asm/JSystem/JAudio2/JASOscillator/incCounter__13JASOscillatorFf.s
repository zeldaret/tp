lbl_8029BF68:
/* 8029BF68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029BF6C  7C 08 02 A6 */	mflr r0
/* 8029BF70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029BF74  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8029BF78  2C 00 00 01 */	cmpwi r0, 1
/* 8029BF7C  41 82 00 20 */	beq lbl_8029BF9C
/* 8029BF80  40 80 00 10 */	bge lbl_8029BF90
/* 8029BF84  2C 00 00 00 */	cmpwi r0, 0
/* 8029BF88  40 80 00 30 */	bge lbl_8029BFB8
/* 8029BF8C  48 00 00 10 */	b lbl_8029BF9C
lbl_8029BF90:
/* 8029BF90  2C 00 00 03 */	cmpwi r0, 3
/* 8029BF94  40 80 00 08 */	bge lbl_8029BF9C
/* 8029BF98  48 00 00 20 */	b lbl_8029BFB8
lbl_8029BF9C:
/* 8029BF9C  C0 43 00 04 */	lfs f2, 4(r3)
/* 8029BFA0  80 83 00 00 */	lwz r4, 0(r3)
/* 8029BFA4  C0 04 00 04 */	lfs f0, 4(r4)
/* 8029BFA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8029BFAC  EC 02 00 2A */	fadds f0, f2, f0
/* 8029BFB0  D0 03 00 04 */	stfs f0, 4(r3)
/* 8029BFB4  48 00 01 2D */	bl update__13JASOscillatorFv
lbl_8029BFB8:
/* 8029BFB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029BFBC  7C 08 03 A6 */	mtlr r0
/* 8029BFC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8029BFC4  4E 80 00 20 */	blr 
