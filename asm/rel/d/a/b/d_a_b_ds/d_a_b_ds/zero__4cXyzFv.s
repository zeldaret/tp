lbl_805DCA28:
/* 805DCA28  3C 80 80 5E */	lis r4, lit_3933@ha /* 0x805DCA58@ha */
/* 805DCA2C  C0 04 CA 58 */	lfs f0, lit_3933@l(r4)  /* 0x805DCA58@l */
/* 805DCA30  D0 03 00 00 */	stfs f0, 0(r3)
/* 805DCA34  D0 03 00 04 */	stfs f0, 4(r3)
/* 805DCA38  D0 03 00 08 */	stfs f0, 8(r3)
/* 805DCA3C  4E 80 00 20 */	blr 
