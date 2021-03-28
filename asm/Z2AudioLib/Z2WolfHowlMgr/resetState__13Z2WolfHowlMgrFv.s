lbl_802CAB8C:
/* 802CAB8C  C0 22 C4 64 */	lfs f1, lit_3486(r2)
/* 802CAB90  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 802CAB94  C0 0D 83 04 */	lfs f0, cPitchCenter(r13)
/* 802CAB98  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802CAB9C  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 802CABA0  38 00 00 00 */	li r0, 0
/* 802CABA4  90 03 00 88 */	stw r0, 0x88(r3)
/* 802CABA8  98 03 00 8C */	stb r0, 0x8c(r3)
/* 802CABAC  98 03 00 BA */	stb r0, 0xba(r3)
/* 802CABB0  38 A0 00 00 */	li r5, 0
/* 802CABB4  C0 02 C4 60 */	lfs f0, lit_3485(r2)
/* 802CABB8  48 00 00 18 */	b lbl_802CABD0
lbl_802CABBC:
/* 802CABBC  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 802CABC0  7C 83 02 14 */	add r4, r3, r0
/* 802CABC4  D0 04 00 38 */	stfs f0, 0x38(r4)
/* 802CABC8  D0 04 00 60 */	stfs f0, 0x60(r4)
/* 802CABCC  38 A5 00 01 */	addi r5, r5, 1
lbl_802CABD0:
/* 802CABD0  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802CABD4  28 00 00 0A */	cmplwi r0, 0xa
/* 802CABD8  41 80 FF E4 */	blt lbl_802CABBC
/* 802CABDC  C0 02 C4 60 */	lfs f0, lit_3485(r2)
/* 802CABE0  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 802CABE4  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 802CABE8  4E 80 00 20 */	blr 
