lbl_8047FCBC:
/* 8047FCBC  3C 80 80 48 */	lis r4, lit_3687@ha
/* 8047FCC0  C0 04 10 E8 */	lfs f0, lit_3687@l(r4)
/* 8047FCC4  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 8047FCC8  3C 80 80 07 */	lis r4, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 8047FCCC  38 04 5A 24 */	addi r0, r4, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 8047FCD0  80 83 05 68 */	lwz r4, 0x568(r3)
/* 8047FCD4  90 04 00 B0 */	stw r0, 0xb0(r4)
/* 8047FCD8  38 00 00 02 */	li r0, 2
/* 8047FCDC  90 03 05 AC */	stw r0, 0x5ac(r3)
/* 8047FCE0  4E 80 00 20 */	blr 
