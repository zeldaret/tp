lbl_803469E8:
/* 803469E8  C0 22 CB 08 */	lfs f1, lit_96(r2)
/* 803469EC  E0 84 00 00 */	psq_l f4, 0(r4), 0, 0 /* qr0 */
/* 803469F0  E0 A4 00 08 */	psq_l f5, 8(r4), 0, 0 /* qr0 */
/* 803469F4  EC 01 08 28 */	fsubs f0, f1, f1
/* 803469F8  EC 41 08 2A */	fadds f2, f1, f1
/* 803469FC  10 C4 01 32 */	ps_mul f6, f4, f4
/* 80346A00  11 24 24 A0 */	ps_merge10 f9, f4, f4
/* 80346A04  11 05 31 7A */	ps_madd f8, f5, f5, f6
/* 80346A08  10 E5 01 72 */	ps_mul f7, f5, f5
/* 80346A0C  10 68 42 14 */	ps_sum0 f3, f8, f8, f8
/* 80346A10  11 49 01 5A */	ps_muls1 f10, f9, f5
/* 80346A14  ED 60 18 30 */	fres f11, f3
/* 80346A18  11 07 32 16 */	ps_sum1 f8, f7, f8, f6
/* 80346A1C  10 63 12 FC */	ps_nmsub f3, f3, f11, f2
/* 80346A20  10 E5 01 5A */	ps_muls1 f7, f5, f5
/* 80346A24  10 6B 00 F2 */	ps_mul f3, f11, f3
/* 80346A28  10 C6 31 94 */	ps_sum0 f6, f6, f6, f6
/* 80346A2C  EC 63 00 B2 */	fmuls f3, f3, f2
/* 80346A30  11 64 3A 7A */	ps_madd f11, f4, f9, f7
/* 80346A34  10 E4 3A 78 */	ps_msub f7, f4, f9, f7
/* 80346A38  F0 03 80 0C */	psq_st f0, 12(r3), 1, 0 /* qr0 */
/* 80346A3C  10 C6 08 FC */	ps_nmsub f6, f6, f3, f1
/* 80346A40  11 08 08 FC */	ps_nmsub f8, f8, f3, f1
/* 80346A44  F0 03 80 2C */	psq_st f0, 44(r3), 1, 0 /* qr0 */
/* 80346A48  11 6B 00 F2 */	ps_mul f11, f11, f3
/* 80346A4C  10 E7 00 F2 */	ps_mul f7, f7, f3
/* 80346A50  F0 C3 80 28 */	psq_st f6, 40(r3), 1, 0 /* qr0 */
/* 80346A54  11 24 51 5C */	ps_madds0 f9, f4, f5, f10
/* 80346A58  10 AB 44 20 */	ps_merge00 f5, f11, f8
/* 80346A5C  11 4A 48 BC */	ps_nmsub f10, f10, f2, f9
/* 80346A60  10 88 3C A0 */	ps_merge10 f4, f8, f7
/* 80346A64  F0 A3 00 10 */	psq_st f5, 16(r3), 0, 0 /* qr0 */
/* 80346A68  11 29 00 F2 */	ps_mul f9, f9, f3
/* 80346A6C  11 4A 00 F2 */	ps_mul f10, f10, f3
/* 80346A70  F0 83 00 00 */	psq_st f4, 0(r3), 0, 0 /* qr0 */
/* 80346A74  F1 23 80 08 */	psq_st f9, 8(r3), 1, 0 /* qr0 */
/* 80346A78  10 EA 04 A0 */	ps_merge10 f7, f10, f0
/* 80346A7C  11 6A 4C 60 */	ps_merge01 f11, f10, f9
/* 80346A80  F0 E3 00 18 */	psq_st f7, 24(r3), 0, 0 /* qr0 */
/* 80346A84  F1 63 00 20 */	psq_st f11, 32(r3), 0, 0 /* qr0 */
/* 80346A88  4E 80 00 20 */	blr 
