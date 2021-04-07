lbl_8015DBF0:
/* 8015DBF0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8015DBF4  54 00 47 3E */	rlwinm r0, r0, 8, 0x1c, 0x1f
/* 8015DBF8  28 00 00 09 */	cmplwi r0, 9
/* 8015DBFC  41 81 00 30 */	bgt lbl_8015DC2C
/* 8015DC00  3C 80 80 3C */	lis r4, lit_5193@ha /* 0x803B9E04@ha */
/* 8015DC04  38 84 9E 04 */	addi r4, r4, lit_5193@l /* 0x803B9E04@l */
/* 8015DC08  54 00 10 3A */	slwi r0, r0, 2
/* 8015DC0C  7C 04 00 2E */	lwzx r0, r4, r0
/* 8015DC10  7C 09 03 A6 */	mtctr r0
/* 8015DC14  4E 80 04 20 */	bctr 
/* 8015DC18  C0 02 9B 50 */	lfs f0, lit_3857(r2)
/* 8015DC1C  D0 03 04 EC */	stfs f0, 0x4ec(r3)
/* 8015DC20  D0 03 04 F0 */	stfs f0, 0x4f0(r3)
/* 8015DC24  D0 03 04 F4 */	stfs f0, 0x4f4(r3)
/* 8015DC28  4E 80 00 20 */	blr 
lbl_8015DC2C:
/* 8015DC2C  C0 02 9B 7C */	lfs f0, lit_4069(r2)
/* 8015DC30  D0 03 04 EC */	stfs f0, 0x4ec(r3)
/* 8015DC34  D0 03 04 F0 */	stfs f0, 0x4f0(r3)
/* 8015DC38  D0 03 04 F4 */	stfs f0, 0x4f4(r3)
/* 8015DC3C  4E 80 00 20 */	blr 
