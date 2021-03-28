lbl_8052C230:
/* 8052C230  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8052C234  7C 08 02 A6 */	mflr r0
/* 8052C238  90 01 00 44 */	stw r0, 0x44(r1)
/* 8052C23C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8052C240  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8052C244  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8052C248  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8052C24C  7C 7E 1B 78 */	mr r30, r3
/* 8052C250  3C 80 80 53 */	lis r4, lit_3679@ha
/* 8052C254  3B E4 61 68 */	addi r31, r4, lit_3679@l
/* 8052C258  C3 FF 00 00 */	lfs f31, 0(r31)
/* 8052C25C  A8 03 05 B8 */	lha r0, 0x5b8(r3)
/* 8052C260  2C 00 00 02 */	cmpwi r0, 2
/* 8052C264  41 82 00 E4 */	beq lbl_8052C348
/* 8052C268  40 80 00 14 */	bge lbl_8052C27C
/* 8052C26C  2C 00 00 00 */	cmpwi r0, 0
/* 8052C270  41 82 00 18 */	beq lbl_8052C288
/* 8052C274  40 80 00 54 */	bge lbl_8052C2C8
/* 8052C278  48 00 02 8C */	b lbl_8052C504
lbl_8052C27C:
/* 8052C27C  2C 00 00 0A */	cmpwi r0, 0xa
/* 8052C280  41 82 02 80 */	beq lbl_8052C500
/* 8052C284  48 00 02 80 */	b lbl_8052C504
lbl_8052C288:
/* 8052C288  4B FF FD 71 */	bl path_search__FP13mg_fish_class
/* 8052C28C  B0 7E 05 D2 */	sth r3, 0x5d2(r30)
/* 8052C290  A8 1E 05 D2 */	lha r0, 0x5d2(r30)
/* 8052C294  2C 00 00 00 */	cmpwi r0, 0
/* 8052C298  40 80 00 28 */	bge lbl_8052C2C0
/* 8052C29C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8052C2A0  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 8052C2A4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8052C2A8  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 8052C2AC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8052C2B0  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 8052C2B4  38 00 00 0A */	li r0, 0xa
/* 8052C2B8  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052C2BC  48 00 02 98 */	b lbl_8052C554
lbl_8052C2C0:
/* 8052C2C0  38 00 00 01 */	li r0, 1
/* 8052C2C4  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
lbl_8052C2C8:
/* 8052C2C8  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8052C2CC  4B D3 B6 C0 */	b cM_rndFX__Ff
/* 8052C2D0  3C 60 80 53 */	lis r3, swim_path127@ha
/* 8052C2D4  38 63 64 E4 */	addi r3, r3, swim_path127@l
/* 8052C2D8  A8 1E 05 D2 */	lha r0, 0x5d2(r30)
/* 8052C2DC  54 00 20 36 */	slwi r0, r0, 4
/* 8052C2E0  7C 63 02 14 */	add r3, r3, r0
/* 8052C2E4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8052C2E8  EC 00 08 2A */	fadds f0, f0, f1
/* 8052C2EC  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 8052C2F0  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 8052C2F4  4B D3 B6 98 */	b cM_rndFX__Ff
/* 8052C2F8  3C 60 80 53 */	lis r3, swim_path127@ha
/* 8052C2FC  38 63 64 E4 */	addi r3, r3, swim_path127@l
/* 8052C300  A8 1E 05 D2 */	lha r0, 0x5d2(r30)
/* 8052C304  54 00 20 36 */	slwi r0, r0, 4
/* 8052C308  7C 63 02 14 */	add r3, r3, r0
/* 8052C30C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8052C310  EC 00 08 2A */	fadds f0, f0, f1
/* 8052C314  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 8052C318  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8052C31C  4B D3 B6 70 */	b cM_rndFX__Ff
/* 8052C320  3C 60 80 53 */	lis r3, swim_path127@ha
/* 8052C324  38 63 64 E4 */	addi r3, r3, swim_path127@l
/* 8052C328  A8 1E 05 D2 */	lha r0, 0x5d2(r30)
/* 8052C32C  54 00 20 36 */	slwi r0, r0, 4
/* 8052C330  7C 63 02 14 */	add r3, r3, r0
/* 8052C334  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8052C338  EC 00 08 2A */	fadds f0, f0, f1
/* 8052C33C  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 8052C340  38 00 00 02 */	li r0, 2
/* 8052C344  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
lbl_8052C348:
/* 8052C348  38 61 00 0C */	addi r3, r1, 0xc
/* 8052C34C  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8052C350  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8052C354  4B D3 A7 E0 */	b __mi__4cXyzCFRC3Vec
/* 8052C358  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8052C35C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8052C360  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8052C364  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8052C368  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8052C36C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8052C370  4B D3 B3 04 */	b cM_atan2s__Fff
/* 8052C374  B0 7E 05 CC */	sth r3, 0x5cc(r30)
/* 8052C378  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8052C37C  EC 20 00 32 */	fmuls f1, f0, f0
/* 8052C380  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8052C384  EC 00 00 32 */	fmuls f0, f0, f0
/* 8052C388  EC 41 00 2A */	fadds f2, f1, f0
/* 8052C38C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052C390  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052C394  40 81 00 0C */	ble lbl_8052C3A0
/* 8052C398  FC 00 10 34 */	frsqrte f0, f2
/* 8052C39C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8052C3A0:
/* 8052C3A0  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8052C3A4  4B D3 B2 D0 */	b cM_atan2s__Fff
/* 8052C3A8  7C 03 00 D0 */	neg r0, r3
/* 8052C3AC  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 8052C3B0  38 61 00 18 */	addi r3, r1, 0x18
/* 8052C3B4  4B E1 AD 84 */	b PSVECSquareMag
/* 8052C3B8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052C3BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052C3C0  40 81 00 58 */	ble lbl_8052C418
/* 8052C3C4  FC 00 08 34 */	frsqrte f0, f1
/* 8052C3C8  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 8052C3CC  FC 44 00 32 */	fmul f2, f4, f0
/* 8052C3D0  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 8052C3D4  FC 00 00 32 */	fmul f0, f0, f0
/* 8052C3D8  FC 01 00 32 */	fmul f0, f1, f0
/* 8052C3DC  FC 03 00 28 */	fsub f0, f3, f0
/* 8052C3E0  FC 02 00 32 */	fmul f0, f2, f0
/* 8052C3E4  FC 44 00 32 */	fmul f2, f4, f0
/* 8052C3E8  FC 00 00 32 */	fmul f0, f0, f0
/* 8052C3EC  FC 01 00 32 */	fmul f0, f1, f0
/* 8052C3F0  FC 03 00 28 */	fsub f0, f3, f0
/* 8052C3F4  FC 02 00 32 */	fmul f0, f2, f0
/* 8052C3F8  FC 44 00 32 */	fmul f2, f4, f0
/* 8052C3FC  FC 00 00 32 */	fmul f0, f0, f0
/* 8052C400  FC 01 00 32 */	fmul f0, f1, f0
/* 8052C404  FC 03 00 28 */	fsub f0, f3, f0
/* 8052C408  FC 02 00 32 */	fmul f0, f2, f0
/* 8052C40C  FC 21 00 32 */	fmul f1, f1, f0
/* 8052C410  FC 20 08 18 */	frsp f1, f1
/* 8052C414  48 00 00 88 */	b lbl_8052C49C
lbl_8052C418:
/* 8052C418  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 8052C41C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052C420  40 80 00 10 */	bge lbl_8052C430
/* 8052C424  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8052C428  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8052C42C  48 00 00 70 */	b lbl_8052C49C
lbl_8052C430:
/* 8052C430  D0 21 00 08 */	stfs f1, 8(r1)
/* 8052C434  80 81 00 08 */	lwz r4, 8(r1)
/* 8052C438  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8052C43C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8052C440  7C 03 00 00 */	cmpw r3, r0
/* 8052C444  41 82 00 14 */	beq lbl_8052C458
/* 8052C448  40 80 00 40 */	bge lbl_8052C488
/* 8052C44C  2C 03 00 00 */	cmpwi r3, 0
/* 8052C450  41 82 00 20 */	beq lbl_8052C470
/* 8052C454  48 00 00 34 */	b lbl_8052C488
lbl_8052C458:
/* 8052C458  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052C45C  41 82 00 0C */	beq lbl_8052C468
/* 8052C460  38 00 00 01 */	li r0, 1
/* 8052C464  48 00 00 28 */	b lbl_8052C48C
lbl_8052C468:
/* 8052C468  38 00 00 02 */	li r0, 2
/* 8052C46C  48 00 00 20 */	b lbl_8052C48C
lbl_8052C470:
/* 8052C470  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052C474  41 82 00 0C */	beq lbl_8052C480
/* 8052C478  38 00 00 05 */	li r0, 5
/* 8052C47C  48 00 00 10 */	b lbl_8052C48C
lbl_8052C480:
/* 8052C480  38 00 00 03 */	li r0, 3
/* 8052C484  48 00 00 08 */	b lbl_8052C48C
lbl_8052C488:
/* 8052C488  38 00 00 04 */	li r0, 4
lbl_8052C48C:
/* 8052C48C  2C 00 00 01 */	cmpwi r0, 1
/* 8052C490  40 82 00 0C */	bne lbl_8052C49C
/* 8052C494  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8052C498  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8052C49C:
/* 8052C49C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8052C4A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052C4A4  40 80 00 44 */	bge lbl_8052C4E8
/* 8052C4A8  38 00 00 01 */	li r0, 1
/* 8052C4AC  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052C4B0  A8 7E 05 D2 */	lha r3, 0x5d2(r30)
/* 8052C4B4  38 03 00 01 */	addi r0, r3, 1
/* 8052C4B8  B0 1E 05 D2 */	sth r0, 0x5d2(r30)
/* 8052C4BC  38 80 00 00 */	li r4, 0
/* 8052C4C0  B0 9E 05 D0 */	sth r4, 0x5d0(r30)
/* 8052C4C4  A8 1E 05 D2 */	lha r0, 0x5d2(r30)
/* 8052C4C8  54 00 20 36 */	slwi r0, r0, 4
/* 8052C4CC  3C 60 80 53 */	lis r3, swim_path127@ha
/* 8052C4D0  38 63 64 E4 */	addi r3, r3, swim_path127@l
/* 8052C4D4  7C 03 02 AE */	lhax r0, r3, r0
/* 8052C4D8  2C 00 00 00 */	cmpwi r0, 0
/* 8052C4DC  40 80 00 28 */	bge lbl_8052C504
/* 8052C4E0  B0 9E 05 D2 */	sth r4, 0x5d2(r30)
/* 8052C4E4  48 00 00 20 */	b lbl_8052C504
lbl_8052C4E8:
/* 8052C4E8  80 1E 08 FC */	lwz r0, 0x8fc(r30)
/* 8052C4EC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8052C4F0  41 82 00 14 */	beq lbl_8052C504
/* 8052C4F4  38 00 00 00 */	li r0, 0
/* 8052C4F8  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052C4FC  48 00 00 08 */	b lbl_8052C504
lbl_8052C500:
/* 8052C500  C3 FF 00 18 */	lfs f31, 0x18(r31)
lbl_8052C504:
/* 8052C504  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8052C508  FC 20 F8 90 */	fmr f1, f31
/* 8052C50C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8052C510  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 8052C514  4B D4 35 28 */	b cLib_addCalc2__FPffff
/* 8052C518  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 8052C51C  38 80 04 00 */	li r4, 0x400
/* 8052C520  38 A0 00 04 */	li r5, 4
/* 8052C524  38 C0 00 20 */	li r6, 0x20
/* 8052C528  4B D4 40 E0 */	b cLib_addCalcAngleS2__FPssss
/* 8052C52C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8052C530  A8 9E 05 CC */	lha r4, 0x5cc(r30)
/* 8052C534  38 A0 00 02 */	li r5, 2
/* 8052C538  A8 DE 05 D0 */	lha r6, 0x5d0(r30)
/* 8052C53C  4B D4 40 CC */	b cLib_addCalcAngleS2__FPssss
/* 8052C540  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 8052C544  A8 9E 05 CE */	lha r4, 0x5ce(r30)
/* 8052C548  38 A0 00 02 */	li r5, 2
/* 8052C54C  A8 DE 05 D0 */	lha r6, 0x5d0(r30)
/* 8052C550  4B D4 40 B8 */	b cLib_addCalcAngleS2__FPssss
lbl_8052C554:
/* 8052C554  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8052C558  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8052C55C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8052C560  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8052C564  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052C568  7C 08 03 A6 */	mtlr r0
/* 8052C56C  38 21 00 40 */	addi r1, r1, 0x40
/* 8052C570  4E 80 00 20 */	blr 
