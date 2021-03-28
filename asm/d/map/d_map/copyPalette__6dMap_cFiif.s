lbl_8002A064:
/* 8002A064  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002A068  7C 08 02 A6 */	mflr r0
/* 8002A06C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002A070  80 0D 88 00 */	lwz r0, m_res__22dMap_HIO_prm_res_dst_s(r13)
/* 8002A074  54 87 18 38 */	slwi r7, r4, 3
/* 8002A078  7D 20 3A 14 */	add r9, r0, r7
/* 8002A07C  80 63 00 40 */	lwz r3, 0x40(r3)
/* 8002A080  54 A0 18 38 */	slwi r0, r5, 3
/* 8002A084  7C 63 02 2E */	lhzx r3, r3, r0
/* 8002A088  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 8002A08C  41 82 00 18 */	beq lbl_8002A0A4
/* 8002A090  54 66 CE 38 */	rlwinm r6, r3, 0x19, 0x18, 0x1c
/* 8002A094  54 65 F6 38 */	rlwinm r5, r3, 0x1e, 0x18, 0x1c
/* 8002A098  54 64 1E 38 */	rlwinm r4, r3, 3, 0x18, 0x1c
/* 8002A09C  38 00 00 FF */	li r0, 0xff
/* 8002A0A0  48 00 00 14 */	b lbl_8002A0B4
lbl_8002A0A4:
/* 8002A0A4  54 66 E6 36 */	rlwinm r6, r3, 0x1c, 0x18, 0x1b
/* 8002A0A8  54 65 06 36 */	rlwinm r5, r3, 0, 0x18, 0x1b
/* 8002A0AC  54 64 26 36 */	rlwinm r4, r3, 4, 0x18, 0x1b
/* 8002A0B0  54 60 CE 34 */	rlwinm r0, r3, 0x19, 0x18, 0x1a
lbl_8002A0B4:
/* 8002A0B4  54 C6 06 3E */	clrlwi r6, r6, 0x18
/* 8002A0B8  54 A8 06 3E */	clrlwi r8, r5, 0x18
/* 8002A0BC  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 8002A0C0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8002A0C4  C8 42 82 B0 */	lfd f2, lit_3749(r2)
/* 8002A0C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8002A0CC  3C 00 43 30 */	lis r0, 0x4330
/* 8002A0D0  90 01 00 08 */	stw r0, 8(r1)
/* 8002A0D4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8002A0D8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8002A0DC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8002A0E0  FC 00 00 1E */	fctiwz f0, f0
/* 8002A0E4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8002A0E8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8002A0EC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002A0F0  28 00 00 E0 */	cmplwi r0, 0xe0
/* 8002A0F4  54 A0 06 36 */	rlwinm r0, r5, 0, 0x18, 0x1b
/* 8002A0F8  50 C0 25 2E */	rlwimi r0, r6, 4, 0x14, 0x17
/* 8002A0FC  50 80 E7 3E */	rlwimi r0, r4, 0x1c, 0x1c, 0x1f
/* 8002A100  50 60 3C 66 */	rlwimi r0, r3, 7, 0x11, 0x13
/* 8002A104  41 80 00 14 */	blt lbl_8002A118
/* 8002A108  55 00 15 B4 */	rlwinm r0, r8, 2, 0x16, 0x1a
/* 8002A10C  50 C0 3C 6A */	rlwimi r0, r6, 7, 0x11, 0x15
/* 8002A110  50 80 EE FE */	rlwimi r0, r4, 0x1d, 0x1b, 0x1f
/* 8002A114  60 00 80 00 */	ori r0, r0, 0x8000
lbl_8002A118:
/* 8002A118  B0 09 00 00 */	sth r0, 0(r9)
/* 8002A11C  B0 09 00 02 */	sth r0, 2(r9)
/* 8002A120  B0 09 00 04 */	sth r0, 4(r9)
/* 8002A124  B0 09 00 06 */	sth r0, 6(r9)
/* 8002A128  80 0D 88 00 */	lwz r0, m_res__22dMap_HIO_prm_res_dst_s(r13)
/* 8002A12C  7C 60 3A 14 */	add r3, r0, r7
/* 8002A130  38 80 00 08 */	li r4, 8
/* 8002A134  48 31 14 A9 */	bl DCStoreRange
/* 8002A138  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002A13C  7C 08 03 A6 */	mtlr r0
/* 8002A140  38 21 00 20 */	addi r1, r1, 0x20
/* 8002A144  4E 80 00 20 */	blr 
