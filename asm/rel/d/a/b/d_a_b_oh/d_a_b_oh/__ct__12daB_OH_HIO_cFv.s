lbl_8061B72C:
/* 8061B72C  3C 80 80 62 */	lis r4, __vt__12daB_OH_HIO_c@ha /* 0x8061DB60@ha */
/* 8061B730  38 04 DB 60 */	addi r0, r4, __vt__12daB_OH_HIO_c@l /* 0x8061DB60@l */
/* 8061B734  90 03 00 00 */	stw r0, 0(r3)
/* 8061B738  38 00 FF FF */	li r0, -1
/* 8061B73C  98 03 00 04 */	stb r0, 4(r3)
/* 8061B740  3C 80 80 62 */	lis r4, lit_3650@ha /* 0x8061D9D4@ha */
/* 8061B744  C0 04 D9 D4 */	lfs f0, lit_3650@l(r4)  /* 0x8061D9D4@l */
/* 8061B748  D0 03 00 08 */	stfs f0, 8(r3)
/* 8061B74C  3C 80 80 62 */	lis r4, lit_3651@ha /* 0x8061D9D8@ha */
/* 8061B750  C0 04 D9 D8 */	lfs f0, lit_3651@l(r4)  /* 0x8061D9D8@l */
/* 8061B754  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8061B758  4E 80 00 20 */	blr 
