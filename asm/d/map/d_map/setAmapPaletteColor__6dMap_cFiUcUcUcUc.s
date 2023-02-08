lbl_8002A148:
/* 8002A148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002A14C  7C 08 02 A6 */	mflr r0
/* 8002A150  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002A154  55 00 06 3E */	clrlwi r0, r8, 0x18
/* 8002A158  28 00 00 E0 */	cmplwi r0, 0xe0
/* 8002A15C  54 C3 06 36 */	rlwinm r3, r6, 0, 0x18, 0x1b
/* 8002A160  50 A3 25 2E */	rlwimi r3, r5, 4, 0x14, 0x17
/* 8002A164  50 E3 E7 3E */	rlwimi r3, r7, 0x1c, 0x1c, 0x1f
/* 8002A168  51 03 3C 66 */	rlwimi r3, r8, 7, 0x11, 0x13
/* 8002A16C  41 80 00 14 */	blt lbl_8002A180
/* 8002A170  54 C0 15 B4 */	rlwinm r0, r6, 2, 0x16, 0x1a
/* 8002A174  50 A0 3C 6A */	rlwimi r0, r5, 7, 0x11, 0x15
/* 8002A178  50 E0 EE FE */	rlwimi r0, r7, 0x1d, 0x1b, 0x1f
/* 8002A17C  60 03 80 00 */	ori r3, r0, 0x8000
lbl_8002A180:
/* 8002A180  80 0D 88 00 */	lwz r0, m_res__22dMap_HIO_prm_res_dst_s(r13)
/* 8002A184  54 84 18 38 */	slwi r4, r4, 3
/* 8002A188  7C A0 22 14 */	add r5, r0, r4
/* 8002A18C  B0 65 00 00 */	sth r3, 0(r5)
/* 8002A190  B0 65 00 02 */	sth r3, 2(r5)
/* 8002A194  B0 65 00 04 */	sth r3, 4(r5)
/* 8002A198  B0 65 00 06 */	sth r3, 6(r5)
/* 8002A19C  80 0D 88 00 */	lwz r0, m_res__22dMap_HIO_prm_res_dst_s(r13)
/* 8002A1A0  7C 60 22 14 */	add r3, r0, r4
/* 8002A1A4  38 80 00 08 */	li r4, 8
/* 8002A1A8  48 31 14 35 */	bl DCStoreRange
/* 8002A1AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002A1B0  7C 08 03 A6 */	mtlr r0
/* 8002A1B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8002A1B8  4E 80 00 20 */	blr 
