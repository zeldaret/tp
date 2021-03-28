lbl_8026F3DC:
/* 8026F3DC  3C A0 80 3A */	lis r5, __vt__8cM3dGPla@ha
/* 8026F3E0  38 05 37 C0 */	addi r0, r5, __vt__8cM3dGPla@l
/* 8026F3E4  90 03 00 10 */	stw r0, 0x10(r3)
/* 8026F3E8  C0 04 00 00 */	lfs f0, 0(r4)
/* 8026F3EC  D0 03 00 00 */	stfs f0, 0(r3)
/* 8026F3F0  C0 04 00 04 */	lfs f0, 4(r4)
/* 8026F3F4  D0 03 00 04 */	stfs f0, 4(r3)
/* 8026F3F8  C0 04 00 08 */	lfs f0, 8(r4)
/* 8026F3FC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8026F400  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8026F404  4E 80 00 20 */	blr 
