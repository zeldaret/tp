lbl_806BAF74:
/* 806BAF74  3C 80 80 6C */	lis r4, lit_3826@ha
/* 806BAF78  38 84 B6 D0 */	addi r4, r4, lit_3826@l
/* 806BAF7C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 806BAF80  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 806BAF84  40 82 00 18 */	bne lbl_806BAF9C
/* 806BAF88  C0 04 00 04 */	lfs f0, 4(r4)
/* 806BAF8C  D0 03 06 0C */	stfs f0, 0x60c(r3)
/* 806BAF90  C0 04 00 00 */	lfs f0, 0(r4)
/* 806BAF94  D0 03 05 CC */	stfs f0, 0x5cc(r3)
/* 806BAF98  4E 80 00 20 */	blr 
lbl_806BAF9C:
/* 806BAF9C  28 00 00 01 */	cmplwi r0, 1
/* 806BAFA0  40 82 00 18 */	bne lbl_806BAFB8
/* 806BAFA4  C0 04 01 2C */	lfs f0, 0x12c(r4)
/* 806BAFA8  D0 03 05 CC */	stfs f0, 0x5cc(r3)
/* 806BAFAC  C0 04 00 04 */	lfs f0, 4(r4)
/* 806BAFB0  D0 03 06 0C */	stfs f0, 0x60c(r3)
/* 806BAFB4  4E 80 00 20 */	blr 
lbl_806BAFB8:
/* 806BAFB8  28 00 00 02 */	cmplwi r0, 2
/* 806BAFBC  40 82 00 18 */	bne lbl_806BAFD4
/* 806BAFC0  C0 04 01 30 */	lfs f0, 0x130(r4)
/* 806BAFC4  D0 03 05 CC */	stfs f0, 0x5cc(r3)
/* 806BAFC8  C0 04 00 04 */	lfs f0, 4(r4)
/* 806BAFCC  D0 03 06 0C */	stfs f0, 0x60c(r3)
/* 806BAFD0  4E 80 00 20 */	blr 
lbl_806BAFD4:
/* 806BAFD4  28 00 00 03 */	cmplwi r0, 3
/* 806BAFD8  40 82 00 18 */	bne lbl_806BAFF0
/* 806BAFDC  C0 04 01 2C */	lfs f0, 0x12c(r4)
/* 806BAFE0  D0 03 05 CC */	stfs f0, 0x5cc(r3)
/* 806BAFE4  C0 04 00 04 */	lfs f0, 4(r4)
/* 806BAFE8  D0 03 06 0C */	stfs f0, 0x60c(r3)
/* 806BAFEC  4E 80 00 20 */	blr 
lbl_806BAFF0:
/* 806BAFF0  C0 04 00 00 */	lfs f0, 0(r4)
/* 806BAFF4  D0 03 05 CC */	stfs f0, 0x5cc(r3)
/* 806BAFF8  C0 04 00 04 */	lfs f0, 4(r4)
/* 806BAFFC  D0 03 06 0C */	stfs f0, 0x60c(r3)
/* 806BB000  4E 80 00 20 */	blr 
