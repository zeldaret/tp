lbl_802F63F8:
/* 802F63F8  C0 42 C7 F0 */	lfs f2, lit_1469(r2)
/* 802F63FC  FC 60 10 90 */	fmr f3, f2
/* 802F6400  88 C3 00 B7 */	lbz r6, 0xb7(r3)
/* 802F6404  38 A0 00 03 */	li r5, 3
/* 802F6408  7C 06 2B D6 */	divw r0, r6, r5
/* 802F640C  7C 00 29 D6 */	mullw r0, r0, r5
/* 802F6410  7C 00 30 50 */	subf r0, r0, r6
/* 802F6414  2C 00 00 01 */	cmpwi r0, 1
/* 802F6418  40 82 00 1C */	bne lbl_802F6434
/* 802F641C  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 802F6420  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802F6424  EC 21 00 28 */	fsubs f1, f1, f0
/* 802F6428  C0 02 C8 08 */	lfs f0, lit_1725(r2)
/* 802F642C  EC 41 00 32 */	fmuls f2, f1, f0
/* 802F6430  48 00 00 18 */	b lbl_802F6448
lbl_802F6434:
/* 802F6434  2C 00 00 02 */	cmpwi r0, 2
/* 802F6438  40 82 00 10 */	bne lbl_802F6448
/* 802F643C  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 802F6440  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802F6444  EC 41 00 28 */	fsubs f2, f1, f0
lbl_802F6448:
/* 802F6448  38 00 00 03 */	li r0, 3
/* 802F644C  7C 06 03 D6 */	divw r0, r6, r0
/* 802F6450  2C 00 00 01 */	cmpwi r0, 1
/* 802F6454  40 82 00 1C */	bne lbl_802F6470
/* 802F6458  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 802F645C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802F6460  EC 21 00 28 */	fsubs f1, f1, f0
/* 802F6464  C0 02 C8 08 */	lfs f0, lit_1725(r2)
/* 802F6468  EC 61 00 32 */	fmuls f3, f1, f0
/* 802F646C  48 00 00 18 */	b lbl_802F6484
lbl_802F6470:
/* 802F6470  2C 00 00 02 */	cmpwi r0, 2
/* 802F6474  40 82 00 10 */	bne lbl_802F6484
/* 802F6478  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 802F647C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802F6480  EC 61 00 28 */	fsubs f3, f1, f0
lbl_802F6484:
/* 802F6484  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802F6488  EC 00 10 2A */	fadds f0, f0, f2
/* 802F648C  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 802F6490  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802F6494  EC 00 18 2A */	fadds f0, f0, f3
/* 802F6498  D0 03 00 D8 */	stfs f0, 0xd8(r3)
/* 802F649C  D0 43 00 C4 */	stfs f2, 0xc4(r3)
/* 802F64A0  D0 63 00 C8 */	stfs f3, 0xc8(r3)
/* 802F64A4  C0 03 00 D4 */	lfs f0, 0xd4(r3)
/* 802F64A8  FC 20 00 50 */	fneg f1, f0
/* 802F64AC  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 802F64B0  FC 40 00 50 */	fneg f2, f0
/* 802F64B4  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802F64B8  EC 00 08 2A */	fadds f0, f0, f1
/* 802F64BC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802F64C0  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802F64C4  EC 00 10 2A */	fadds f0, f0, f2
/* 802F64C8  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802F64CC  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 802F64D0  EC 00 08 2A */	fadds f0, f0, f1
/* 802F64D4  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 802F64D8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 802F64DC  EC 00 10 2A */	fadds f0, f0, f2
/* 802F64E0  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802F64E4  28 04 00 00 */	cmplwi r4, 0
/* 802F64E8  4D 82 00 20 */	beqlr 
/* 802F64EC  88 A4 00 B7 */	lbz r5, 0xb7(r4)
/* 802F64F0  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 802F64F4  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 802F64F8  EC 41 00 28 */	fsubs f2, f1, f0
/* 802F64FC  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 802F6500  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 802F6504  EC 61 00 28 */	fsubs f3, f1, f0
/* 802F6508  38 80 00 03 */	li r4, 3
/* 802F650C  7C 05 23 D6 */	divw r0, r5, r4
/* 802F6510  7C 00 21 D6 */	mullw r0, r0, r4
/* 802F6514  7C 00 28 50 */	subf r0, r0, r5
/* 802F6518  2C 00 00 01 */	cmpwi r0, 1
/* 802F651C  40 82 00 1C */	bne lbl_802F6538
/* 802F6520  C0 23 00 D4 */	lfs f1, 0xd4(r3)
/* 802F6524  C0 02 C8 08 */	lfs f0, lit_1725(r2)
/* 802F6528  EC 02 00 32 */	fmuls f0, f2, f0
/* 802F652C  EC 01 00 28 */	fsubs f0, f1, f0
/* 802F6530  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 802F6534  48 00 00 18 */	b lbl_802F654C
lbl_802F6538:
/* 802F6538  2C 00 00 02 */	cmpwi r0, 2
/* 802F653C  40 82 00 10 */	bne lbl_802F654C
/* 802F6540  C0 03 00 D4 */	lfs f0, 0xd4(r3)
/* 802F6544  EC 00 10 28 */	fsubs f0, f0, f2
/* 802F6548  D0 03 00 D4 */	stfs f0, 0xd4(r3)
lbl_802F654C:
/* 802F654C  38 00 00 03 */	li r0, 3
/* 802F6550  7C 05 03 D6 */	divw r0, r5, r0
/* 802F6554  2C 00 00 01 */	cmpwi r0, 1
/* 802F6558  40 82 00 1C */	bne lbl_802F6574
/* 802F655C  C0 23 00 D8 */	lfs f1, 0xd8(r3)
/* 802F6560  C0 02 C8 08 */	lfs f0, lit_1725(r2)
/* 802F6564  EC 03 00 32 */	fmuls f0, f3, f0
/* 802F6568  EC 01 00 28 */	fsubs f0, f1, f0
/* 802F656C  D0 03 00 D8 */	stfs f0, 0xd8(r3)
/* 802F6570  4E 80 00 20 */	blr 
lbl_802F6574:
/* 802F6574  2C 00 00 02 */	cmpwi r0, 2
/* 802F6578  4C 82 00 20 */	bnelr 
/* 802F657C  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 802F6580  EC 00 18 28 */	fsubs f0, f0, f3
/* 802F6584  D0 03 00 D8 */	stfs f0, 0xd8(r3)
/* 802F6588  4E 80 00 20 */	blr 
