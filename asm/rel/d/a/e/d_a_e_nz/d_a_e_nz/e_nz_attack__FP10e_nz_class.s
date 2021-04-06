lbl_8072A044:
/* 8072A044  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8072A048  7C 08 02 A6 */	mflr r0
/* 8072A04C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8072A050  39 61 00 70 */	addi r11, r1, 0x70
/* 8072A054  4B C3 81 89 */	bl _savegpr_29
/* 8072A058  7C 7D 1B 78 */	mr r29, r3
/* 8072A05C  3C 80 80 73 */	lis r4, lit_3789@ha /* 0x8072C180@ha */
/* 8072A060  3B E4 C1 80 */	addi r31, r4, lit_3789@l /* 0x8072C180@l */
/* 8072A064  3B C0 00 00 */	li r30, 0
/* 8072A068  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8072A06C  2C 00 00 03 */	cmpwi r0, 3
/* 8072A070  41 82 03 B4 */	beq lbl_8072A424
/* 8072A074  40 80 00 1C */	bge lbl_8072A090
/* 8072A078  2C 00 00 01 */	cmpwi r0, 1
/* 8072A07C  41 82 00 48 */	beq lbl_8072A0C4
/* 8072A080  40 80 01 34 */	bge lbl_8072A1B4
/* 8072A084  2C 00 00 00 */	cmpwi r0, 0
/* 8072A088  40 80 00 14 */	bge lbl_8072A09C
/* 8072A08C  48 00 05 D8 */	b lbl_8072A664
lbl_8072A090:
/* 8072A090  2C 00 00 05 */	cmpwi r0, 5
/* 8072A094  41 82 05 24 */	beq lbl_8072A5B8
/* 8072A098  48 00 05 CC */	b lbl_8072A664
lbl_8072A09C:
/* 8072A09C  38 80 00 07 */	li r4, 7
/* 8072A0A0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8072A0A4  38 A0 00 00 */	li r5, 0
/* 8072A0A8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8072A0AC  4B FF F9 91 */	bl anm_init__FP10e_nz_classifUcf
/* 8072A0B0  38 00 00 01 */	li r0, 1
/* 8072A0B4  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8072A0B8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072A0BC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8072A0C0  48 00 05 A4 */	b lbl_8072A664
lbl_8072A0C4:
/* 8072A0C4  C0 1D 05 BC */	lfs f0, 0x5bc(r29)
/* 8072A0C8  D0 1D 05 C8 */	stfs f0, 0x5c8(r29)
/* 8072A0CC  C0 1D 05 C0 */	lfs f0, 0x5c0(r29)
/* 8072A0D0  D0 1D 05 CC */	stfs f0, 0x5cc(r29)
/* 8072A0D4  C0 1D 05 C4 */	lfs f0, 0x5c4(r29)
/* 8072A0D8  D0 1D 05 D0 */	stfs f0, 0x5d0(r29)
/* 8072A0DC  38 61 00 38 */	addi r3, r1, 0x38
/* 8072A0E0  38 9D 05 BC */	addi r4, r29, 0x5bc
/* 8072A0E4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8072A0E8  4B B3 CA 4D */	bl __mi__4cXyzCFRC3Vec
/* 8072A0EC  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8072A0F0  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8072A0F4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8072A0F8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8072A0FC  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8072A100  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8072A104  4B B3 D5 71 */	bl cM_atan2s__Fff
/* 8072A108  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 8072A10C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8072A110  EC 20 00 32 */	fmuls f1, f0, f0
/* 8072A114  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8072A118  EC 00 00 32 */	fmuls f0, f0, f0
/* 8072A11C  EC 41 00 2A */	fadds f2, f1, f0
/* 8072A120  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072A124  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8072A128  40 81 00 0C */	ble lbl_8072A134
/* 8072A12C  FC 00 10 34 */	frsqrte f0, f2
/* 8072A130  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8072A134:
/* 8072A134  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8072A138  4B B3 D5 3D */	bl cM_atan2s__Fff
/* 8072A13C  7C 03 00 D0 */	neg r0, r3
/* 8072A140  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 8072A144  80 7D 05 E0 */	lwz r3, 0x5e0(r29)
/* 8072A148  38 80 00 01 */	li r4, 1
/* 8072A14C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8072A150  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8072A154  40 82 00 18 */	bne lbl_8072A16C
/* 8072A158  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8072A15C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8072A160  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8072A164  41 82 00 08 */	beq lbl_8072A16C
/* 8072A168  38 80 00 00 */	li r4, 0
lbl_8072A16C:
/* 8072A16C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8072A170  41 82 04 F4 */	beq lbl_8072A664
/* 8072A174  7F A3 EB 78 */	mr r3, r29
/* 8072A178  38 80 00 06 */	li r4, 6
/* 8072A17C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8072A180  38 A0 00 00 */	li r5, 0
/* 8072A184  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8072A188  4B FF F8 B5 */	bl anm_init__FP10e_nz_classifUcf
/* 8072A18C  38 00 00 02 */	li r0, 2
/* 8072A190  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8072A194  3C 60 80 73 */	lis r3, l_HIO@ha /* 0x8072C434@ha */
/* 8072A198  38 63 C4 34 */	addi r3, r3, l_HIO@l /* 0x8072C434@l */
/* 8072A19C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8072A1A0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8072A1A4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8072A1A8  D0 1D 05 DC */	stfs f0, 0x5dc(r29)
/* 8072A1AC  38 00 00 14 */	li r0, 0x14
/* 8072A1B0  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
lbl_8072A1B4:
/* 8072A1B4  3B C0 00 01 */	li r30, 1
/* 8072A1B8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8072A1BC  38 9D 05 BC */	addi r4, r29, 0x5bc
/* 8072A1C0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8072A1C4  4B B3 C9 71 */	bl __mi__4cXyzCFRC3Vec
/* 8072A1C8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8072A1CC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8072A1D0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8072A1D4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8072A1D8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8072A1DC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8072A1E0  38 61 00 44 */	addi r3, r1, 0x44
/* 8072A1E4  4B C1 CF 55 */	bl PSVECSquareMag
/* 8072A1E8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072A1EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072A1F0  40 81 00 58 */	ble lbl_8072A248
/* 8072A1F4  FC 00 08 34 */	frsqrte f0, f1
/* 8072A1F8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8072A1FC  FC 44 00 32 */	fmul f2, f4, f0
/* 8072A200  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8072A204  FC 00 00 32 */	fmul f0, f0, f0
/* 8072A208  FC 01 00 32 */	fmul f0, f1, f0
/* 8072A20C  FC 03 00 28 */	fsub f0, f3, f0
/* 8072A210  FC 02 00 32 */	fmul f0, f2, f0
/* 8072A214  FC 44 00 32 */	fmul f2, f4, f0
/* 8072A218  FC 00 00 32 */	fmul f0, f0, f0
/* 8072A21C  FC 01 00 32 */	fmul f0, f1, f0
/* 8072A220  FC 03 00 28 */	fsub f0, f3, f0
/* 8072A224  FC 02 00 32 */	fmul f0, f2, f0
/* 8072A228  FC 44 00 32 */	fmul f2, f4, f0
/* 8072A22C  FC 00 00 32 */	fmul f0, f0, f0
/* 8072A230  FC 01 00 32 */	fmul f0, f1, f0
/* 8072A234  FC 03 00 28 */	fsub f0, f3, f0
/* 8072A238  FC 02 00 32 */	fmul f0, f2, f0
/* 8072A23C  FC 21 00 32 */	fmul f1, f1, f0
/* 8072A240  FC 20 08 18 */	frsp f1, f1
/* 8072A244  48 00 00 88 */	b lbl_8072A2CC
lbl_8072A248:
/* 8072A248  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8072A24C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072A250  40 80 00 10 */	bge lbl_8072A260
/* 8072A254  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8072A258  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8072A25C  48 00 00 70 */	b lbl_8072A2CC
lbl_8072A260:
/* 8072A260  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8072A264  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8072A268  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8072A26C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8072A270  7C 03 00 00 */	cmpw r3, r0
/* 8072A274  41 82 00 14 */	beq lbl_8072A288
/* 8072A278  40 80 00 40 */	bge lbl_8072A2B8
/* 8072A27C  2C 03 00 00 */	cmpwi r3, 0
/* 8072A280  41 82 00 20 */	beq lbl_8072A2A0
/* 8072A284  48 00 00 34 */	b lbl_8072A2B8
lbl_8072A288:
/* 8072A288  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072A28C  41 82 00 0C */	beq lbl_8072A298
/* 8072A290  38 00 00 01 */	li r0, 1
/* 8072A294  48 00 00 28 */	b lbl_8072A2BC
lbl_8072A298:
/* 8072A298  38 00 00 02 */	li r0, 2
/* 8072A29C  48 00 00 20 */	b lbl_8072A2BC
lbl_8072A2A0:
/* 8072A2A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072A2A4  41 82 00 0C */	beq lbl_8072A2B0
/* 8072A2A8  38 00 00 05 */	li r0, 5
/* 8072A2AC  48 00 00 10 */	b lbl_8072A2BC
lbl_8072A2B0:
/* 8072A2B0  38 00 00 03 */	li r0, 3
/* 8072A2B4  48 00 00 08 */	b lbl_8072A2BC
lbl_8072A2B8:
/* 8072A2B8  38 00 00 04 */	li r0, 4
lbl_8072A2BC:
/* 8072A2BC  2C 00 00 01 */	cmpwi r0, 1
/* 8072A2C0  40 82 00 0C */	bne lbl_8072A2CC
/* 8072A2C4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8072A2C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8072A2CC:
/* 8072A2CC  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 8072A2D0  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 8072A2D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8072A2D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072A2DC  40 80 00 10 */	bge lbl_8072A2EC
/* 8072A2E0  38 00 00 03 */	li r0, 3
/* 8072A2E4  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8072A2E8  48 00 03 7C */	b lbl_8072A664
lbl_8072A2EC:
/* 8072A2EC  38 61 00 20 */	addi r3, r1, 0x20
/* 8072A2F0  38 9D 05 C8 */	addi r4, r29, 0x5c8
/* 8072A2F4  38 BD 05 BC */	addi r5, r29, 0x5bc
/* 8072A2F8  4B B3 C8 3D */	bl __mi__4cXyzCFRC3Vec
/* 8072A2FC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8072A300  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8072A304  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8072A308  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8072A30C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8072A310  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8072A314  38 61 00 44 */	addi r3, r1, 0x44
/* 8072A318  4B C1 CE 21 */	bl PSVECSquareMag
/* 8072A31C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072A320  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072A324  40 81 00 58 */	ble lbl_8072A37C
/* 8072A328  FC 00 08 34 */	frsqrte f0, f1
/* 8072A32C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8072A330  FC 44 00 32 */	fmul f2, f4, f0
/* 8072A334  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8072A338  FC 00 00 32 */	fmul f0, f0, f0
/* 8072A33C  FC 01 00 32 */	fmul f0, f1, f0
/* 8072A340  FC 03 00 28 */	fsub f0, f3, f0
/* 8072A344  FC 02 00 32 */	fmul f0, f2, f0
/* 8072A348  FC 44 00 32 */	fmul f2, f4, f0
/* 8072A34C  FC 00 00 32 */	fmul f0, f0, f0
/* 8072A350  FC 01 00 32 */	fmul f0, f1, f0
/* 8072A354  FC 03 00 28 */	fsub f0, f3, f0
/* 8072A358  FC 02 00 32 */	fmul f0, f2, f0
/* 8072A35C  FC 44 00 32 */	fmul f2, f4, f0
/* 8072A360  FC 00 00 32 */	fmul f0, f0, f0
/* 8072A364  FC 01 00 32 */	fmul f0, f1, f0
/* 8072A368  FC 03 00 28 */	fsub f0, f3, f0
/* 8072A36C  FC 02 00 32 */	fmul f0, f2, f0
/* 8072A370  FC 21 00 32 */	fmul f1, f1, f0
/* 8072A374  FC 20 08 18 */	frsp f1, f1
/* 8072A378  48 00 00 88 */	b lbl_8072A400
lbl_8072A37C:
/* 8072A37C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8072A380  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072A384  40 80 00 10 */	bge lbl_8072A394
/* 8072A388  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8072A38C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8072A390  48 00 00 70 */	b lbl_8072A400
lbl_8072A394:
/* 8072A394  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8072A398  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8072A39C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8072A3A0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8072A3A4  7C 03 00 00 */	cmpw r3, r0
/* 8072A3A8  41 82 00 14 */	beq lbl_8072A3BC
/* 8072A3AC  40 80 00 40 */	bge lbl_8072A3EC
/* 8072A3B0  2C 03 00 00 */	cmpwi r3, 0
/* 8072A3B4  41 82 00 20 */	beq lbl_8072A3D4
/* 8072A3B8  48 00 00 34 */	b lbl_8072A3EC
lbl_8072A3BC:
/* 8072A3BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072A3C0  41 82 00 0C */	beq lbl_8072A3CC
/* 8072A3C4  38 00 00 01 */	li r0, 1
/* 8072A3C8  48 00 00 28 */	b lbl_8072A3F0
lbl_8072A3CC:
/* 8072A3CC  38 00 00 02 */	li r0, 2
/* 8072A3D0  48 00 00 20 */	b lbl_8072A3F0
lbl_8072A3D4:
/* 8072A3D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072A3D8  41 82 00 0C */	beq lbl_8072A3E4
/* 8072A3DC  38 00 00 05 */	li r0, 5
/* 8072A3E0  48 00 00 10 */	b lbl_8072A3F0
lbl_8072A3E4:
/* 8072A3E4  38 00 00 03 */	li r0, 3
/* 8072A3E8  48 00 00 08 */	b lbl_8072A3F0
lbl_8072A3EC:
/* 8072A3EC  38 00 00 04 */	li r0, 4
lbl_8072A3F0:
/* 8072A3F0  2C 00 00 01 */	cmpwi r0, 1
/* 8072A3F4  40 82 00 0C */	bne lbl_8072A400
/* 8072A3F8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8072A3FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8072A400:
/* 8072A400  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8072A404  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072A408  41 81 00 10 */	bgt lbl_8072A418
/* 8072A40C  A8 1D 06 A2 */	lha r0, 0x6a2(r29)
/* 8072A410  2C 00 00 00 */	cmpwi r0, 0
/* 8072A414  40 82 02 50 */	bne lbl_8072A664
lbl_8072A418:
/* 8072A418  38 00 00 05 */	li r0, 5
/* 8072A41C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8072A420  48 00 02 44 */	b lbl_8072A664
lbl_8072A424:
/* 8072A424  C0 1D 05 BC */	lfs f0, 0x5bc(r29)
/* 8072A428  D0 1D 05 C8 */	stfs f0, 0x5c8(r29)
/* 8072A42C  C0 1D 05 C0 */	lfs f0, 0x5c0(r29)
/* 8072A430  D0 1D 05 CC */	stfs f0, 0x5cc(r29)
/* 8072A434  C0 1D 05 C4 */	lfs f0, 0x5c4(r29)
/* 8072A438  D0 1D 05 D0 */	stfs f0, 0x5d0(r29)
/* 8072A43C  3B C0 00 02 */	li r30, 2
/* 8072A440  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072A444  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8072A448  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8072A44C  C0 3D 05 BC */	lfs f1, 0x5bc(r29)
/* 8072A450  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8072A454  C0 7F 00 00 */	lfs f3, 0(r31)
/* 8072A458  4B B4 55 E5 */	bl cLib_addCalc2__FPffff
/* 8072A45C  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 8072A460  C0 3D 05 C0 */	lfs f1, 0x5c0(r29)
/* 8072A464  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8072A468  C0 7F 00 00 */	lfs f3, 0(r31)
/* 8072A46C  4B B4 55 D1 */	bl cLib_addCalc2__FPffff
/* 8072A470  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 8072A474  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 8072A478  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8072A47C  C0 7F 00 00 */	lfs f3, 0(r31)
/* 8072A480  4B B4 55 BD */	bl cLib_addCalc2__FPffff
/* 8072A484  38 61 00 14 */	addi r3, r1, 0x14
/* 8072A488  38 9D 05 BC */	addi r4, r29, 0x5bc
/* 8072A48C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8072A490  4B B3 C6 A5 */	bl __mi__4cXyzCFRC3Vec
/* 8072A494  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8072A498  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8072A49C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8072A4A0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8072A4A4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8072A4A8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8072A4AC  38 61 00 44 */	addi r3, r1, 0x44
/* 8072A4B0  4B C1 CC 89 */	bl PSVECSquareMag
/* 8072A4B4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072A4B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072A4BC  40 81 00 58 */	ble lbl_8072A514
/* 8072A4C0  FC 00 08 34 */	frsqrte f0, f1
/* 8072A4C4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8072A4C8  FC 44 00 32 */	fmul f2, f4, f0
/* 8072A4CC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8072A4D0  FC 00 00 32 */	fmul f0, f0, f0
/* 8072A4D4  FC 01 00 32 */	fmul f0, f1, f0
/* 8072A4D8  FC 03 00 28 */	fsub f0, f3, f0
/* 8072A4DC  FC 02 00 32 */	fmul f0, f2, f0
/* 8072A4E0  FC 44 00 32 */	fmul f2, f4, f0
/* 8072A4E4  FC 00 00 32 */	fmul f0, f0, f0
/* 8072A4E8  FC 01 00 32 */	fmul f0, f1, f0
/* 8072A4EC  FC 03 00 28 */	fsub f0, f3, f0
/* 8072A4F0  FC 02 00 32 */	fmul f0, f2, f0
/* 8072A4F4  FC 44 00 32 */	fmul f2, f4, f0
/* 8072A4F8  FC 00 00 32 */	fmul f0, f0, f0
/* 8072A4FC  FC 01 00 32 */	fmul f0, f1, f0
/* 8072A500  FC 03 00 28 */	fsub f0, f3, f0
/* 8072A504  FC 02 00 32 */	fmul f0, f2, f0
/* 8072A508  FC 21 00 32 */	fmul f1, f1, f0
/* 8072A50C  FC 20 08 18 */	frsp f1, f1
/* 8072A510  48 00 00 88 */	b lbl_8072A598
lbl_8072A514:
/* 8072A514  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8072A518  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072A51C  40 80 00 10 */	bge lbl_8072A52C
/* 8072A520  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8072A524  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8072A528  48 00 00 70 */	b lbl_8072A598
lbl_8072A52C:
/* 8072A52C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8072A530  80 81 00 08 */	lwz r4, 8(r1)
/* 8072A534  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8072A538  3C 00 7F 80 */	lis r0, 0x7f80
/* 8072A53C  7C 03 00 00 */	cmpw r3, r0
/* 8072A540  41 82 00 14 */	beq lbl_8072A554
/* 8072A544  40 80 00 40 */	bge lbl_8072A584
/* 8072A548  2C 03 00 00 */	cmpwi r3, 0
/* 8072A54C  41 82 00 20 */	beq lbl_8072A56C
/* 8072A550  48 00 00 34 */	b lbl_8072A584
lbl_8072A554:
/* 8072A554  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072A558  41 82 00 0C */	beq lbl_8072A564
/* 8072A55C  38 00 00 01 */	li r0, 1
/* 8072A560  48 00 00 28 */	b lbl_8072A588
lbl_8072A564:
/* 8072A564  38 00 00 02 */	li r0, 2
/* 8072A568  48 00 00 20 */	b lbl_8072A588
lbl_8072A56C:
/* 8072A56C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072A570  41 82 00 0C */	beq lbl_8072A57C
/* 8072A574  38 00 00 05 */	li r0, 5
/* 8072A578  48 00 00 10 */	b lbl_8072A588
lbl_8072A57C:
/* 8072A57C  38 00 00 03 */	li r0, 3
/* 8072A580  48 00 00 08 */	b lbl_8072A588
lbl_8072A584:
/* 8072A584  38 00 00 04 */	li r0, 4
lbl_8072A588:
/* 8072A588  2C 00 00 01 */	cmpwi r0, 1
/* 8072A58C  40 82 00 0C */	bne lbl_8072A598
/* 8072A590  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8072A594  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8072A598:
/* 8072A598  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8072A59C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072A5A0  40 80 00 C4 */	bge lbl_8072A664
/* 8072A5A4  38 00 00 03 */	li r0, 3
/* 8072A5A8  B0 1D 06 9A */	sth r0, 0x69a(r29)
/* 8072A5AC  38 00 00 00 */	li r0, 0
/* 8072A5B0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8072A5B4  48 00 00 B0 */	b lbl_8072A664
lbl_8072A5B8:
/* 8072A5B8  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 8072A5BC  38 80 00 00 */	li r4, 0
/* 8072A5C0  38 A0 00 01 */	li r5, 1
/* 8072A5C4  38 C0 10 00 */	li r6, 0x1000
/* 8072A5C8  4B B4 60 41 */	bl cLib_addCalcAngleS2__FPssss
/* 8072A5CC  80 1D 07 1C */	lwz r0, 0x71c(r29)
/* 8072A5D0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8072A5D4  40 82 00 10 */	bne lbl_8072A5E4
/* 8072A5D8  88 1D 08 C8 */	lbz r0, 0x8c8(r29)
/* 8072A5DC  7C 00 07 75 */	extsb. r0, r0
/* 8072A5E0  41 82 00 84 */	beq lbl_8072A664
lbl_8072A5E4:
/* 8072A5E4  38 00 00 00 */	li r0, 0
/* 8072A5E8  B0 1D 06 9A */	sth r0, 0x69a(r29)
/* 8072A5EC  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8072A5F0  4B B3 D3 65 */	bl cM_rndF__Ff
/* 8072A5F4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8072A5F8  EC 00 08 2A */	fadds f0, f0, f1
/* 8072A5FC  FC 00 00 1E */	fctiwz f0, f0
/* 8072A600  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8072A604  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8072A608  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
/* 8072A60C  38 00 00 02 */	li r0, 2
/* 8072A610  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8072A614  7F A3 EB 78 */	mr r3, r29
/* 8072A618  38 80 00 08 */	li r4, 8
/* 8072A61C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8072A620  38 A0 00 02 */	li r5, 2
/* 8072A624  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8072A628  4B FF F4 15 */	bl anm_init__FP10e_nz_classifUcf
/* 8072A62C  38 C0 00 00 */	li r6, 0
/* 8072A630  B0 DD 04 DC */	sth r6, 0x4dc(r29)
/* 8072A634  3C 60 80 73 */	lis r3, data_8072C454@ha /* 0x8072C454@ha */
/* 8072A638  38 A3 C4 54 */	addi r5, r3, data_8072C454@l /* 0x8072C454@l */
/* 8072A63C  88 85 00 00 */	lbz r4, 0(r5)
/* 8072A640  3C 60 80 73 */	lis r3, stick_bit@ha /* 0x8072C284@ha */
/* 8072A644  38 63 C2 84 */	addi r3, r3, stick_bit@l /* 0x8072C284@l */
/* 8072A648  88 1D 06 AC */	lbz r0, 0x6ac(r29)
/* 8072A64C  7C 00 07 74 */	extsb r0, r0
/* 8072A650  7C 63 02 14 */	add r3, r3, r0
/* 8072A654  88 03 FF FF */	lbz r0, -1(r3)
/* 8072A658  7C 80 00 78 */	andc r0, r4, r0
/* 8072A65C  98 05 00 00 */	stb r0, 0(r5)
/* 8072A660  98 DD 06 AC */	stb r6, 0x6ac(r29)
lbl_8072A664:
/* 8072A664  7F C3 F3 78 */	mr r3, r30
/* 8072A668  39 61 00 70 */	addi r11, r1, 0x70
/* 8072A66C  4B C3 7B BD */	bl _restgpr_29
/* 8072A670  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8072A674  7C 08 03 A6 */	mtlr r0
/* 8072A678  38 21 00 70 */	addi r1, r1, 0x70
/* 8072A67C  4E 80 00 20 */	blr 
