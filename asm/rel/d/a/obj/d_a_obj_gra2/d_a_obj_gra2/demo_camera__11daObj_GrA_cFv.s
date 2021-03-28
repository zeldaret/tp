lbl_80C0A120:
/* 80C0A120  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 80C0A124  7C 08 02 A6 */	mflr r0
/* 80C0A128  90 01 01 64 */	stw r0, 0x164(r1)
/* 80C0A12C  39 61 01 60 */	addi r11, r1, 0x160
/* 80C0A130  4B 75 80 A4 */	b _savegpr_27
/* 80C0A134  7C 7B 1B 78 */	mr r27, r3
/* 80C0A138  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha
/* 80C0A13C  3B E3 FA 7C */	addi r31, r3, m__17daObj_GrA_Param_c@l
/* 80C0A140  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C0A144  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C0A148  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80C0A14C  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80C0A150  7C 00 07 74 */	extsb r0, r0
/* 80C0A154  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80C0A158  7C 63 02 14 */	add r3, r3, r0
/* 80C0A15C  83 A3 5D 74 */	lwz r29, 0x5d74(r3)
/* 80C0A160  4B 57 74 E0 */	b dCam_getBody__Fv
/* 80C0A164  7C 7C 1B 78 */	mr r28, r3
/* 80C0A168  A8 1B 20 54 */	lha r0, 0x2054(r27)
/* 80C0A16C  28 00 00 06 */	cmplwi r0, 6
/* 80C0A170  41 81 0D AC */	bgt lbl_80C0AF1C
/* 80C0A174  3C 60 80 C1 */	lis r3, lit_8707@ha
/* 80C0A178  38 63 02 E4 */	addi r3, r3, lit_8707@l
/* 80C0A17C  54 00 10 3A */	slwi r0, r0, 2
/* 80C0A180  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C0A184  7C 09 03 A6 */	mtctr r0
/* 80C0A188  4E 80 04 20 */	bctr 
lbl_80C0A18C:
/* 80C0A18C  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80C0A190  28 00 00 02 */	cmplwi r0, 2
/* 80C0A194  41 82 00 2C */	beq lbl_80C0A1C0
/* 80C0A198  7F 63 DB 78 */	mr r3, r27
/* 80C0A19C  38 80 00 00 */	li r4, 0
/* 80C0A1A0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFEF@ha */
/* 80C0A1A4  38 A5 FF EF */	addi r5, r5, 0xFFEF /* 0x0000FFEF@l */
/* 80C0A1A8  38 C0 00 00 */	li r6, 0
/* 80C0A1AC  4B 41 17 5C */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80C0A1B0  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 80C0A1B4  60 00 00 02 */	ori r0, r0, 2
/* 80C0A1B8  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 80C0A1BC  48 00 0D C0 */	b lbl_80C0AF7C
lbl_80C0A1C0:
/* 80C0A1C0  38 7D 02 48 */	addi r3, r29, 0x248
/* 80C0A1C4  4B 55 73 0C */	b Stop__9dCamera_cFv
/* 80C0A1C8  38 00 00 02 */	li r0, 2
/* 80C0A1CC  B0 1B 20 54 */	sth r0, 0x2054(r27)
/* 80C0A1D0  38 00 00 00 */	li r0, 0
/* 80C0A1D4  B0 1B 20 56 */	sth r0, 0x2056(r27)
/* 80C0A1D8  C0 3C 00 58 */	lfs f1, 0x58(r28)
/* 80C0A1DC  C0 1C 06 F4 */	lfs f0, 0x6f4(r28)
/* 80C0A1E0  EC 01 00 2A */	fadds f0, f1, f0
/* 80C0A1E4  D0 1B 20 8C */	stfs f0, 0x208c(r27)
/* 80C0A1E8  D0 1B 20 70 */	stfs f0, 0x2070(r27)
/* 80C0A1EC  38 61 00 CC */	addi r3, r1, 0xcc
/* 80C0A1F0  7F 84 E3 78 */	mr r4, r28
/* 80C0A1F4  4B 57 7C A4 */	b Center__9dCamera_cFv
/* 80C0A1F8  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 80C0A1FC  D0 1B 20 80 */	stfs f0, 0x2080(r27)
/* 80C0A200  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80C0A204  D0 1B 20 84 */	stfs f0, 0x2084(r27)
/* 80C0A208  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 80C0A20C  D0 1B 20 88 */	stfs f0, 0x2088(r27)
/* 80C0A210  C0 1B 20 80 */	lfs f0, 0x2080(r27)
/* 80C0A214  D0 1B 20 64 */	stfs f0, 0x2064(r27)
/* 80C0A218  C0 1B 20 84 */	lfs f0, 0x2084(r27)
/* 80C0A21C  D0 1B 20 68 */	stfs f0, 0x2068(r27)
/* 80C0A220  C0 1B 20 88 */	lfs f0, 0x2088(r27)
/* 80C0A224  D0 1B 20 6C */	stfs f0, 0x206c(r27)
/* 80C0A228  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80C0A22C  7F 84 E3 78 */	mr r4, r28
/* 80C0A230  4B 57 7C 34 */	b Eye__9dCamera_cFv
/* 80C0A234  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80C0A238  D0 1B 20 74 */	stfs f0, 0x2074(r27)
/* 80C0A23C  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 80C0A240  D0 1B 20 78 */	stfs f0, 0x2078(r27)
/* 80C0A244  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 80C0A248  D0 1B 20 7C */	stfs f0, 0x207c(r27)
/* 80C0A24C  C0 1B 20 74 */	lfs f0, 0x2074(r27)
/* 80C0A250  D0 1B 20 58 */	stfs f0, 0x2058(r27)
/* 80C0A254  C0 1B 20 78 */	lfs f0, 0x2078(r27)
/* 80C0A258  D0 1B 20 5C */	stfs f0, 0x205c(r27)
/* 80C0A25C  C0 1B 20 7C */	lfs f0, 0x207c(r27)
/* 80C0A260  D0 1B 20 60 */	stfs f0, 0x2060(r27)
/* 80C0A264  38 7D 02 48 */	addi r3, r29, 0x248
/* 80C0A268  38 80 00 02 */	li r4, 2
/* 80C0A26C  4B 55 8D A0 */	b SetTrimSize__9dCamera_cFl
lbl_80C0A270:
/* 80C0A270  38 7F 00 00 */	addi r3, r31, 0
/* 80C0A274  A8 63 00 AC */	lha r3, 0xac(r3)
/* 80C0A278  A8 1B 20 56 */	lha r0, 0x2056(r27)
/* 80C0A27C  7C 00 18 00 */	cmpw r0, r3
/* 80C0A280  41 80 00 1C */	blt lbl_80C0A29C
/* 80C0A284  A8 7B 20 54 */	lha r3, 0x2054(r27)
/* 80C0A288  38 03 00 01 */	addi r0, r3, 1
/* 80C0A28C  B0 1B 20 54 */	sth r0, 0x2054(r27)
/* 80C0A290  38 00 00 00 */	li r0, 0
/* 80C0A294  B0 1B 20 56 */	sth r0, 0x2056(r27)
/* 80C0A298  48 00 01 48 */	b lbl_80C0A3E0
lbl_80C0A29C:
/* 80C0A29C  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80C0A2A0  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 80C0A2A4  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 80C0A2A8  D0 21 01 30 */	stfs f1, 0x130(r1)
/* 80C0A2AC  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80C0A2B0  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 80C0A2B4  C0 1F 02 A0 */	lfs f0, 0x2a0(r31)
/* 80C0A2B8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C0A2BC  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 80C0A2C0  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80C0A2C4  38 9B 20 80 */	addi r4, r27, 0x2080
/* 80C0A2C8  38 A1 01 2C */	addi r5, r1, 0x12c
/* 80C0A2CC  4B 65 C8 68 */	b __mi__4cXyzCFRC3Vec
/* 80C0A2D0  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80C0A2D4  4B 73 CE 64 */	b PSVECSquareMag
/* 80C0A2D8  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0A2DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0A2E0  40 81 00 58 */	ble lbl_80C0A338
/* 80C0A2E4  FC 00 08 34 */	frsqrte f0, f1
/* 80C0A2E8  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C0A2EC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0A2F0  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C0A2F4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0A2F8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0A2FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0A300  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0A304  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0A308  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0A30C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0A310  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0A314  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0A318  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0A31C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0A320  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0A324  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0A328  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0A32C  FC 41 00 32 */	fmul f2, f1, f0
/* 80C0A330  FC 40 10 18 */	frsp f2, f2
/* 80C0A334  48 00 00 90 */	b lbl_80C0A3C4
lbl_80C0A338:
/* 80C0A338  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C0A33C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0A340  40 80 00 10 */	bge lbl_80C0A350
/* 80C0A344  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C0A348  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C0A34C  48 00 00 78 */	b lbl_80C0A3C4
lbl_80C0A350:
/* 80C0A350  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C0A354  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80C0A358  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0A35C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0A360  7C 03 00 00 */	cmpw r3, r0
/* 80C0A364  41 82 00 14 */	beq lbl_80C0A378
/* 80C0A368  40 80 00 40 */	bge lbl_80C0A3A8
/* 80C0A36C  2C 03 00 00 */	cmpwi r3, 0
/* 80C0A370  41 82 00 20 */	beq lbl_80C0A390
/* 80C0A374  48 00 00 34 */	b lbl_80C0A3A8
lbl_80C0A378:
/* 80C0A378  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0A37C  41 82 00 0C */	beq lbl_80C0A388
/* 80C0A380  38 00 00 01 */	li r0, 1
/* 80C0A384  48 00 00 28 */	b lbl_80C0A3AC
lbl_80C0A388:
/* 80C0A388  38 00 00 02 */	li r0, 2
/* 80C0A38C  48 00 00 20 */	b lbl_80C0A3AC
lbl_80C0A390:
/* 80C0A390  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0A394  41 82 00 0C */	beq lbl_80C0A3A0
/* 80C0A398  38 00 00 05 */	li r0, 5
/* 80C0A39C  48 00 00 10 */	b lbl_80C0A3AC
lbl_80C0A3A0:
/* 80C0A3A0  38 00 00 03 */	li r0, 3
/* 80C0A3A4  48 00 00 08 */	b lbl_80C0A3AC
lbl_80C0A3A8:
/* 80C0A3A8  38 00 00 04 */	li r0, 4
lbl_80C0A3AC:
/* 80C0A3AC  2C 00 00 01 */	cmpwi r0, 1
/* 80C0A3B0  40 82 00 10 */	bne lbl_80C0A3C0
/* 80C0A3B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C0A3B8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C0A3BC  48 00 00 08 */	b lbl_80C0A3C4
lbl_80C0A3C0:
/* 80C0A3C0  FC 40 08 90 */	fmr f2, f1
lbl_80C0A3C4:
/* 80C0A3C4  38 7B 20 64 */	addi r3, r27, 0x2064
/* 80C0A3C8  38 81 01 2C */	addi r4, r1, 0x12c
/* 80C0A3CC  C0 3F 02 AC */	lfs f1, 0x2ac(r31)
/* 80C0A3D0  C0 1F 02 20 */	lfs f0, 0x220(r31)
/* 80C0A3D4  EC 42 00 24 */	fdivs f2, f2, f0
/* 80C0A3D8  4B 66 5D A0 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0A3DC  48 00 0B 40 */	b lbl_80C0AF1C
lbl_80C0A3E0:
/* 80C0A3E0  38 7F 00 00 */	addi r3, r31, 0
/* 80C0A3E4  A8 63 00 AE */	lha r3, 0xae(r3)
/* 80C0A3E8  A8 1B 20 56 */	lha r0, 0x2056(r27)
/* 80C0A3EC  7C 00 18 00 */	cmpw r0, r3
/* 80C0A3F0  41 80 00 1C */	blt lbl_80C0A40C
/* 80C0A3F4  A8 7B 20 54 */	lha r3, 0x2054(r27)
/* 80C0A3F8  38 03 00 01 */	addi r0, r3, 1
/* 80C0A3FC  B0 1B 20 54 */	sth r0, 0x2054(r27)
/* 80C0A400  38 00 00 00 */	li r0, 0
/* 80C0A404  B0 1B 20 56 */	sth r0, 0x2056(r27)
/* 80C0A408  48 00 01 48 */	b lbl_80C0A550
lbl_80C0A40C:
/* 80C0A40C  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80C0A410  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 80C0A414  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 80C0A418  D0 21 01 24 */	stfs f1, 0x124(r1)
/* 80C0A41C  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80C0A420  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 80C0A424  C0 1F 02 A0 */	lfs f0, 0x2a0(r31)
/* 80C0A428  EC 01 00 2A */	fadds f0, f1, f0
/* 80C0A42C  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 80C0A430  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80C0A434  38 9B 20 80 */	addi r4, r27, 0x2080
/* 80C0A438  38 A1 01 20 */	addi r5, r1, 0x120
/* 80C0A43C  4B 65 C6 F8 */	b __mi__4cXyzCFRC3Vec
/* 80C0A440  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80C0A444  4B 73 CC F4 */	b PSVECSquareMag
/* 80C0A448  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0A44C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0A450  40 81 00 58 */	ble lbl_80C0A4A8
/* 80C0A454  FC 00 08 34 */	frsqrte f0, f1
/* 80C0A458  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C0A45C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0A460  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C0A464  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0A468  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0A46C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0A470  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0A474  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0A478  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0A47C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0A480  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0A484  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0A488  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0A48C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0A490  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0A494  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0A498  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0A49C  FC 41 00 32 */	fmul f2, f1, f0
/* 80C0A4A0  FC 40 10 18 */	frsp f2, f2
/* 80C0A4A4  48 00 00 90 */	b lbl_80C0A534
lbl_80C0A4A8:
/* 80C0A4A8  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C0A4AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0A4B0  40 80 00 10 */	bge lbl_80C0A4C0
/* 80C0A4B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C0A4B8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C0A4BC  48 00 00 78 */	b lbl_80C0A534
lbl_80C0A4C0:
/* 80C0A4C0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C0A4C4  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80C0A4C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0A4CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0A4D0  7C 03 00 00 */	cmpw r3, r0
/* 80C0A4D4  41 82 00 14 */	beq lbl_80C0A4E8
/* 80C0A4D8  40 80 00 40 */	bge lbl_80C0A518
/* 80C0A4DC  2C 03 00 00 */	cmpwi r3, 0
/* 80C0A4E0  41 82 00 20 */	beq lbl_80C0A500
/* 80C0A4E4  48 00 00 34 */	b lbl_80C0A518
lbl_80C0A4E8:
/* 80C0A4E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0A4EC  41 82 00 0C */	beq lbl_80C0A4F8
/* 80C0A4F0  38 00 00 01 */	li r0, 1
/* 80C0A4F4  48 00 00 28 */	b lbl_80C0A51C
lbl_80C0A4F8:
/* 80C0A4F8  38 00 00 02 */	li r0, 2
/* 80C0A4FC  48 00 00 20 */	b lbl_80C0A51C
lbl_80C0A500:
/* 80C0A500  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0A504  41 82 00 0C */	beq lbl_80C0A510
/* 80C0A508  38 00 00 05 */	li r0, 5
/* 80C0A50C  48 00 00 10 */	b lbl_80C0A51C
lbl_80C0A510:
/* 80C0A510  38 00 00 03 */	li r0, 3
/* 80C0A514  48 00 00 08 */	b lbl_80C0A51C
lbl_80C0A518:
/* 80C0A518  38 00 00 04 */	li r0, 4
lbl_80C0A51C:
/* 80C0A51C  2C 00 00 01 */	cmpwi r0, 1
/* 80C0A520  40 82 00 10 */	bne lbl_80C0A530
/* 80C0A524  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C0A528  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C0A52C  48 00 00 08 */	b lbl_80C0A534
lbl_80C0A530:
/* 80C0A530  FC 40 08 90 */	fmr f2, f1
lbl_80C0A534:
/* 80C0A534  38 7B 20 64 */	addi r3, r27, 0x2064
/* 80C0A538  38 81 01 20 */	addi r4, r1, 0x120
/* 80C0A53C  C0 3F 02 AC */	lfs f1, 0x2ac(r31)
/* 80C0A540  C0 1F 02 20 */	lfs f0, 0x220(r31)
/* 80C0A544  EC 42 00 24 */	fdivs f2, f2, f0
/* 80C0A548  4B 66 5C 30 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0A54C  48 00 09 D0 */	b lbl_80C0AF1C
lbl_80C0A550:
/* 80C0A550  38 7F 00 00 */	addi r3, r31, 0
/* 80C0A554  AB 83 00 B0 */	lha r28, 0xb0(r3)
/* 80C0A558  A8 1B 20 56 */	lha r0, 0x2056(r27)
/* 80C0A55C  7C 00 E0 00 */	cmpw r0, r28
/* 80C0A560  41 80 00 1C */	blt lbl_80C0A57C
/* 80C0A564  A8 7B 20 54 */	lha r3, 0x2054(r27)
/* 80C0A568  38 03 00 01 */	addi r0, r3, 1
/* 80C0A56C  B0 1B 20 54 */	sth r0, 0x2054(r27)
/* 80C0A570  38 00 00 00 */	li r0, 0
/* 80C0A574  B0 1B 20 56 */	sth r0, 0x2056(r27)
/* 80C0A578  48 00 02 E8 */	b lbl_80C0A860
lbl_80C0A57C:
/* 80C0A57C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C0A580  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C0A584  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 80C0A588  4B 40 1E 54 */	b mDoMtx_YrotS__FPA4_fs
/* 80C0A58C  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0A590  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80C0A594  C0 1F 02 CC */	lfs f0, 0x2cc(r31)
/* 80C0A598  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80C0A59C  C0 1F 02 D0 */	lfs f0, 0x2d0(r31)
/* 80C0A5A0  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 80C0A5A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C0A5A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C0A5AC  38 81 01 14 */	addi r4, r1, 0x114
/* 80C0A5B0  7C 85 23 78 */	mr r5, r4
/* 80C0A5B4  4B 73 C7 B8 */	b PSMTXMultVec
/* 80C0A5B8  38 61 01 14 */	addi r3, r1, 0x114
/* 80C0A5BC  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80C0A5C0  7C 65 1B 78 */	mr r5, r3
/* 80C0A5C4  4B 73 CA CC */	b PSVECAdd
/* 80C0A5C8  38 61 00 9C */	addi r3, r1, 0x9c
/* 80C0A5CC  38 9B 20 74 */	addi r4, r27, 0x2074
/* 80C0A5D0  38 A1 01 14 */	addi r5, r1, 0x114
/* 80C0A5D4  4B 65 C5 60 */	b __mi__4cXyzCFRC3Vec
/* 80C0A5D8  38 61 00 9C */	addi r3, r1, 0x9c
/* 80C0A5DC  4B 73 CB 5C */	b PSVECSquareMag
/* 80C0A5E0  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0A5E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0A5E8  40 81 00 58 */	ble lbl_80C0A640
/* 80C0A5EC  FC 00 08 34 */	frsqrte f0, f1
/* 80C0A5F0  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C0A5F4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0A5F8  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C0A5FC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0A600  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0A604  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0A608  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0A60C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0A610  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0A614  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0A618  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0A61C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0A620  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0A624  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0A628  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0A62C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0A630  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0A634  FC 41 00 32 */	fmul f2, f1, f0
/* 80C0A638  FC 40 10 18 */	frsp f2, f2
/* 80C0A63C  48 00 00 90 */	b lbl_80C0A6CC
lbl_80C0A640:
/* 80C0A640  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C0A644  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0A648  40 80 00 10 */	bge lbl_80C0A658
/* 80C0A64C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C0A650  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C0A654  48 00 00 78 */	b lbl_80C0A6CC
lbl_80C0A658:
/* 80C0A658  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C0A65C  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80C0A660  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0A664  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0A668  7C 03 00 00 */	cmpw r3, r0
/* 80C0A66C  41 82 00 14 */	beq lbl_80C0A680
/* 80C0A670  40 80 00 40 */	bge lbl_80C0A6B0
/* 80C0A674  2C 03 00 00 */	cmpwi r3, 0
/* 80C0A678  41 82 00 20 */	beq lbl_80C0A698
/* 80C0A67C  48 00 00 34 */	b lbl_80C0A6B0
lbl_80C0A680:
/* 80C0A680  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0A684  41 82 00 0C */	beq lbl_80C0A690
/* 80C0A688  38 00 00 01 */	li r0, 1
/* 80C0A68C  48 00 00 28 */	b lbl_80C0A6B4
lbl_80C0A690:
/* 80C0A690  38 00 00 02 */	li r0, 2
/* 80C0A694  48 00 00 20 */	b lbl_80C0A6B4
lbl_80C0A698:
/* 80C0A698  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0A69C  41 82 00 0C */	beq lbl_80C0A6A8
/* 80C0A6A0  38 00 00 05 */	li r0, 5
/* 80C0A6A4  48 00 00 10 */	b lbl_80C0A6B4
lbl_80C0A6A8:
/* 80C0A6A8  38 00 00 03 */	li r0, 3
/* 80C0A6AC  48 00 00 08 */	b lbl_80C0A6B4
lbl_80C0A6B0:
/* 80C0A6B0  38 00 00 04 */	li r0, 4
lbl_80C0A6B4:
/* 80C0A6B4  2C 00 00 01 */	cmpwi r0, 1
/* 80C0A6B8  40 82 00 10 */	bne lbl_80C0A6C8
/* 80C0A6BC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C0A6C0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C0A6C4  48 00 00 08 */	b lbl_80C0A6CC
lbl_80C0A6C8:
/* 80C0A6C8  FC 40 08 90 */	fmr f2, f1
lbl_80C0A6CC:
/* 80C0A6CC  38 7B 20 58 */	addi r3, r27, 0x2058
/* 80C0A6D0  38 81 01 14 */	addi r4, r1, 0x114
/* 80C0A6D4  C0 3F 02 AC */	lfs f1, 0x2ac(r31)
/* 80C0A6D8  C0 1F 02 20 */	lfs f0, 0x220(r31)
/* 80C0A6DC  EC 42 00 24 */	fdivs f2, f2, f0
/* 80C0A6E0  4B 66 5A 98 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0A6E4  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80C0A6E8  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80C0A6EC  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 80C0A6F0  D0 21 01 0C */	stfs f1, 0x10c(r1)
/* 80C0A6F4  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80C0A6F8  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80C0A6FC  C0 1F 02 A0 */	lfs f0, 0x2a0(r31)
/* 80C0A700  EC 01 00 2A */	fadds f0, f1, f0
/* 80C0A704  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80C0A708  38 61 00 90 */	addi r3, r1, 0x90
/* 80C0A70C  38 9B 20 80 */	addi r4, r27, 0x2080
/* 80C0A710  38 A1 01 08 */	addi r5, r1, 0x108
/* 80C0A714  4B 65 C4 20 */	b __mi__4cXyzCFRC3Vec
/* 80C0A718  38 61 00 90 */	addi r3, r1, 0x90
/* 80C0A71C  4B 73 CA 1C */	b PSVECSquareMag
/* 80C0A720  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0A724  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0A728  40 81 00 58 */	ble lbl_80C0A780
/* 80C0A72C  FC 00 08 34 */	frsqrte f0, f1
/* 80C0A730  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C0A734  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0A738  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C0A73C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0A740  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0A744  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0A748  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0A74C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0A750  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0A754  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0A758  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0A75C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0A760  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0A764  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0A768  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0A76C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0A770  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0A774  FC 41 00 32 */	fmul f2, f1, f0
/* 80C0A778  FC 40 10 18 */	frsp f2, f2
/* 80C0A77C  48 00 00 90 */	b lbl_80C0A80C
lbl_80C0A780:
/* 80C0A780  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C0A784  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0A788  40 80 00 10 */	bge lbl_80C0A798
/* 80C0A78C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C0A790  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C0A794  48 00 00 78 */	b lbl_80C0A80C
lbl_80C0A798:
/* 80C0A798  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C0A79C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80C0A7A0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0A7A4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0A7A8  7C 03 00 00 */	cmpw r3, r0
/* 80C0A7AC  41 82 00 14 */	beq lbl_80C0A7C0
/* 80C0A7B0  40 80 00 40 */	bge lbl_80C0A7F0
/* 80C0A7B4  2C 03 00 00 */	cmpwi r3, 0
/* 80C0A7B8  41 82 00 20 */	beq lbl_80C0A7D8
/* 80C0A7BC  48 00 00 34 */	b lbl_80C0A7F0
lbl_80C0A7C0:
/* 80C0A7C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0A7C4  41 82 00 0C */	beq lbl_80C0A7D0
/* 80C0A7C8  38 00 00 01 */	li r0, 1
/* 80C0A7CC  48 00 00 28 */	b lbl_80C0A7F4
lbl_80C0A7D0:
/* 80C0A7D0  38 00 00 02 */	li r0, 2
/* 80C0A7D4  48 00 00 20 */	b lbl_80C0A7F4
lbl_80C0A7D8:
/* 80C0A7D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0A7DC  41 82 00 0C */	beq lbl_80C0A7E8
/* 80C0A7E0  38 00 00 05 */	li r0, 5
/* 80C0A7E4  48 00 00 10 */	b lbl_80C0A7F4
lbl_80C0A7E8:
/* 80C0A7E8  38 00 00 03 */	li r0, 3
/* 80C0A7EC  48 00 00 08 */	b lbl_80C0A7F4
lbl_80C0A7F0:
/* 80C0A7F0  38 00 00 04 */	li r0, 4
lbl_80C0A7F4:
/* 80C0A7F4  2C 00 00 01 */	cmpwi r0, 1
/* 80C0A7F8  40 82 00 10 */	bne lbl_80C0A808
/* 80C0A7FC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C0A800  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C0A804  48 00 00 08 */	b lbl_80C0A80C
lbl_80C0A808:
/* 80C0A808  FC 40 08 90 */	fmr f2, f1
lbl_80C0A80C:
/* 80C0A80C  38 7B 20 64 */	addi r3, r27, 0x2064
/* 80C0A810  38 81 01 08 */	addi r4, r1, 0x108
/* 80C0A814  C0 3F 02 AC */	lfs f1, 0x2ac(r31)
/* 80C0A818  C0 1F 02 20 */	lfs f0, 0x220(r31)
/* 80C0A81C  EC 42 00 24 */	fdivs f2, f2, f0
/* 80C0A820  4B 66 59 58 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0A824  C0 7B 20 70 */	lfs f3, 0x2070(r27)
/* 80C0A828  C0 3F 02 D4 */	lfs f1, 0x2d4(r31)
/* 80C0A82C  C0 1B 20 8C */	lfs f0, 0x208c(r27)
/* 80C0A830  EC 41 00 28 */	fsubs f2, f1, f0
/* 80C0A834  C8 3F 01 30 */	lfd f1, 0x130(r31)
/* 80C0A838  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 80C0A83C  90 01 01 3C */	stw r0, 0x13c(r1)
/* 80C0A840  3C 00 43 30 */	lis r0, 0x4330
/* 80C0A844  90 01 01 38 */	stw r0, 0x138(r1)
/* 80C0A848  C8 01 01 38 */	lfd f0, 0x138(r1)
/* 80C0A84C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C0A850  EC 02 00 24 */	fdivs f0, f2, f0
/* 80C0A854  EC 03 00 2A */	fadds f0, f3, f0
/* 80C0A858  D0 1B 20 70 */	stfs f0, 0x2070(r27)
/* 80C0A85C  48 00 06 C0 */	b lbl_80C0AF1C
lbl_80C0A860:
/* 80C0A860  38 7F 00 00 */	addi r3, r31, 0
/* 80C0A864  A8 63 00 B2 */	lha r3, 0xb2(r3)
/* 80C0A868  A8 1B 20 56 */	lha r0, 0x2056(r27)
/* 80C0A86C  7C 00 18 00 */	cmpw r0, r3
/* 80C0A870  41 80 00 88 */	blt lbl_80C0A8F8
/* 80C0A874  A8 7B 20 54 */	lha r3, 0x2054(r27)
/* 80C0A878  38 03 00 01 */	addi r0, r3, 1
/* 80C0A87C  B0 1B 20 54 */	sth r0, 0x2054(r27)
/* 80C0A880  38 00 00 00 */	li r0, 0
/* 80C0A884  B0 1B 20 56 */	sth r0, 0x2056(r27)
/* 80C0A888  80 1E 04 DC */	lwz r0, 0x4dc(r30)
/* 80C0A88C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80C0A890  A0 1E 04 E0 */	lhz r0, 0x4e0(r30)
/* 80C0A894  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80C0A898  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C0A89C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80C0A8A0  4B 66 63 64 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80C0A8A4  B0 61 00 2A */	sth r3, 0x2a(r1)
/* 80C0A8A8  7F C3 F3 78 */	mr r3, r30
/* 80C0A8AC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C0A8B0  38 A1 00 28 */	addi r5, r1, 0x28
/* 80C0A8B4  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80C0A8B8  81 8C 01 58 */	lwz r12, 0x158(r12)
/* 80C0A8BC  7D 89 03 A6 */	mtctr r12
/* 80C0A8C0  4E 80 04 21 */	bctrl 
/* 80C0A8C4  C0 1B 20 58 */	lfs f0, 0x2058(r27)
/* 80C0A8C8  D0 1B 20 74 */	stfs f0, 0x2074(r27)
/* 80C0A8CC  C0 1B 20 5C */	lfs f0, 0x205c(r27)
/* 80C0A8D0  D0 1B 20 78 */	stfs f0, 0x2078(r27)
/* 80C0A8D4  C0 1B 20 60 */	lfs f0, 0x2060(r27)
/* 80C0A8D8  D0 1B 20 7C */	stfs f0, 0x207c(r27)
/* 80C0A8DC  C0 1B 20 64 */	lfs f0, 0x2064(r27)
/* 80C0A8E0  D0 1B 20 80 */	stfs f0, 0x2080(r27)
/* 80C0A8E4  C0 1B 20 68 */	lfs f0, 0x2068(r27)
/* 80C0A8E8  D0 1B 20 84 */	stfs f0, 0x2084(r27)
/* 80C0A8EC  C0 1B 20 6C */	lfs f0, 0x206c(r27)
/* 80C0A8F0  D0 1B 20 88 */	stfs f0, 0x2088(r27)
/* 80C0A8F4  48 00 02 B0 */	b lbl_80C0ABA4
lbl_80C0A8F8:
/* 80C0A8F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C0A8FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C0A900  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 80C0A904  4B 40 1A D8 */	b mDoMtx_YrotS__FPA4_fs
/* 80C0A908  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0A90C  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80C0A910  C0 1F 02 CC */	lfs f0, 0x2cc(r31)
/* 80C0A914  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80C0A918  C0 1F 02 D0 */	lfs f0, 0x2d0(r31)
/* 80C0A91C  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80C0A920  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C0A924  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C0A928  38 81 00 FC */	addi r4, r1, 0xfc
/* 80C0A92C  7C 85 23 78 */	mr r5, r4
/* 80C0A930  4B 73 C4 3C */	b PSMTXMultVec
/* 80C0A934  38 61 00 FC */	addi r3, r1, 0xfc
/* 80C0A938  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80C0A93C  7C 65 1B 78 */	mr r5, r3
/* 80C0A940  4B 73 C7 50 */	b PSVECAdd
/* 80C0A944  38 61 00 84 */	addi r3, r1, 0x84
/* 80C0A948  38 9B 20 74 */	addi r4, r27, 0x2074
/* 80C0A94C  38 A1 00 FC */	addi r5, r1, 0xfc
/* 80C0A950  4B 65 C1 E4 */	b __mi__4cXyzCFRC3Vec
/* 80C0A954  38 61 00 84 */	addi r3, r1, 0x84
/* 80C0A958  4B 73 C7 E0 */	b PSVECSquareMag
/* 80C0A95C  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0A960  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0A964  40 81 00 58 */	ble lbl_80C0A9BC
/* 80C0A968  FC 00 08 34 */	frsqrte f0, f1
/* 80C0A96C  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C0A970  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0A974  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C0A978  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0A97C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0A980  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0A984  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0A988  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0A98C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0A990  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0A994  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0A998  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0A99C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0A9A0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0A9A4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0A9A8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0A9AC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0A9B0  FC 41 00 32 */	fmul f2, f1, f0
/* 80C0A9B4  FC 40 10 18 */	frsp f2, f2
/* 80C0A9B8  48 00 00 90 */	b lbl_80C0AA48
lbl_80C0A9BC:
/* 80C0A9BC  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C0A9C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0A9C4  40 80 00 10 */	bge lbl_80C0A9D4
/* 80C0A9C8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C0A9CC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C0A9D0  48 00 00 78 */	b lbl_80C0AA48
lbl_80C0A9D4:
/* 80C0A9D4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C0A9D8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80C0A9DC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0A9E0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0A9E4  7C 03 00 00 */	cmpw r3, r0
/* 80C0A9E8  41 82 00 14 */	beq lbl_80C0A9FC
/* 80C0A9EC  40 80 00 40 */	bge lbl_80C0AA2C
/* 80C0A9F0  2C 03 00 00 */	cmpwi r3, 0
/* 80C0A9F4  41 82 00 20 */	beq lbl_80C0AA14
/* 80C0A9F8  48 00 00 34 */	b lbl_80C0AA2C
lbl_80C0A9FC:
/* 80C0A9FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0AA00  41 82 00 0C */	beq lbl_80C0AA0C
/* 80C0AA04  38 00 00 01 */	li r0, 1
/* 80C0AA08  48 00 00 28 */	b lbl_80C0AA30
lbl_80C0AA0C:
/* 80C0AA0C  38 00 00 02 */	li r0, 2
/* 80C0AA10  48 00 00 20 */	b lbl_80C0AA30
lbl_80C0AA14:
/* 80C0AA14  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0AA18  41 82 00 0C */	beq lbl_80C0AA24
/* 80C0AA1C  38 00 00 05 */	li r0, 5
/* 80C0AA20  48 00 00 10 */	b lbl_80C0AA30
lbl_80C0AA24:
/* 80C0AA24  38 00 00 03 */	li r0, 3
/* 80C0AA28  48 00 00 08 */	b lbl_80C0AA30
lbl_80C0AA2C:
/* 80C0AA2C  38 00 00 04 */	li r0, 4
lbl_80C0AA30:
/* 80C0AA30  2C 00 00 01 */	cmpwi r0, 1
/* 80C0AA34  40 82 00 10 */	bne lbl_80C0AA44
/* 80C0AA38  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C0AA3C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C0AA40  48 00 00 08 */	b lbl_80C0AA48
lbl_80C0AA44:
/* 80C0AA44  FC 40 08 90 */	fmr f2, f1
lbl_80C0AA48:
/* 80C0AA48  38 7B 20 58 */	addi r3, r27, 0x2058
/* 80C0AA4C  38 81 00 FC */	addi r4, r1, 0xfc
/* 80C0AA50  C0 3F 02 AC */	lfs f1, 0x2ac(r31)
/* 80C0AA54  C0 1F 02 20 */	lfs f0, 0x220(r31)
/* 80C0AA58  EC 42 00 24 */	fdivs f2, f2, f0
/* 80C0AA5C  4B 66 57 1C */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0AA60  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80C0AA64  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80C0AA68  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 80C0AA6C  D0 21 00 F4 */	stfs f1, 0xf4(r1)
/* 80C0AA70  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80C0AA74  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 80C0AA78  C0 1F 02 A0 */	lfs f0, 0x2a0(r31)
/* 80C0AA7C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C0AA80  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80C0AA84  38 61 00 78 */	addi r3, r1, 0x78
/* 80C0AA88  38 9B 20 80 */	addi r4, r27, 0x2080
/* 80C0AA8C  38 A1 00 F0 */	addi r5, r1, 0xf0
/* 80C0AA90  4B 65 C0 A4 */	b __mi__4cXyzCFRC3Vec
/* 80C0AA94  38 61 00 78 */	addi r3, r1, 0x78
/* 80C0AA98  4B 73 C6 A0 */	b PSVECSquareMag
/* 80C0AA9C  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0AAA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0AAA4  40 81 00 58 */	ble lbl_80C0AAFC
/* 80C0AAA8  FC 00 08 34 */	frsqrte f0, f1
/* 80C0AAAC  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C0AAB0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0AAB4  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C0AAB8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0AABC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0AAC0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0AAC4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0AAC8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0AACC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0AAD0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0AAD4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0AAD8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0AADC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0AAE0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0AAE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0AAE8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0AAEC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0AAF0  FC 41 00 32 */	fmul f2, f1, f0
/* 80C0AAF4  FC 40 10 18 */	frsp f2, f2
/* 80C0AAF8  48 00 00 90 */	b lbl_80C0AB88
lbl_80C0AAFC:
/* 80C0AAFC  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C0AB00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0AB04  40 80 00 10 */	bge lbl_80C0AB14
/* 80C0AB08  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C0AB0C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C0AB10  48 00 00 78 */	b lbl_80C0AB88
lbl_80C0AB14:
/* 80C0AB14  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C0AB18  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80C0AB1C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0AB20  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0AB24  7C 03 00 00 */	cmpw r3, r0
/* 80C0AB28  41 82 00 14 */	beq lbl_80C0AB3C
/* 80C0AB2C  40 80 00 40 */	bge lbl_80C0AB6C
/* 80C0AB30  2C 03 00 00 */	cmpwi r3, 0
/* 80C0AB34  41 82 00 20 */	beq lbl_80C0AB54
/* 80C0AB38  48 00 00 34 */	b lbl_80C0AB6C
lbl_80C0AB3C:
/* 80C0AB3C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0AB40  41 82 00 0C */	beq lbl_80C0AB4C
/* 80C0AB44  38 00 00 01 */	li r0, 1
/* 80C0AB48  48 00 00 28 */	b lbl_80C0AB70
lbl_80C0AB4C:
/* 80C0AB4C  38 00 00 02 */	li r0, 2
/* 80C0AB50  48 00 00 20 */	b lbl_80C0AB70
lbl_80C0AB54:
/* 80C0AB54  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0AB58  41 82 00 0C */	beq lbl_80C0AB64
/* 80C0AB5C  38 00 00 05 */	li r0, 5
/* 80C0AB60  48 00 00 10 */	b lbl_80C0AB70
lbl_80C0AB64:
/* 80C0AB64  38 00 00 03 */	li r0, 3
/* 80C0AB68  48 00 00 08 */	b lbl_80C0AB70
lbl_80C0AB6C:
/* 80C0AB6C  38 00 00 04 */	li r0, 4
lbl_80C0AB70:
/* 80C0AB70  2C 00 00 01 */	cmpwi r0, 1
/* 80C0AB74  40 82 00 10 */	bne lbl_80C0AB84
/* 80C0AB78  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C0AB7C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C0AB80  48 00 00 08 */	b lbl_80C0AB88
lbl_80C0AB84:
/* 80C0AB84  FC 40 08 90 */	fmr f2, f1
lbl_80C0AB88:
/* 80C0AB88  38 7B 20 64 */	addi r3, r27, 0x2064
/* 80C0AB8C  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80C0AB90  C0 3F 02 AC */	lfs f1, 0x2ac(r31)
/* 80C0AB94  C0 1F 02 20 */	lfs f0, 0x220(r31)
/* 80C0AB98  EC 42 00 24 */	fdivs f2, f2, f0
/* 80C0AB9C  4B 66 55 DC */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0ABA0  48 00 03 7C */	b lbl_80C0AF1C
lbl_80C0ABA4:
/* 80C0ABA4  38 7F 00 00 */	addi r3, r31, 0
/* 80C0ABA8  AB 83 00 B4 */	lha r28, 0xb4(r3)
/* 80C0ABAC  A8 1B 20 56 */	lha r0, 0x2056(r27)
/* 80C0ABB0  7C 00 E0 00 */	cmpw r0, r28
/* 80C0ABB4  41 80 00 78 */	blt lbl_80C0AC2C
/* 80C0ABB8  C0 1B 20 64 */	lfs f0, 0x2064(r27)
/* 80C0ABBC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80C0ABC0  C0 1B 20 68 */	lfs f0, 0x2068(r27)
/* 80C0ABC4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80C0ABC8  C0 1B 20 6C */	lfs f0, 0x206c(r27)
/* 80C0ABCC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80C0ABD0  C0 1B 20 58 */	lfs f0, 0x2058(r27)
/* 80C0ABD4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80C0ABD8  C0 1B 20 5C */	lfs f0, 0x205c(r27)
/* 80C0ABDC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80C0ABE0  C0 1B 20 60 */	lfs f0, 0x2060(r27)
/* 80C0ABE4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80C0ABE8  38 7D 02 48 */	addi r3, r29, 0x248
/* 80C0ABEC  38 81 00 6C */	addi r4, r1, 0x6c
/* 80C0ABF0  38 A1 00 60 */	addi r5, r1, 0x60
/* 80C0ABF4  4B 57 60 24 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 80C0ABF8  38 7D 02 48 */	addi r3, r29, 0x248
/* 80C0ABFC  4B 55 68 B0 */	b Start__9dCamera_cFv
/* 80C0AC00  38 7D 02 48 */	addi r3, r29, 0x248
/* 80C0AC04  38 80 00 00 */	li r4, 0
/* 80C0AC08  4B 55 84 04 */	b SetTrimSize__9dCamera_cFl
/* 80C0AC0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C0AC10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C0AC14  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80C0AC18  4B 43 78 50 */	b reset__14dEvt_control_cFv
/* 80C0AC1C  38 00 00 00 */	li r0, 0
/* 80C0AC20  B0 1B 20 54 */	sth r0, 0x2054(r27)
/* 80C0AC24  B0 1B 20 56 */	sth r0, 0x2056(r27)
/* 80C0AC28  48 00 02 F4 */	b lbl_80C0AF1C
lbl_80C0AC2C:
/* 80C0AC2C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C0AC30  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80C0AC34  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C0AC38  D0 21 00 E8 */	stfs f1, 0xe8(r1)
/* 80C0AC3C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C0AC40  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80C0AC44  C0 1F 02 A0 */	lfs f0, 0x2a0(r31)
/* 80C0AC48  EC 01 00 2A */	fadds f0, f1, f0
/* 80C0AC4C  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80C0AC50  38 61 00 54 */	addi r3, r1, 0x54
/* 80C0AC54  38 9B 20 80 */	addi r4, r27, 0x2080
/* 80C0AC58  38 A1 00 E4 */	addi r5, r1, 0xe4
/* 80C0AC5C  4B 65 BE D8 */	b __mi__4cXyzCFRC3Vec
/* 80C0AC60  38 61 00 54 */	addi r3, r1, 0x54
/* 80C0AC64  4B 73 C4 D4 */	b PSVECSquareMag
/* 80C0AC68  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0AC6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0AC70  40 81 00 58 */	ble lbl_80C0ACC8
/* 80C0AC74  FC 00 08 34 */	frsqrte f0, f1
/* 80C0AC78  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C0AC7C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0AC80  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C0AC84  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0AC88  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0AC8C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0AC90  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0AC94  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0AC98  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0AC9C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0ACA0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0ACA4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0ACA8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0ACAC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0ACB0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0ACB4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0ACB8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0ACBC  FC 21 00 32 */	fmul f1, f1, f0
/* 80C0ACC0  FC 20 08 18 */	frsp f1, f1
/* 80C0ACC4  48 00 00 88 */	b lbl_80C0AD4C
lbl_80C0ACC8:
/* 80C0ACC8  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C0ACCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0ACD0  40 80 00 10 */	bge lbl_80C0ACE0
/* 80C0ACD4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C0ACD8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80C0ACDC  48 00 00 70 */	b lbl_80C0AD4C
lbl_80C0ACE0:
/* 80C0ACE0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C0ACE4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C0ACE8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0ACEC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0ACF0  7C 03 00 00 */	cmpw r3, r0
/* 80C0ACF4  41 82 00 14 */	beq lbl_80C0AD08
/* 80C0ACF8  40 80 00 40 */	bge lbl_80C0AD38
/* 80C0ACFC  2C 03 00 00 */	cmpwi r3, 0
/* 80C0AD00  41 82 00 20 */	beq lbl_80C0AD20
/* 80C0AD04  48 00 00 34 */	b lbl_80C0AD38
lbl_80C0AD08:
/* 80C0AD08  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0AD0C  41 82 00 0C */	beq lbl_80C0AD18
/* 80C0AD10  38 00 00 01 */	li r0, 1
/* 80C0AD14  48 00 00 28 */	b lbl_80C0AD3C
lbl_80C0AD18:
/* 80C0AD18  38 00 00 02 */	li r0, 2
/* 80C0AD1C  48 00 00 20 */	b lbl_80C0AD3C
lbl_80C0AD20:
/* 80C0AD20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0AD24  41 82 00 0C */	beq lbl_80C0AD30
/* 80C0AD28  38 00 00 05 */	li r0, 5
/* 80C0AD2C  48 00 00 10 */	b lbl_80C0AD3C
lbl_80C0AD30:
/* 80C0AD30  38 00 00 03 */	li r0, 3
/* 80C0AD34  48 00 00 08 */	b lbl_80C0AD3C
lbl_80C0AD38:
/* 80C0AD38  38 00 00 04 */	li r0, 4
lbl_80C0AD3C:
/* 80C0AD3C  2C 00 00 01 */	cmpwi r0, 1
/* 80C0AD40  40 82 00 0C */	bne lbl_80C0AD4C
/* 80C0AD44  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C0AD48  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80C0AD4C:
/* 80C0AD4C  38 7B 20 64 */	addi r3, r27, 0x2064
/* 80C0AD50  38 81 00 E4 */	addi r4, r1, 0xe4
/* 80C0AD54  C8 5F 01 30 */	lfd f2, 0x130(r31)
/* 80C0AD58  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 80C0AD5C  90 01 01 3C */	stw r0, 0x13c(r1)
/* 80C0AD60  3C 00 43 30 */	lis r0, 0x4330
/* 80C0AD64  90 01 01 38 */	stw r0, 0x138(r1)
/* 80C0AD68  C8 01 01 38 */	lfd f0, 0x138(r1)
/* 80C0AD6C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C0AD70  EC 21 00 24 */	fdivs f1, f1, f0
/* 80C0AD74  4B 66 5A 38 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80C0AD78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C0AD7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C0AD80  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C0AD84  4B 40 16 58 */	b mDoMtx_YrotS__FPA4_fs
/* 80C0AD88  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0AD8C  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80C0AD90  C0 1F 02 D8 */	lfs f0, 0x2d8(r31)
/* 80C0AD94  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80C0AD98  C0 1F 02 DC */	lfs f0, 0x2dc(r31)
/* 80C0AD9C  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80C0ADA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C0ADA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C0ADA8  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80C0ADAC  7C 85 23 78 */	mr r5, r4
/* 80C0ADB0  4B 73 BF BC */	b PSMTXMultVec
/* 80C0ADB4  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80C0ADB8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C0ADBC  7C 65 1B 78 */	mr r5, r3
/* 80C0ADC0  4B 73 C2 D0 */	b PSVECAdd
/* 80C0ADC4  38 61 00 48 */	addi r3, r1, 0x48
/* 80C0ADC8  38 9B 20 74 */	addi r4, r27, 0x2074
/* 80C0ADCC  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 80C0ADD0  4B 65 BD 64 */	b __mi__4cXyzCFRC3Vec
/* 80C0ADD4  38 61 00 48 */	addi r3, r1, 0x48
/* 80C0ADD8  4B 73 C3 60 */	b PSVECSquareMag
/* 80C0ADDC  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0ADE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0ADE4  40 81 00 58 */	ble lbl_80C0AE3C
/* 80C0ADE8  FC 00 08 34 */	frsqrte f0, f1
/* 80C0ADEC  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C0ADF0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0ADF4  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C0ADF8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0ADFC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0AE00  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0AE04  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0AE08  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0AE0C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0AE10  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0AE14  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0AE18  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0AE1C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0AE20  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0AE24  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0AE28  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0AE2C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0AE30  FC 21 00 32 */	fmul f1, f1, f0
/* 80C0AE34  FC 20 08 18 */	frsp f1, f1
/* 80C0AE38  48 00 00 88 */	b lbl_80C0AEC0
lbl_80C0AE3C:
/* 80C0AE3C  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C0AE40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0AE44  40 80 00 10 */	bge lbl_80C0AE54
/* 80C0AE48  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C0AE4C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80C0AE50  48 00 00 70 */	b lbl_80C0AEC0
lbl_80C0AE54:
/* 80C0AE54  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C0AE58  80 81 00 08 */	lwz r4, 8(r1)
/* 80C0AE5C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0AE60  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0AE64  7C 03 00 00 */	cmpw r3, r0
/* 80C0AE68  41 82 00 14 */	beq lbl_80C0AE7C
/* 80C0AE6C  40 80 00 40 */	bge lbl_80C0AEAC
/* 80C0AE70  2C 03 00 00 */	cmpwi r3, 0
/* 80C0AE74  41 82 00 20 */	beq lbl_80C0AE94
/* 80C0AE78  48 00 00 34 */	b lbl_80C0AEAC
lbl_80C0AE7C:
/* 80C0AE7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0AE80  41 82 00 0C */	beq lbl_80C0AE8C
/* 80C0AE84  38 00 00 01 */	li r0, 1
/* 80C0AE88  48 00 00 28 */	b lbl_80C0AEB0
lbl_80C0AE8C:
/* 80C0AE8C  38 00 00 02 */	li r0, 2
/* 80C0AE90  48 00 00 20 */	b lbl_80C0AEB0
lbl_80C0AE94:
/* 80C0AE94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0AE98  41 82 00 0C */	beq lbl_80C0AEA4
/* 80C0AE9C  38 00 00 05 */	li r0, 5
/* 80C0AEA0  48 00 00 10 */	b lbl_80C0AEB0
lbl_80C0AEA4:
/* 80C0AEA4  38 00 00 03 */	li r0, 3
/* 80C0AEA8  48 00 00 08 */	b lbl_80C0AEB0
lbl_80C0AEAC:
/* 80C0AEAC  38 00 00 04 */	li r0, 4
lbl_80C0AEB0:
/* 80C0AEB0  2C 00 00 01 */	cmpwi r0, 1
/* 80C0AEB4  40 82 00 0C */	bne lbl_80C0AEC0
/* 80C0AEB8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C0AEBC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80C0AEC0:
/* 80C0AEC0  38 7B 20 58 */	addi r3, r27, 0x2058
/* 80C0AEC4  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80C0AEC8  C8 5F 01 30 */	lfd f2, 0x130(r31)
/* 80C0AECC  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 80C0AED0  90 01 01 3C */	stw r0, 0x13c(r1)
/* 80C0AED4  3C 00 43 30 */	lis r0, 0x4330
/* 80C0AED8  90 01 01 38 */	stw r0, 0x138(r1)
/* 80C0AEDC  C8 01 01 38 */	lfd f0, 0x138(r1)
/* 80C0AEE0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C0AEE4  EC 21 00 24 */	fdivs f1, f1, f0
/* 80C0AEE8  4B 66 58 C4 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80C0AEEC  C0 7B 20 70 */	lfs f3, 0x2070(r27)
/* 80C0AEF0  C0 5F 02 E0 */	lfs f2, 0x2e0(r31)
/* 80C0AEF4  C8 3F 01 30 */	lfd f1, 0x130(r31)
/* 80C0AEF8  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 80C0AEFC  90 01 01 44 */	stw r0, 0x144(r1)
/* 80C0AF00  3C 00 43 30 */	lis r0, 0x4330
/* 80C0AF04  90 01 01 40 */	stw r0, 0x140(r1)
/* 80C0AF08  C8 01 01 40 */	lfd f0, 0x140(r1)
/* 80C0AF0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C0AF10  EC 02 00 24 */	fdivs f0, f2, f0
/* 80C0AF14  EC 03 00 2A */	fadds f0, f3, f0
/* 80C0AF18  D0 1B 20 70 */	stfs f0, 0x2070(r27)
lbl_80C0AF1C:
/* 80C0AF1C  A8 1B 20 54 */	lha r0, 0x2054(r27)
/* 80C0AF20  2C 00 00 00 */	cmpwi r0, 0
/* 80C0AF24  41 82 00 58 */	beq lbl_80C0AF7C
/* 80C0AF28  C0 1B 20 64 */	lfs f0, 0x2064(r27)
/* 80C0AF2C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C0AF30  C0 1B 20 68 */	lfs f0, 0x2068(r27)
/* 80C0AF34  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C0AF38  C0 1B 20 6C */	lfs f0, 0x206c(r27)
/* 80C0AF3C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C0AF40  C0 1B 20 58 */	lfs f0, 0x2058(r27)
/* 80C0AF44  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C0AF48  C0 1B 20 5C */	lfs f0, 0x205c(r27)
/* 80C0AF4C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C0AF50  C0 1B 20 60 */	lfs f0, 0x2060(r27)
/* 80C0AF54  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C0AF58  38 7D 02 48 */	addi r3, r29, 0x248
/* 80C0AF5C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80C0AF60  38 A1 00 30 */	addi r5, r1, 0x30
/* 80C0AF64  C0 3B 20 70 */	lfs f1, 0x2070(r27)
/* 80C0AF68  38 C0 00 00 */	li r6, 0
/* 80C0AF6C  4B 57 5B 74 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 80C0AF70  A8 7B 20 56 */	lha r3, 0x2056(r27)
/* 80C0AF74  38 03 00 01 */	addi r0, r3, 1
/* 80C0AF78  B0 1B 20 56 */	sth r0, 0x2056(r27)
lbl_80C0AF7C:
/* 80C0AF7C  39 61 01 60 */	addi r11, r1, 0x160
/* 80C0AF80  4B 75 72 A0 */	b _restgpr_27
/* 80C0AF84  80 01 01 64 */	lwz r0, 0x164(r1)
/* 80C0AF88  7C 08 03 A6 */	mtlr r0
/* 80C0AF8C  38 21 01 60 */	addi r1, r1, 0x160
/* 80C0AF90  4E 80 00 20 */	blr 
