lbl_8029DA04:
/* 8029DA04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029DA08  7C 08 02 A6 */	mflr r0
/* 8029DA0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029DA10  D0 2D 8D 70 */	stfs f1, sDSPVolume__6JASDsp(r13)
/* 8029DA14  C0 02 BD 48 */	lfs f0, lit_176(r2)
/* 8029DA18  EC 21 00 32 */	fmuls f1, f1, f0
/* 8029DA1C  48 00 0B C5 */	bl DsetMixerLevel__Ff
/* 8029DA20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029DA24  7C 08 03 A6 */	mtlr r0
/* 8029DA28  38 21 00 10 */	addi r1, r1, 0x10
/* 8029DA2C  4E 80 00 20 */	blr 
