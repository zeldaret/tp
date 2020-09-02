.include "macros.inc"

.section .text, "ax" # 80346d6c


.global PSMTXMultVec
PSMTXMultVec:
/* 80346D6C 00343CAC  E0 04 00 00 */	psq_l f0, 0(r4), 0, qr0
/* 80346D70 00343CB0  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 80346D74 00343CB4  E0 24 80 08 */	psq_l f1, 8(r4), 1, qr0
/* 80346D78 00343CB8  10 82 00 32 */	ps_mul f4, f2, f0
/* 80346D7C 00343CBC  E0 63 00 08 */	psq_l f3, 8(r3), 0, qr0
/* 80346D80 00343CC0  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 80346D84 00343CC4  E1 03 00 10 */	psq_l f8, 16(r3), 0, qr0
/* 80346D88 00343CC8  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 80346D8C 00343CCC  E1 23 00 18 */	psq_l f9, 24(r3), 0, qr0
/* 80346D90 00343CD0  11 48 00 32 */	ps_mul f10, f8, f0
/* 80346D94 00343CD4  F0 C5 80 00 */	psq_st f6, 0(r5), 1, qr0
/* 80346D98 00343CD8  11 69 50 7A */	ps_madd f11, f9, f1, f10
/* 80346D9C 00343CDC  E0 43 00 20 */	psq_l f2, 32(r3), 0, qr0
/* 80346DA0 00343CE0  11 8B 5B 14 */	ps_sum0 f12, f11, f12, f11
/* 80346DA4 00343CE4  E0 63 00 28 */	psq_l f3, 40(r3), 0, qr0
/* 80346DA8 00343CE8  10 82 00 32 */	ps_mul f4, f2, f0
/* 80346DAC 00343CEC  F1 85 80 04 */	psq_st f12, 4(r5), 1, qr0
/* 80346DB0 00343CF0  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 80346DB4 00343CF4  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 80346DB8 00343CF8  F0 C5 80 08 */	psq_st f6, 8(r5), 1, qr0
/* 80346DBC 00343CFC  4E 80 00 20 */	blr 

.global PSMTXMultVecArray
PSMTXMultVecArray:
/* 80346DC0 00343D00  E1 A3 00 00 */	psq_l f13, 0(r3), 0, qr0
/* 80346DC4 00343D04  E1 83 00 10 */	psq_l f12, 16(r3), 0, qr0
/* 80346DC8 00343D08  38 C6 FF FF */	addi r6, r6, -1
/* 80346DCC 00343D0C  E1 63 00 08 */	psq_l f11, 8(r3), 0, qr0
/* 80346DD0 00343D10  10 0D 64 20 */	ps_merge00 f0, f13, f12
/* 80346DD4 00343D14  38 A5 FF FC */	addi r5, r5, -4
/* 80346DD8 00343D18  E1 43 00 18 */	psq_l f10, 24(r3), 0, qr0
/* 80346DDC 00343D1C  10 2D 64 E0 */	ps_merge11 f1, f13, f12
/* 80346DE0 00343D20  7C C9 03 A6 */	mtctr r6
/* 80346DE4 00343D24  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 80346DE8 00343D28  10 4B 54 20 */	ps_merge00 f2, f11, f10
/* 80346DEC 00343D2C  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 80346DF0 00343D30  10 6B 54 E0 */	ps_merge11 f3, f11, f10
/* 80346DF4 00343D34  E0 C4 00 00 */	psq_l f6, 0(r4), 0, qr0
/* 80346DF8 00343D38  E4 E4 80 08 */	psq_lu f7, 8(r4), 1, qr0
/* 80346DFC 00343D3C  11 00 19 9C */	ps_madds0 f8, f0, f6, f3
/* 80346E00 00343D40  11 24 01 B2 */	ps_mul f9, f4, f6
/* 80346E04 00343D44  11 01 41 9E */	ps_madds1 f8, f1, f6, f8
/* 80346E08 00343D48  11 45 49 FA */	ps_madd f10, f5, f7, f9
lbl_80346E0C:
/* 80346E0C 00343D4C  E4 C4 00 04 */	psq_lu f6, 4(r4), 0, qr0
/* 80346E10 00343D50  11 82 41 DC */	ps_madds0 f12, f2, f7, f8
/* 80346E14 00343D54  E4 E4 80 08 */	psq_lu f7, 8(r4), 1, qr0
/* 80346E18 00343D58  11 AA 52 54 */	ps_sum0 f13, f10, f9, f10
/* 80346E1C 00343D5C  11 00 19 9C */	ps_madds0 f8, f0, f6, f3
/* 80346E20 00343D60  11 24 01 B2 */	ps_mul f9, f4, f6
/* 80346E24 00343D64  F5 85 00 04 */	psq_stu f12, 4(r5), 0, qr0
/* 80346E28 00343D68  11 01 41 9E */	ps_madds1 f8, f1, f6, f8
/* 80346E2C 00343D6C  F5 A5 80 08 */	psq_stu f13, 8(r5), 1, qr0
/* 80346E30 00343D70  11 45 49 FA */	ps_madd f10, f5, f7, f9
/* 80346E34 00343D74  42 00 FF D8 */	bdnz lbl_80346E0C
/* 80346E38 00343D78  11 82 41 DC */	ps_madds0 f12, f2, f7, f8
/* 80346E3C 00343D7C  11 AA 52 54 */	ps_sum0 f13, f10, f9, f10
/* 80346E40 00343D80  F5 85 00 04 */	psq_stu f12, 4(r5), 0, qr0
/* 80346E44 00343D84  F5 A5 80 08 */	psq_stu f13, 8(r5), 1, qr0
/* 80346E48 00343D88  4E 80 00 20 */	blr 

