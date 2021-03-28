lbl_8001A660:
/* 8001A660  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 8001A664  C0 03 04 F8 */	lfs f0, 0x4f8(r3)
/* 8001A668  EC 01 00 2A */	fadds f0, f1, f0
/* 8001A66C  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 8001A670  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 8001A674  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 8001A678  EC 01 00 2A */	fadds f0, f1, f0
/* 8001A67C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 8001A680  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 8001A684  C0 03 05 00 */	lfs f0, 0x500(r3)
/* 8001A688  EC 01 00 2A */	fadds f0, f1, f0
/* 8001A68C  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 8001A690  28 04 00 00 */	cmplwi r4, 0
/* 8001A694  4D 82 00 20 */	beqlr 
/* 8001A698  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 8001A69C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8001A6A0  EC 01 00 2A */	fadds f0, f1, f0
/* 8001A6A4  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 8001A6A8  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 8001A6AC  C0 04 00 04 */	lfs f0, 4(r4)
/* 8001A6B0  EC 01 00 2A */	fadds f0, f1, f0
/* 8001A6B4  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 8001A6B8  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 8001A6BC  C0 04 00 08 */	lfs f0, 8(r4)
/* 8001A6C0  EC 01 00 2A */	fadds f0, f1, f0
/* 8001A6C4  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 8001A6C8  4E 80 00 20 */	blr 
