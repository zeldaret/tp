lbl_80CB1A6C:
/* 80CB1A6C  3C 80 80 CB */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80CB282C@ha */
/* 80CB1A70  38 04 28 2C */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80CB282C@l */
/* 80CB1A74  90 03 00 00 */	stw r0, 0(r3)
/* 80CB1A78  3C 80 80 CB */	lis r4, __vt__16daPoCandle_HIO_c@ha /* 0x80CB2820@ha */
/* 80CB1A7C  38 04 28 20 */	addi r0, r4, __vt__16daPoCandle_HIO_c@l /* 0x80CB2820@l */
/* 80CB1A80  90 03 00 00 */	stw r0, 0(r3)
/* 80CB1A84  38 00 00 1E */	li r0, 0x1e
/* 80CB1A88  98 03 00 04 */	stb r0, 4(r3)
/* 80CB1A8C  3C 80 80 CB */	lis r4, lit_3635@ha /* 0x80CB26B8@ha */
/* 80CB1A90  C0 04 26 B8 */	lfs f0, lit_3635@l(r4)  /* 0x80CB26B8@l */
/* 80CB1A94  D0 03 00 08 */	stfs f0, 8(r3)
/* 80CB1A98  4E 80 00 20 */	blr 
