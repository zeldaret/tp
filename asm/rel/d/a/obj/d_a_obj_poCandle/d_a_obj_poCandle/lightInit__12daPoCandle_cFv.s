lbl_80CB1D74:
/* 80CB1D74  3C 80 80 CB */	lis r4, lit_3635@ha
/* 80CB1D78  38 84 26 B8 */	addi r4, r4, lit_3635@l
/* 80CB1D7C  C0 03 05 C4 */	lfs f0, 0x5c4(r3)
/* 80CB1D80  D0 03 05 E0 */	stfs f0, 0x5e0(r3)
/* 80CB1D84  C0 03 05 C8 */	lfs f0, 0x5c8(r3)
/* 80CB1D88  D0 03 05 E4 */	stfs f0, 0x5e4(r3)
/* 80CB1D8C  C0 03 05 CC */	lfs f0, 0x5cc(r3)
/* 80CB1D90  D0 03 05 E8 */	stfs f0, 0x5e8(r3)
/* 80CB1D94  C0 23 05 E4 */	lfs f1, 0x5e4(r3)
/* 80CB1D98  C0 04 00 08 */	lfs f0, 8(r4)
/* 80CB1D9C  EC 01 00 2A */	fadds f0, f1, f0
/* 80CB1DA0  D0 03 05 E4 */	stfs f0, 0x5e4(r3)
/* 80CB1DA4  88 03 05 EC */	lbz r0, 0x5ec(r3)
/* 80CB1DA8  28 00 00 00 */	cmplwi r0, 0
/* 80CB1DAC  41 82 00 48 */	beq lbl_80CB1DF4
/* 80CB1DB0  C0 03 05 E0 */	lfs f0, 0x5e0(r3)
/* 80CB1DB4  D0 03 05 F4 */	stfs f0, 0x5f4(r3)
/* 80CB1DB8  C0 03 05 E4 */	lfs f0, 0x5e4(r3)
/* 80CB1DBC  D0 03 05 F8 */	stfs f0, 0x5f8(r3)
/* 80CB1DC0  C0 03 05 E8 */	lfs f0, 0x5e8(r3)
/* 80CB1DC4  D0 03 05 FC */	stfs f0, 0x5fc(r3)
/* 80CB1DC8  38 00 00 BC */	li r0, 0xbc
/* 80CB1DCC  B0 03 06 00 */	sth r0, 0x600(r3)
/* 80CB1DD0  38 00 00 66 */	li r0, 0x66
/* 80CB1DD4  B0 03 06 02 */	sth r0, 0x602(r3)
/* 80CB1DD8  38 00 00 42 */	li r0, 0x42
/* 80CB1DDC  B0 03 06 04 */	sth r0, 0x604(r3)
/* 80CB1DE0  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80CB1DE4  D0 03 06 08 */	stfs f0, 0x608(r3)
/* 80CB1DE8  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80CB1DEC  D0 03 06 0C */	stfs f0, 0x60c(r3)
/* 80CB1DF0  4E 80 00 20 */	blr 
lbl_80CB1DF4:
/* 80CB1DF4  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80CB1DF8  D0 03 05 F0 */	stfs f0, 0x5f0(r3)
/* 80CB1DFC  4E 80 00 20 */	blr 
