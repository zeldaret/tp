lbl_805DFA48:
/* 805DFA48  3C 80 80 5F */	lis r4, lit_3912@ha /* 0x805ED064@ha */
/* 805DFA4C  C0 04 D0 64 */	lfs f0, lit_3912@l(r4)  /* 0x805ED064@l */
/* 805DFA50  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 805DFA54  D0 03 05 BC */	stfs f0, 0x5bc(r3)
/* 805DFA58  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 805DFA5C  D0 03 05 C0 */	stfs f0, 0x5c0(r3)
/* 805DFA60  4E 80 00 20 */	blr 
