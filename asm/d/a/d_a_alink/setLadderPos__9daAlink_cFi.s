lbl_800FD1F0:
/* 800FD1F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FD1F4  A8 C3 30 6E */	lha r6, 0x306e(r3)
/* 800FD1F8  54 C0 04 38 */	rlwinm r0, r6, 0, 0x10, 0x1c
/* 800FD1FC  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha
/* 800FD200  38 A5 9A 20 */	addi r5, r5, sincosTable___5JMath@l
/* 800FD204  7C C5 04 2E */	lfsx f6, r5, r0
/* 800FD208  7C A5 02 14 */	add r5, r5, r0
/* 800FD20C  C0 05 00 04 */	lfs f0, 4(r5)
/* 800FD210  3C A6 00 01 */	addis r5, r6, 1
/* 800FD214  38 05 80 00 */	addi r0, r5, -32768
/* 800FD218  B0 03 04 E6 */	sth r0, 0x4e6(r3)
/* 800FD21C  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 800FD220  B0 03 04 DE */	sth r0, 0x4de(r3)
/* 800FD224  C0 23 34 F4 */	lfs f1, 0x34f4(r3)
/* 800FD228  C0 82 93 94 */	lfs f4, lit_8785(r2)
/* 800FD22C  EC 04 00 32 */	fmuls f0, f4, f0
/* 800FD230  EC A1 00 2A */	fadds f5, f1, f0
/* 800FD234  C0 63 34 F0 */	lfs f3, 0x34f0(r3)
/* 800FD238  C0 42 95 84 */	lfs f2, lit_24618(r2)
/* 800FD23C  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800FD240  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 800FD244  90 01 00 0C */	stw r0, 0xc(r1)
/* 800FD248  3C 00 43 30 */	lis r0, 0x4330
/* 800FD24C  90 01 00 08 */	stw r0, 8(r1)
/* 800FD250  C8 01 00 08 */	lfd f0, 8(r1)
/* 800FD254  EC 00 08 28 */	fsubs f0, f0, f1
/* 800FD258  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FD25C  EC 23 00 2A */	fadds f1, f3, f0
/* 800FD260  C0 02 95 88 */	lfs f0, lit_24680(r2)
/* 800FD264  EC 41 00 28 */	fsubs f2, f1, f0
/* 800FD268  C0 23 34 EC */	lfs f1, 0x34ec(r3)
/* 800FD26C  EC 04 01 B2 */	fmuls f0, f4, f6
/* 800FD270  EC 01 00 2A */	fadds f0, f1, f0
/* 800FD274  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 800FD278  D0 43 04 D4 */	stfs f2, 0x4d4(r3)
/* 800FD27C  D0 A3 04 D8 */	stfs f5, 0x4d8(r3)
/* 800FD280  38 21 00 10 */	addi r1, r1, 0x10
/* 800FD284  4E 80 00 20 */	blr 
