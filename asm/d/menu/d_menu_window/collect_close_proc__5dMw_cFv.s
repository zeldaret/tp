lbl_801FB1A0:
/* 801FB1A0  80 8D 86 48 */	lwz r4, mFader__13mDoGph_gInf_c(r13)
/* 801FB1A4  80 04 00 04 */	lwz r0, 4(r4)
/* 801FB1A8  2C 00 00 00 */	cmpwi r0, 0
/* 801FB1AC  4C 82 00 20 */	bnelr 
/* 801FB1B0  80 83 01 14 */	lwz r4, 0x114(r3)
/* 801FB1B4  80 84 00 04 */	lwz r4, 4(r4)
/* 801FB1B8  88 04 02 5E */	lbz r0, 0x25e(r4)
/* 801FB1BC  28 00 00 01 */	cmplwi r0, 1
/* 801FB1C0  40 82 00 10 */	bne lbl_801FB1D0
/* 801FB1C4  38 00 00 0D */	li r0, 0xd
/* 801FB1C8  98 03 01 46 */	stb r0, 0x146(r3)
/* 801FB1CC  4E 80 00 20 */	blr 
lbl_801FB1D0:
/* 801FB1D0  28 00 00 02 */	cmplwi r0, 2
/* 801FB1D4  40 82 00 10 */	bne lbl_801FB1E4
/* 801FB1D8  38 00 00 10 */	li r0, 0x10
/* 801FB1DC  98 03 01 46 */	stb r0, 0x146(r3)
/* 801FB1E0  4E 80 00 20 */	blr 
lbl_801FB1E4:
/* 801FB1E4  28 00 00 03 */	cmplwi r0, 3
/* 801FB1E8  40 82 00 10 */	bne lbl_801FB1F8
/* 801FB1EC  38 00 00 13 */	li r0, 0x13
/* 801FB1F0  98 03 01 46 */	stb r0, 0x146(r3)
/* 801FB1F4  4E 80 00 20 */	blr 
lbl_801FB1F8:
/* 801FB1F8  28 00 00 04 */	cmplwi r0, 4
/* 801FB1FC  40 82 00 10 */	bne lbl_801FB20C
/* 801FB200  38 00 00 16 */	li r0, 0x16
/* 801FB204  98 03 01 46 */	stb r0, 0x146(r3)
/* 801FB208  4E 80 00 20 */	blr 
lbl_801FB20C:
/* 801FB20C  28 00 00 05 */	cmplwi r0, 5
/* 801FB210  40 82 00 10 */	bne lbl_801FB220
/* 801FB214  38 00 00 19 */	li r0, 0x19
/* 801FB218  98 03 01 46 */	stb r0, 0x146(r3)
/* 801FB21C  4E 80 00 20 */	blr 
lbl_801FB220:
/* 801FB220  28 00 00 06 */	cmplwi r0, 6
/* 801FB224  40 82 00 10 */	bne lbl_801FB234
/* 801FB228  38 00 00 1C */	li r0, 0x1c
/* 801FB22C  98 03 01 46 */	stb r0, 0x146(r3)
/* 801FB230  4E 80 00 20 */	blr 
lbl_801FB234:
/* 801FB234  38 00 00 00 */	li r0, 0
/* 801FB238  98 03 01 46 */	stb r0, 0x146(r3)
/* 801FB23C  4E 80 00 20 */	blr 
