lbl_80B25A0C:
/* 80B25A0C  3C 80 80 B2 */	lis r4, lit_3768@ha
/* 80B25A10  38 A4 65 7C */	addi r5, r4, lit_3768@l
/* 80B25A14  3C 80 80 B2 */	lis r4, __vt__14daNPC_TR_HIO_c@ha
/* 80B25A18  38 04 66 60 */	addi r0, r4, __vt__14daNPC_TR_HIO_c@l
/* 80B25A1C  90 03 00 00 */	stw r0, 0(r3)
/* 80B25A20  38 00 FF FF */	li r0, -1
/* 80B25A24  98 03 00 04 */	stb r0, 4(r3)
/* 80B25A28  C0 05 00 00 */	lfs f0, 0(r5)
/* 80B25A2C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80B25A30  C0 05 00 04 */	lfs f0, 4(r5)
/* 80B25A34  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80B25A38  C0 05 00 08 */	lfs f0, 8(r5)
/* 80B25A3C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80B25A40  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80B25A44  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80B25A48  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 80B25A4C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B25A50  4E 80 00 20 */	blr 
