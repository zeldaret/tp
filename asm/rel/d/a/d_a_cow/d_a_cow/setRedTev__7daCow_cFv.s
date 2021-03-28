lbl_8065D230:
/* 8065D230  88 03 0C B4 */	lbz r0, 0xcb4(r3)
/* 8065D234  28 00 00 02 */	cmplwi r0, 2
/* 8065D238  4C 80 00 20 */	bgelr 
/* 8065D23C  28 00 00 00 */	cmplwi r0, 0
/* 8065D240  40 82 00 30 */	bne lbl_8065D270
/* 8065D244  3C 80 80 66 */	lis r4, lit_3989@ha
/* 8065D248  C0 24 2D B8 */	lfs f1, lit_3989@l(r4)
/* 8065D24C  C0 03 0C AC */	lfs f0, 0xcac(r3)
/* 8065D250  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8065D254  4C 82 00 20 */	bnelr 
/* 8065D258  3C 80 80 66 */	lis r4, lit_3998@ha
/* 8065D25C  C0 04 2D C8 */	lfs f0, lit_3998@l(r4)
/* 8065D260  D0 03 0C B0 */	stfs f0, 0xcb0(r3)
/* 8065D264  38 00 00 01 */	li r0, 1
/* 8065D268  98 03 0C B4 */	stb r0, 0xcb4(r3)
/* 8065D26C  4E 80 00 20 */	blr 
lbl_8065D270:
/* 8065D270  3C 80 80 66 */	lis r4, lit_3998@ha
/* 8065D274  C0 24 2D C8 */	lfs f1, lit_3998@l(r4)
/* 8065D278  C0 03 0C AC */	lfs f0, 0xcac(r3)
/* 8065D27C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8065D280  4C 82 00 20 */	bnelr 
/* 8065D284  3C 80 80 66 */	lis r4, lit_3989@ha
/* 8065D288  C0 04 2D B8 */	lfs f0, lit_3989@l(r4)
/* 8065D28C  D0 03 0C B0 */	stfs f0, 0xcb0(r3)
/* 8065D290  38 00 00 00 */	li r0, 0
/* 8065D294  98 03 0C B4 */	stb r0, 0xcb4(r3)
/* 8065D298  4E 80 00 20 */	blr 
