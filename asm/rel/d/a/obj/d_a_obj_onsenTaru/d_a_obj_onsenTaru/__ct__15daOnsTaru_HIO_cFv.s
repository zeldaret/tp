lbl_80CA85CC:
/* 80CA85CC  3C 80 80 CB */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80CA85D0  38 04 9D D4 */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80CA85D4  90 03 00 00 */	stw r0, 0(r3)
/* 80CA85D8  3C 80 80 CB */	lis r4, __vt__18fOpAcm_HIO_entry_c@ha
/* 80CA85DC  38 04 9D C8 */	addi r0, r4, __vt__18fOpAcm_HIO_entry_c@l
/* 80CA85E0  90 03 00 00 */	stw r0, 0(r3)
/* 80CA85E4  3C 80 80 CB */	lis r4, __vt__15daOnsTaru_HIO_c@ha
/* 80CA85E8  38 04 9D BC */	addi r0, r4, __vt__15daOnsTaru_HIO_c@l
/* 80CA85EC  90 03 00 00 */	stw r0, 0(r3)
/* 80CA85F0  38 00 00 78 */	li r0, 0x78
/* 80CA85F4  B0 03 00 04 */	sth r0, 4(r3)
/* 80CA85F8  38 00 00 03 */	li r0, 3
/* 80CA85FC  98 03 00 06 */	stb r0, 6(r3)
/* 80CA8600  3C 80 80 CB */	lis r4, lit_3655@ha
/* 80CA8604  C0 04 9B 78 */	lfs f0, lit_3655@l(r4)
/* 80CA8608  D0 03 00 08 */	stfs f0, 8(r3)
/* 80CA860C  3C 80 80 CB */	lis r4, lit_3656@ha
/* 80CA8610  C0 04 9B 7C */	lfs f0, lit_3656@l(r4)
/* 80CA8614  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CA8618  4E 80 00 20 */	blr 
