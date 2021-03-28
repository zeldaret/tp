lbl_80346DC0:
/* 80346DC0  E1 A3 00 00 */	psq_l f13, 0(r3), 0, 0 /* qr0 */
/* 80346DC4  E1 83 00 10 */	psq_l f12, 16(r3), 0, 0 /* qr0 */
/* 80346DC8  38 C6 FF FF */	addi r6, r6, -1
/* 80346DCC  E1 63 00 08 */	psq_l f11, 8(r3), 0, 0 /* qr0 */
/* 80346DD0  10 0D 64 20 */	ps_merge00 f0, f13, f12
/* 80346DD4  38 A5 FF FC */	addi r5, r5, -4
/* 80346DD8  E1 43 00 18 */	psq_l f10, 24(r3), 0, 0 /* qr0 */
/* 80346DDC  10 2D 64 E0 */	ps_merge11 f1, f13, f12
/* 80346DE0  7C C9 03 A6 */	mtctr r6
/* 80346DE4  E0 83 00 20 */	psq_l f4, 32(r3), 0, 0 /* qr0 */
/* 80346DE8  10 4B 54 20 */	ps_merge00 f2, f11, f10
/* 80346DEC  E0 A3 00 28 */	psq_l f5, 40(r3), 0, 0 /* qr0 */
/* 80346DF0  10 6B 54 E0 */	ps_merge11 f3, f11, f10
/* 80346DF4  E0 C4 00 00 */	psq_l f6, 0(r4), 0, 0 /* qr0 */
/* 80346DF8  E4 E4 80 08 */	psq_lu f7, 8(r4), 1, 0 /* qr0 */
/* 80346DFC  11 00 19 9C */	ps_madds0 f8, f0, f6, f3
/* 80346E00  11 24 01 B2 */	ps_mul f9, f4, f6
/* 80346E04  11 01 41 9E */	ps_madds1 f8, f1, f6, f8
/* 80346E08  11 45 49 FA */	ps_madd f10, f5, f7, f9
lbl_80346E0C:
/* 80346E0C  E4 C4 00 04 */	psq_lu f6, 4(r4), 0, 0 /* qr0 */
/* 80346E10  11 82 41 DC */	ps_madds0 f12, f2, f7, f8
/* 80346E14  E4 E4 80 08 */	psq_lu f7, 8(r4), 1, 0 /* qr0 */
/* 80346E18  11 AA 52 54 */	ps_sum0 f13, f10, f9, f10
/* 80346E1C  11 00 19 9C */	ps_madds0 f8, f0, f6, f3
/* 80346E20  11 24 01 B2 */	ps_mul f9, f4, f6
/* 80346E24  F5 85 00 04 */	psq_stu f12, 4(r5), 0, 0 /* qr0 */
/* 80346E28  11 01 41 9E */	ps_madds1 f8, f1, f6, f8
/* 80346E2C  F5 A5 80 08 */	psq_stu f13, 8(r5), 1, 0 /* qr0 */
/* 80346E30  11 45 49 FA */	ps_madd f10, f5, f7, f9
/* 80346E34  42 00 FF D8 */	bdnz lbl_80346E0C
/* 80346E38  11 82 41 DC */	ps_madds0 f12, f2, f7, f8
/* 80346E3C  11 AA 52 54 */	ps_sum0 f13, f10, f9, f10
/* 80346E40  F5 85 00 04 */	psq_stu f12, 4(r5), 0, 0 /* qr0 */
/* 80346E44  F5 A5 80 08 */	psq_stu f13, 8(r5), 1, 0 /* qr0 */
/* 80346E48  4E 80 00 20 */	blr 
