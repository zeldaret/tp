lbl_806B938C:
/* 806B938C  3C 80 80 6C */	lis r4, __vt__12daE_FK_HIO_c@ha /* 0x806BB8B8@ha */
/* 806B9390  38 04 B8 B8 */	addi r0, r4, __vt__12daE_FK_HIO_c@l /* 0x806BB8B8@l */
/* 806B9394  90 03 00 00 */	stw r0, 0(r3)
/* 806B9398  38 00 FF FF */	li r0, -1
/* 806B939C  98 03 00 04 */	stb r0, 4(r3)
/* 806B93A0  3C 80 80 6C */	lis r4, lit_3848@ha /* 0x806BB6FC@ha */
/* 806B93A4  C0 04 B6 FC */	lfs f0, lit_3848@l(r4)  /* 0x806BB6FC@l */
/* 806B93A8  D0 03 00 08 */	stfs f0, 8(r3)
/* 806B93AC  3C 80 80 6C */	lis r4, lit_3849@ha /* 0x806BB700@ha */
/* 806B93B0  C0 04 B7 00 */	lfs f0, lit_3849@l(r4)  /* 0x806BB700@l */
/* 806B93B4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 806B93B8  38 00 00 14 */	li r0, 0x14
/* 806B93BC  B0 03 00 10 */	sth r0, 0x10(r3)
/* 806B93C0  38 00 02 EE */	li r0, 0x2ee
/* 806B93C4  B0 03 00 12 */	sth r0, 0x12(r3)
/* 806B93C8  4E 80 00 20 */	blr 
