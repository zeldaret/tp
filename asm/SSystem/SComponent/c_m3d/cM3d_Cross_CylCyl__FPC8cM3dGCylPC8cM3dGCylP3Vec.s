lbl_8026C3B4:
/* 8026C3B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026C3B8  C0 23 00 00 */	lfs f1, 0(r3)
/* 8026C3BC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8026C3C0  EC 41 00 28 */	fsubs f2, f1, f0
/* 8026C3C4  C0 23 00 08 */	lfs f1, 8(r3)
/* 8026C3C8  C0 04 00 08 */	lfs f0, 8(r4)
/* 8026C3CC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8026C3D0  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8026C3D4  EC 00 00 32 */	fmuls f0, f0, f0
/* 8026C3D8  EC 81 00 2A */	fadds f4, f1, f0
/* 8026C3DC  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8026C3E0  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8026C3E4  EC 01 00 2A */	fadds f0, f1, f0
/* 8026C3E8  EC 00 00 32 */	fmuls f0, f0, f0
/* 8026C3EC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8026C3F0  40 81 00 0C */	ble lbl_8026C3FC
/* 8026C3F4  38 60 00 00 */	li r3, 0
/* 8026C3F8  48 00 01 D0 */	b lbl_8026C5C8
lbl_8026C3FC:
/* 8026C3FC  C0 43 00 04 */	lfs f2, 4(r3)
/* 8026C400  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8026C404  EC 02 00 2A */	fadds f0, f2, f0
/* 8026C408  C0 24 00 04 */	lfs f1, 4(r4)
/* 8026C40C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026C410  41 80 00 14 */	blt lbl_8026C424
/* 8026C414  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8026C418  EC 01 00 2A */	fadds f0, f1, f0
/* 8026C41C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8026C420  40 81 00 0C */	ble lbl_8026C42C
lbl_8026C424:
/* 8026C424  38 60 00 00 */	li r3, 0
/* 8026C428  48 00 01 A0 */	b lbl_8026C5C8
lbl_8026C42C:
/* 8026C42C  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026C430  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8026C434  40 81 00 58 */	ble lbl_8026C48C
/* 8026C438  FC 00 20 34 */	frsqrte f0, f4
/* 8026C43C  C8 62 B7 20 */	lfd f3, lit_2257(r2)
/* 8026C440  FC 23 00 32 */	fmul f1, f3, f0
/* 8026C444  C8 42 B7 28 */	lfd f2, lit_2258(r2)
/* 8026C448  FC 00 00 32 */	fmul f0, f0, f0
/* 8026C44C  FC 04 00 32 */	fmul f0, f4, f0
/* 8026C450  FC 02 00 28 */	fsub f0, f2, f0
/* 8026C454  FC 01 00 32 */	fmul f0, f1, f0
/* 8026C458  FC 23 00 32 */	fmul f1, f3, f0
/* 8026C45C  FC 00 00 32 */	fmul f0, f0, f0
/* 8026C460  FC 04 00 32 */	fmul f0, f4, f0
/* 8026C464  FC 02 00 28 */	fsub f0, f2, f0
/* 8026C468  FC 01 00 32 */	fmul f0, f1, f0
/* 8026C46C  FC 23 00 32 */	fmul f1, f3, f0
/* 8026C470  FC 00 00 32 */	fmul f0, f0, f0
/* 8026C474  FC 04 00 32 */	fmul f0, f4, f0
/* 8026C478  FC 02 00 28 */	fsub f0, f2, f0
/* 8026C47C  FC 01 00 32 */	fmul f0, f1, f0
/* 8026C480  FC 44 00 32 */	fmul f2, f4, f0
/* 8026C484  FC 40 10 18 */	frsp f2, f2
/* 8026C488  48 00 00 90 */	b lbl_8026C518
lbl_8026C48C:
/* 8026C48C  C8 02 B7 30 */	lfd f0, lit_2259(r2)
/* 8026C490  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8026C494  40 80 00 10 */	bge lbl_8026C4A4
/* 8026C498  3C C0 80 45 */	lis r6, __float_nan@ha
/* 8026C49C  C0 46 0A E0 */	lfs f2, __float_nan@l(r6)
/* 8026C4A0  48 00 00 78 */	b lbl_8026C518
lbl_8026C4A4:
/* 8026C4A4  D0 81 00 08 */	stfs f4, 8(r1)
/* 8026C4A8  80 E1 00 08 */	lwz r7, 8(r1)
/* 8026C4AC  54 E6 00 50 */	rlwinm r6, r7, 0, 1, 8
/* 8026C4B0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8026C4B4  7C 06 00 00 */	cmpw r6, r0
/* 8026C4B8  41 82 00 14 */	beq lbl_8026C4CC
/* 8026C4BC  40 80 00 40 */	bge lbl_8026C4FC
/* 8026C4C0  2C 06 00 00 */	cmpwi r6, 0
/* 8026C4C4  41 82 00 20 */	beq lbl_8026C4E4
/* 8026C4C8  48 00 00 34 */	b lbl_8026C4FC
lbl_8026C4CC:
/* 8026C4CC  54 E0 02 7F */	clrlwi. r0, r7, 9
/* 8026C4D0  41 82 00 0C */	beq lbl_8026C4DC
/* 8026C4D4  38 00 00 01 */	li r0, 1
/* 8026C4D8  48 00 00 28 */	b lbl_8026C500
lbl_8026C4DC:
/* 8026C4DC  38 00 00 02 */	li r0, 2
/* 8026C4E0  48 00 00 20 */	b lbl_8026C500
lbl_8026C4E4:
/* 8026C4E4  54 E0 02 7F */	clrlwi. r0, r7, 9
/* 8026C4E8  41 82 00 0C */	beq lbl_8026C4F4
/* 8026C4EC  38 00 00 05 */	li r0, 5
/* 8026C4F0  48 00 00 10 */	b lbl_8026C500
lbl_8026C4F4:
/* 8026C4F4  38 00 00 03 */	li r0, 3
/* 8026C4F8  48 00 00 08 */	b lbl_8026C500
lbl_8026C4FC:
/* 8026C4FC  38 00 00 04 */	li r0, 4
lbl_8026C500:
/* 8026C500  2C 00 00 01 */	cmpwi r0, 1
/* 8026C504  40 82 00 10 */	bne lbl_8026C514
/* 8026C508  3C C0 80 45 */	lis r6, __float_nan@ha
/* 8026C50C  C0 46 0A E0 */	lfs f2, __float_nan@l(r6)
/* 8026C510  48 00 00 08 */	b lbl_8026C518
lbl_8026C514:
/* 8026C514  FC 40 20 90 */	fmr f2, f4
lbl_8026C518:
/* 8026C518  FC 00 12 10 */	fabs f0, f2
/* 8026C51C  FC 20 00 18 */	frsp f1, f0
/* 8026C520  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026C524  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026C528  41 80 00 84 */	blt lbl_8026C5AC
/* 8026C52C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8026C530  EC 60 10 24 */	fdivs f3, f0, f2
/* 8026C534  C0 44 00 04 */	lfs f2, 4(r4)
/* 8026C538  C0 22 B7 C4 */	lfs f1, lit_3892(r2)
/* 8026C53C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8026C540  EC 01 00 32 */	fmuls f0, f1, f0
/* 8026C544  EC 02 00 2A */	fadds f0, f2, f0
/* 8026C548  D0 05 00 04 */	stfs f0, 4(r5)
/* 8026C54C  C0 43 00 04 */	lfs f2, 4(r3)
/* 8026C550  C0 25 00 04 */	lfs f1, 4(r5)
/* 8026C554  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8026C558  40 80 00 0C */	bge lbl_8026C564
/* 8026C55C  D0 45 00 04 */	stfs f2, 4(r5)
/* 8026C560  48 00 00 18 */	b lbl_8026C578
lbl_8026C564:
/* 8026C564  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8026C568  EC 42 00 2A */	fadds f2, f2, f0
/* 8026C56C  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8026C570  40 81 00 08 */	ble lbl_8026C578
/* 8026C574  D0 45 00 04 */	stfs f2, 4(r5)
lbl_8026C578:
/* 8026C578  C0 24 00 00 */	lfs f1, 0(r4)
/* 8026C57C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8026C580  EC 00 08 28 */	fsubs f0, f0, f1
/* 8026C584  EC 03 00 32 */	fmuls f0, f3, f0
/* 8026C588  EC 01 00 2A */	fadds f0, f1, f0
/* 8026C58C  D0 05 00 00 */	stfs f0, 0(r5)
/* 8026C590  C0 24 00 08 */	lfs f1, 8(r4)
/* 8026C594  C0 03 00 08 */	lfs f0, 8(r3)
/* 8026C598  EC 00 08 28 */	fsubs f0, f0, f1
/* 8026C59C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8026C5A0  EC 01 00 2A */	fadds f0, f1, f0
/* 8026C5A4  D0 05 00 08 */	stfs f0, 8(r5)
/* 8026C5A8  48 00 00 1C */	b lbl_8026C5C4
lbl_8026C5AC:
/* 8026C5AC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8026C5B0  D0 05 00 00 */	stfs f0, 0(r5)
/* 8026C5B4  C0 04 00 04 */	lfs f0, 4(r4)
/* 8026C5B8  D0 05 00 04 */	stfs f0, 4(r5)
/* 8026C5BC  C0 04 00 08 */	lfs f0, 8(r4)
/* 8026C5C0  D0 05 00 08 */	stfs f0, 8(r5)
lbl_8026C5C4:
/* 8026C5C4  38 60 00 01 */	li r3, 1
lbl_8026C5C8:
/* 8026C5C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8026C5CC  4E 80 00 20 */	blr 
