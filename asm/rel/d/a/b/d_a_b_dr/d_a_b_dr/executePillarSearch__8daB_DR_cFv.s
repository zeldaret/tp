lbl_805C1E0C:
/* 805C1E0C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 805C1E10  7C 08 02 A6 */	mflr r0
/* 805C1E14  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 805C1E18  39 61 00 A0 */	addi r11, r1, 0xa0
/* 805C1E1C  4B DA 03 C0 */	b _savegpr_29
/* 805C1E20  7C 7D 1B 78 */	mr r29, r3
/* 805C1E24  3C 60 80 5C */	lis r3, lit_1109@ha
/* 805C1E28  3B C3 78 C0 */	addi r30, r3, lit_1109@l
/* 805C1E2C  3C 60 80 5C */	lis r3, lit_3800@ha
/* 805C1E30  3B E3 6C 74 */	addi r31, r3, lit_3800@l
/* 805C1E34  88 1E 00 C4 */	lbz r0, 0xc4(r30)
/* 805C1E38  7C 00 07 75 */	extsb. r0, r0
/* 805C1E3C  40 82 00 F8 */	bne lbl_805C1F34
/* 805C1E40  C0 5F 04 14 */	lfs f2, 0x414(r31)
/* 805C1E44  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 805C1E48  C0 3F 04 18 */	lfs f1, 0x418(r31)
/* 805C1E4C  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 805C1E50  C0 1F 03 7C */	lfs f0, 0x37c(r31)
/* 805C1E54  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805C1E58  D0 5E 00 EC */	stfs f2, 0xec(r30)
/* 805C1E5C  38 7E 00 EC */	addi r3, r30, 0xec
/* 805C1E60  D0 23 00 04 */	stfs f1, 4(r3)
/* 805C1E64  D0 03 00 08 */	stfs f0, 8(r3)
/* 805C1E68  3C 80 80 5C */	lis r4, __dt__4cXyzFv@ha
/* 805C1E6C  38 84 B0 E4 */	addi r4, r4, __dt__4cXyzFv@l
/* 805C1E70  38 BE 00 B8 */	addi r5, r30, 0xb8
/* 805C1E74  4B FF 8F 85 */	bl __register_global_object
/* 805C1E78  C0 5F 04 14 */	lfs f2, 0x414(r31)
/* 805C1E7C  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 805C1E80  C0 3F 04 18 */	lfs f1, 0x418(r31)
/* 805C1E84  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 805C1E88  C0 1F 03 C8 */	lfs f0, 0x3c8(r31)
/* 805C1E8C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805C1E90  38 7E 00 EC */	addi r3, r30, 0xec
/* 805C1E94  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 805C1E98  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 805C1E9C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 805C1EA0  38 63 00 0C */	addi r3, r3, 0xc
/* 805C1EA4  3C 80 80 5C */	lis r4, __dt__4cXyzFv@ha
/* 805C1EA8  38 84 B0 E4 */	addi r4, r4, __dt__4cXyzFv@l
/* 805C1EAC  38 BE 00 C8 */	addi r5, r30, 0xc8
/* 805C1EB0  4B FF 8F 49 */	bl __register_global_object
/* 805C1EB4  C0 5F 04 1C */	lfs f2, 0x41c(r31)
/* 805C1EB8  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 805C1EBC  C0 3F 04 18 */	lfs f1, 0x418(r31)
/* 805C1EC0  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 805C1EC4  C0 1F 03 7C */	lfs f0, 0x37c(r31)
/* 805C1EC8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805C1ECC  38 7E 00 EC */	addi r3, r30, 0xec
/* 805C1ED0  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 805C1ED4  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 805C1ED8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 805C1EDC  38 63 00 18 */	addi r3, r3, 0x18
/* 805C1EE0  3C 80 80 5C */	lis r4, __dt__4cXyzFv@ha
/* 805C1EE4  38 84 B0 E4 */	addi r4, r4, __dt__4cXyzFv@l
/* 805C1EE8  38 BE 00 D4 */	addi r5, r30, 0xd4
/* 805C1EEC  4B FF 8F 0D */	bl __register_global_object
/* 805C1EF0  C0 5F 04 1C */	lfs f2, 0x41c(r31)
/* 805C1EF4  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 805C1EF8  C0 3F 04 18 */	lfs f1, 0x418(r31)
/* 805C1EFC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 805C1F00  C0 1F 03 C8 */	lfs f0, 0x3c8(r31)
/* 805C1F04  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805C1F08  38 7E 00 EC */	addi r3, r30, 0xec
/* 805C1F0C  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 805C1F10  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 805C1F14  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 805C1F18  38 63 00 24 */	addi r3, r3, 0x24
/* 805C1F1C  3C 80 80 5C */	lis r4, __dt__4cXyzFv@ha
/* 805C1F20  38 84 B0 E4 */	addi r4, r4, __dt__4cXyzFv@l
/* 805C1F24  38 BE 00 E0 */	addi r5, r30, 0xe0
/* 805C1F28  4B FF 8E D1 */	bl __register_global_object
/* 805C1F2C  38 00 00 01 */	li r0, 1
/* 805C1F30  98 1E 00 C4 */	stb r0, 0xc4(r30)
lbl_805C1F34:
/* 805C1F34  80 1D 07 0C */	lwz r0, 0x70c(r29)
/* 805C1F38  2C 00 00 01 */	cmpwi r0, 1
/* 805C1F3C  41 82 00 90 */	beq lbl_805C1FCC
/* 805C1F40  40 80 00 10 */	bge lbl_805C1F50
/* 805C1F44  2C 00 00 00 */	cmpwi r0, 0
/* 805C1F48  40 80 00 14 */	bge lbl_805C1F5C
/* 805C1F4C  48 00 04 80 */	b lbl_805C23CC
lbl_805C1F50:
/* 805C1F50  2C 00 00 03 */	cmpwi r0, 3
/* 805C1F54  40 80 04 78 */	bge lbl_805C23CC
/* 805C1F58  48 00 02 0C */	b lbl_805C2164
lbl_805C1F5C:
/* 805C1F5C  38 60 00 00 */	li r3, 0
/* 805C1F60  90 7D 07 C0 */	stw r3, 0x7c0(r29)
/* 805C1F64  38 00 03 20 */	li r0, 0x320
/* 805C1F68  B0 1D 07 50 */	sth r0, 0x750(r29)
/* 805C1F6C  88 1D 07 E9 */	lbz r0, 0x7e9(r29)
/* 805C1F70  28 00 00 00 */	cmplwi r0, 0
/* 805C1F74  40 82 00 10 */	bne lbl_805C1F84
/* 805C1F78  38 00 00 02 */	li r0, 2
/* 805C1F7C  98 1D 07 E5 */	stb r0, 0x7e5(r29)
/* 805C1F80  48 00 00 08 */	b lbl_805C1F88
lbl_805C1F84:
/* 805C1F84  98 7D 07 E5 */	stb r3, 0x7e5(r29)
lbl_805C1F88:
/* 805C1F88  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805C1F8C  4B CA 59 C8 */	b cM_rndF__Ff
/* 805C1F90  FC 00 08 1E */	fctiwz f0, f1
/* 805C1F94  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 805C1F98  80 61 00 74 */	lwz r3, 0x74(r1)
/* 805C1F9C  88 1D 07 E5 */	lbz r0, 0x7e5(r29)
/* 805C1FA0  7C 00 1A 14 */	add r0, r0, r3
/* 805C1FA4  98 1D 07 E5 */	stb r0, 0x7e5(r29)
/* 805C1FA8  88 1D 07 E5 */	lbz r0, 0x7e5(r29)
/* 805C1FAC  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 805C1FB0  98 1D 07 E5 */	stb r0, 0x7e5(r29)
/* 805C1FB4  C0 1F 03 F0 */	lfs f0, 0x3f0(r31)
/* 805C1FB8  D0 1D 07 3C */	stfs f0, 0x73c(r29)
/* 805C1FBC  80 7D 07 0C */	lwz r3, 0x70c(r29)
/* 805C1FC0  38 03 00 01 */	addi r0, r3, 1
/* 805C1FC4  90 1D 07 0C */	stw r0, 0x70c(r29)
/* 805C1FC8  48 00 04 04 */	b lbl_805C23CC
lbl_805C1FCC:
/* 805C1FCC  7F A3 EB 78 */	mr r3, r29
/* 805C1FD0  38 80 00 01 */	li r4, 1
/* 805C1FD4  4B FF A5 A9 */	bl mGlider_AniSet__8daB_DR_cFb
/* 805C1FD8  88 1D 07 E5 */	lbz r0, 0x7e5(r29)
/* 805C1FDC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805C1FE0  38 7E 00 EC */	addi r3, r30, 0xec
/* 805C1FE4  7C 63 02 14 */	add r3, r3, r0
/* 805C1FE8  C0 03 00 00 */	lfs f0, 0(r3)
/* 805C1FEC  D0 1D 07 A8 */	stfs f0, 0x7a8(r29)
/* 805C1FF0  C0 03 00 04 */	lfs f0, 4(r3)
/* 805C1FF4  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
/* 805C1FF8  C0 03 00 08 */	lfs f0, 8(r3)
/* 805C1FFC  D0 1D 07 B0 */	stfs f0, 0x7b0(r29)
/* 805C2000  88 1D 07 E5 */	lbz r0, 0x7e5(r29)
/* 805C2004  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805C2008  38 7E 00 EC */	addi r3, r30, 0xec
/* 805C200C  7C 63 02 14 */	add r3, r3, r0
/* 805C2010  C0 03 00 00 */	lfs f0, 0(r3)
/* 805C2014  D0 1D 07 B4 */	stfs f0, 0x7b4(r29)
/* 805C2018  C0 03 00 04 */	lfs f0, 4(r3)
/* 805C201C  D0 1D 07 B8 */	stfs f0, 0x7b8(r29)
/* 805C2020  C0 03 00 08 */	lfs f0, 8(r3)
/* 805C2024  D0 1D 07 BC */	stfs f0, 0x7bc(r29)
/* 805C2028  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 805C202C  D0 1D 07 B8 */	stfs f0, 0x7b8(r29)
/* 805C2030  38 61 00 28 */	addi r3, r1, 0x28
/* 805C2034  38 9D 07 A8 */	addi r4, r29, 0x7a8
/* 805C2038  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805C203C  4B CA 4A F8 */	b __mi__4cXyzCFRC3Vec
/* 805C2040  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805C2044  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805C2048  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805C204C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805C2050  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 805C2054  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805C2058  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C205C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805C2060  38 61 00 64 */	addi r3, r1, 0x64
/* 805C2064  4B D8 50 D4 */	b PSVECSquareMag
/* 805C2068  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C206C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C2070  40 81 00 58 */	ble lbl_805C20C8
/* 805C2074  FC 00 08 34 */	frsqrte f0, f1
/* 805C2078  C8 9F 03 98 */	lfd f4, 0x398(r31)
/* 805C207C  FC 44 00 32 */	fmul f2, f4, f0
/* 805C2080  C8 7F 03 A0 */	lfd f3, 0x3a0(r31)
/* 805C2084  FC 00 00 32 */	fmul f0, f0, f0
/* 805C2088  FC 01 00 32 */	fmul f0, f1, f0
/* 805C208C  FC 03 00 28 */	fsub f0, f3, f0
/* 805C2090  FC 02 00 32 */	fmul f0, f2, f0
/* 805C2094  FC 44 00 32 */	fmul f2, f4, f0
/* 805C2098  FC 00 00 32 */	fmul f0, f0, f0
/* 805C209C  FC 01 00 32 */	fmul f0, f1, f0
/* 805C20A0  FC 03 00 28 */	fsub f0, f3, f0
/* 805C20A4  FC 02 00 32 */	fmul f0, f2, f0
/* 805C20A8  FC 44 00 32 */	fmul f2, f4, f0
/* 805C20AC  FC 00 00 32 */	fmul f0, f0, f0
/* 805C20B0  FC 01 00 32 */	fmul f0, f1, f0
/* 805C20B4  FC 03 00 28 */	fsub f0, f3, f0
/* 805C20B8  FC 02 00 32 */	fmul f0, f2, f0
/* 805C20BC  FC 21 00 32 */	fmul f1, f1, f0
/* 805C20C0  FC 20 08 18 */	frsp f1, f1
/* 805C20C4  48 00 00 88 */	b lbl_805C214C
lbl_805C20C8:
/* 805C20C8  C8 1F 03 A8 */	lfd f0, 0x3a8(r31)
/* 805C20CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C20D0  40 80 00 10 */	bge lbl_805C20E0
/* 805C20D4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805C20D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805C20DC  48 00 00 70 */	b lbl_805C214C
lbl_805C20E0:
/* 805C20E0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805C20E4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805C20E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805C20EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 805C20F0  7C 03 00 00 */	cmpw r3, r0
/* 805C20F4  41 82 00 14 */	beq lbl_805C2108
/* 805C20F8  40 80 00 40 */	bge lbl_805C2138
/* 805C20FC  2C 03 00 00 */	cmpwi r3, 0
/* 805C2100  41 82 00 20 */	beq lbl_805C2120
/* 805C2104  48 00 00 34 */	b lbl_805C2138
lbl_805C2108:
/* 805C2108  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C210C  41 82 00 0C */	beq lbl_805C2118
/* 805C2110  38 00 00 01 */	li r0, 1
/* 805C2114  48 00 00 28 */	b lbl_805C213C
lbl_805C2118:
/* 805C2118  38 00 00 02 */	li r0, 2
/* 805C211C  48 00 00 20 */	b lbl_805C213C
lbl_805C2120:
/* 805C2120  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C2124  41 82 00 0C */	beq lbl_805C2130
/* 805C2128  38 00 00 05 */	li r0, 5
/* 805C212C  48 00 00 10 */	b lbl_805C213C
lbl_805C2130:
/* 805C2130  38 00 00 03 */	li r0, 3
/* 805C2134  48 00 00 08 */	b lbl_805C213C
lbl_805C2138:
/* 805C2138  38 00 00 04 */	li r0, 4
lbl_805C213C:
/* 805C213C  2C 00 00 01 */	cmpwi r0, 1
/* 805C2140  40 82 00 0C */	bne lbl_805C214C
/* 805C2144  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805C2148  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805C214C:
/* 805C214C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 805C2150  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C2154  41 81 02 78 */	bgt lbl_805C23CC
/* 805C2158  80 7D 07 0C */	lwz r3, 0x70c(r29)
/* 805C215C  38 03 00 01 */	addi r0, r3, 1
/* 805C2160  90 1D 07 0C */	stw r0, 0x70c(r29)
lbl_805C2164:
/* 805C2164  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 805C2168  C0 3D 07 B8 */	lfs f1, 0x7b8(r29)
/* 805C216C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805C2170  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 805C2174  4B CA D8 C8 */	b cLib_addCalc2__FPffff
/* 805C2178  38 7D 05 2C */	addi r3, r29, 0x52c
/* 805C217C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805C2180  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805C2184  C0 7F 03 70 */	lfs f3, 0x370(r31)
/* 805C2188  4B CA D8 B4 */	b cLib_addCalc2__FPffff
/* 805C218C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 805C2190  C0 1D 07 B8 */	lfs f0, 0x7b8(r29)
/* 805C2194  EC 01 00 28 */	fsubs f0, f1, f0
/* 805C2198  FC 00 02 10 */	fabs f0, f0
/* 805C219C  FC 20 00 18 */	frsp f1, f0
/* 805C21A0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 805C21A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C21A8  41 81 02 24 */	bgt lbl_805C23CC
/* 805C21AC  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 805C21B0  C0 1F 04 20 */	lfs f0, 0x420(r31)
/* 805C21B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C21B8  41 81 02 14 */	bgt lbl_805C23CC
/* 805C21BC  7F A3 EB 78 */	mr r3, r29
/* 805C21C0  38 80 00 00 */	li r4, 0
/* 805C21C4  4B FF A0 85 */	bl mHabatakiAnmSet__8daB_DR_cFi
/* 805C21C8  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 805C21CC  D0 1D 07 A8 */	stfs f0, 0x7a8(r29)
/* 805C21D0  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 805C21D4  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
/* 805C21D8  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 805C21DC  D0 1D 07 B0 */	stfs f0, 0x7b0(r29)
/* 805C21E0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 805C21E4  C0 3D 07 B4 */	lfs f1, 0x7b4(r29)
/* 805C21E8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805C21EC  C0 7D 05 2C */	lfs f3, 0x52c(r29)
/* 805C21F0  4B CA D8 4C */	b cLib_addCalc2__FPffff
/* 805C21F4  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 805C21F8  C0 3D 07 BC */	lfs f1, 0x7bc(r29)
/* 805C21FC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805C2200  C0 7D 05 2C */	lfs f3, 0x52c(r29)
/* 805C2204  4B CA D8 38 */	b cLib_addCalc2__FPffff
/* 805C2208  38 61 00 1C */	addi r3, r1, 0x1c
/* 805C220C  38 9D 07 B4 */	addi r4, r29, 0x7b4
/* 805C2210  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805C2214  4B CA 49 20 */	b __mi__4cXyzCFRC3Vec
/* 805C2218  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805C221C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805C2220  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805C2224  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805C2228  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805C222C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805C2230  80 1D 07 10 */	lwz r0, 0x710(r29)
/* 805C2234  2C 00 00 35 */	cmpwi r0, 0x35
/* 805C2238  40 82 01 94 */	bne lbl_805C23CC
/* 805C223C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805C2240  A8 03 00 14 */	lha r0, 0x14(r3)
/* 805C2244  C8 3F 03 58 */	lfd f1, 0x358(r31)
/* 805C2248  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805C224C  90 01 00 74 */	stw r0, 0x74(r1)
/* 805C2250  3C 00 43 30 */	lis r0, 0x4330
/* 805C2254  90 01 00 70 */	stw r0, 0x70(r1)
/* 805C2258  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 805C225C  EC 20 08 28 */	fsubs f1, f0, f1
/* 805C2260  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805C2264  FC 00 00 1E */	fctiwz f0, f0
/* 805C2268  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 805C226C  80 61 00 7C */	lwz r3, 0x7c(r1)
/* 805C2270  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 805C2274  EC 01 00 28 */	fsubs f0, f1, f0
/* 805C2278  FC 00 00 1E */	fctiwz f0, f0
/* 805C227C  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 805C2280  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805C2284  7C 03 00 00 */	cmpw r3, r0
/* 805C2288  41 80 01 44 */	blt lbl_805C23CC
/* 805C228C  38 61 00 64 */	addi r3, r1, 0x64
/* 805C2290  4B D8 4E A8 */	b PSVECSquareMag
/* 805C2294  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C2298  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C229C  40 81 00 58 */	ble lbl_805C22F4
/* 805C22A0  FC 00 08 34 */	frsqrte f0, f1
/* 805C22A4  C8 9F 03 98 */	lfd f4, 0x398(r31)
/* 805C22A8  FC 44 00 32 */	fmul f2, f4, f0
/* 805C22AC  C8 7F 03 A0 */	lfd f3, 0x3a0(r31)
/* 805C22B0  FC 00 00 32 */	fmul f0, f0, f0
/* 805C22B4  FC 01 00 32 */	fmul f0, f1, f0
/* 805C22B8  FC 03 00 28 */	fsub f0, f3, f0
/* 805C22BC  FC 02 00 32 */	fmul f0, f2, f0
/* 805C22C0  FC 44 00 32 */	fmul f2, f4, f0
/* 805C22C4  FC 00 00 32 */	fmul f0, f0, f0
/* 805C22C8  FC 01 00 32 */	fmul f0, f1, f0
/* 805C22CC  FC 03 00 28 */	fsub f0, f3, f0
/* 805C22D0  FC 02 00 32 */	fmul f0, f2, f0
/* 805C22D4  FC 44 00 32 */	fmul f2, f4, f0
/* 805C22D8  FC 00 00 32 */	fmul f0, f0, f0
/* 805C22DC  FC 01 00 32 */	fmul f0, f1, f0
/* 805C22E0  FC 03 00 28 */	fsub f0, f3, f0
/* 805C22E4  FC 02 00 32 */	fmul f0, f2, f0
/* 805C22E8  FC 21 00 32 */	fmul f1, f1, f0
/* 805C22EC  FC 20 08 18 */	frsp f1, f1
/* 805C22F0  48 00 00 88 */	b lbl_805C2378
lbl_805C22F4:
/* 805C22F4  C8 1F 03 A8 */	lfd f0, 0x3a8(r31)
/* 805C22F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C22FC  40 80 00 10 */	bge lbl_805C230C
/* 805C2300  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805C2304  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805C2308  48 00 00 70 */	b lbl_805C2378
lbl_805C230C:
/* 805C230C  D0 21 00 08 */	stfs f1, 8(r1)
/* 805C2310  80 81 00 08 */	lwz r4, 8(r1)
/* 805C2314  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805C2318  3C 00 7F 80 */	lis r0, 0x7f80
/* 805C231C  7C 03 00 00 */	cmpw r3, r0
/* 805C2320  41 82 00 14 */	beq lbl_805C2334
/* 805C2324  40 80 00 40 */	bge lbl_805C2364
/* 805C2328  2C 03 00 00 */	cmpwi r3, 0
/* 805C232C  41 82 00 20 */	beq lbl_805C234C
/* 805C2330  48 00 00 34 */	b lbl_805C2364
lbl_805C2334:
/* 805C2334  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C2338  41 82 00 0C */	beq lbl_805C2344
/* 805C233C  38 00 00 01 */	li r0, 1
/* 805C2340  48 00 00 28 */	b lbl_805C2368
lbl_805C2344:
/* 805C2344  38 00 00 02 */	li r0, 2
/* 805C2348  48 00 00 20 */	b lbl_805C2368
lbl_805C234C:
/* 805C234C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C2350  41 82 00 0C */	beq lbl_805C235C
/* 805C2354  38 00 00 05 */	li r0, 5
/* 805C2358  48 00 00 10 */	b lbl_805C2368
lbl_805C235C:
/* 805C235C  38 00 00 03 */	li r0, 3
/* 805C2360  48 00 00 08 */	b lbl_805C2368
lbl_805C2364:
/* 805C2364  38 00 00 04 */	li r0, 4
lbl_805C2368:
/* 805C2368  2C 00 00 01 */	cmpwi r0, 1
/* 805C236C  40 82 00 0C */	bne lbl_805C2378
/* 805C2370  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805C2374  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805C2378:
/* 805C2378  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 805C237C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C2380  40 80 00 4C */	bge lbl_805C23CC
/* 805C2384  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C2388  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805C238C  88 1D 07 E5 */	lbz r0, 0x7e5(r29)
/* 805C2390  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805C2394  38 7E 00 EC */	addi r3, r30, 0xec
/* 805C2398  7C 63 02 14 */	add r3, r3, r0
/* 805C239C  C0 03 00 00 */	lfs f0, 0(r3)
/* 805C23A0  D0 1D 07 A8 */	stfs f0, 0x7a8(r29)
/* 805C23A4  C0 03 00 04 */	lfs f0, 4(r3)
/* 805C23A8  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
/* 805C23AC  C0 03 00 08 */	lfs f0, 8(r3)
/* 805C23B0  D0 1D 07 B0 */	stfs f0, 0x7b0(r29)
/* 805C23B4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 805C23B8  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
/* 805C23BC  7F A3 EB 78 */	mr r3, r29
/* 805C23C0  38 80 00 09 */	li r4, 9
/* 805C23C4  38 A0 00 00 */	li r5, 0
/* 805C23C8  4B FF 90 ED */	bl setActionMode__8daB_DR_cFii
lbl_805C23CC:
/* 805C23CC  80 1D 07 08 */	lwz r0, 0x708(r29)
/* 805C23D0  2C 00 00 09 */	cmpwi r0, 9
/* 805C23D4  41 82 00 D0 */	beq lbl_805C24A4
/* 805C23D8  38 61 00 10 */	addi r3, r1, 0x10
/* 805C23DC  38 9D 07 A8 */	addi r4, r29, 0x7a8
/* 805C23E0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805C23E4  4B CA 47 50 */	b __mi__4cXyzCFRC3Vec
/* 805C23E8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805C23EC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805C23F0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805C23F4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805C23F8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805C23FC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805C2400  38 61 00 64 */	addi r3, r1, 0x64
/* 805C2404  4B CA 4D 24 */	b atan2sX_Z__4cXyzCFv
/* 805C2408  7C 64 07 34 */	extsh r4, r3
/* 805C240C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 805C2410  A8 BD 07 50 */	lha r5, 0x750(r29)
/* 805C2414  38 C0 04 00 */	li r6, 0x400
/* 805C2418  4B CA E1 F0 */	b cLib_addCalcAngleS2__FPssss
/* 805C241C  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 805C2420  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 805C2424  A8 BD 07 50 */	lha r5, 0x750(r29)
/* 805C2428  38 C0 04 00 */	li r6, 0x400
/* 805C242C  4B CA E1 DC */	b cLib_addCalcAngleS2__FPssss
/* 805C2430  38 7D 07 50 */	addi r3, r29, 0x750
/* 805C2434  38 80 00 0A */	li r4, 0xa
/* 805C2438  38 A0 00 0A */	li r5, 0xa
/* 805C243C  38 C0 00 14 */	li r6, 0x14
/* 805C2440  4B CA E1 C8 */	b cLib_addCalcAngleS2__FPssss
/* 805C2444  38 61 00 64 */	addi r3, r1, 0x64
/* 805C2448  4B CA 4D 08 */	b atan2sY_XZ__4cXyzCFv
/* 805C244C  7C 64 1B 78 */	mr r4, r3
/* 805C2450  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 805C2454  38 A0 00 14 */	li r5, 0x14
/* 805C2458  38 C0 04 00 */	li r6, 0x400
/* 805C245C  4B CA E1 AC */	b cLib_addCalcAngleS2__FPssss
/* 805C2460  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 805C2464  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 805C2468  38 A0 00 14 */	li r5, 0x14
/* 805C246C  38 C0 04 00 */	li r6, 0x400
/* 805C2470  4B CA E1 98 */	b cLib_addCalcAngleS2__FPssss
/* 805C2474  7F A3 EB 78 */	mr r3, r29
/* 805C2478  4B FF AB E5 */	bl mPlayerHighCheck__8daB_DR_cFv
/* 805C247C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C2480  41 82 00 24 */	beq lbl_805C24A4
/* 805C2484  C0 3F 03 68 */	lfs f1, 0x368(r31)
/* 805C2488  C0 1D 08 C8 */	lfs f0, 0x8c8(r29)
/* 805C248C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805C2490  41 82 00 14 */	beq lbl_805C24A4
/* 805C2494  7F A3 EB 78 */	mr r3, r29
/* 805C2498  38 80 00 05 */	li r4, 5
/* 805C249C  38 A0 00 00 */	li r5, 0
/* 805C24A0  4B FF 90 15 */	bl setActionMode__8daB_DR_cFii
lbl_805C24A4:
/* 805C24A4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 805C24A8  4B D9 FD 80 */	b _restgpr_29
/* 805C24AC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 805C24B0  7C 08 03 A6 */	mtlr r0
/* 805C24B4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 805C24B8  4E 80 00 20 */	blr 
