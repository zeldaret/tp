lbl_80CC8804:
/* 80CC8804  3C 80 80 CD */	lis r4, lit_4114@ha /* 0x80CC91B8@ha */
/* 80CC8808  C0 04 91 B8 */	lfs f0, lit_4114@l(r4)  /* 0x80CC91B8@l */
/* 80CC880C  80 63 05 F0 */	lwz r3, 0x5f0(r3)
/* 80CC8810  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CC8814  4E 80 00 20 */	blr 