.global PSMTXMultVecSR
PSMTXMultVecSR:
/* 80346E4C 00343D8C  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 80346E50 00343D90  E0 C4 00 00 */	psq_l f6, 0(r4), 0, qr0
/* 80346E54 00343D94  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 80346E58 00343D98  11 00 01 B2 */	ps_mul f8, f0, f6
/* 80346E5C 00343D9C  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 80346E60 00343DA0  11 42 01 B2 */	ps_mul f10, f2, f6
/* 80346E64 00343DA4  E0 E4 80 08 */	psq_l f7, 8(r4), 1, qr0
/* 80346E68 00343DA8  11 84 01 B2 */	ps_mul f12, f4, f6
/* 80346E6C 00343DAC  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 80346E70 00343DB0  11 08 42 14 */	ps_sum0 f8, f8, f8, f8
/* 80346E74 00343DB4  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 80346E78 00343DB8  11 4A 52 94 */	ps_sum0 f10, f10, f10, f10
/* 80346E7C 00343DBC  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 80346E80 00343DC0  11 8C 63 14 */	ps_sum0 f12, f12, f12, f12
/* 80346E84 00343DC4  11 21 41 FA */	ps_madd f9, f1, f7, f8
/* 80346E88 00343DC8  F1 25 80 00 */	psq_st f9, 0(r5), 1, qr0
/* 80346E8C 00343DCC  11 63 51 FA */	ps_madd f11, f3, f7, f10
/* 80346E90 00343DD0  F1 65 80 04 */	psq_st f11, 4(r5), 1, qr0
/* 80346E94 00343DD4  11 A5 61 FA */	ps_madd f13, f5, f7, f12
/* 80346E98 00343DD8  F1 A5 80 08 */	psq_st f13, 8(r5), 1, qr0
/* 80346E9C 00343DDC  4E 80 00 20 */	blr 

.global PSMTXMultVecArraySR
PSMTXMultVecArraySR:
/* 80346EA0 00343DE0  E1 A3 00 00 */	psq_l f13, 0(r3), 0, qr0
/* 80346EA4 00343DE4  E1 83 00 10 */	psq_l f12, 16(r3), 0, qr0
/* 80346EA8 00343DE8  38 C6 FF FF */	addi r6, r6, -1
/* 80346EAC 00343DEC  E1 63 80 08 */	psq_l f11, 8(r3), 1, qr0
/* 80346EB0 00343DF0  10 0D 64 20 */	ps_merge00 f0, f13, f12
/* 80346EB4 00343DF4  38 A5 FF FC */	addi r5, r5, -4
/* 80346EB8 00343DF8  E1 43 80 18 */	psq_l f10, 24(r3), 1, qr0
/* 80346EBC 00343DFC  10 2D 64 E0 */	ps_merge11 f1, f13, f12
/* 80346EC0 00343E00  7C C9 03 A6 */	mtctr r6
/* 80346EC4 00343E04  E0 63 00 20 */	psq_l f3, 32(r3), 0, qr0
/* 80346EC8 00343E08  10 4B 54 20 */	ps_merge00 f2, f11, f10
/* 80346ECC 00343E0C  E0 83 80 28 */	psq_l f4, 40(r3), 1, qr0
/* 80346ED0 00343E10  E0 C4 00 00 */	psq_l f6, 0(r4), 0, qr0
/* 80346ED4 00343E14  E4 E4 80 08 */	psq_lu f7, 8(r4), 1, qr0
/* 80346ED8 00343E18  11 00 01 98 */	ps_muls0 f8, f0, f6
/* 80346EDC 00343E1C  11 23 01 B2 */	ps_mul f9, f3, f6
/* 80346EE0 00343E20  11 01 41 9E */	ps_madds1 f8, f1, f6, f8
/* 80346EE4 00343E24  11 44 49 FA */	ps_madd f10, f4, f7, f9
lbl_80346EE8:
/* 80346EE8 00343E28  E4 C4 00 04 */	psq_lu f6, 4(r4), 0, qr0
/* 80346EEC 00343E2C  11 82 41 DC */	ps_madds0 f12, f2, f7, f8
/* 80346EF0 00343E30  E4 E4 80 08 */	psq_lu f7, 8(r4), 1, qr0
/* 80346EF4 00343E34  11 AA 4A 54 */	ps_sum0 f13, f10, f9, f9
/* 80346EF8 00343E38  11 00 01 98 */	ps_muls0 f8, f0, f6
/* 80346EFC 00343E3C  11 23 01 B2 */	ps_mul f9, f3, f6
/* 80346F00 00343E40  F5 85 00 04 */	psq_stu f12, 4(r5), 0, qr0
/* 80346F04 00343E44  11 01 41 9E */	ps_madds1 f8, f1, f6, f8
/* 80346F08 00343E48  F5 A5 80 08 */	psq_stu f13, 8(r5), 1, qr0
/* 80346F0C 00343E4C  11 44 49 FA */	ps_madd f10, f4, f7, f9
/* 80346F10 00343E50  42 00 FF D8 */	bdnz lbl_80346EE8
/* 80346F14 00343E54  11 82 41 DC */	ps_madds0 f12, f2, f7, f8
/* 80346F18 00343E58  11 AA 4A 54 */	ps_sum0 f13, f10, f9, f9
/* 80346F1C 00343E5C  F5 85 00 04 */	psq_stu f12, 4(r5), 0, qr0
/* 80346F20 00343E60  F5 A5 80 08 */	psq_stu f13, 8(r5), 1, qr0
/* 80346F24 00343E64  4E 80 00 20 */	blr 

