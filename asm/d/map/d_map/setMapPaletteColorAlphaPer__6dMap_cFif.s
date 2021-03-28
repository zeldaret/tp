lbl_80029F84:
/* 80029F84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80029F88  7C 08 02 A6 */	mflr r0
/* 80029F8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80029F90  80 0D 88 00 */	lwz r0, m_res__22dMap_HIO_prm_res_dst_s(r13)
/* 80029F94  54 87 18 38 */	slwi r7, r4, 3
/* 80029F98  7D 20 3A 14 */	add r9, r0, r7
/* 80029F9C  80 63 00 40 */	lwz r3, 0x40(r3)
/* 80029FA0  7C 63 3A 2E */	lhzx r3, r3, r7
/* 80029FA4  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 80029FA8  41 82 00 18 */	beq lbl_80029FC0
/* 80029FAC  54 66 CE 38 */	rlwinm r6, r3, 0x19, 0x18, 0x1c
/* 80029FB0  54 65 F6 38 */	rlwinm r5, r3, 0x1e, 0x18, 0x1c
/* 80029FB4  54 64 1E 38 */	rlwinm r4, r3, 3, 0x18, 0x1c
/* 80029FB8  38 00 00 FF */	li r0, 0xff
/* 80029FBC  48 00 00 14 */	b lbl_80029FD0
lbl_80029FC0:
/* 80029FC0  54 66 E6 36 */	rlwinm r6, r3, 0x1c, 0x18, 0x1b
/* 80029FC4  54 65 06 36 */	rlwinm r5, r3, 0, 0x18, 0x1b
/* 80029FC8  54 64 26 36 */	rlwinm r4, r3, 4, 0x18, 0x1b
/* 80029FCC  54 60 CE 34 */	rlwinm r0, r3, 0x19, 0x18, 0x1a
lbl_80029FD0:
/* 80029FD0  54 C6 06 3E */	clrlwi r6, r6, 0x18
/* 80029FD4  54 A8 06 3E */	clrlwi r8, r5, 0x18
/* 80029FD8  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80029FDC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80029FE0  C8 42 82 B0 */	lfd f2, lit_3749(r2)
/* 80029FE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80029FE8  3C 00 43 30 */	lis r0, 0x4330
/* 80029FEC  90 01 00 08 */	stw r0, 8(r1)
/* 80029FF0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80029FF4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80029FF8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80029FFC  FC 00 00 1E */	fctiwz f0, f0
/* 8002A000  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8002A004  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8002A008  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002A00C  28 00 00 E0 */	cmplwi r0, 0xe0
/* 8002A010  54 A0 06 36 */	rlwinm r0, r5, 0, 0x18, 0x1b
/* 8002A014  50 C0 25 2E */	rlwimi r0, r6, 4, 0x14, 0x17
/* 8002A018  50 80 E7 3E */	rlwimi r0, r4, 0x1c, 0x1c, 0x1f
/* 8002A01C  50 60 3C 66 */	rlwimi r0, r3, 7, 0x11, 0x13
/* 8002A020  41 80 00 14 */	blt lbl_8002A034
/* 8002A024  55 00 15 B4 */	rlwinm r0, r8, 2, 0x16, 0x1a
/* 8002A028  50 C0 3C 6A */	rlwimi r0, r6, 7, 0x11, 0x15
/* 8002A02C  50 80 EE FE */	rlwimi r0, r4, 0x1d, 0x1b, 0x1f
/* 8002A030  60 00 80 00 */	ori r0, r0, 0x8000
lbl_8002A034:
/* 8002A034  B0 09 00 00 */	sth r0, 0(r9)
/* 8002A038  B0 09 00 02 */	sth r0, 2(r9)
/* 8002A03C  B0 09 00 04 */	sth r0, 4(r9)
/* 8002A040  B0 09 00 06 */	sth r0, 6(r9)
/* 8002A044  80 0D 88 00 */	lwz r0, m_res__22dMap_HIO_prm_res_dst_s(r13)
/* 8002A048  7C 60 3A 14 */	add r3, r0, r7
/* 8002A04C  38 80 00 08 */	li r4, 8
/* 8002A050  48 31 15 8D */	bl DCStoreRange
/* 8002A054  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002A058  7C 08 03 A6 */	mtlr r0
/* 8002A05C  38 21 00 20 */	addi r1, r1, 0x20
/* 8002A060  4E 80 00 20 */	blr 
