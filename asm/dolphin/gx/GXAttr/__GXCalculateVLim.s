lbl_8035B468:
/* 8035B468  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035B46C  A0 03 00 04 */	lhz r0, 4(r3)
/* 8035B470  28 00 00 00 */	cmplwi r0, 0
/* 8035B474  4D 82 00 20 */	beqlr 
/* 8035B478  81 23 00 14 */	lwz r9, 0x14(r3)
/* 8035B47C  38 AD 85 08 */	la r5, tbl3(r13) /* 80450A88-_SDA_BASE_ */
/* 8035B480  81 03 00 1C */	lwz r8, 0x1c(r3)
/* 8035B484  55 20 07 FE */	clrlwi r0, r9, 0x1f
/* 8035B488  80 83 00 18 */	lwz r4, 0x18(r3)
/* 8035B48C  55 26 FF FE */	rlwinm r6, r9, 0x1f, 0x1f, 0x1f
/* 8035B490  7C 00 32 14 */	add r0, r0, r6
/* 8035B494  55 26 F7 FE */	rlwinm r6, r9, 0x1e, 0x1f, 0x1f
/* 8035B498  7C 00 32 14 */	add r0, r0, r6
/* 8035B49C  55 27 EF FE */	rlwinm r7, r9, 0x1d, 0x1f, 0x1f
/* 8035B4A0  55 26 BF BE */	rlwinm r6, r9, 0x17, 0x1e, 0x1f
/* 8035B4A4  7C A5 30 AE */	lbzx r5, r5, r6
/* 8035B4A8  55 08 BF FE */	rlwinm r8, r8, 0x17, 0x1f, 0x1f
/* 8035B4AC  7C 00 3A 14 */	add r0, r0, r7
/* 8035B4B0  55 26 E7 FE */	rlwinm r6, r9, 0x1c, 0x1f, 0x1f
/* 8035B4B4  7C 00 32 14 */	add r0, r0, r6
/* 8035B4B8  55 26 DF FE */	rlwinm r6, r9, 0x1b, 0x1f, 0x1f
/* 8035B4BC  7C 00 32 14 */	add r0, r0, r6
/* 8035B4C0  55 26 D7 FE */	rlwinm r6, r9, 0x1a, 0x1f, 0x1f
/* 8035B4C4  7C 00 32 14 */	add r0, r0, r6
/* 8035B4C8  55 26 CF FE */	rlwinm r6, r9, 0x19, 0x1f, 0x1f
/* 8035B4CC  7C 00 32 14 */	add r0, r0, r6
/* 8035B4D0  55 26 C7 FE */	rlwinm r6, r9, 0x18, 0x1f, 0x1f
/* 8035B4D4  7C 00 32 14 */	add r0, r0, r6
/* 8035B4D8  2C 08 00 01 */	cmpwi r8, 1
/* 8035B4DC  7C 00 2A 14 */	add r0, r0, r5
/* 8035B4E0  40 82 00 0C */	bne lbl_8035B4EC
/* 8035B4E4  39 00 00 03 */	li r8, 3
/* 8035B4E8  48 00 00 08 */	b lbl_8035B4F0
lbl_8035B4EC:
/* 8035B4EC  39 00 00 01 */	li r8, 1
lbl_8035B4F0:
/* 8035B4F0  55 26 AF BE */	rlwinm r6, r9, 0x15, 0x1e, 0x1f
/* 8035B4F4  38 AD 85 08 */	la r5, tbl3(r13) /* 80450A88-_SDA_BASE_ */
/* 8035B4F8  7C C5 30 AE */	lbzx r6, r5, r6
/* 8035B4FC  55 25 9F BE */	rlwinm r5, r9, 0x13, 0x1e, 0x1f
/* 8035B500  38 ED 85 00 */	la r7, tbl1(r13) /* 80450A80-_SDA_BASE_ */
/* 8035B504  7D 06 41 D6 */	mullw r8, r6, r8
/* 8035B508  7C C7 28 AE */	lbzx r6, r7, r5
/* 8035B50C  7C 00 42 14 */	add r0, r0, r8
/* 8035B510  55 25 8F BE */	rlwinm r5, r9, 0x11, 0x1e, 0x1f
/* 8035B514  7D 27 28 AE */	lbzx r9, r7, r5
/* 8035B518  7C 00 32 14 */	add r0, r0, r6
/* 8035B51C  54 86 07 BE */	clrlwi r6, r4, 0x1e
/* 8035B520  39 0D 85 04 */	la r8, tbl2(r13) /* 80450A84-_SDA_BASE_ */
/* 8035B524  54 85 F7 BE */	rlwinm r5, r4, 0x1e, 0x1e, 0x1f
/* 8035B528  7C E8 30 AE */	lbzx r7, r8, r6
/* 8035B52C  7C 00 4A 14 */	add r0, r0, r9
/* 8035B530  7C C8 28 AE */	lbzx r6, r8, r5
/* 8035B534  7C 00 3A 14 */	add r0, r0, r7
/* 8035B538  54 85 E7 BE */	rlwinm r5, r4, 0x1c, 0x1e, 0x1f
/* 8035B53C  7C E8 28 AE */	lbzx r7, r8, r5
/* 8035B540  7C 00 32 14 */	add r0, r0, r6
/* 8035B544  54 85 D7 BE */	rlwinm r5, r4, 0x1a, 0x1e, 0x1f
/* 8035B548  7C C8 28 AE */	lbzx r6, r8, r5
/* 8035B54C  7C 00 3A 14 */	add r0, r0, r7
/* 8035B550  54 85 C7 BE */	rlwinm r5, r4, 0x18, 0x1e, 0x1f
/* 8035B554  7C E8 28 AE */	lbzx r7, r8, r5
/* 8035B558  7C 00 32 14 */	add r0, r0, r6
/* 8035B55C  54 85 B7 BE */	rlwinm r5, r4, 0x16, 0x1e, 0x1f
/* 8035B560  7C C8 28 AE */	lbzx r6, r8, r5
/* 8035B564  54 85 A7 BE */	rlwinm r5, r4, 0x14, 0x1e, 0x1f
/* 8035B568  7C 00 3A 14 */	add r0, r0, r7
/* 8035B56C  7C A8 28 AE */	lbzx r5, r8, r5
/* 8035B570  54 84 97 BE */	rlwinm r4, r4, 0x12, 0x1e, 0x1f
/* 8035B574  7C 00 32 14 */	add r0, r0, r6
/* 8035B578  7C 88 20 AE */	lbzx r4, r8, r4
/* 8035B57C  7C 00 2A 14 */	add r0, r0, r5
/* 8035B580  7C 00 22 14 */	add r0, r0, r4
/* 8035B584  B0 03 00 06 */	sth r0, 6(r3)
/* 8035B588  4E 80 00 20 */	blr 
