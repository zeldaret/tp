lbl_8050C2D8:
/* 8050C2D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8050C2DC  7C 08 02 A6 */	mflr r0
/* 8050C2E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8050C2E4  39 61 00 40 */	addi r11, r1, 0x40
/* 8050C2E8  4B E5 5E F5 */	bl _savegpr_29
/* 8050C2EC  7C 7F 1B 78 */	mr r31, r3
/* 8050C2F0  7C 9D 23 78 */	mr r29, r4
/* 8050C2F4  3C 80 80 52 */	lis r4, lit_4208@ha /* 0x80518584@ha */
/* 8050C2F8  3B C4 85 84 */	addi r30, r4, lit_4208@l /* 0x80518584@l */
/* 8050C2FC  4B B0 C9 E5 */	bl fopAc_IsActor__FPv
/* 8050C300  2C 03 00 00 */	cmpwi r3, 0
/* 8050C304  41 82 01 90 */	beq lbl_8050C494
/* 8050C308  A8 1F 00 08 */	lha r0, 8(r31)
/* 8050C30C  2C 00 01 D4 */	cmpwi r0, 0x1d4
/* 8050C310  40 82 01 84 */	bne lbl_8050C494
/* 8050C314  7C 1F E8 40 */	cmplw r31, r29
/* 8050C318  41 82 01 7C */	beq lbl_8050C494
/* 8050C31C  A8 1F 09 72 */	lha r0, 0x972(r31)
/* 8050C320  2C 00 00 1A */	cmpwi r0, 0x1a
/* 8050C324  40 82 01 70 */	bne lbl_8050C494
/* 8050C328  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 8050C32C  2C 00 00 02 */	cmpwi r0, 2
/* 8050C330  41 81 01 64 */	bgt lbl_8050C494
/* 8050C334  38 61 00 0C */	addi r3, r1, 0xc
/* 8050C338  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8050C33C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8050C340  4B D5 A7 F5 */	bl __mi__4cXyzCFRC3Vec
/* 8050C344  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8050C348  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8050C34C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8050C350  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8050C354  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8050C358  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8050C35C  38 61 00 18 */	addi r3, r1, 0x18
/* 8050C360  4B E3 AD D9 */	bl PSVECSquareMag
/* 8050C364  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8050C368  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050C36C  40 81 00 58 */	ble lbl_8050C3C4
/* 8050C370  FC 00 08 34 */	frsqrte f0, f1
/* 8050C374  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8050C378  FC 44 00 32 */	fmul f2, f4, f0
/* 8050C37C  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8050C380  FC 00 00 32 */	fmul f0, f0, f0
/* 8050C384  FC 01 00 32 */	fmul f0, f1, f0
/* 8050C388  FC 03 00 28 */	fsub f0, f3, f0
/* 8050C38C  FC 02 00 32 */	fmul f0, f2, f0
/* 8050C390  FC 44 00 32 */	fmul f2, f4, f0
/* 8050C394  FC 00 00 32 */	fmul f0, f0, f0
/* 8050C398  FC 01 00 32 */	fmul f0, f1, f0
/* 8050C39C  FC 03 00 28 */	fsub f0, f3, f0
/* 8050C3A0  FC 02 00 32 */	fmul f0, f2, f0
/* 8050C3A4  FC 44 00 32 */	fmul f2, f4, f0
/* 8050C3A8  FC 00 00 32 */	fmul f0, f0, f0
/* 8050C3AC  FC 01 00 32 */	fmul f0, f1, f0
/* 8050C3B0  FC 03 00 28 */	fsub f0, f3, f0
/* 8050C3B4  FC 02 00 32 */	fmul f0, f2, f0
/* 8050C3B8  FC 21 00 32 */	fmul f1, f1, f0
/* 8050C3BC  FC 20 08 18 */	frsp f1, f1
/* 8050C3C0  48 00 00 88 */	b lbl_8050C448
lbl_8050C3C4:
/* 8050C3C4  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8050C3C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050C3CC  40 80 00 10 */	bge lbl_8050C3DC
/* 8050C3D0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8050C3D4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8050C3D8  48 00 00 70 */	b lbl_8050C448
lbl_8050C3DC:
/* 8050C3DC  D0 21 00 08 */	stfs f1, 8(r1)
/* 8050C3E0  80 81 00 08 */	lwz r4, 8(r1)
/* 8050C3E4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8050C3E8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8050C3EC  7C 03 00 00 */	cmpw r3, r0
/* 8050C3F0  41 82 00 14 */	beq lbl_8050C404
/* 8050C3F4  40 80 00 40 */	bge lbl_8050C434
/* 8050C3F8  2C 03 00 00 */	cmpwi r3, 0
/* 8050C3FC  41 82 00 20 */	beq lbl_8050C41C
/* 8050C400  48 00 00 34 */	b lbl_8050C434
lbl_8050C404:
/* 8050C404  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8050C408  41 82 00 0C */	beq lbl_8050C414
/* 8050C40C  38 00 00 01 */	li r0, 1
/* 8050C410  48 00 00 28 */	b lbl_8050C438
lbl_8050C414:
/* 8050C414  38 00 00 02 */	li r0, 2
/* 8050C418  48 00 00 20 */	b lbl_8050C438
lbl_8050C41C:
/* 8050C41C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8050C420  41 82 00 0C */	beq lbl_8050C42C
/* 8050C424  38 00 00 05 */	li r0, 5
/* 8050C428  48 00 00 10 */	b lbl_8050C438
lbl_8050C42C:
/* 8050C42C  38 00 00 03 */	li r0, 3
/* 8050C430  48 00 00 08 */	b lbl_8050C438
lbl_8050C434:
/* 8050C434  38 00 00 04 */	li r0, 4
lbl_8050C438:
/* 8050C438  2C 00 00 01 */	cmpwi r0, 1
/* 8050C43C  40 82 00 0C */	bne lbl_8050C448
/* 8050C440  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8050C444  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8050C448:
/* 8050C448  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 8050C44C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050C450  40 80 00 44 */	bge lbl_8050C494
/* 8050C454  7F E3 FB 78 */	mr r3, r31
/* 8050C458  38 80 00 1D */	li r4, 0x1d
/* 8050C45C  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8050C460  38 A0 00 02 */	li r5, 2
/* 8050C464  C0 5E 01 3C */	lfs f2, 0x13c(r30)
/* 8050C468  4B FF 87 6D */	bl anm_init__FP10e_rd_classifUcf
/* 8050C46C  38 00 00 03 */	li r0, 3
/* 8050C470  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 8050C474  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 8050C478  4B D5 B4 DD */	bl cM_rndF__Ff
/* 8050C47C  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 8050C480  EC 00 08 2A */	fadds f0, f0, f1
/* 8050C484  FC 00 00 1E */	fctiwz f0, f0
/* 8050C488  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8050C48C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8050C490  B0 1F 09 90 */	sth r0, 0x990(r31)
lbl_8050C494:
/* 8050C494  38 60 00 00 */	li r3, 0
/* 8050C498  39 61 00 40 */	addi r11, r1, 0x40
/* 8050C49C  4B E5 5D 8D */	bl _restgpr_29
/* 8050C4A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8050C4A4  7C 08 03 A6 */	mtlr r0
/* 8050C4A8  38 21 00 40 */	addi r1, r1, 0x40
/* 8050C4AC  4E 80 00 20 */	blr 
