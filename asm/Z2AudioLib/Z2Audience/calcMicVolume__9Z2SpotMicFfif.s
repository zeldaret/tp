lbl_802BD03C:
/* 802BD03C  88 03 00 25 */	lbz r0, 0x25(r3)
/* 802BD040  28 00 00 00 */	cmplwi r0, 0
/* 802BD044  40 82 00 0C */	bne lbl_802BD050
/* 802BD048  FC 20 10 90 */	fmr f1, f2
/* 802BD04C  4E 80 00 20 */	blr 
lbl_802BD050:
/* 802BD050  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802BD054  28 00 00 00 */	cmplwi r0, 0
/* 802BD058  40 82 00 0C */	bne lbl_802BD064
/* 802BD05C  FC 20 10 90 */	fmr f1, f2
/* 802BD060  4E 80 00 20 */	blr 
lbl_802BD064:
/* 802BD064  54 86 10 3A */	slwi r6, r4, 2
/* 802BD068  7C A3 32 14 */	add r5, r3, r6
/* 802BD06C  80 05 00 10 */	lwz r0, 0x10(r5)
/* 802BD070  28 00 00 00 */	cmplwi r0, 0
/* 802BD074  40 82 00 0C */	bne lbl_802BD080
/* 802BD078  FC 20 10 90 */	fmr f1, f2
/* 802BD07C  4E 80 00 20 */	blr 
lbl_802BD080:
/* 802BD080  88 03 00 24 */	lbz r0, 0x24(r3)
/* 802BD084  28 00 00 00 */	cmplwi r0, 0
/* 802BD088  41 82 00 1C */	beq lbl_802BD0A4
/* 802BD08C  7C 83 22 14 */	add r4, r3, r4
/* 802BD090  88 04 00 26 */	lbz r0, 0x26(r4)
/* 802BD094  28 00 00 00 */	cmplwi r0, 0
/* 802BD098  40 82 00 0C */	bne lbl_802BD0A4
/* 802BD09C  FC 20 10 90 */	fmr f1, f2
/* 802BD0A0  4E 80 00 20 */	blr 
lbl_802BD0A4:
/* 802BD0A4  C0 03 00 04 */	lfs f0, 4(r3)
/* 802BD0A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BD0AC  40 81 00 0C */	ble lbl_802BD0B8
/* 802BD0B0  C0 22 C0 AC */	lfs f1, lit_896(r2)
/* 802BD0B4  4E 80 00 20 */	blr 
lbl_802BD0B8:
/* 802BD0B8  7C 83 32 14 */	add r4, r3, r6
/* 802BD0BC  C0 A4 00 18 */	lfs f5, 0x18(r4)
/* 802BD0C0  FC 02 28 40 */	fcmpo cr0, f2, f5
/* 802BD0C4  4C 41 13 82 */	cror 2, 1, 2
/* 802BD0C8  40 82 00 0C */	bne lbl_802BD0D4
/* 802BD0CC  FC 20 10 90 */	fmr f1, f2
/* 802BD0D0  4E 80 00 20 */	blr 
lbl_802BD0D4:
/* 802BD0D4  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BD0D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BD0DC  40 80 00 0C */	bge lbl_802BD0E8
/* 802BD0E0  FC 20 28 90 */	fmr f1, f5
/* 802BD0E4  4E 80 00 20 */	blr 
lbl_802BD0E8:
/* 802BD0E8  C0 83 00 08 */	lfs f4, 8(r3)
/* 802BD0EC  C0 64 00 20 */	lfs f3, 0x20(r4)
/* 802BD0F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 802BD0F4  EC 03 00 32 */	fmuls f0, f3, f0
/* 802BD0F8  EC 05 00 2A */	fadds f0, f5, f0
/* 802BD0FC  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 802BD100  40 80 00 08 */	bge lbl_802BD108
/* 802BD104  48 00 00 18 */	b lbl_802BD11C
lbl_802BD108:
/* 802BD108  FC 00 28 40 */	fcmpo cr0, f0, f5
/* 802BD10C  40 81 00 0C */	ble lbl_802BD118
/* 802BD110  FC 80 28 90 */	fmr f4, f5
/* 802BD114  48 00 00 08 */	b lbl_802BD11C
lbl_802BD118:
/* 802BD118  FC 80 00 90 */	fmr f4, f0
lbl_802BD11C:
/* 802BD11C  FC 02 20 40 */	fcmpo cr0, f2, f4
/* 802BD120  40 80 00 08 */	bge lbl_802BD128
/* 802BD124  FC 40 20 90 */	fmr f2, f4
lbl_802BD128:
/* 802BD128  FC 20 10 90 */	fmr f1, f2
/* 802BD12C  4E 80 00 20 */	blr 
