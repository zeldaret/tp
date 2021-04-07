lbl_806A76EC:
/* 806A76EC  3C 80 80 6B */	lis r4, __vt__12daE_DF_HIO_c@ha /* 0x806AA0BC@ha */
/* 806A76F0  38 04 A0 BC */	addi r0, r4, __vt__12daE_DF_HIO_c@l /* 0x806AA0BC@l */
/* 806A76F4  90 03 00 00 */	stw r0, 0(r3)
/* 806A76F8  38 00 FF FF */	li r0, -1
/* 806A76FC  98 03 00 04 */	stb r0, 4(r3)
/* 806A7700  3C 80 80 6B */	lis r4, lit_3917@ha /* 0x806A9F34@ha */
/* 806A7704  C0 04 9F 34 */	lfs f0, lit_3917@l(r4)  /* 0x806A9F34@l */
/* 806A7708  D0 03 00 08 */	stfs f0, 8(r3)
/* 806A770C  4E 80 00 20 */	blr 
