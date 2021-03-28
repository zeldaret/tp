lbl_8029E3B0:
/* 8029E3B0  C0 23 00 00 */	lfs f1, 0(r3)
/* 8029E3B4  C0 02 BD 60 */	lfs f0, lit_299(r2)
/* 8029E3B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029E3BC  40 80 00 0C */	bge lbl_8029E3C8
/* 8029E3C0  D0 03 00 00 */	stfs f0, 0(r3)
/* 8029E3C4  48 00 00 14 */	b lbl_8029E3D8
lbl_8029E3C8:
/* 8029E3C8  C0 02 BD 64 */	lfs f0, lit_300(r2)
/* 8029E3CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029E3D0  40 81 00 08 */	ble lbl_8029E3D8
/* 8029E3D4  D0 03 00 00 */	stfs f0, 0(r3)
lbl_8029E3D8:
/* 8029E3D8  C0 23 00 08 */	lfs f1, 8(r3)
/* 8029E3DC  C0 02 BD 60 */	lfs f0, lit_299(r2)
/* 8029E3E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029E3E4  40 80 00 0C */	bge lbl_8029E3F0
/* 8029E3E8  D0 03 00 08 */	stfs f0, 8(r3)
/* 8029E3EC  48 00 00 14 */	b lbl_8029E400
lbl_8029E3F0:
/* 8029E3F0  C0 02 BD 68 */	lfs f0, lit_301(r2)
/* 8029E3F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029E3F8  40 81 00 08 */	ble lbl_8029E400
/* 8029E3FC  D0 03 00 08 */	stfs f0, 8(r3)
lbl_8029E400:
/* 8029E400  C0 23 00 04 */	lfs f1, 4(r3)
/* 8029E404  C0 02 BD 60 */	lfs f0, lit_299(r2)
/* 8029E408  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029E40C  40 80 00 0C */	bge lbl_8029E418
/* 8029E410  D0 03 00 04 */	stfs f0, 4(r3)
/* 8029E414  48 00 00 14 */	b lbl_8029E428
lbl_8029E418:
/* 8029E418  C0 02 BD 64 */	lfs f0, lit_300(r2)
/* 8029E41C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029E420  40 81 00 08 */	ble lbl_8029E428
/* 8029E424  D0 03 00 04 */	stfs f0, 4(r3)
lbl_8029E428:
/* 8029E428  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8029E42C  C0 02 BD 60 */	lfs f0, lit_299(r2)
/* 8029E430  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029E434  40 80 00 0C */	bge lbl_8029E440
/* 8029E438  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8029E43C  48 00 00 14 */	b lbl_8029E450
lbl_8029E440:
/* 8029E440  C0 02 BD 64 */	lfs f0, lit_300(r2)
/* 8029E444  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029E448  40 81 00 08 */	ble lbl_8029E450
/* 8029E44C  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_8029E450:
/* 8029E450  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8029E454  C0 02 BD 60 */	lfs f0, lit_299(r2)
/* 8029E458  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029E45C  40 80 00 0C */	bge lbl_8029E468
/* 8029E460  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8029E464  4E 80 00 20 */	blr 
lbl_8029E468:
/* 8029E468  C0 02 BD 64 */	lfs f0, lit_300(r2)
/* 8029E46C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029E470  4C 81 00 20 */	blelr 
/* 8029E474  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8029E478  4E 80 00 20 */	blr 
