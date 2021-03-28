lbl_80CA1F60:
/* 80CA1F60  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80CA1F64  7C 08 02 A6 */	mflr r0
/* 80CA1F68  90 01 01 04 */	stw r0, 0x104(r1)
/* 80CA1F6C  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 80CA1F70  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 80CA1F74  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80CA1F78  4B 6C 02 64 */	b _savegpr_29
/* 80CA1F7C  7C 7F 1B 78 */	mr r31, r3
/* 80CA1F80  3C 80 80 CA */	lis r4, lit_3774@ha
/* 80CA1F84  3B C4 31 BC */	addi r30, r4, lit_3774@l
/* 80CA1F88  80 03 07 D0 */	lwz r0, 0x7d0(r3)
/* 80CA1F8C  2C 00 00 00 */	cmpwi r0, 0
/* 80CA1F90  40 82 00 4C */	bne lbl_80CA1FDC
/* 80CA1F94  38 00 00 00 */	li r0, 0
/* 80CA1F98  90 1F 06 98 */	stw r0, 0x698(r31)
/* 80CA1F9C  38 7F 06 70 */	addi r3, r31, 0x670
/* 80CA1FA0  4B 3E 25 A8 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80CA1FA4  38 7F 07 A8 */	addi r3, r31, 0x7a8
/* 80CA1FA8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CA1FAC  4B 4B C6 04 */	b initOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80CA1FB0  38 00 00 00 */	li r0, 0
/* 80CA1FB4  B0 1F 07 D4 */	sth r0, 0x7d4(r31)
/* 80CA1FB8  B0 1F 07 D6 */	sth r0, 0x7d6(r31)
/* 80CA1FBC  B0 1F 07 D8 */	sth r0, 0x7d8(r31)
/* 80CA1FC0  B0 1F 07 DA */	sth r0, 0x7da(r31)
/* 80CA1FC4  B0 1F 07 DC */	sth r0, 0x7dc(r31)
/* 80CA1FC8  B0 1F 07 DE */	sth r0, 0x7de(r31)
/* 80CA1FCC  80 7F 07 D0 */	lwz r3, 0x7d0(r31)
/* 80CA1FD0  38 03 00 01 */	addi r0, r3, 1
/* 80CA1FD4  90 1F 07 D0 */	stw r0, 0x7d0(r31)
/* 80CA1FD8  48 00 03 70 */	b lbl_80CA2348
lbl_80CA1FDC:
/* 80CA1FDC  2C 00 FF FF */	cmpwi r0, -1
/* 80CA1FE0  40 82 00 2C */	bne lbl_80CA200C
/* 80CA1FE4  3C 60 00 01 */	lis r3, 0x0001 /* 0x00014040@ha */
/* 80CA1FE8  38 03 40 40 */	addi r0, r3, 0x4040 /* 0x00014040@l */
/* 80CA1FEC  90 1F 06 98 */	stw r0, 0x698(r31)
/* 80CA1FF0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CA1FF4  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80CA1FF8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CA1FFC  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80CA2000  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CA2004  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 80CA2008  48 00 03 40 */	b lbl_80CA2348
lbl_80CA200C:
/* 80CA200C  88 1F 05 6D */	lbz r0, 0x56d(r31)
/* 80CA2010  28 00 00 00 */	cmplwi r0, 0
/* 80CA2014  41 82 00 08 */	beq lbl_80CA201C
/* 80CA2018  4B FF FB 39 */	bl nan_setParticle__10daObjNAN_cFv
lbl_80CA201C:
/* 80CA201C  38 7F 07 A8 */	addi r3, r31, 0x7a8
/* 80CA2020  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CA2024  38 BF 04 DE */	addi r5, r31, 0x4de
/* 80CA2028  38 C0 00 00 */	li r6, 0
/* 80CA202C  38 E0 1C 00 */	li r7, 0x1c00
/* 80CA2030  4B 4B C6 24 */	b posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs
/* 80CA2034  2C 03 00 00 */	cmpwi r3, 0
/* 80CA2038  40 82 03 04 */	bne lbl_80CA233C
/* 80CA203C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA2040  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA2044  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80CA2048  38 61 00 68 */	addi r3, r1, 0x68
/* 80CA204C  4B 3D 5C 1C */	b __ct__11dBgS_LinChkFv
/* 80CA2050  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80CA2054  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CA2058  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CA205C  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80CA2060  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80CA2064  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80CA2068  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80CA206C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80CA2070  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80CA2074  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80CA2078  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80CA207C  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80CA2080  EC 01 00 2A */	fadds f0, f1, f0
/* 80CA2084  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80CA2088  38 61 00 48 */	addi r3, r1, 0x48
/* 80CA208C  4B 36 AC D8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80CA2090  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80CA2094  4B 5C 58 F8 */	b cM_rndFX__Ff
/* 80CA2098  FC 00 08 1E */	fctiwz f0, f1
/* 80CA209C  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 80CA20A0  80 81 00 DC */	lwz r4, 0xdc(r1)
/* 80CA20A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA20A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA20AC  4B 36 A3 88 */	b mDoMtx_YrotM__FPA4_fs
/* 80CA20B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA20B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA20B8  38 81 00 3C */	addi r4, r1, 0x3c
/* 80CA20BC  7C 85 23 78 */	mr r5, r4
/* 80CA20C0  4B 6A 4C AC */	b PSMTXMultVec
/* 80CA20C4  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80CA20C8  4B 3D 6D A0 */	b SetObj__16dBgS_PolyPassChkFv
/* 80CA20CC  38 61 00 68 */	addi r3, r1, 0x68
/* 80CA20D0  38 81 00 48 */	addi r4, r1, 0x48
/* 80CA20D4  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80CA20D8  38 C0 00 00 */	li r6, 0
/* 80CA20DC  4B 3D 5C 88 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80CA20E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA20E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA20E8  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80CA20EC  7F A3 EB 78 */	mr r3, r29
/* 80CA20F0  38 81 00 68 */	addi r4, r1, 0x68
/* 80CA20F4  4B 3D 22 C0 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80CA20F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CA20FC  41 82 01 D4 */	beq lbl_80CA22D0
/* 80CA2100  3C 60 80 CA */	lis r3, __vt__8cM3dGPla@ha
/* 80CA2104  38 03 34 68 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80CA2108  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CA210C  7F A3 EB 78 */	mr r3, r29
/* 80CA2110  38 81 00 7C */	addi r4, r1, 0x7c
/* 80CA2114  38 A1 00 54 */	addi r5, r1, 0x54
/* 80CA2118  4B 3D 26 2C */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80CA211C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80CA2120  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CA2124  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CA2128  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80CA212C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CA2130  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80CA2134  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CA2138  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80CA213C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CA2140  38 61 00 30 */	addi r3, r1, 0x30
/* 80CA2144  38 81 00 24 */	addi r4, r1, 0x24
/* 80CA2148  4B 6A 52 54 */	b PSVECSquareDistance
/* 80CA214C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80CA2150  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CA2154  40 81 00 58 */	ble lbl_80CA21AC
/* 80CA2158  FC 00 08 34 */	frsqrte f0, f1
/* 80CA215C  C8 9E 00 30 */	lfd f4, 0x30(r30)
/* 80CA2160  FC 44 00 32 */	fmul f2, f4, f0
/* 80CA2164  C8 7E 00 38 */	lfd f3, 0x38(r30)
/* 80CA2168  FC 00 00 32 */	fmul f0, f0, f0
/* 80CA216C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CA2170  FC 03 00 28 */	fsub f0, f3, f0
/* 80CA2174  FC 02 00 32 */	fmul f0, f2, f0
/* 80CA2178  FC 44 00 32 */	fmul f2, f4, f0
/* 80CA217C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CA2180  FC 01 00 32 */	fmul f0, f1, f0
/* 80CA2184  FC 03 00 28 */	fsub f0, f3, f0
/* 80CA2188  FC 02 00 32 */	fmul f0, f2, f0
/* 80CA218C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CA2190  FC 00 00 32 */	fmul f0, f0, f0
/* 80CA2194  FC 01 00 32 */	fmul f0, f1, f0
/* 80CA2198  FC 03 00 28 */	fsub f0, f3, f0
/* 80CA219C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CA21A0  FF E1 00 32 */	fmul f31, f1, f0
/* 80CA21A4  FF E0 F8 18 */	frsp f31, f31
/* 80CA21A8  48 00 00 90 */	b lbl_80CA2238
lbl_80CA21AC:
/* 80CA21AC  C8 1E 00 40 */	lfd f0, 0x40(r30)
/* 80CA21B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CA21B4  40 80 00 10 */	bge lbl_80CA21C4
/* 80CA21B8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CA21BC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80CA21C0  48 00 00 78 */	b lbl_80CA2238
lbl_80CA21C4:
/* 80CA21C4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CA21C8  80 81 00 08 */	lwz r4, 8(r1)
/* 80CA21CC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CA21D0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CA21D4  7C 03 00 00 */	cmpw r3, r0
/* 80CA21D8  41 82 00 14 */	beq lbl_80CA21EC
/* 80CA21DC  40 80 00 40 */	bge lbl_80CA221C
/* 80CA21E0  2C 03 00 00 */	cmpwi r3, 0
/* 80CA21E4  41 82 00 20 */	beq lbl_80CA2204
/* 80CA21E8  48 00 00 34 */	b lbl_80CA221C
lbl_80CA21EC:
/* 80CA21EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CA21F0  41 82 00 0C */	beq lbl_80CA21FC
/* 80CA21F4  38 00 00 01 */	li r0, 1
/* 80CA21F8  48 00 00 28 */	b lbl_80CA2220
lbl_80CA21FC:
/* 80CA21FC  38 00 00 02 */	li r0, 2
/* 80CA2200  48 00 00 20 */	b lbl_80CA2220
lbl_80CA2204:
/* 80CA2204  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CA2208  41 82 00 0C */	beq lbl_80CA2214
/* 80CA220C  38 00 00 05 */	li r0, 5
/* 80CA2210  48 00 00 10 */	b lbl_80CA2220
lbl_80CA2214:
/* 80CA2214  38 00 00 03 */	li r0, 3
/* 80CA2218  48 00 00 08 */	b lbl_80CA2220
lbl_80CA221C:
/* 80CA221C  38 00 00 04 */	li r0, 4
lbl_80CA2220:
/* 80CA2220  2C 00 00 01 */	cmpwi r0, 1
/* 80CA2224  40 82 00 10 */	bne lbl_80CA2234
/* 80CA2228  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CA222C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80CA2230  48 00 00 08 */	b lbl_80CA2238
lbl_80CA2234:
/* 80CA2234  FF E0 08 90 */	fmr f31, f1
lbl_80CA2238:
/* 80CA2238  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80CA223C  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80CA2240  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80CA2244  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80CA2248  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80CA224C  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80CA2250  C0 1F 04 BC */	lfs f0, 0x4bc(r31)
/* 80CA2254  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80CA2258  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 80CA225C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80CA2260  C0 1F 04 C4 */	lfs f0, 0x4c4(r31)
/* 80CA2264  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80CA2268  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80CA226C  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 80CA2270  4B 5C 54 04 */	b cM_atan2s__Fff
/* 80CA2274  B0 7F 07 DA */	sth r3, 0x7da(r31)
/* 80CA2278  B0 7F 07 D4 */	sth r3, 0x7d4(r31)
/* 80CA227C  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80CA2280  FC 40 F8 90 */	fmr f2, f31
/* 80CA2284  4B 5C 53 F0 */	b cM_atan2s__Fff
/* 80CA2288  7C 03 00 D0 */	neg r0, r3
/* 80CA228C  B0 1F 07 DE */	sth r0, 0x7de(r31)
/* 80CA2290  B0 1F 07 D8 */	sth r0, 0x7d8(r31)
/* 80CA2294  3C 60 80 CA */	lis r3, lit_4509@ha
/* 80CA2298  38 83 33 7C */	addi r4, r3, lit_4509@l
/* 80CA229C  80 64 00 00 */	lwz r3, 0(r4)
/* 80CA22A0  80 04 00 04 */	lwz r0, 4(r4)
/* 80CA22A4  90 61 00 18 */	stw r3, 0x18(r1)
/* 80CA22A8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CA22AC  80 04 00 08 */	lwz r0, 8(r4)
/* 80CA22B0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CA22B4  7F E3 FB 78 */	mr r3, r31
/* 80CA22B8  38 81 00 18 */	addi r4, r1, 0x18
/* 80CA22BC  4B FF E3 19 */	bl setAction__10daObjNAN_cFM10daObjNAN_cFPCvPv_v
/* 80CA22C0  3C 60 80 CA */	lis r3, __vt__8cM3dGPla@ha
/* 80CA22C4  38 03 34 68 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80CA22C8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CA22CC  48 00 00 60 */	b lbl_80CA232C
lbl_80CA22D0:
/* 80CA22D0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80CA22D4  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80CA22D8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80CA22DC  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80CA22E0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80CA22E4  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80CA22E8  C0 1F 04 BC */	lfs f0, 0x4bc(r31)
/* 80CA22EC  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80CA22F0  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 80CA22F4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80CA22F8  C0 1F 04 C4 */	lfs f0, 0x4c4(r31)
/* 80CA22FC  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80CA2300  3C 60 80 CA */	lis r3, lit_4512@ha
/* 80CA2304  38 83 33 88 */	addi r4, r3, lit_4512@l
/* 80CA2308  80 64 00 00 */	lwz r3, 0(r4)
/* 80CA230C  80 04 00 04 */	lwz r0, 4(r4)
/* 80CA2310  90 61 00 0C */	stw r3, 0xc(r1)
/* 80CA2314  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CA2318  80 04 00 08 */	lwz r0, 8(r4)
/* 80CA231C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA2320  7F E3 FB 78 */	mr r3, r31
/* 80CA2324  38 81 00 0C */	addi r4, r1, 0xc
/* 80CA2328  4B FF E2 AD */	bl setAction__10daObjNAN_cFM10daObjNAN_cFPCvPv_v
lbl_80CA232C:
/* 80CA232C  38 61 00 68 */	addi r3, r1, 0x68
/* 80CA2330  38 80 FF FF */	li r4, -1
/* 80CA2334  4B 3D 59 A8 */	b __dt__11dBgS_LinChkFv
/* 80CA2338  48 00 00 10 */	b lbl_80CA2348
lbl_80CA233C:
/* 80CA233C  38 7F 07 A8 */	addi r3, r31, 0x7a8
/* 80CA2340  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CA2344  4B 4B C5 38 */	b bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz
lbl_80CA2348:
/* 80CA2348  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 80CA234C  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 80CA2350  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80CA2354  4B 6B FE D4 */	b _restgpr_29
/* 80CA2358  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80CA235C  7C 08 03 A6 */	mtlr r0
/* 80CA2360  38 21 01 00 */	addi r1, r1, 0x100
/* 80CA2364  4E 80 00 20 */	blr 
