lbl_805CAD2C:
/* 805CAD2C  C0 04 00 00 */	lfs f0, 0(r4)
/* 805CAD30  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 805CAD34  C0 04 00 04 */	lfs f0, 4(r4)
/* 805CAD38  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 805CAD3C  C0 04 00 08 */	lfs f0, 8(r4)
/* 805CAD40  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 805CAD44  4E 80 00 20 */	blr 
