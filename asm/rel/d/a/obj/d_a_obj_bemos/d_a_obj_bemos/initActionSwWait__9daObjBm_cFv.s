lbl_80BB1194:
/* 80BB1194  38 A0 00 00 */	li r5, 0
/* 80BB1198  B0 A3 0F AA */	sth r5, 0xfaa(r3)
/* 80BB119C  B0 A3 0F AC */	sth r5, 0xfac(r3)
/* 80BB11A0  A8 03 0F AA */	lha r0, 0xfaa(r3)
/* 80BB11A4  B0 03 0F AE */	sth r0, 0xfae(r3)
/* 80BB11A8  A8 03 0F AC */	lha r0, 0xfac(r3)
/* 80BB11AC  B0 03 0F AE */	sth r0, 0xfae(r3)
/* 80BB11B0  3C 80 80 BB */	lis r4, lit_4250@ha /* 0x80BB3830@ha */
/* 80BB11B4  C0 04 38 30 */	lfs f0, lit_4250@l(r4)  /* 0x80BB3830@l */
/* 80BB11B8  80 83 05 AC */	lwz r4, 0x5ac(r3)
/* 80BB11BC  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 80BB11C0  80 83 05 B0 */	lwz r4, 0x5b0(r3)
/* 80BB11C4  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 80BB11C8  98 A3 0F EA */	stb r5, 0xfea(r3)
/* 80BB11CC  98 A3 0F E4 */	stb r5, 0xfe4(r3)
/* 80BB11D0  4E 80 00 20 */	blr 
