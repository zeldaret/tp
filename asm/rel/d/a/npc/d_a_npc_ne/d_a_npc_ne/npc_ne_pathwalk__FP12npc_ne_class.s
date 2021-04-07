lbl_80A8C094:
/* 80A8C094  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A8C098  7C 08 02 A6 */	mflr r0
/* 80A8C09C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A8C0A0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80A8C0A4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80A8C0A8  39 61 00 50 */	addi r11, r1, 0x50
/* 80A8C0AC  4B 8D 61 31 */	bl _savegpr_29
/* 80A8C0B0  7C 7E 1B 78 */	mr r30, r3
/* 80A8C0B4  3C 80 80 A9 */	lis r4, lit_3990@ha /* 0x80A9241C@ha */
/* 80A8C0B8  3B E4 24 1C */	addi r31, r4, lit_3990@l /* 0x80A9241C@l */
/* 80A8C0BC  A8 03 06 46 */	lha r0, 0x646(r3)
/* 80A8C0C0  2C 00 00 01 */	cmpwi r0, 1
/* 80A8C0C4  41 82 00 44 */	beq lbl_80A8C108
/* 80A8C0C8  40 80 00 10 */	bge lbl_80A8C0D8
/* 80A8C0CC  2C 00 00 00 */	cmpwi r0, 0
/* 80A8C0D0  40 80 00 14 */	bge lbl_80A8C0E4
/* 80A8C0D4  48 00 02 5C */	b lbl_80A8C330
lbl_80A8C0D8:
/* 80A8C0D8  2C 00 00 03 */	cmpwi r0, 3
/* 80A8C0DC  40 80 02 54 */	bge lbl_80A8C330
/* 80A8C0E0  48 00 00 F8 */	b lbl_80A8C1D8
lbl_80A8C0E4:
/* 80A8C0E4  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80A8C0E8  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 80A8C0EC  38 80 00 19 */	li r4, 0x19
/* 80A8C0F0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80A8C0F4  38 A0 00 02 */	li r5, 2
/* 80A8C0F8  C0 5E 06 38 */	lfs f2, 0x638(r30)
/* 80A8C0FC  4B FF CC 19 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8C100  38 00 00 01 */	li r0, 1
/* 80A8C104  B0 1E 06 46 */	sth r0, 0x646(r30)
lbl_80A8C108:
/* 80A8C108  88 7E 05 C0 */	lbz r3, 0x5c0(r30)
/* 80A8C10C  88 1E 05 C1 */	lbz r0, 0x5c1(r30)
/* 80A8C110  7C 03 02 14 */	add r0, r3, r0
/* 80A8C114  98 1E 05 C0 */	stb r0, 0x5c0(r30)
/* 80A8C118  88 BE 05 C0 */	lbz r5, 0x5c0(r30)
/* 80A8C11C  7C A3 07 74 */	extsb r3, r5
/* 80A8C120  80 9E 05 BC */	lwz r4, 0x5bc(r30)
/* 80A8C124  A0 04 00 00 */	lhz r0, 0(r4)
/* 80A8C128  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80A8C12C  7C 03 00 00 */	cmpw r3, r0
/* 80A8C130  41 80 00 38 */	blt lbl_80A8C168
/* 80A8C134  88 04 00 05 */	lbz r0, 5(r4)
/* 80A8C138  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A8C13C  41 82 00 10 */	beq lbl_80A8C14C
/* 80A8C140  38 00 00 00 */	li r0, 0
/* 80A8C144  98 1E 05 C0 */	stb r0, 0x5c0(r30)
/* 80A8C148  48 00 00 34 */	b lbl_80A8C17C
lbl_80A8C14C:
/* 80A8C14C  38 00 FF FF */	li r0, -1
/* 80A8C150  98 1E 05 C1 */	stb r0, 0x5c1(r30)
/* 80A8C154  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80A8C158  A0 63 00 00 */	lhz r3, 0(r3)
/* 80A8C15C  38 03 FF FE */	addi r0, r3, -2
/* 80A8C160  98 1E 05 C0 */	stb r0, 0x5c0(r30)
/* 80A8C164  48 00 00 18 */	b lbl_80A8C17C
lbl_80A8C168:
/* 80A8C168  7C A0 07 75 */	extsb. r0, r5
/* 80A8C16C  40 80 00 10 */	bge lbl_80A8C17C
/* 80A8C170  38 00 00 01 */	li r0, 1
/* 80A8C174  98 1E 05 C1 */	stb r0, 0x5c1(r30)
/* 80A8C178  98 1E 05 C0 */	stb r0, 0x5c0(r30)
lbl_80A8C17C:
/* 80A8C17C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80A8C180  83 A3 00 08 */	lwz r29, 8(r3)
/* 80A8C184  88 1E 05 C0 */	lbz r0, 0x5c0(r30)
/* 80A8C188  7C 00 07 74 */	extsb r0, r0
/* 80A8C18C  54 00 20 36 */	slwi r0, r0, 4
/* 80A8C190  7F BD 02 14 */	add r29, r29, r0
/* 80A8C194  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80A8C198  4B 7D B7 F5 */	bl cM_rndFX__Ff
/* 80A8C19C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80A8C1A0  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8C1A4  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 80A8C1A8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80A8C1AC  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 80A8C1B0  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80A8C1B4  4B 7D B7 D9 */	bl cM_rndFX__Ff
/* 80A8C1B8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80A8C1BC  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8C1C0  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 80A8C1C4  38 00 00 02 */	li r0, 2
/* 80A8C1C8  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8C1CC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8C1D0  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 80A8C1D4  48 00 01 5C */	b lbl_80A8C330
lbl_80A8C1D8:
/* 80A8C1D8  C0 1E 05 C4 */	lfs f0, 0x5c4(r30)
/* 80A8C1DC  D0 1E 06 6C */	stfs f0, 0x66c(r30)
/* 80A8C1E0  C0 1E 05 C8 */	lfs f0, 0x5c8(r30)
/* 80A8C1E4  D0 1E 06 70 */	stfs f0, 0x670(r30)
/* 80A8C1E8  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 80A8C1EC  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 80A8C1F0  38 61 00 0C */	addi r3, r1, 0xc
/* 80A8C1F4  38 9E 05 C4 */	addi r4, r30, 0x5c4
/* 80A8C1F8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80A8C1FC  4B 7D A9 39 */	bl __mi__4cXyzCFRC3Vec
/* 80A8C200  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A8C204  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A8C208  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A8C20C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A8C210  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A8C214  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A8C218  38 61 00 18 */	addi r3, r1, 0x18
/* 80A8C21C  4B 8B AF 1D */	bl PSVECSquareMag
/* 80A8C220  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8C224  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8C228  40 81 00 58 */	ble lbl_80A8C280
/* 80A8C22C  FC 00 08 34 */	frsqrte f0, f1
/* 80A8C230  C8 9F 00 C8 */	lfd f4, 0xc8(r31)
/* 80A8C234  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8C238  C8 7F 00 D0 */	lfd f3, 0xd0(r31)
/* 80A8C23C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8C240  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8C244  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8C248  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8C24C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8C250  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8C254  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8C258  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8C25C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8C260  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8C264  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8C268  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8C26C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8C270  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8C274  FC 21 00 32 */	fmul f1, f1, f0
/* 80A8C278  FC 20 08 18 */	frsp f1, f1
/* 80A8C27C  48 00 00 88 */	b lbl_80A8C304
lbl_80A8C280:
/* 80A8C280  C8 1F 00 D8 */	lfd f0, 0xd8(r31)
/* 80A8C284  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8C288  40 80 00 10 */	bge lbl_80A8C298
/* 80A8C28C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A8C290  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A8C294  48 00 00 70 */	b lbl_80A8C304
lbl_80A8C298:
/* 80A8C298  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A8C29C  80 81 00 08 */	lwz r4, 8(r1)
/* 80A8C2A0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A8C2A4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A8C2A8  7C 03 00 00 */	cmpw r3, r0
/* 80A8C2AC  41 82 00 14 */	beq lbl_80A8C2C0
/* 80A8C2B0  40 80 00 40 */	bge lbl_80A8C2F0
/* 80A8C2B4  2C 03 00 00 */	cmpwi r3, 0
/* 80A8C2B8  41 82 00 20 */	beq lbl_80A8C2D8
/* 80A8C2BC  48 00 00 34 */	b lbl_80A8C2F0
lbl_80A8C2C0:
/* 80A8C2C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8C2C4  41 82 00 0C */	beq lbl_80A8C2D0
/* 80A8C2C8  38 00 00 01 */	li r0, 1
/* 80A8C2CC  48 00 00 28 */	b lbl_80A8C2F4
lbl_80A8C2D0:
/* 80A8C2D0  38 00 00 02 */	li r0, 2
/* 80A8C2D4  48 00 00 20 */	b lbl_80A8C2F4
lbl_80A8C2D8:
/* 80A8C2D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8C2DC  41 82 00 0C */	beq lbl_80A8C2E8
/* 80A8C2E0  38 00 00 05 */	li r0, 5
/* 80A8C2E4  48 00 00 10 */	b lbl_80A8C2F4
lbl_80A8C2E8:
/* 80A8C2E8  38 00 00 03 */	li r0, 3
/* 80A8C2EC  48 00 00 08 */	b lbl_80A8C2F4
lbl_80A8C2F0:
/* 80A8C2F0  38 00 00 04 */	li r0, 4
lbl_80A8C2F4:
/* 80A8C2F4  2C 00 00 01 */	cmpwi r0, 1
/* 80A8C2F8  40 82 00 0C */	bne lbl_80A8C304
/* 80A8C2FC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A8C300  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A8C304:
/* 80A8C304  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80A8C308  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80A8C30C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A8C310  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8C314  40 80 00 0C */	bge lbl_80A8C320
/* 80A8C318  38 00 00 01 */	li r0, 1
/* 80A8C31C  B0 1E 06 46 */	sth r0, 0x646(r30)
lbl_80A8C320:
/* 80A8C320  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80A8C324  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80A8C328  4B 7D B3 4D */	bl cM_atan2s__Fff
/* 80A8C32C  B0 7E 05 D0 */	sth r3, 0x5d0(r30)
lbl_80A8C330:
/* 80A8C330  80 1E 06 30 */	lwz r0, 0x630(r30)
/* 80A8C334  2C 00 00 19 */	cmpwi r0, 0x19
/* 80A8C338  40 82 01 08 */	bne lbl_80A8C440
/* 80A8C33C  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80A8C340  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80A8C344  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8C348  40 80 00 58 */	bge lbl_80A8C3A0
/* 80A8C34C  C3 FF 00 74 */	lfs f31, 0x74(r31)
/* 80A8C350  A8 1E 06 52 */	lha r0, 0x652(r30)
/* 80A8C354  2C 00 00 00 */	cmpwi r0, 0
/* 80A8C358  40 82 00 54 */	bne lbl_80A8C3AC
/* 80A8C35C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80A8C360  4B 7D B5 F5 */	bl cM_rndF__Ff
/* 80A8C364  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A8C368  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8C36C  FC 00 00 1E */	fctiwz f0, f0
/* 80A8C370  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80A8C374  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80A8C378  B0 1E 06 52 */	sth r0, 0x652(r30)
/* 80A8C37C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80A8C380  4B 7D B5 D5 */	bl cM_rndF__Ff
/* 80A8C384  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A8C388  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8C38C  FC 00 00 1E */	fctiwz f0, f0
/* 80A8C390  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A8C394  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A8C398  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 80A8C39C  48 00 00 10 */	b lbl_80A8C3AC
lbl_80A8C3A0:
/* 80A8C3A0  C3 FF 00 6C */	lfs f31, 0x6c(r31)
/* 80A8C3A4  38 00 00 02 */	li r0, 2
/* 80A8C3A8  98 1E 06 68 */	stb r0, 0x668(r30)
lbl_80A8C3AC:
/* 80A8C3AC  38 7E 06 38 */	addi r3, r30, 0x638
/* 80A8C3B0  FC 20 F8 90 */	fmr f1, f31
/* 80A8C3B4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8C3B8  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 80A8C3BC  4B 7E 36 81 */	bl cLib_addCalc2__FPffff
/* 80A8C3C0  3C 60 80 A9 */	lis r3, l_HIO@ha /* 0x80A92AD4@ha */
/* 80A8C3C4  38 63 2A D4 */	addi r3, r3, l_HIO@l /* 0x80A92AD4@l */
/* 80A8C3C8  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 80A8C3CC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80A8C3D0  C0 3F 00 F4 */	lfs f1, 0xf4(r31)
/* 80A8C3D4  C0 1E 06 38 */	lfs f0, 0x638(r30)
/* 80A8C3D8  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80A8C3DC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A8C3E0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8C3E4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80A8C3E8  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80A8C3EC  4B 7E 36 51 */	bl cLib_addCalc2__FPffff
/* 80A8C3F0  C0 1E 06 38 */	lfs f0, 0x638(r30)
/* 80A8C3F4  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80A8C3F8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80A8C3FC  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80A8C400  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80A8C404  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8C408  40 80 00 A4 */	bge lbl_80A8C4AC
/* 80A8C40C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80A8C410  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80A8C414  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8C418  40 81 00 94 */	ble lbl_80A8C4AC
/* 80A8C41C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8C420  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 80A8C424  7F C3 F3 78 */	mr r3, r30
/* 80A8C428  38 80 00 11 */	li r4, 0x11
/* 80A8C42C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80A8C430  38 A0 00 02 */	li r5, 2
/* 80A8C434  C0 5E 06 38 */	lfs f2, 0x638(r30)
/* 80A8C438  4B FF C8 DD */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8C43C  48 00 00 70 */	b lbl_80A8C4AC
lbl_80A8C440:
/* 80A8C440  38 7E 06 38 */	addi r3, r30, 0x638
/* 80A8C444  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A8C448  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8C44C  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80A8C450  4B 7E 35 ED */	bl cLib_addCalc2__FPffff
/* 80A8C454  3C 60 80 A9 */	lis r3, l_HIO@ha /* 0x80A92AD4@ha */
/* 80A8C458  38 63 2A D4 */	addi r3, r3, l_HIO@l /* 0x80A92AD4@l */
/* 80A8C45C  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 80A8C460  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80A8C464  C0 1E 06 38 */	lfs f0, 0x638(r30)
/* 80A8C468  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80A8C46C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8C470  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80A8C474  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80A8C478  4B 7E 35 C5 */	bl cLib_addCalc2__FPffff
/* 80A8C47C  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80A8C480  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80A8C484  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8C488  40 81 00 24 */	ble lbl_80A8C4AC
/* 80A8C48C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80A8C490  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 80A8C494  7F C3 F3 78 */	mr r3, r30
/* 80A8C498  38 80 00 19 */	li r4, 0x19
/* 80A8C49C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80A8C4A0  38 A0 00 02 */	li r5, 2
/* 80A8C4A4  C0 5E 06 38 */	lfs f2, 0x638(r30)
/* 80A8C4A8  4B FF C8 6D */	bl anm_init__FP12npc_ne_classifUcf
lbl_80A8C4AC:
/* 80A8C4AC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80A8C4B0  A8 9E 05 D0 */	lha r4, 0x5d0(r30)
/* 80A8C4B4  38 A0 00 08 */	li r5, 8
/* 80A8C4B8  C0 3E 05 D4 */	lfs f1, 0x5d4(r30)
/* 80A8C4BC  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80A8C4C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A8C4C4  FC 00 00 1E */	fctiwz f0, f0
/* 80A8C4C8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A8C4CC  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 80A8C4D0  4B 7E 41 39 */	bl cLib_addCalcAngleS2__FPssss
/* 80A8C4D4  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 80A8C4D8  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80A8C4DC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8C4E0  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80A8C4E4  4B 7E 35 59 */	bl cLib_addCalc2__FPffff
/* 80A8C4E8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80A8C4EC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80A8C4F0  39 61 00 50 */	addi r11, r1, 0x50
/* 80A8C4F4  4B 8D 5D 35 */	bl _restgpr_29
/* 80A8C4F8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A8C4FC  7C 08 03 A6 */	mtlr r0
/* 80A8C500  38 21 00 60 */	addi r1, r1, 0x60
/* 80A8C504  4E 80 00 20 */	blr 
