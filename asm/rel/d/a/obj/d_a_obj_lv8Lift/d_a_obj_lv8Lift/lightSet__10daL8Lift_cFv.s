lbl_80C88D6C:
/* 80C88D6C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80C88D70  D0 03 08 10 */	stfs f0, 0x810(r3)
/* 80C88D74  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80C88D78  D0 03 08 14 */	stfs f0, 0x814(r3)
/* 80C88D7C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80C88D80  D0 03 08 18 */	stfs f0, 0x818(r3)
/* 80C88D84  3C 80 80 C9 */	lis r4, l_HIO@ha
/* 80C88D88  38 84 A1 F4 */	addi r4, r4, l_HIO@l
/* 80C88D8C  88 04 00 10 */	lbz r0, 0x10(r4)
/* 80C88D90  B0 03 08 1C */	sth r0, 0x81c(r3)
/* 80C88D94  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80C88D98  B0 03 08 1E */	sth r0, 0x81e(r3)
/* 80C88D9C  88 04 00 12 */	lbz r0, 0x12(r4)
/* 80C88DA0  B0 03 08 20 */	sth r0, 0x820(r3)
/* 80C88DA4  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80C88DA8  D0 03 08 24 */	stfs f0, 0x824(r3)
/* 80C88DAC  3C 80 80 C9 */	lis r4, lit_3661@ha
/* 80C88DB0  C0 04 9F A4 */	lfs f0, lit_3661@l(r4)
/* 80C88DB4  D0 03 08 28 */	stfs f0, 0x828(r3)
/* 80C88DB8  4E 80 00 20 */	blr 
