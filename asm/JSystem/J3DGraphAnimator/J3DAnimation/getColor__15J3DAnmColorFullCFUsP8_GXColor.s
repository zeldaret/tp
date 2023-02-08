lbl_8032A990:
/* 8032A990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032A994  80 C3 00 3C */	lwz r6, 0x3c(r3)
/* 8032A998  54 80 23 36 */	rlwinm r0, r4, 4, 0xc, 0x1b
/* 8032A99C  7C 86 02 14 */	add r4, r6, r0
/* 8032A9A0  C0 23 00 08 */	lfs f1, 8(r3)
/* 8032A9A4  C0 02 CA 34 */	lfs f0, lit_853(r2)
/* 8032A9A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8032A9AC  40 80 00 48 */	bge lbl_8032A9F4
/* 8032A9B0  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 8032A9B4  A0 04 00 02 */	lhz r0, 2(r4)
/* 8032A9B8  7C 06 00 AE */	lbzx r0, r6, r0
/* 8032A9BC  98 05 00 00 */	stb r0, 0(r5)
/* 8032A9C0  80 C3 00 30 */	lwz r6, 0x30(r3)
/* 8032A9C4  A0 04 00 06 */	lhz r0, 6(r4)
/* 8032A9C8  7C 06 00 AE */	lbzx r0, r6, r0
/* 8032A9CC  98 05 00 01 */	stb r0, 1(r5)
/* 8032A9D0  80 C3 00 34 */	lwz r6, 0x34(r3)
/* 8032A9D4  A0 04 00 0A */	lhz r0, 0xa(r4)
/* 8032A9D8  7C 06 00 AE */	lbzx r0, r6, r0
/* 8032A9DC  98 05 00 02 */	stb r0, 2(r5)
/* 8032A9E0  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8032A9E4  A0 04 00 0E */	lhz r0, 0xe(r4)
/* 8032A9E8  7C 03 00 AE */	lbzx r0, r3, r0
/* 8032A9EC  98 05 00 03 */	stb r0, 3(r5)
/* 8032A9F0  48 00 01 08 */	b lbl_8032AAF8
lbl_8032A9F4:
/* 8032A9F4  C0 02 CA 48 */	lfs f0, lit_1092(r2)
/* 8032A9F8  EC 00 08 2A */	fadds f0, f0, f1
/* 8032A9FC  FC 00 00 1E */	fctiwz f0, f0
/* 8032AA00  D8 01 00 08 */	stfd f0, 8(r1)
/* 8032AA04  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8032AA08  A1 04 00 00 */	lhz r8, 0(r4)
/* 8032AA0C  7C 00 40 00 */	cmpw r0, r8
/* 8032AA10  41 80 00 20 */	blt lbl_8032AA30
/* 8032AA14  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 8032AA18  A0 C4 00 02 */	lhz r6, 2(r4)
/* 8032AA1C  7C C7 32 14 */	add r6, r7, r6
/* 8032AA20  7C C6 42 14 */	add r6, r6, r8
/* 8032AA24  88 C6 FF FF */	lbz r6, -1(r6)
/* 8032AA28  98 C5 00 00 */	stb r6, 0(r5)
/* 8032AA2C  48 00 00 18 */	b lbl_8032AA44
lbl_8032AA30:
/* 8032AA30  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 8032AA34  A0 C4 00 02 */	lhz r6, 2(r4)
/* 8032AA38  7C C6 02 14 */	add r6, r6, r0
/* 8032AA3C  7C C7 30 AE */	lbzx r6, r7, r6
/* 8032AA40  98 C5 00 00 */	stb r6, 0(r5)
lbl_8032AA44:
/* 8032AA44  A1 04 00 04 */	lhz r8, 4(r4)
/* 8032AA48  7C 00 40 00 */	cmpw r0, r8
/* 8032AA4C  41 80 00 20 */	blt lbl_8032AA6C
/* 8032AA50  80 E3 00 30 */	lwz r7, 0x30(r3)
/* 8032AA54  A0 C4 00 06 */	lhz r6, 6(r4)
/* 8032AA58  7C C7 32 14 */	add r6, r7, r6
/* 8032AA5C  7C C6 42 14 */	add r6, r6, r8
/* 8032AA60  88 C6 FF FF */	lbz r6, -1(r6)
/* 8032AA64  98 C5 00 01 */	stb r6, 1(r5)
/* 8032AA68  48 00 00 18 */	b lbl_8032AA80
lbl_8032AA6C:
/* 8032AA6C  80 E3 00 30 */	lwz r7, 0x30(r3)
/* 8032AA70  A0 C4 00 06 */	lhz r6, 6(r4)
/* 8032AA74  7C C6 02 14 */	add r6, r6, r0
/* 8032AA78  7C C7 30 AE */	lbzx r6, r7, r6
/* 8032AA7C  98 C5 00 01 */	stb r6, 1(r5)
lbl_8032AA80:
/* 8032AA80  A1 04 00 08 */	lhz r8, 8(r4)
/* 8032AA84  7C 00 40 00 */	cmpw r0, r8
/* 8032AA88  41 80 00 20 */	blt lbl_8032AAA8
/* 8032AA8C  80 E3 00 34 */	lwz r7, 0x34(r3)
/* 8032AA90  A0 C4 00 0A */	lhz r6, 0xa(r4)
/* 8032AA94  7C C7 32 14 */	add r6, r7, r6
/* 8032AA98  7C C6 42 14 */	add r6, r6, r8
/* 8032AA9C  88 C6 FF FF */	lbz r6, -1(r6)
/* 8032AAA0  98 C5 00 02 */	stb r6, 2(r5)
/* 8032AAA4  48 00 00 18 */	b lbl_8032AABC
lbl_8032AAA8:
/* 8032AAA8  80 E3 00 34 */	lwz r7, 0x34(r3)
/* 8032AAAC  A0 C4 00 0A */	lhz r6, 0xa(r4)
/* 8032AAB0  7C C6 02 14 */	add r6, r6, r0
/* 8032AAB4  7C C7 30 AE */	lbzx r6, r7, r6
/* 8032AAB8  98 C5 00 02 */	stb r6, 2(r5)
lbl_8032AABC:
/* 8032AABC  A0 C4 00 0C */	lhz r6, 0xc(r4)
/* 8032AAC0  7C 00 30 00 */	cmpw r0, r6
/* 8032AAC4  41 80 00 20 */	blt lbl_8032AAE4
/* 8032AAC8  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8032AACC  A0 04 00 0E */	lhz r0, 0xe(r4)
/* 8032AAD0  7C 03 02 14 */	add r0, r3, r0
/* 8032AAD4  7C 60 32 14 */	add r3, r0, r6
/* 8032AAD8  88 03 FF FF */	lbz r0, -1(r3)
/* 8032AADC  98 05 00 03 */	stb r0, 3(r5)
/* 8032AAE0  48 00 00 18 */	b lbl_8032AAF8
lbl_8032AAE4:
/* 8032AAE4  80 C3 00 38 */	lwz r6, 0x38(r3)
/* 8032AAE8  A0 64 00 0E */	lhz r3, 0xe(r4)
/* 8032AAEC  7C 03 02 14 */	add r0, r3, r0
/* 8032AAF0  7C 06 00 AE */	lbzx r0, r6, r0
/* 8032AAF4  98 05 00 03 */	stb r0, 3(r5)
lbl_8032AAF8:
/* 8032AAF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8032AAFC  4E 80 00 20 */	blr 
