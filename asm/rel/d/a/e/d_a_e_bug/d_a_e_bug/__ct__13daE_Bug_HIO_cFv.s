lbl_80694B8C:
/* 80694B8C  3C 80 80 69 */	lis r4, __vt__13daE_Bug_HIO_c@ha /* 0x80697E18@ha */
/* 80694B90  38 04 7E 18 */	addi r0, r4, __vt__13daE_Bug_HIO_c@l /* 0x80697E18@l */
/* 80694B94  90 03 00 00 */	stw r0, 0(r3)
/* 80694B98  38 00 FF FF */	li r0, -1
/* 80694B9C  98 03 00 04 */	stb r0, 4(r3)
/* 80694BA0  3C 80 80 69 */	lis r4, lit_3829@ha /* 0x80697CA0@ha */
/* 80694BA4  C0 04 7C A0 */	lfs f0, lit_3829@l(r4)  /* 0x80697CA0@l */
/* 80694BA8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80694BAC  3C 80 80 69 */	lis r4, lit_3830@ha /* 0x80697CA4@ha */
/* 80694BB0  C0 04 7C A4 */	lfs f0, lit_3830@l(r4)  /* 0x80697CA4@l */
/* 80694BB4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80694BB8  4E 80 00 20 */	blr 
