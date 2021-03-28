lbl_806AAD68:
/* 806AAD68  3C 60 80 6B */	lis r3, lit_3764@ha
/* 806AAD6C  39 03 D5 38 */	addi r8, r3, lit_3764@l
/* 806AAD70  C0 89 04 FC */	lfs f4, 0x4fc(r9)
/* 806AAD74  C0 68 00 20 */	lfs f3, 0x20(r8)
/* 806AAD78  FC 04 18 00 */	fcmpu cr0, f4, f3
/* 806AAD7C  4D 82 00 20 */	beqlr 
/* 806AAD80  39 40 00 00 */	li r10, 0
/* 806AAD84  1C 07 00 0C */	mulli r0, r7, 0xc
/* 806AAD88  7C 64 02 14 */	add r3, r4, r0
/* 806AAD8C  C0 43 00 04 */	lfs f2, 4(r3)
/* 806AAD90  1C 05 00 0C */	mulli r0, r5, 0xc
/* 806AAD94  7C 64 02 14 */	add r3, r4, r0
/* 806AAD98  C0 23 00 04 */	lfs f1, 4(r3)
/* 806AAD9C  1C 06 00 0C */	mulli r0, r6, 0xc
/* 806AADA0  7C 64 02 14 */	add r3, r4, r0
/* 806AADA4  C0 03 00 04 */	lfs f0, 4(r3)
/* 806AADA8  EC 01 00 2A */	fadds f0, f1, f0
/* 806AADAC  EC 22 00 2A */	fadds f1, f2, f0
/* 806AADB0  C0 08 00 60 */	lfs f0, 0x60(r8)
/* 806AADB4  EC 41 00 24 */	fdivs f2, f1, f0
/* 806AADB8  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 806AADBC  40 80 00 20 */	bge lbl_806AADDC
/* 806AADC0  C0 28 00 64 */	lfs f1, 0x64(r8)
/* 806AADC4  C0 09 04 D4 */	lfs f0, 0x4d4(r9)
/* 806AADC8  EC 01 00 2A */	fadds f0, f1, f0
/* 806AADCC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 806AADD0  40 81 00 24 */	ble lbl_806AADF4
/* 806AADD4  39 40 00 01 */	li r10, 1
/* 806AADD8  48 00 00 1C */	b lbl_806AADF4
lbl_806AADDC:
/* 806AADDC  C0 28 00 64 */	lfs f1, 0x64(r8)
/* 806AADE0  C0 09 04 D4 */	lfs f0, 0x4d4(r9)
/* 806AADE4  EC 01 00 2A */	fadds f0, f1, f0
/* 806AADE8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 806AADEC  40 80 00 08 */	bge lbl_806AADF4
/* 806AADF0  39 40 00 01 */	li r10, 1
lbl_806AADF4:
/* 806AADF4  2C 0A 00 00 */	cmpwi r10, 0
/* 806AADF8  4D 82 00 20 */	beqlr 
/* 806AADFC  C0 08 00 20 */	lfs f0, 0x20(r8)
/* 806AAE00  D0 09 04 FC */	stfs f0, 0x4fc(r9)
/* 806AAE04  C0 09 04 C0 */	lfs f0, 0x4c0(r9)
/* 806AAE08  D0 09 04 D4 */	stfs f0, 0x4d4(r9)
/* 806AAE0C  4E 80 00 20 */	blr 
