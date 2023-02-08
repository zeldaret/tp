lbl_802BC308:
/* 802BC308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BC30C  88 03 01 24 */	lbz r0, 0x124(r3)
/* 802BC310  28 00 00 00 */	cmplwi r0, 0
/* 802BC314  40 82 01 B4 */	bne lbl_802BC4C8
/* 802BC318  C0 0D 82 58 */	lfs f0, DISTANCE_MAX__7Z2Param(r13)
/* 802BC31C  D0 03 00 00 */	stfs f0, 0(r3)
/* 802BC320  C0 0D 82 5C */	lfs f0, MAX_VOLUME_DISTANCE__7Z2Param(r13)
/* 802BC324  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 802BC328  C0 22 C0 DC */	lfs f1, lit_1058(r2)
/* 802BC32C  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC330  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC334  D0 03 00 04 */	stfs f0, 4(r3)
/* 802BC338  C0 22 C0 D8 */	lfs f1, lit_1036(r2)
/* 802BC33C  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC340  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC344  D0 03 00 08 */	stfs f0, 8(r3)
/* 802BC348  C0 22 C0 E0 */	lfs f1, lit_1059(r2)
/* 802BC34C  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC350  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC354  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802BC358  C0 22 C0 B0 */	lfs f1, lit_998(r2)
/* 802BC35C  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC360  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC364  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802BC368  C0 22 C0 E4 */	lfs f1, lit_1060(r2)
/* 802BC36C  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC370  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC374  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802BC378  C0 22 C0 E8 */	lfs f1, lit_1061(r2)
/* 802BC37C  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC380  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC384  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802BC388  C0 22 C0 EC */	lfs f1, lit_1062(r2)
/* 802BC38C  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC390  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC394  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802BC398  C0 22 C0 F0 */	lfs f1, lit_1063(r2)
/* 802BC39C  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC3A0  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC3A4  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802BC3A8  C0 22 C0 F4 */	lfs f1, lit_1064(r2)
/* 802BC3AC  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC3B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC3B4  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802BC3B8  C0 22 C0 F8 */	lfs f1, lit_1065(r2)
/* 802BC3BC  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC3C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC3C4  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 802BC3C8  C0 22 C0 FC */	lfs f1, lit_1066(r2)
/* 802BC3CC  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC3D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC3D4  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802BC3D8  C0 22 C0 A8 */	lfs f1, lit_895(r2)
/* 802BC3DC  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC3E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC3E4  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 802BC3E8  C0 22 C1 00 */	lfs f1, lit_1067(r2)
/* 802BC3EC  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC3F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC3F4  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 802BC3F8  C0 22 C0 B8 */	lfs f1, lit_1000(r2)
/* 802BC3FC  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC400  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC404  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 802BC408  38 80 00 00 */	li r4, 0
/* 802BC40C  C0 62 C0 A4 */	lfs f3, lit_894(r2)
/* 802BC410  38 00 00 0F */	li r0, 0xf
/* 802BC414  7C 09 03 A6 */	mtctr r0
lbl_802BC418:
/* 802BC418  7C A3 22 14 */	add r5, r3, r4
/* 802BC41C  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 802BC420  EC 40 18 28 */	fsubs f2, f0, f3
/* 802BC424  C0 25 00 00 */	lfs f1, 0(r5)
/* 802BC428  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 802BC42C  EC 01 00 28 */	fsubs f0, f1, f0
/* 802BC430  EC 02 00 24 */	fdivs f0, f2, f0
/* 802BC434  D0 05 00 70 */	stfs f0, 0x70(r5)
/* 802BC438  38 84 00 04 */	addi r4, r4, 4
/* 802BC43C  42 00 FF DC */	bdnz lbl_802BC418
/* 802BC440  38 80 00 00 */	li r4, 0
/* 802BC444  C8 62 C0 D0 */	lfd f3, lit_1008(r2)
/* 802BC448  3C A0 43 30 */	lis r5, 0x4330
/* 802BC44C  38 00 00 0F */	li r0, 0xf
/* 802BC450  7C 09 03 A6 */	mtctr r0
lbl_802BC454:
/* 802BC454  7C C3 22 14 */	add r6, r3, r4
/* 802BC458  80 03 00 64 */	lwz r0, 0x64(r3)
/* 802BC45C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BC460  90 A1 00 08 */	stw r5, 8(r1)
/* 802BC464  C8 01 00 08 */	lfd f0, 8(r1)
/* 802BC468  EC 40 18 28 */	fsubs f2, f0, f3
/* 802BC46C  C0 26 00 00 */	lfs f1, 0(r6)
/* 802BC470  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 802BC474  EC 01 00 28 */	fsubs f0, f1, f0
/* 802BC478  EC 02 00 24 */	fdivs f0, f2, f0
/* 802BC47C  D0 06 00 AC */	stfs f0, 0xac(r6)
/* 802BC480  38 84 00 04 */	addi r4, r4, 4
/* 802BC484  42 00 FF D0 */	bdnz lbl_802BC454
/* 802BC488  38 80 00 00 */	li r4, 0
/* 802BC48C  38 00 00 0F */	li r0, 0xf
/* 802BC490  7C 09 03 A6 */	mtctr r0
lbl_802BC494:
/* 802BC494  7C A3 22 14 */	add r5, r3, r4
/* 802BC498  C0 23 00 54 */	lfs f1, 0x54(r3)
/* 802BC49C  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 802BC4A0  EC 41 00 28 */	fsubs f2, f1, f0
/* 802BC4A4  C0 25 00 00 */	lfs f1, 0(r5)
/* 802BC4A8  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 802BC4AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 802BC4B0  EC 02 00 24 */	fdivs f0, f2, f0
/* 802BC4B4  D0 05 00 E8 */	stfs f0, 0xe8(r5)
/* 802BC4B8  38 84 00 04 */	addi r4, r4, 4
/* 802BC4BC  42 00 FF D8 */	bdnz lbl_802BC494
/* 802BC4C0  38 00 00 01 */	li r0, 1
/* 802BC4C4  98 03 01 24 */	stb r0, 0x124(r3)
lbl_802BC4C8:
/* 802BC4C8  38 21 00 10 */	addi r1, r1, 0x10
/* 802BC4CC  4E 80 00 20 */	blr 
