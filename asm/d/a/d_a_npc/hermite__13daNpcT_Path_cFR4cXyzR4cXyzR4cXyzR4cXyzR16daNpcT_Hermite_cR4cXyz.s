lbl_80145B7C:
/* 80145B7C  C0 27 00 00 */	lfs f1, 0(r7)
/* 80145B80  C0 08 00 10 */	lfs f0, 0x10(r8)
/* 80145B84  EC 81 00 32 */	fmuls f4, f1, f0
/* 80145B88  C0 25 00 00 */	lfs f1, 0(r5)
/* 80145B8C  C0 08 00 0C */	lfs f0, 0xc(r8)
/* 80145B90  EC 61 00 32 */	fmuls f3, f1, f0
/* 80145B94  C0 24 00 00 */	lfs f1, 0(r4)
/* 80145B98  C0 08 00 04 */	lfs f0, 4(r8)
/* 80145B9C  EC 41 00 32 */	fmuls f2, f1, f0
/* 80145BA0  C0 26 00 00 */	lfs f1, 0(r6)
/* 80145BA4  C0 08 00 08 */	lfs f0, 8(r8)
/* 80145BA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80145BAC  EC 02 00 2A */	fadds f0, f2, f0
/* 80145BB0  EC 03 00 2A */	fadds f0, f3, f0
/* 80145BB4  EC 04 00 2A */	fadds f0, f4, f0
/* 80145BB8  D0 09 00 00 */	stfs f0, 0(r9)
/* 80145BBC  C0 27 00 04 */	lfs f1, 4(r7)
/* 80145BC0  C0 08 00 10 */	lfs f0, 0x10(r8)
/* 80145BC4  EC 81 00 32 */	fmuls f4, f1, f0
/* 80145BC8  C0 25 00 04 */	lfs f1, 4(r5)
/* 80145BCC  C0 08 00 0C */	lfs f0, 0xc(r8)
/* 80145BD0  EC 61 00 32 */	fmuls f3, f1, f0
/* 80145BD4  C0 24 00 04 */	lfs f1, 4(r4)
/* 80145BD8  C0 08 00 04 */	lfs f0, 4(r8)
/* 80145BDC  EC 41 00 32 */	fmuls f2, f1, f0
/* 80145BE0  C0 26 00 04 */	lfs f1, 4(r6)
/* 80145BE4  C0 08 00 08 */	lfs f0, 8(r8)
/* 80145BE8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80145BEC  EC 02 00 2A */	fadds f0, f2, f0
/* 80145BF0  EC 03 00 2A */	fadds f0, f3, f0
/* 80145BF4  EC 04 00 2A */	fadds f0, f4, f0
/* 80145BF8  D0 09 00 04 */	stfs f0, 4(r9)
/* 80145BFC  C0 27 00 08 */	lfs f1, 8(r7)
/* 80145C00  C0 08 00 10 */	lfs f0, 0x10(r8)
/* 80145C04  EC 81 00 32 */	fmuls f4, f1, f0
/* 80145C08  C0 25 00 08 */	lfs f1, 8(r5)
/* 80145C0C  C0 08 00 0C */	lfs f0, 0xc(r8)
/* 80145C10  EC 61 00 32 */	fmuls f3, f1, f0
/* 80145C14  C0 24 00 08 */	lfs f1, 8(r4)
/* 80145C18  C0 08 00 04 */	lfs f0, 4(r8)
/* 80145C1C  EC 41 00 32 */	fmuls f2, f1, f0
/* 80145C20  C0 26 00 08 */	lfs f1, 8(r6)
/* 80145C24  C0 08 00 08 */	lfs f0, 8(r8)
/* 80145C28  EC 01 00 32 */	fmuls f0, f1, f0
/* 80145C2C  EC 02 00 2A */	fadds f0, f2, f0
/* 80145C30  EC 03 00 2A */	fadds f0, f3, f0
/* 80145C34  EC 04 00 2A */	fadds f0, f4, f0
/* 80145C38  D0 09 00 08 */	stfs f0, 8(r9)
/* 80145C3C  4E 80 00 20 */	blr 
