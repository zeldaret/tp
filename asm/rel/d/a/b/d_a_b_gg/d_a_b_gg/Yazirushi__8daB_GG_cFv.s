lbl_805DF9F4:
/* 805DF9F4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 805DF9F8  D0 03 05 38 */	stfs f0, 0x538(r3)
/* 805DF9FC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 805DFA00  D0 03 05 3C */	stfs f0, 0x53c(r3)
/* 805DFA04  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 805DFA08  D0 03 05 40 */	stfs f0, 0x540(r3)
/* 805DFA0C  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 805DFA10  3C 80 80 5F */	lis r4, lit_4089@ha
/* 805DFA14  C0 24 D1 B0 */	lfs f1, lit_4089@l(r4)
/* 805DFA18  EC 00 08 2A */	fadds f0, f0, f1
/* 805DFA1C  D0 03 05 3C */	stfs f0, 0x53c(r3)
/* 805DFA20  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 805DFA24  D0 03 05 50 */	stfs f0, 0x550(r3)
/* 805DFA28  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 805DFA2C  D0 03 05 54 */	stfs f0, 0x554(r3)
/* 805DFA30  C0 03 05 40 */	lfs f0, 0x540(r3)
/* 805DFA34  D0 03 05 58 */	stfs f0, 0x558(r3)
/* 805DFA38  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 805DFA3C  EC 00 08 2A */	fadds f0, f0, f1
/* 805DFA40  D0 03 05 54 */	stfs f0, 0x554(r3)
/* 805DFA44  4E 80 00 20 */	blr 
