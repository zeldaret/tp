lbl_8035D7DC:
/* 8035D7DC  C0 02 CB B8 */	lfs f0, lit_134(r2)
/* 8035D7E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8035D7E4  40 80 00 08 */	bge lbl_8035D7EC
/* 8035D7E8  38 80 00 00 */	li r4, 0
lbl_8035D7EC:
/* 8035D7EC  C0 02 CB B8 */	lfs f0, lit_134(r2)
/* 8035D7F0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8035D7F4  4C 40 13 82 */	cror 2, 0, 2
/* 8035D7F8  41 82 00 14 */	beq lbl_8035D80C
/* 8035D7FC  C0 02 CB D0 */	lfs f0, lit_140(r2)
/* 8035D800  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8035D804  4C 41 13 82 */	cror 2, 1, 2
/* 8035D808  40 82 00 08 */	bne lbl_8035D810
lbl_8035D80C:
/* 8035D80C  38 80 00 00 */	li r4, 0
lbl_8035D810:
/* 8035D810  2C 04 00 02 */	cmpwi r4, 2
/* 8035D814  41 82 00 3C */	beq lbl_8035D850
/* 8035D818  40 80 00 14 */	bge lbl_8035D82C
/* 8035D81C  2C 04 00 00 */	cmpwi r4, 0
/* 8035D820  41 82 00 70 */	beq lbl_8035D890
/* 8035D824  40 80 00 14 */	bge lbl_8035D838
/* 8035D828  48 00 00 68 */	b lbl_8035D890
lbl_8035D82C:
/* 8035D82C  2C 04 00 04 */	cmpwi r4, 4
/* 8035D830  40 80 00 60 */	bge lbl_8035D890
/* 8035D834  48 00 00 40 */	b lbl_8035D874
lbl_8035D838:
/* 8035D838  C0 A2 CB D0 */	lfs f5, lit_140(r2)
/* 8035D83C  EC 02 00 72 */	fmuls f0, f2, f1
/* 8035D840  C0 82 CB B8 */	lfs f4, lit_134(r2)
/* 8035D844  EC 25 10 28 */	fsubs f1, f5, f2
/* 8035D848  EC 61 00 24 */	fdivs f3, f1, f0
/* 8035D84C  48 00 00 50 */	b lbl_8035D89C
lbl_8035D850:
/* 8035D850  C0 A2 CB D0 */	lfs f5, lit_140(r2)
/* 8035D854  EC 82 00 72 */	fmuls f4, f2, f1
/* 8035D858  C0 62 CB E4 */	lfs f3, lit_160(r2)
/* 8035D85C  EC 45 10 28 */	fsubs f2, f5, f2
/* 8035D860  EC 01 01 32 */	fmuls f0, f1, f4
/* 8035D864  EC 23 00 B2 */	fmuls f1, f3, f2
/* 8035D868  EC 61 20 24 */	fdivs f3, f1, f4
/* 8035D86C  EC 81 00 24 */	fdivs f4, f1, f0
/* 8035D870  48 00 00 2C */	b lbl_8035D89C
lbl_8035D874:
/* 8035D874  EC 02 00 72 */	fmuls f0, f2, f1
/* 8035D878  C0 A2 CB D0 */	lfs f5, lit_140(r2)
/* 8035D87C  C0 62 CB B8 */	lfs f3, lit_134(r2)
/* 8035D880  EC 45 10 28 */	fsubs f2, f5, f2
/* 8035D884  EC 01 00 32 */	fmuls f0, f1, f0
/* 8035D888  EC 82 00 24 */	fdivs f4, f2, f0
/* 8035D88C  48 00 00 10 */	b lbl_8035D89C
lbl_8035D890:
/* 8035D890  C0 62 CB B8 */	lfs f3, lit_134(r2)
/* 8035D894  C0 A2 CB D0 */	lfs f5, lit_140(r2)
/* 8035D898  FC 80 18 90 */	fmr f4, f3
lbl_8035D89C:
/* 8035D89C  D0 A3 00 1C */	stfs f5, 0x1c(r3)
/* 8035D8A0  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 8035D8A4  D0 83 00 24 */	stfs f4, 0x24(r3)
/* 8035D8A8  4E 80 00 20 */	blr 
