lbl_80B2F050:
/* 80B2F050  C0 04 05 C8 */	lfs f0, 0x5c8(r4)
/* 80B2F054  D0 03 00 00 */	stfs f0, 0(r3)
/* 80B2F058  C0 04 05 CC */	lfs f0, 0x5cc(r4)
/* 80B2F05C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80B2F060  C0 04 05 D0 */	lfs f0, 0x5d0(r4)
/* 80B2F064  D0 03 00 08 */	stfs f0, 8(r3)
/* 80B2F068  4E 80 00 20 */	blr 
