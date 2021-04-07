lbl_80C8A780:
/* 80C8A780  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80C8A784  D0 03 05 F4 */	stfs f0, 0x5f4(r3)
/* 80C8A788  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80C8A78C  D0 03 05 F8 */	stfs f0, 0x5f8(r3)
/* 80C8A790  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80C8A794  D0 03 05 FC */	stfs f0, 0x5fc(r3)
/* 80C8A798  3C 80 80 C9 */	lis r4, l_HIO@ha /* 0x80C8BBEC@ha */
/* 80C8A79C  38 84 BB EC */	addi r4, r4, l_HIO@l /* 0x80C8BBEC@l */
/* 80C8A7A0  88 04 00 10 */	lbz r0, 0x10(r4)
/* 80C8A7A4  B0 03 06 00 */	sth r0, 0x600(r3)
/* 80C8A7A8  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80C8A7AC  B0 03 06 02 */	sth r0, 0x602(r3)
/* 80C8A7B0  88 04 00 12 */	lbz r0, 0x12(r4)
/* 80C8A7B4  B0 03 06 04 */	sth r0, 0x604(r3)
/* 80C8A7B8  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80C8A7BC  D0 03 06 08 */	stfs f0, 0x608(r3)
/* 80C8A7C0  3C 80 80 C9 */	lis r4, lit_3695@ha /* 0x80C8B9F0@ha */
/* 80C8A7C4  C0 04 B9 F0 */	lfs f0, lit_3695@l(r4)  /* 0x80C8B9F0@l */
/* 80C8A7C8  D0 03 06 0C */	stfs f0, 0x60c(r3)
/* 80C8A7CC  4E 80 00 20 */	blr 
