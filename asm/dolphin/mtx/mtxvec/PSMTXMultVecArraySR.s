lbl_80346EA0:
/* 80346EA0  E1 A3 00 00 */	psq_l f13, 0(r3), 0, 0 /* qr0 */
/* 80346EA4  E1 83 00 10 */	psq_l f12, 16(r3), 0, 0 /* qr0 */
/* 80346EA8  38 C6 FF FF */	addi r6, r6, -1
/* 80346EAC  E1 63 80 08 */	psq_l f11, 8(r3), 1, 0 /* qr0 */
/* 80346EB0  10 0D 64 20 */	ps_merge00 f0, f13, f12
/* 80346EB4  38 A5 FF FC */	addi r5, r5, -4
/* 80346EB8  E1 43 80 18 */	psq_l f10, 24(r3), 1, 0 /* qr0 */
/* 80346EBC  10 2D 64 E0 */	ps_merge11 f1, f13, f12
/* 80346EC0  7C C9 03 A6 */	mtctr r6
/* 80346EC4  E0 63 00 20 */	psq_l f3, 32(r3), 0, 0 /* qr0 */
/* 80346EC8  10 4B 54 20 */	ps_merge00 f2, f11, f10
/* 80346ECC  E0 83 80 28 */	psq_l f4, 40(r3), 1, 0 /* qr0 */
/* 80346ED0  E0 C4 00 00 */	psq_l f6, 0(r4), 0, 0 /* qr0 */
/* 80346ED4  E4 E4 80 08 */	psq_lu f7, 8(r4), 1, 0 /* qr0 */
/* 80346ED8  11 00 01 98 */	ps_muls0 f8, f0, f6
/* 80346EDC  11 23 01 B2 */	ps_mul f9, f3, f6
/* 80346EE0  11 01 41 9E */	ps_madds1 f8, f1, f6, f8
/* 80346EE4  11 44 49 FA */	ps_madd f10, f4, f7, f9
lbl_80346EE8:
/* 80346EE8  E4 C4 00 04 */	psq_lu f6, 4(r4), 0, 0 /* qr0 */
/* 80346EEC  11 82 41 DC */	ps_madds0 f12, f2, f7, f8
/* 80346EF0  E4 E4 80 08 */	psq_lu f7, 8(r4), 1, 0 /* qr0 */
/* 80346EF4  11 AA 4A 54 */	ps_sum0 f13, f10, f9, f9
/* 80346EF8  11 00 01 98 */	ps_muls0 f8, f0, f6
/* 80346EFC  11 23 01 B2 */	ps_mul f9, f3, f6
/* 80346F00  F5 85 00 04 */	psq_stu f12, 4(r5), 0, 0 /* qr0 */
/* 80346F04  11 01 41 9E */	ps_madds1 f8, f1, f6, f8
/* 80346F08  F5 A5 80 08 */	psq_stu f13, 8(r5), 1, 0 /* qr0 */
/* 80346F0C  11 44 49 FA */	ps_madd f10, f4, f7, f9
/* 80346F10  42 00 FF D8 */	bdnz lbl_80346EE8
/* 80346F14  11 82 41 DC */	ps_madds0 f12, f2, f7, f8
/* 80346F18  11 AA 4A 54 */	ps_sum0 f13, f10, f9, f9
/* 80346F1C  F5 85 00 04 */	psq_stu f12, 4(r5), 0, 0 /* qr0 */
/* 80346F20  F5 A5 80 08 */	psq_stu f13, 8(r5), 1, 0 /* qr0 */
/* 80346F24  4E 80 00 20 */	blr 
