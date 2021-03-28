lbl_8029E5E0:
/* 8029E5E0  C0 02 BD 70 */	lfs f0, lit_333(r2)
/* 8029E5E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E5E8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8029E5EC  FC 00 00 1E */	fctiwz f0, f0
/* 8029E5F0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8029E5F4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8029E5F8  B0 0D 82 48 */	sth r0, DSP_MIXERLEVEL(r13)
/* 8029E5FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E600  4E 80 00 20 */	blr 
