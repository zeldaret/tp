lbl_80A2D3FC:
/* 80A2D3FC  3C 80 80 A4 */	lis r4, cNullVec__6Z2Calc@ha
/* 80A2D400  38 A4 0D 34 */	addi r5, r4, cNullVec__6Z2Calc@l
/* 80A2D404  88 03 15 AE */	lbz r0, 0x15ae(r3)
/* 80A2D408  7C 00 07 74 */	extsb r0, r0
/* 80A2D40C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A2D410  41 82 00 3C */	beq lbl_80A2D44C
/* 80A2D414  40 80 00 10 */	bge lbl_80A2D424
/* 80A2D418  2C 00 00 09 */	cmpwi r0, 9
/* 80A2D41C  40 80 00 14 */	bge lbl_80A2D430
/* 80A2D420  48 00 00 64 */	b lbl_80A2D484
lbl_80A2D424:
/* 80A2D424  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A2D428  40 80 00 5C */	bge lbl_80A2D484
/* 80A2D42C  48 00 00 3C */	b lbl_80A2D468
lbl_80A2D430:
/* 80A2D430  80 85 0B C4 */	lwz r4, 0xbc4(r5)
/* 80A2D434  80 05 0B C8 */	lwz r0, 0xbc8(r5)
/* 80A2D438  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A2D43C  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D440  80 05 0B CC */	lwz r0, 0xbcc(r5)
/* 80A2D444  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D448  4E 80 00 20 */	blr 
lbl_80A2D44C:
/* 80A2D44C  80 85 0B D0 */	lwz r4, 0xbd0(r5)
/* 80A2D450  80 05 0B D4 */	lwz r0, 0xbd4(r5)
/* 80A2D454  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A2D458  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D45C  80 05 0B D8 */	lwz r0, 0xbd8(r5)
/* 80A2D460  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D464  4E 80 00 20 */	blr 
lbl_80A2D468:
/* 80A2D468  80 85 0B DC */	lwz r4, 0xbdc(r5)
/* 80A2D46C  80 05 0B E0 */	lwz r0, 0xbe0(r5)
/* 80A2D470  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A2D474  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D478  80 05 0B E4 */	lwz r0, 0xbe4(r5)
/* 80A2D47C  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D480  4E 80 00 20 */	blr 
lbl_80A2D484:
/* 80A2D484  80 85 0B E8 */	lwz r4, 0xbe8(r5)
/* 80A2D488  80 05 0B EC */	lwz r0, 0xbec(r5)
/* 80A2D48C  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A2D490  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D494  80 05 0B F0 */	lwz r0, 0xbf0(r5)
/* 80A2D498  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D49C  4E 80 00 20 */	blr 
