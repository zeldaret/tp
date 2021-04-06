lbl_80C0AF94:
/* 80C0AF94  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80C0AF98  7C 08 02 A6 */	mflr r0
/* 80C0AF9C  90 01 01 34 */	stw r0, 0x134(r1)
/* 80C0AFA0  39 61 01 30 */	addi r11, r1, 0x130
/* 80C0AFA4  4B 75 72 31 */	bl _savegpr_27
/* 80C0AFA8  7C 7B 1B 78 */	mr r27, r3
/* 80C0AFAC  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C0AFB0  3B E3 FA 7C */	addi r31, r3, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C0AFB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0AFB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0AFBC  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80C0AFC0  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80C0AFC4  7C 00 07 74 */	extsb r0, r0
/* 80C0AFC8  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80C0AFCC  7C 63 02 14 */	add r3, r3, r0
/* 80C0AFD0  83 A3 5D 74 */	lwz r29, 0x5d74(r3)
/* 80C0AFD4  4B 57 66 6D */	bl dCam_getBody__Fv
/* 80C0AFD8  7C 7C 1B 78 */	mr r28, r3
/* 80C0AFDC  A8 1B 20 54 */	lha r0, 0x2054(r27)
/* 80C0AFE0  28 00 00 07 */	cmplwi r0, 7
/* 80C0AFE4  41 81 09 50 */	bgt lbl_80C0B934
/* 80C0AFE8  3C 60 80 C1 */	lis r3, lit_8960@ha /* 0x80C10300@ha */
/* 80C0AFEC  38 63 03 00 */	addi r3, r3, lit_8960@l /* 0x80C10300@l */
/* 80C0AFF0  54 00 10 3A */	slwi r0, r0, 2
/* 80C0AFF4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C0AFF8  7C 09 03 A6 */	mtctr r0
/* 80C0AFFC  4E 80 04 20 */	bctr 
lbl_80C0B000:
/* 80C0B000  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80C0B004  28 00 00 02 */	cmplwi r0, 2
/* 80C0B008  41 82 00 2C */	beq lbl_80C0B034
/* 80C0B00C  7F 63 DB 78 */	mr r3, r27
/* 80C0B010  38 80 00 00 */	li r4, 0
/* 80C0B014  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFEF@ha */
/* 80C0B018  38 A5 FF EF */	addi r5, r5, 0xFFEF /* 0x0000FFEF@l */
/* 80C0B01C  38 C0 00 00 */	li r6, 0
/* 80C0B020  4B 41 08 E9 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80C0B024  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 80C0B028  60 00 00 02 */	ori r0, r0, 2
/* 80C0B02C  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 80C0B030  48 00 09 64 */	b lbl_80C0B994
lbl_80C0B034:
/* 80C0B034  38 7D 02 48 */	addi r3, r29, 0x248
/* 80C0B038  4B 55 64 99 */	bl Stop__9dCamera_cFv
/* 80C0B03C  38 00 00 02 */	li r0, 2
/* 80C0B040  B0 1B 20 54 */	sth r0, 0x2054(r27)
/* 80C0B044  38 00 00 00 */	li r0, 0
/* 80C0B048  B0 1B 20 56 */	sth r0, 0x2056(r27)
/* 80C0B04C  C0 3C 00 58 */	lfs f1, 0x58(r28)
/* 80C0B050  C0 1C 06 F4 */	lfs f0, 0x6f4(r28)
/* 80C0B054  EC 01 00 2A */	fadds f0, f1, f0
/* 80C0B058  D0 1B 20 8C */	stfs f0, 0x208c(r27)
/* 80C0B05C  D0 1B 20 70 */	stfs f0, 0x2070(r27)
/* 80C0B060  38 61 00 BC */	addi r3, r1, 0xbc
/* 80C0B064  7F 84 E3 78 */	mr r4, r28
/* 80C0B068  4B 57 6E 31 */	bl Center__9dCamera_cFv
/* 80C0B06C  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80C0B070  D0 1B 20 80 */	stfs f0, 0x2080(r27)
/* 80C0B074  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80C0B078  D0 1B 20 84 */	stfs f0, 0x2084(r27)
/* 80C0B07C  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 80C0B080  D0 1B 20 88 */	stfs f0, 0x2088(r27)
/* 80C0B084  C0 1B 20 80 */	lfs f0, 0x2080(r27)
/* 80C0B088  D0 1B 20 64 */	stfs f0, 0x2064(r27)
/* 80C0B08C  C0 1B 20 84 */	lfs f0, 0x2084(r27)
/* 80C0B090  D0 1B 20 68 */	stfs f0, 0x2068(r27)
/* 80C0B094  C0 1B 20 88 */	lfs f0, 0x2088(r27)
/* 80C0B098  D0 1B 20 6C */	stfs f0, 0x206c(r27)
/* 80C0B09C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80C0B0A0  7F 84 E3 78 */	mr r4, r28
/* 80C0B0A4  4B 57 6D C1 */	bl Eye__9dCamera_cFv
/* 80C0B0A8  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80C0B0AC  D0 1B 20 74 */	stfs f0, 0x2074(r27)
/* 80C0B0B0  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80C0B0B4  D0 1B 20 78 */	stfs f0, 0x2078(r27)
/* 80C0B0B8  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80C0B0BC  D0 1B 20 7C */	stfs f0, 0x207c(r27)
/* 80C0B0C0  C0 1B 20 74 */	lfs f0, 0x2074(r27)
/* 80C0B0C4  D0 1B 20 58 */	stfs f0, 0x2058(r27)
/* 80C0B0C8  C0 1B 20 78 */	lfs f0, 0x2078(r27)
/* 80C0B0CC  D0 1B 20 5C */	stfs f0, 0x205c(r27)
/* 80C0B0D0  C0 1B 20 7C */	lfs f0, 0x207c(r27)
/* 80C0B0D4  D0 1B 20 60 */	stfs f0, 0x2060(r27)
lbl_80C0B0D8:
/* 80C0B0D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0B0DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0B0E0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80C0B0E4  28 00 00 00 */	cmplwi r0, 0
/* 80C0B0E8  40 82 00 38 */	bne lbl_80C0B120
/* 80C0B0EC  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80C0B0F0  28 00 00 02 */	cmplwi r0, 2
/* 80C0B0F4  41 82 00 2C */	beq lbl_80C0B120
/* 80C0B0F8  7F 63 DB 78 */	mr r3, r27
/* 80C0B0FC  38 80 00 00 */	li r4, 0
/* 80C0B100  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFEF@ha */
/* 80C0B104  38 A5 FF EF */	addi r5, r5, 0xFFEF /* 0x0000FFEF@l */
/* 80C0B108  38 C0 00 00 */	li r6, 0
/* 80C0B10C  4B 41 07 FD */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80C0B110  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 80C0B114  60 00 00 02 */	ori r0, r0, 2
/* 80C0B118  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 80C0B11C  48 00 08 78 */	b lbl_80C0B994
lbl_80C0B120:
/* 80C0B120  A8 1B 20 56 */	lha r0, 0x2056(r27)
/* 80C0B124  2C 00 00 14 */	cmpwi r0, 0x14
/* 80C0B128  41 80 00 9C */	blt lbl_80C0B1C4
/* 80C0B12C  38 00 00 04 */	li r0, 4
/* 80C0B130  B0 1B 20 54 */	sth r0, 0x2054(r27)
/* 80C0B134  38 00 00 00 */	li r0, 0
/* 80C0B138  B0 1B 20 56 */	sth r0, 0x2056(r27)
/* 80C0B13C  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80C0B140  7F 84 E3 78 */	mr r4, r28
/* 80C0B144  4B 57 6D 55 */	bl Center__9dCamera_cFv
/* 80C0B148  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80C0B14C  D0 1B 20 80 */	stfs f0, 0x2080(r27)
/* 80C0B150  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80C0B154  D0 1B 20 84 */	stfs f0, 0x2084(r27)
/* 80C0B158  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80C0B15C  D0 1B 20 88 */	stfs f0, 0x2088(r27)
/* 80C0B160  C0 1B 20 80 */	lfs f0, 0x2080(r27)
/* 80C0B164  D0 1B 20 64 */	stfs f0, 0x2064(r27)
/* 80C0B168  C0 1B 20 84 */	lfs f0, 0x2084(r27)
/* 80C0B16C  D0 1B 20 68 */	stfs f0, 0x2068(r27)
/* 80C0B170  C0 1B 20 88 */	lfs f0, 0x2088(r27)
/* 80C0B174  D0 1B 20 6C */	stfs f0, 0x206c(r27)
/* 80C0B178  38 61 00 98 */	addi r3, r1, 0x98
/* 80C0B17C  7F 84 E3 78 */	mr r4, r28
/* 80C0B180  4B 57 6C E5 */	bl Eye__9dCamera_cFv
/* 80C0B184  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80C0B188  D0 1B 20 74 */	stfs f0, 0x2074(r27)
/* 80C0B18C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80C0B190  D0 1B 20 78 */	stfs f0, 0x2078(r27)
/* 80C0B194  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80C0B198  D0 1B 20 7C */	stfs f0, 0x207c(r27)
/* 80C0B19C  C0 1B 20 74 */	lfs f0, 0x2074(r27)
/* 80C0B1A0  D0 1B 20 58 */	stfs f0, 0x2058(r27)
/* 80C0B1A4  C0 1B 20 78 */	lfs f0, 0x2078(r27)
/* 80C0B1A8  D0 1B 20 5C */	stfs f0, 0x205c(r27)
/* 80C0B1AC  C0 1B 20 7C */	lfs f0, 0x207c(r27)
/* 80C0B1B0  D0 1B 20 60 */	stfs f0, 0x2060(r27)
/* 80C0B1B4  38 7D 02 48 */	addi r3, r29, 0x248
/* 80C0B1B8  38 80 00 02 */	li r4, 2
/* 80C0B1BC  4B 55 7E 51 */	bl SetTrimSize__9dCamera_cFl
/* 80C0B1C0  48 00 00 58 */	b lbl_80C0B218
lbl_80C0B1C4:
/* 80C0B1C4  38 61 00 8C */	addi r3, r1, 0x8c
/* 80C0B1C8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C0B1CC  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80C0B1D0  4B 65 B9 65 */	bl __mi__4cXyzCFRC3Vec
/* 80C0B1D4  38 7B 20 64 */	addi r3, r27, 0x2064
/* 80C0B1D8  38 81 00 8C */	addi r4, r1, 0x8c
/* 80C0B1DC  7C 65 1B 78 */	mr r5, r3
/* 80C0B1E0  4B 73 BE B1 */	bl PSVECAdd
/* 80C0B1E4  C0 3B 20 68 */	lfs f1, 0x2068(r27)
/* 80C0B1E8  C0 1F 02 60 */	lfs f0, 0x260(r31)
/* 80C0B1EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C0B1F0  D0 1B 20 68 */	stfs f0, 0x2068(r27)
/* 80C0B1F4  38 61 00 80 */	addi r3, r1, 0x80
/* 80C0B1F8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C0B1FC  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80C0B200  4B 65 B9 35 */	bl __mi__4cXyzCFRC3Vec
/* 80C0B204  38 7B 20 58 */	addi r3, r27, 0x2058
/* 80C0B208  38 81 00 80 */	addi r4, r1, 0x80
/* 80C0B20C  7C 65 1B 78 */	mr r5, r3
/* 80C0B210  4B 73 BE 81 */	bl PSVECAdd
/* 80C0B214  48 00 07 20 */	b lbl_80C0B934
lbl_80C0B218:
/* 80C0B218  A8 1B 20 56 */	lha r0, 0x2056(r27)
/* 80C0B21C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80C0B220  41 80 00 1C */	blt lbl_80C0B23C
/* 80C0B224  A8 7B 20 54 */	lha r3, 0x2054(r27)
/* 80C0B228  38 03 00 01 */	addi r0, r3, 1
/* 80C0B22C  B0 1B 20 54 */	sth r0, 0x2054(r27)
/* 80C0B230  38 00 00 00 */	li r0, 0
/* 80C0B234  B0 1B 20 56 */	sth r0, 0x2056(r27)
/* 80C0B238  48 00 01 94 */	b lbl_80C0B3CC
lbl_80C0B23C:
/* 80C0B23C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0B240  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0B244  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C0B248  4B 40 11 95 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C0B24C  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0B250  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80C0B254  C0 1F 02 A0 */	lfs f0, 0x2a0(r31)
/* 80C0B258  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80C0B25C  C0 1F 02 CC */	lfs f0, 0x2cc(r31)
/* 80C0B260  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80C0B264  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0B268  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0B26C  38 81 01 04 */	addi r4, r1, 0x104
/* 80C0B270  7C 85 23 78 */	mr r5, r4
/* 80C0B274  4B 73 BA F9 */	bl PSMTXMultVec
/* 80C0B278  38 61 01 04 */	addi r3, r1, 0x104
/* 80C0B27C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C0B280  7C 65 1B 78 */	mr r5, r3
/* 80C0B284  4B 73 BE 0D */	bl PSVECAdd
/* 80C0B288  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80C0B28C  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 80C0B290  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 80C0B294  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 80C0B298  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80C0B29C  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80C0B2A0  C0 1F 02 A0 */	lfs f0, 0x2a0(r31)
/* 80C0B2A4  EC 01 00 2A */	fadds f0, f1, f0
/* 80C0B2A8  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80C0B2AC  38 61 00 74 */	addi r3, r1, 0x74
/* 80C0B2B0  38 81 01 04 */	addi r4, r1, 0x104
/* 80C0B2B4  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 80C0B2B8  4B 65 B8 7D */	bl __mi__4cXyzCFRC3Vec
/* 80C0B2BC  38 61 00 74 */	addi r3, r1, 0x74
/* 80C0B2C0  4B 73 BE 79 */	bl PSVECSquareMag
/* 80C0B2C4  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0B2C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0B2CC  40 81 00 58 */	ble lbl_80C0B324
/* 80C0B2D0  FC 00 08 34 */	frsqrte f0, f1
/* 80C0B2D4  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C0B2D8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0B2DC  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C0B2E0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0B2E4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0B2E8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0B2EC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0B2F0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0B2F4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0B2F8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0B2FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0B300  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0B304  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0B308  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0B30C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0B310  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0B314  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0B318  FC 41 00 32 */	fmul f2, f1, f0
/* 80C0B31C  FC 40 10 18 */	frsp f2, f2
/* 80C0B320  48 00 00 90 */	b lbl_80C0B3B0
lbl_80C0B324:
/* 80C0B324  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C0B328  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0B32C  40 80 00 10 */	bge lbl_80C0B33C
/* 80C0B330  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0B334  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0B338  48 00 00 78 */	b lbl_80C0B3B0
lbl_80C0B33C:
/* 80C0B33C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C0B340  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80C0B344  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0B348  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0B34C  7C 03 00 00 */	cmpw r3, r0
/* 80C0B350  41 82 00 14 */	beq lbl_80C0B364
/* 80C0B354  40 80 00 40 */	bge lbl_80C0B394
/* 80C0B358  2C 03 00 00 */	cmpwi r3, 0
/* 80C0B35C  41 82 00 20 */	beq lbl_80C0B37C
/* 80C0B360  48 00 00 34 */	b lbl_80C0B394
lbl_80C0B364:
/* 80C0B364  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0B368  41 82 00 0C */	beq lbl_80C0B374
/* 80C0B36C  38 00 00 01 */	li r0, 1
/* 80C0B370  48 00 00 28 */	b lbl_80C0B398
lbl_80C0B374:
/* 80C0B374  38 00 00 02 */	li r0, 2
/* 80C0B378  48 00 00 20 */	b lbl_80C0B398
lbl_80C0B37C:
/* 80C0B37C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0B380  41 82 00 0C */	beq lbl_80C0B38C
/* 80C0B384  38 00 00 05 */	li r0, 5
/* 80C0B388  48 00 00 10 */	b lbl_80C0B398
lbl_80C0B38C:
/* 80C0B38C  38 00 00 03 */	li r0, 3
/* 80C0B390  48 00 00 08 */	b lbl_80C0B398
lbl_80C0B394:
/* 80C0B394  38 00 00 04 */	li r0, 4
lbl_80C0B398:
/* 80C0B398  2C 00 00 01 */	cmpwi r0, 1
/* 80C0B39C  40 82 00 10 */	bne lbl_80C0B3AC
/* 80C0B3A0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0B3A4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0B3A8  48 00 00 08 */	b lbl_80C0B3B0
lbl_80C0B3AC:
/* 80C0B3AC  FC 40 08 90 */	fmr f2, f1
lbl_80C0B3B0:
/* 80C0B3B0  38 7B 20 64 */	addi r3, r27, 0x2064
/* 80C0B3B4  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80C0B3B8  C0 3F 02 E4 */	lfs f1, 0x2e4(r31)
/* 80C0B3BC  C0 1F 02 E8 */	lfs f0, 0x2e8(r31)
/* 80C0B3C0  EC 42 00 24 */	fdivs f2, f2, f0
/* 80C0B3C4  4B 66 4D B5 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0B3C8  48 00 05 6C */	b lbl_80C0B934
lbl_80C0B3CC:
/* 80C0B3CC  A8 9B 20 56 */	lha r4, 0x2056(r27)
/* 80C0B3D0  38 7F 00 00 */	addi r3, r31, 0
/* 80C0B3D4  A8 03 00 B2 */	lha r0, 0xb2(r3)
/* 80C0B3D8  7C 04 00 00 */	cmpw r4, r0
/* 80C0B3DC  41 80 00 88 */	blt lbl_80C0B464
/* 80C0B3E0  A8 7B 20 54 */	lha r3, 0x2054(r27)
/* 80C0B3E4  38 03 00 01 */	addi r0, r3, 1
/* 80C0B3E8  B0 1B 20 54 */	sth r0, 0x2054(r27)
/* 80C0B3EC  38 00 00 00 */	li r0, 0
/* 80C0B3F0  B0 1B 20 56 */	sth r0, 0x2056(r27)
/* 80C0B3F4  C0 1B 20 58 */	lfs f0, 0x2058(r27)
/* 80C0B3F8  D0 1B 20 74 */	stfs f0, 0x2074(r27)
/* 80C0B3FC  C0 1B 20 5C */	lfs f0, 0x205c(r27)
/* 80C0B400  D0 1B 20 78 */	stfs f0, 0x2078(r27)
/* 80C0B404  C0 1B 20 60 */	lfs f0, 0x2060(r27)
/* 80C0B408  D0 1B 20 7C */	stfs f0, 0x207c(r27)
/* 80C0B40C  C0 1B 20 64 */	lfs f0, 0x2064(r27)
/* 80C0B410  D0 1B 20 80 */	stfs f0, 0x2080(r27)
/* 80C0B414  C0 1B 20 68 */	lfs f0, 0x2068(r27)
/* 80C0B418  D0 1B 20 84 */	stfs f0, 0x2084(r27)
/* 80C0B41C  C0 1B 20 6C */	lfs f0, 0x206c(r27)
/* 80C0B420  D0 1B 20 88 */	stfs f0, 0x2088(r27)
/* 80C0B424  80 1E 04 DC */	lwz r0, 0x4dc(r30)
/* 80C0B428  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C0B42C  A0 1E 04 E0 */	lhz r0, 0x4e0(r30)
/* 80C0B430  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80C0B434  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C0B438  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80C0B43C  4B 66 57 C9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C0B440  B0 61 00 1A */	sth r3, 0x1a(r1)
/* 80C0B444  7F C3 F3 78 */	mr r3, r30
/* 80C0B448  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C0B44C  38 A1 00 18 */	addi r5, r1, 0x18
/* 80C0B450  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80C0B454  81 8C 01 58 */	lwz r12, 0x158(r12)
/* 80C0B458  7D 89 03 A6 */	mtctr r12
/* 80C0B45C  4E 80 04 21 */	bctrl 
/* 80C0B460  48 00 01 94 */	b lbl_80C0B5F4
lbl_80C0B464:
/* 80C0B464  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0B468  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0B46C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C0B470  4B 40 0F 6D */	bl mDoMtx_YrotS__FPA4_fs
/* 80C0B474  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0B478  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80C0B47C  C0 1F 02 A0 */	lfs f0, 0x2a0(r31)
/* 80C0B480  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80C0B484  C0 1F 02 CC */	lfs f0, 0x2cc(r31)
/* 80C0B488  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80C0B48C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0B490  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0B494  38 81 00 EC */	addi r4, r1, 0xec
/* 80C0B498  7C 85 23 78 */	mr r5, r4
/* 80C0B49C  4B 73 B8 D1 */	bl PSMTXMultVec
/* 80C0B4A0  38 61 00 EC */	addi r3, r1, 0xec
/* 80C0B4A4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C0B4A8  7C 65 1B 78 */	mr r5, r3
/* 80C0B4AC  4B 73 BB E5 */	bl PSVECAdd
/* 80C0B4B0  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80C0B4B4  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80C0B4B8  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 80C0B4BC  D0 21 00 E4 */	stfs f1, 0xe4(r1)
/* 80C0B4C0  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80C0B4C4  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80C0B4C8  C0 1F 02 A0 */	lfs f0, 0x2a0(r31)
/* 80C0B4CC  EC 01 00 2A */	fadds f0, f1, f0
/* 80C0B4D0  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80C0B4D4  38 61 00 68 */	addi r3, r1, 0x68
/* 80C0B4D8  38 81 00 EC */	addi r4, r1, 0xec
/* 80C0B4DC  38 A1 00 E0 */	addi r5, r1, 0xe0
/* 80C0B4E0  4B 65 B6 55 */	bl __mi__4cXyzCFRC3Vec
/* 80C0B4E4  38 61 00 68 */	addi r3, r1, 0x68
/* 80C0B4E8  4B 73 BC 51 */	bl PSVECSquareMag
/* 80C0B4EC  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0B4F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0B4F4  40 81 00 58 */	ble lbl_80C0B54C
/* 80C0B4F8  FC 00 08 34 */	frsqrte f0, f1
/* 80C0B4FC  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C0B500  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0B504  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C0B508  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0B50C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0B510  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0B514  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0B518  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0B51C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0B520  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0B524  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0B528  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0B52C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0B530  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0B534  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0B538  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0B53C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0B540  FC 41 00 32 */	fmul f2, f1, f0
/* 80C0B544  FC 40 10 18 */	frsp f2, f2
/* 80C0B548  48 00 00 90 */	b lbl_80C0B5D8
lbl_80C0B54C:
/* 80C0B54C  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C0B550  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0B554  40 80 00 10 */	bge lbl_80C0B564
/* 80C0B558  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0B55C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0B560  48 00 00 78 */	b lbl_80C0B5D8
lbl_80C0B564:
/* 80C0B564  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C0B568  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80C0B56C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0B570  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0B574  7C 03 00 00 */	cmpw r3, r0
/* 80C0B578  41 82 00 14 */	beq lbl_80C0B58C
/* 80C0B57C  40 80 00 40 */	bge lbl_80C0B5BC
/* 80C0B580  2C 03 00 00 */	cmpwi r3, 0
/* 80C0B584  41 82 00 20 */	beq lbl_80C0B5A4
/* 80C0B588  48 00 00 34 */	b lbl_80C0B5BC
lbl_80C0B58C:
/* 80C0B58C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0B590  41 82 00 0C */	beq lbl_80C0B59C
/* 80C0B594  38 00 00 01 */	li r0, 1
/* 80C0B598  48 00 00 28 */	b lbl_80C0B5C0
lbl_80C0B59C:
/* 80C0B59C  38 00 00 02 */	li r0, 2
/* 80C0B5A0  48 00 00 20 */	b lbl_80C0B5C0
lbl_80C0B5A4:
/* 80C0B5A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0B5A8  41 82 00 0C */	beq lbl_80C0B5B4
/* 80C0B5AC  38 00 00 05 */	li r0, 5
/* 80C0B5B0  48 00 00 10 */	b lbl_80C0B5C0
lbl_80C0B5B4:
/* 80C0B5B4  38 00 00 03 */	li r0, 3
/* 80C0B5B8  48 00 00 08 */	b lbl_80C0B5C0
lbl_80C0B5BC:
/* 80C0B5BC  38 00 00 04 */	li r0, 4
lbl_80C0B5C0:
/* 80C0B5C0  2C 00 00 01 */	cmpwi r0, 1
/* 80C0B5C4  40 82 00 10 */	bne lbl_80C0B5D4
/* 80C0B5C8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0B5CC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0B5D0  48 00 00 08 */	b lbl_80C0B5D8
lbl_80C0B5D4:
/* 80C0B5D4  FC 40 08 90 */	fmr f2, f1
lbl_80C0B5D8:
/* 80C0B5D8  38 7B 20 64 */	addi r3, r27, 0x2064
/* 80C0B5DC  38 81 00 E0 */	addi r4, r1, 0xe0
/* 80C0B5E0  C0 3F 02 AC */	lfs f1, 0x2ac(r31)
/* 80C0B5E4  C0 1F 02 E8 */	lfs f0, 0x2e8(r31)
/* 80C0B5E8  EC 42 00 24 */	fdivs f2, f2, f0
/* 80C0B5EC  4B 66 4B 8D */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0B5F0  48 00 03 44 */	b lbl_80C0B934
lbl_80C0B5F4:
/* 80C0B5F4  A8 1B 20 56 */	lha r0, 0x2056(r27)
/* 80C0B5F8  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80C0B5FC  41 80 00 10 */	blt lbl_80C0B60C
/* 80C0B600  38 00 00 07 */	li r0, 7
/* 80C0B604  B0 1B 20 54 */	sth r0, 0x2054(r27)
/* 80C0B608  48 00 02 B0 */	b lbl_80C0B8B8
lbl_80C0B60C:
/* 80C0B60C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0B610  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0B614  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C0B618  4B 40 0D C5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C0B61C  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0B620  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80C0B624  C0 1F 02 34 */	lfs f0, 0x234(r31)
/* 80C0B628  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80C0B62C  C0 1F 02 EC */	lfs f0, 0x2ec(r31)
/* 80C0B630  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80C0B634  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0B638  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0B63C  38 81 00 D4 */	addi r4, r1, 0xd4
/* 80C0B640  7C 85 23 78 */	mr r5, r4
/* 80C0B644  4B 73 B7 29 */	bl PSMTXMultVec
/* 80C0B648  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80C0B64C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C0B650  7C 65 1B 78 */	mr r5, r3
/* 80C0B654  4B 73 BA 3D */	bl PSVECAdd
/* 80C0B658  38 61 00 5C */	addi r3, r1, 0x5c
/* 80C0B65C  38 9B 20 74 */	addi r4, r27, 0x2074
/* 80C0B660  38 A1 00 D4 */	addi r5, r1, 0xd4
/* 80C0B664  4B 65 B4 D1 */	bl __mi__4cXyzCFRC3Vec
/* 80C0B668  38 61 00 5C */	addi r3, r1, 0x5c
/* 80C0B66C  4B 73 BA CD */	bl PSVECSquareMag
/* 80C0B670  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0B674  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0B678  40 81 00 58 */	ble lbl_80C0B6D0
/* 80C0B67C  FC 00 08 34 */	frsqrte f0, f1
/* 80C0B680  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C0B684  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0B688  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C0B68C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0B690  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0B694  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0B698  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0B69C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0B6A0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0B6A4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0B6A8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0B6AC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0B6B0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0B6B4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0B6B8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0B6BC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0B6C0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0B6C4  FC 41 00 32 */	fmul f2, f1, f0
/* 80C0B6C8  FC 40 10 18 */	frsp f2, f2
/* 80C0B6CC  48 00 00 90 */	b lbl_80C0B75C
lbl_80C0B6D0:
/* 80C0B6D0  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C0B6D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0B6D8  40 80 00 10 */	bge lbl_80C0B6E8
/* 80C0B6DC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0B6E0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0B6E4  48 00 00 78 */	b lbl_80C0B75C
lbl_80C0B6E8:
/* 80C0B6E8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C0B6EC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C0B6F0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0B6F4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0B6F8  7C 03 00 00 */	cmpw r3, r0
/* 80C0B6FC  41 82 00 14 */	beq lbl_80C0B710
/* 80C0B700  40 80 00 40 */	bge lbl_80C0B740
/* 80C0B704  2C 03 00 00 */	cmpwi r3, 0
/* 80C0B708  41 82 00 20 */	beq lbl_80C0B728
/* 80C0B70C  48 00 00 34 */	b lbl_80C0B740
lbl_80C0B710:
/* 80C0B710  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0B714  41 82 00 0C */	beq lbl_80C0B720
/* 80C0B718  38 00 00 01 */	li r0, 1
/* 80C0B71C  48 00 00 28 */	b lbl_80C0B744
lbl_80C0B720:
/* 80C0B720  38 00 00 02 */	li r0, 2
/* 80C0B724  48 00 00 20 */	b lbl_80C0B744
lbl_80C0B728:
/* 80C0B728  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0B72C  41 82 00 0C */	beq lbl_80C0B738
/* 80C0B730  38 00 00 05 */	li r0, 5
/* 80C0B734  48 00 00 10 */	b lbl_80C0B744
lbl_80C0B738:
/* 80C0B738  38 00 00 03 */	li r0, 3
/* 80C0B73C  48 00 00 08 */	b lbl_80C0B744
lbl_80C0B740:
/* 80C0B740  38 00 00 04 */	li r0, 4
lbl_80C0B744:
/* 80C0B744  2C 00 00 01 */	cmpwi r0, 1
/* 80C0B748  40 82 00 10 */	bne lbl_80C0B758
/* 80C0B74C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0B750  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0B754  48 00 00 08 */	b lbl_80C0B75C
lbl_80C0B758:
/* 80C0B758  FC 40 08 90 */	fmr f2, f1
lbl_80C0B75C:
/* 80C0B75C  38 7B 20 58 */	addi r3, r27, 0x2058
/* 80C0B760  38 81 00 D4 */	addi r4, r1, 0xd4
/* 80C0B764  C0 3F 02 AC */	lfs f1, 0x2ac(r31)
/* 80C0B768  C0 1F 02 C8 */	lfs f0, 0x2c8(r31)
/* 80C0B76C  EC 42 00 24 */	fdivs f2, f2, f0
/* 80C0B770  4B 66 4A 09 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0B774  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C0B778  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80C0B77C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C0B780  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 80C0B784  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C0B788  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80C0B78C  C0 1F 02 F0 */	lfs f0, 0x2f0(r31)
/* 80C0B790  EC 01 00 2A */	fadds f0, f1, f0
/* 80C0B794  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80C0B798  38 61 00 50 */	addi r3, r1, 0x50
/* 80C0B79C  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80C0B7A0  38 BB 20 80 */	addi r5, r27, 0x2080
/* 80C0B7A4  4B 65 B3 91 */	bl __mi__4cXyzCFRC3Vec
/* 80C0B7A8  38 61 00 50 */	addi r3, r1, 0x50
/* 80C0B7AC  4B 73 B9 8D */	bl PSVECSquareMag
/* 80C0B7B0  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0B7B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0B7B8  40 81 00 58 */	ble lbl_80C0B810
/* 80C0B7BC  FC 00 08 34 */	frsqrte f0, f1
/* 80C0B7C0  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C0B7C4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0B7C8  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C0B7CC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0B7D0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0B7D4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0B7D8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0B7DC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0B7E0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0B7E4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0B7E8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0B7EC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0B7F0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0B7F4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0B7F8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0B7FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0B800  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0B804  FC 41 00 32 */	fmul f2, f1, f0
/* 80C0B808  FC 40 10 18 */	frsp f2, f2
/* 80C0B80C  48 00 00 90 */	b lbl_80C0B89C
lbl_80C0B810:
/* 80C0B810  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C0B814  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0B818  40 80 00 10 */	bge lbl_80C0B828
/* 80C0B81C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0B820  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0B824  48 00 00 78 */	b lbl_80C0B89C
lbl_80C0B828:
/* 80C0B828  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C0B82C  80 81 00 08 */	lwz r4, 8(r1)
/* 80C0B830  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0B834  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0B838  7C 03 00 00 */	cmpw r3, r0
/* 80C0B83C  41 82 00 14 */	beq lbl_80C0B850
/* 80C0B840  40 80 00 40 */	bge lbl_80C0B880
/* 80C0B844  2C 03 00 00 */	cmpwi r3, 0
/* 80C0B848  41 82 00 20 */	beq lbl_80C0B868
/* 80C0B84C  48 00 00 34 */	b lbl_80C0B880
lbl_80C0B850:
/* 80C0B850  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0B854  41 82 00 0C */	beq lbl_80C0B860
/* 80C0B858  38 00 00 01 */	li r0, 1
/* 80C0B85C  48 00 00 28 */	b lbl_80C0B884
lbl_80C0B860:
/* 80C0B860  38 00 00 02 */	li r0, 2
/* 80C0B864  48 00 00 20 */	b lbl_80C0B884
lbl_80C0B868:
/* 80C0B868  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0B86C  41 82 00 0C */	beq lbl_80C0B878
/* 80C0B870  38 00 00 05 */	li r0, 5
/* 80C0B874  48 00 00 10 */	b lbl_80C0B884
lbl_80C0B878:
/* 80C0B878  38 00 00 03 */	li r0, 3
/* 80C0B87C  48 00 00 08 */	b lbl_80C0B884
lbl_80C0B880:
/* 80C0B880  38 00 00 04 */	li r0, 4
lbl_80C0B884:
/* 80C0B884  2C 00 00 01 */	cmpwi r0, 1
/* 80C0B888  40 82 00 10 */	bne lbl_80C0B898
/* 80C0B88C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0B890  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0B894  48 00 00 08 */	b lbl_80C0B89C
lbl_80C0B898:
/* 80C0B898  FC 40 08 90 */	fmr f2, f1
lbl_80C0B89C:
/* 80C0B89C  38 7B 20 64 */	addi r3, r27, 0x2064
/* 80C0B8A0  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80C0B8A4  C0 3F 02 AC */	lfs f1, 0x2ac(r31)
/* 80C0B8A8  C0 1F 02 C8 */	lfs f0, 0x2c8(r31)
/* 80C0B8AC  EC 42 00 24 */	fdivs f2, f2, f0
/* 80C0B8B0  4B 66 48 C9 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0B8B4  48 00 00 80 */	b lbl_80C0B934
lbl_80C0B8B8:
/* 80C0B8B8  C0 1B 20 64 */	lfs f0, 0x2064(r27)
/* 80C0B8BC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C0B8C0  C0 1B 20 68 */	lfs f0, 0x2068(r27)
/* 80C0B8C4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C0B8C8  C0 1B 20 6C */	lfs f0, 0x206c(r27)
/* 80C0B8CC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C0B8D0  C0 1B 20 58 */	lfs f0, 0x2058(r27)
/* 80C0B8D4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C0B8D8  C0 1B 20 5C */	lfs f0, 0x205c(r27)
/* 80C0B8DC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C0B8E0  C0 1B 20 60 */	lfs f0, 0x2060(r27)
/* 80C0B8E4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C0B8E8  38 7D 02 48 */	addi r3, r29, 0x248
/* 80C0B8EC  38 81 00 44 */	addi r4, r1, 0x44
/* 80C0B8F0  38 A1 00 38 */	addi r5, r1, 0x38
/* 80C0B8F4  C0 3B 20 70 */	lfs f1, 0x2070(r27)
/* 80C0B8F8  38 C0 00 00 */	li r6, 0
/* 80C0B8FC  4B 57 52 A5 */	bl Reset__9dCamera_cF4cXyz4cXyzfs
/* 80C0B900  38 7D 02 48 */	addi r3, r29, 0x248
/* 80C0B904  4B 55 5B A9 */	bl Start__9dCamera_cFv
/* 80C0B908  38 7D 02 48 */	addi r3, r29, 0x248
/* 80C0B90C  38 80 00 00 */	li r4, 0
/* 80C0B910  4B 55 76 FD */	bl SetTrimSize__9dCamera_cFl
/* 80C0B914  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0B918  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0B91C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80C0B920  4B 43 6B 49 */	bl reset__14dEvt_control_cFv
/* 80C0B924  38 00 00 00 */	li r0, 0
/* 80C0B928  B0 1B 20 54 */	sth r0, 0x2054(r27)
/* 80C0B92C  B0 1B 20 56 */	sth r0, 0x2056(r27)
/* 80C0B930  48 00 00 64 */	b lbl_80C0B994
lbl_80C0B934:
/* 80C0B934  A8 1B 20 54 */	lha r0, 0x2054(r27)
/* 80C0B938  2C 00 00 00 */	cmpwi r0, 0
/* 80C0B93C  41 82 00 58 */	beq lbl_80C0B994
/* 80C0B940  C0 1B 20 64 */	lfs f0, 0x2064(r27)
/* 80C0B944  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C0B948  C0 1B 20 68 */	lfs f0, 0x2068(r27)
/* 80C0B94C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C0B950  C0 1B 20 6C */	lfs f0, 0x206c(r27)
/* 80C0B954  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C0B958  C0 1B 20 58 */	lfs f0, 0x2058(r27)
/* 80C0B95C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C0B960  C0 1B 20 5C */	lfs f0, 0x205c(r27)
/* 80C0B964  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C0B968  C0 1B 20 60 */	lfs f0, 0x2060(r27)
/* 80C0B96C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C0B970  38 7D 02 48 */	addi r3, r29, 0x248
/* 80C0B974  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C0B978  38 A1 00 20 */	addi r5, r1, 0x20
/* 80C0B97C  C0 3B 20 70 */	lfs f1, 0x2070(r27)
/* 80C0B980  38 C0 00 00 */	li r6, 0
/* 80C0B984  4B 57 51 5D */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 80C0B988  A8 7B 20 56 */	lha r3, 0x2056(r27)
/* 80C0B98C  38 03 00 01 */	addi r0, r3, 1
/* 80C0B990  B0 1B 20 56 */	sth r0, 0x2056(r27)
lbl_80C0B994:
/* 80C0B994  39 61 01 30 */	addi r11, r1, 0x130
/* 80C0B998  4B 75 68 89 */	bl _restgpr_27
/* 80C0B99C  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80C0B9A0  7C 08 03 A6 */	mtlr r0
/* 80C0B9A4  38 21 01 30 */	addi r1, r1, 0x130
/* 80C0B9A8  4E 80 00 20 */	blr 
