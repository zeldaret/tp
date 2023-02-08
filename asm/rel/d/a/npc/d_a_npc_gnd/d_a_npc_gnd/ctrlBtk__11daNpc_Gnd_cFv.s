lbl_809BC1F4:
/* 809BC1F4  80 C3 09 6C */	lwz r6, 0x96c(r3)
/* 809BC1F8  28 06 00 00 */	cmplwi r6, 0
/* 809BC1FC  41 82 01 24 */	beq lbl_809BC320
/* 809BC200  80 03 09 70 */	lwz r0, 0x970(r3)
/* 809BC204  28 00 00 00 */	cmplwi r0, 0
/* 809BC208  41 82 01 18 */	beq lbl_809BC320
/* 809BC20C  88 03 0E 29 */	lbz r0, 0xe29(r3)
/* 809BC210  28 00 00 00 */	cmplwi r0, 0
/* 809BC214  41 82 00 D4 */	beq lbl_809BC2E8
/* 809BC218  80 03 06 58 */	lwz r0, 0x658(r3)
/* 809BC21C  28 00 00 00 */	cmplwi r0, 0
/* 809BC220  41 82 00 C8 */	beq lbl_809BC2E8
/* 809BC224  A8 03 0C D6 */	lha r0, 0xcd6(r3)
/* 809BC228  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 809BC22C  7C 00 1E 70 */	srawi r0, r0, 3
/* 809BC230  54 00 18 38 */	slwi r0, r0, 3
/* 809BC234  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 809BC238  38 A4 9A 20 */	addi r5, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 809BC23C  7C 05 04 2E */	lfsx f0, r5, r0
/* 809BC240  3C 80 80 9C */	lis r4, lit_4552@ha /* 0x809BE554@ha */
/* 809BC244  C0 44 E5 54 */	lfs f2, lit_4552@l(r4)  /* 0x809BE554@l */
/* 809BC248  3C 80 80 9C */	lis r4, lit_4180@ha /* 0x809BE548@ha */
/* 809BC24C  C0 24 E5 48 */	lfs f1, lit_4180@l(r4)  /* 0x809BE548@l */
/* 809BC250  EC 01 00 32 */	fmuls f0, f1, f0
/* 809BC254  EC 02 00 32 */	fmuls f0, f2, f0
/* 809BC258  D0 06 00 FC */	stfs f0, 0xfc(r6)
/* 809BC25C  A8 03 0C D4 */	lha r0, 0xcd4(r3)
/* 809BC260  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809BC264  7C 05 04 2E */	lfsx f0, r5, r0
/* 809BC268  EC 01 00 32 */	fmuls f0, f1, f0
/* 809BC26C  80 83 09 6C */	lwz r4, 0x96c(r3)
/* 809BC270  D0 04 01 00 */	stfs f0, 0x100(r4)
/* 809BC274  A8 03 0C D6 */	lha r0, 0xcd6(r3)
/* 809BC278  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809BC27C  7C 05 04 2E */	lfsx f0, r5, r0
/* 809BC280  EC 01 00 32 */	fmuls f0, f1, f0
/* 809BC284  80 83 09 70 */	lwz r4, 0x970(r3)
/* 809BC288  D0 04 00 FC */	stfs f0, 0xfc(r4)
/* 809BC28C  A8 03 0C D4 */	lha r0, 0xcd4(r3)
/* 809BC290  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809BC294  7C 05 04 2E */	lfsx f0, r5, r0
/* 809BC298  EC 01 00 32 */	fmuls f0, f1, f0
/* 809BC29C  80 83 09 70 */	lwz r4, 0x970(r3)
/* 809BC2A0  D0 04 01 00 */	stfs f0, 0x100(r4)
/* 809BC2A4  88 03 0E 2A */	lbz r0, 0xe2a(r3)
/* 809BC2A8  28 00 00 00 */	cmplwi r0, 0
/* 809BC2AC  41 82 00 20 */	beq lbl_809BC2CC
/* 809BC2B0  80 83 09 6C */	lwz r4, 0x96c(r3)
/* 809BC2B4  98 04 01 05 */	stb r0, 0x105(r4)
/* 809BC2B8  88 03 0E 2A */	lbz r0, 0xe2a(r3)
/* 809BC2BC  80 83 09 70 */	lwz r4, 0x970(r3)
/* 809BC2C0  98 04 01 05 */	stb r0, 0x105(r4)
/* 809BC2C4  38 00 00 00 */	li r0, 0
/* 809BC2C8  98 03 0E 2A */	stb r0, 0xe2a(r3)
lbl_809BC2CC:
/* 809BC2CC  38 00 00 01 */	li r0, 1
/* 809BC2D0  80 83 09 6C */	lwz r4, 0x96c(r3)
/* 809BC2D4  98 04 01 04 */	stb r0, 0x104(r4)
/* 809BC2D8  80 63 09 70 */	lwz r3, 0x970(r3)
/* 809BC2DC  98 03 01 04 */	stb r0, 0x104(r3)
/* 809BC2E0  38 60 00 01 */	li r3, 1
/* 809BC2E4  4E 80 00 20 */	blr 
lbl_809BC2E8:
/* 809BC2E8  88 03 0E 2A */	lbz r0, 0xe2a(r3)
/* 809BC2EC  28 00 00 00 */	cmplwi r0, 0
/* 809BC2F0  41 82 00 1C */	beq lbl_809BC30C
/* 809BC2F4  98 06 01 05 */	stb r0, 0x105(r6)
/* 809BC2F8  88 03 0E 2A */	lbz r0, 0xe2a(r3)
/* 809BC2FC  80 83 09 70 */	lwz r4, 0x970(r3)
/* 809BC300  98 04 01 05 */	stb r0, 0x105(r4)
/* 809BC304  38 00 00 00 */	li r0, 0
/* 809BC308  98 03 0E 2A */	stb r0, 0xe2a(r3)
lbl_809BC30C:
/* 809BC30C  38 00 00 00 */	li r0, 0
/* 809BC310  80 83 09 6C */	lwz r4, 0x96c(r3)
/* 809BC314  98 04 01 04 */	stb r0, 0x104(r4)
/* 809BC318  80 63 09 70 */	lwz r3, 0x970(r3)
/* 809BC31C  98 03 01 04 */	stb r0, 0x104(r3)
lbl_809BC320:
/* 809BC320  38 60 00 00 */	li r3, 0
/* 809BC324  4E 80 00 20 */	blr 
