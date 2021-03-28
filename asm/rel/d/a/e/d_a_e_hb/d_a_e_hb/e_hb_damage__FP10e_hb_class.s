lbl_804FE1E8:
/* 804FE1E8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804FE1EC  7C 08 02 A6 */	mflr r0
/* 804FE1F0  90 01 00 54 */	stw r0, 0x54(r1)
/* 804FE1F4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804FE1F8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804FE1FC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804FE200  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804FE204  7C 7E 1B 78 */	mr r30, r3
/* 804FE208  3C 80 80 50 */	lis r4, lit_3788@ha
/* 804FE20C  3B E4 0B 04 */	addi r31, r4, lit_3788@l
/* 804FE210  A8 03 06 6C */	lha r0, 0x66c(r3)
/* 804FE214  2C 00 00 01 */	cmpwi r0, 1
/* 804FE218  41 82 01 14 */	beq lbl_804FE32C
/* 804FE21C  40 80 00 10 */	bge lbl_804FE22C
/* 804FE220  2C 00 00 00 */	cmpwi r0, 0
/* 804FE224  40 80 00 14 */	bge lbl_804FE238
/* 804FE228  48 00 03 80 */	b lbl_804FE5A8
lbl_804FE22C:
/* 804FE22C  2C 00 00 03 */	cmpwi r0, 3
/* 804FE230  40 80 03 78 */	bge lbl_804FE5A8
/* 804FE234  48 00 02 58 */	b lbl_804FE48C
lbl_804FE238:
/* 804FE238  38 80 00 0B */	li r4, 0xb
/* 804FE23C  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 804FE240  38 A0 00 00 */	li r5, 0
/* 804FE244  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804FE248  4B FF DB 71 */	bl anm_init__FP10e_hb_classifUcf
/* 804FE24C  7F C3 F3 78 */	mr r3, r30
/* 804FE250  38 80 00 13 */	li r4, 0x13
/* 804FE254  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 804FE258  38 A0 00 02 */	li r5, 2
/* 804FE25C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 804FE260  4B FF DC 05 */	bl leaf_anm_init__FP10e_hb_classifUcf
/* 804FE264  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 804FE268  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 804FE26C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804FE270  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 804FE274  38 81 00 10 */	addi r4, r1, 0x10
/* 804FE278  38 A0 00 00 */	li r5, 0
/* 804FE27C  38 C0 FF FF */	li r6, -1
/* 804FE280  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 804FE284  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804FE288  7D 89 03 A6 */	mtctr r12
/* 804FE28C  4E 80 04 21 */	bctrl 
/* 804FE290  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804FE294  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804FE298  80 63 00 00 */	lwz r3, 0(r3)
/* 804FE29C  A8 9E 06 80 */	lha r4, 0x680(r30)
/* 804FE2A0  4B B0 E1 3C */	b mDoMtx_YrotS__FPA4_fs
/* 804FE2A4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804FE2A8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804FE2AC  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 804FE2B0  28 00 00 01 */	cmplwi r0, 1
/* 804FE2B4  41 82 00 2C */	beq lbl_804FE2E0
/* 804FE2B8  28 00 00 02 */	cmplwi r0, 2
/* 804FE2BC  40 82 00 10 */	bne lbl_804FE2CC
/* 804FE2C0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 804FE2C4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804FE2C8  48 00 00 0C */	b lbl_804FE2D4
lbl_804FE2CC:
/* 804FE2CC  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 804FE2D0  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_804FE2D4:
/* 804FE2D4  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 804FE2D8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804FE2DC  48 00 00 10 */	b lbl_804FE2EC
lbl_804FE2E0:
/* 804FE2E0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804FE2E4  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 804FE2E8  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_804FE2EC:
/* 804FE2EC  38 61 00 20 */	addi r3, r1, 0x20
/* 804FE2F0  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 804FE2F4  4B D7 2B F8 */	b MtxPosition__FP4cXyzP4cXyz
/* 804FE2F8  38 00 00 01 */	li r0, 1
/* 804FE2FC  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 804FE300  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070084@ha */
/* 804FE304  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x00070084@l */
/* 804FE308  90 01 00 0C */	stw r0, 0xc(r1)
/* 804FE30C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 804FE310  38 81 00 0C */	addi r4, r1, 0xc
/* 804FE314  38 A0 FF FF */	li r5, -1
/* 804FE318  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 804FE31C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804FE320  7D 89 03 A6 */	mtctr r12
/* 804FE324  4E 80 04 21 */	bctrl 
/* 804FE328  48 00 02 80 */	b lbl_804FE5A8
lbl_804FE32C:
/* 804FE32C  38 61 00 14 */	addi r3, r1, 0x14
/* 804FE330  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804FE334  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 804FE338  4B D6 87 FC */	b __mi__4cXyzCFRC3Vec
/* 804FE33C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804FE340  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804FE344  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804FE348  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804FE34C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804FE350  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804FE354  38 61 00 20 */	addi r3, r1, 0x20
/* 804FE358  4B E4 8D E0 */	b PSVECSquareMag
/* 804FE35C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804FE360  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FE364  40 81 00 58 */	ble lbl_804FE3BC
/* 804FE368  FC 00 08 34 */	frsqrte f0, f1
/* 804FE36C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 804FE370  FC 44 00 32 */	fmul f2, f4, f0
/* 804FE374  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 804FE378  FC 00 00 32 */	fmul f0, f0, f0
/* 804FE37C  FC 01 00 32 */	fmul f0, f1, f0
/* 804FE380  FC 03 00 28 */	fsub f0, f3, f0
/* 804FE384  FC 02 00 32 */	fmul f0, f2, f0
/* 804FE388  FC 44 00 32 */	fmul f2, f4, f0
/* 804FE38C  FC 00 00 32 */	fmul f0, f0, f0
/* 804FE390  FC 01 00 32 */	fmul f0, f1, f0
/* 804FE394  FC 03 00 28 */	fsub f0, f3, f0
/* 804FE398  FC 02 00 32 */	fmul f0, f2, f0
/* 804FE39C  FC 44 00 32 */	fmul f2, f4, f0
/* 804FE3A0  FC 00 00 32 */	fmul f0, f0, f0
/* 804FE3A4  FC 01 00 32 */	fmul f0, f1, f0
/* 804FE3A8  FC 03 00 28 */	fsub f0, f3, f0
/* 804FE3AC  FC 02 00 32 */	fmul f0, f2, f0
/* 804FE3B0  FC 21 00 32 */	fmul f1, f1, f0
/* 804FE3B4  FC 20 08 18 */	frsp f1, f1
/* 804FE3B8  48 00 00 88 */	b lbl_804FE440
lbl_804FE3BC:
/* 804FE3BC  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 804FE3C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FE3C4  40 80 00 10 */	bge lbl_804FE3D4
/* 804FE3C8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804FE3CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804FE3D0  48 00 00 70 */	b lbl_804FE440
lbl_804FE3D4:
/* 804FE3D4  D0 21 00 08 */	stfs f1, 8(r1)
/* 804FE3D8  80 81 00 08 */	lwz r4, 8(r1)
/* 804FE3DC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804FE3E0  3C 00 7F 80 */	lis r0, 0x7f80
/* 804FE3E4  7C 03 00 00 */	cmpw r3, r0
/* 804FE3E8  41 82 00 14 */	beq lbl_804FE3FC
/* 804FE3EC  40 80 00 40 */	bge lbl_804FE42C
/* 804FE3F0  2C 03 00 00 */	cmpwi r3, 0
/* 804FE3F4  41 82 00 20 */	beq lbl_804FE414
/* 804FE3F8  48 00 00 34 */	b lbl_804FE42C
lbl_804FE3FC:
/* 804FE3FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804FE400  41 82 00 0C */	beq lbl_804FE40C
/* 804FE404  38 00 00 01 */	li r0, 1
/* 804FE408  48 00 00 28 */	b lbl_804FE430
lbl_804FE40C:
/* 804FE40C  38 00 00 02 */	li r0, 2
/* 804FE410  48 00 00 20 */	b lbl_804FE430
lbl_804FE414:
/* 804FE414  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804FE418  41 82 00 0C */	beq lbl_804FE424
/* 804FE41C  38 00 00 05 */	li r0, 5
/* 804FE420  48 00 00 10 */	b lbl_804FE430
lbl_804FE424:
/* 804FE424  38 00 00 03 */	li r0, 3
/* 804FE428  48 00 00 08 */	b lbl_804FE430
lbl_804FE42C:
/* 804FE42C  38 00 00 04 */	li r0, 4
lbl_804FE430:
/* 804FE430  2C 00 00 01 */	cmpwi r0, 1
/* 804FE434  40 82 00 0C */	bne lbl_804FE440
/* 804FE438  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804FE43C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804FE440:
/* 804FE440  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 804FE444  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FE448  40 81 00 44 */	ble lbl_804FE48C
/* 804FE44C  C0 1E 04 BC */	lfs f0, 0x4bc(r30)
/* 804FE450  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 804FE454  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 804FE458  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 804FE45C  C0 1E 04 C4 */	lfs f0, 0x4c4(r30)
/* 804FE460  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 804FE464  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 804FE468  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 804FE46C  EC 00 00 72 */	fmuls f0, f0, f1
/* 804FE470  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 804FE474  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 804FE478  EC 00 00 72 */	fmuls f0, f0, f1
/* 804FE47C  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 804FE480  A8 7E 06 6C */	lha r3, 0x66c(r30)
/* 804FE484  38 03 00 01 */	addi r0, r3, 1
/* 804FE488  B0 1E 06 6C */	sth r0, 0x66c(r30)
lbl_804FE48C:
/* 804FE48C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 804FE490  A8 BE 06 80 */	lha r5, 0x680(r30)
/* 804FE494  88 9E 05 B4 */	lbz r4, 0x5b4(r30)
/* 804FE498  38 04 FF FE */	addi r0, r4, -2
/* 804FE49C  30 00 FF FF */	addic r0, r0, -1
/* 804FE4A0  7C 80 01 10 */	subfe r4, r0, r0
/* 804FE4A4  38 00 80 00 */	li r0, -32768
/* 804FE4A8  7C 00 20 78 */	andc r0, r0, r4
/* 804FE4AC  7C 05 02 14 */	add r0, r5, r0
/* 804FE4B0  7C 04 07 34 */	extsh r4, r0
/* 804FE4B4  38 A0 00 02 */	li r5, 2
/* 804FE4B8  38 C0 20 00 */	li r6, 0x2000
/* 804FE4BC  4B D7 21 4C */	b cLib_addCalcAngleS2__FPssss
/* 804FE4C0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804FE4C4  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 804FE4C8  7C 65 1B 78 */	mr r5, r3
/* 804FE4CC  4B E4 8B C4 */	b PSVECAdd
/* 804FE4D0  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 804FE4D4  28 00 00 01 */	cmplwi r0, 1
/* 804FE4D8  41 82 00 30 */	beq lbl_804FE508
/* 804FE4DC  28 00 00 02 */	cmplwi r0, 2
/* 804FE4E0  40 82 00 18 */	bne lbl_804FE4F8
/* 804FE4E4  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 804FE4E8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804FE4EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 804FE4F0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 804FE4F4  48 00 00 14 */	b lbl_804FE508
lbl_804FE4F8:
/* 804FE4F8  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 804FE4FC  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 804FE500  EC 01 00 28 */	fsubs f0, f1, f0
/* 804FE504  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_804FE508:
/* 804FE508  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 804FE50C  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 804FE510  EC 21 00 32 */	fmuls f1, f1, f0
/* 804FE514  3C 60 80 50 */	lis r3, l_HIO@ha
/* 804FE518  38 63 0E 70 */	addi r3, r3, l_HIO@l
/* 804FE51C  C0 03 00 08 */	lfs f0, 8(r3)
/* 804FE520  EF E1 00 32 */	fmuls f31, f1, f0
/* 804FE524  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804FE528  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804FE52C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 804FE530  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 804FE534  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804FE538  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 804FE53C  38 7E 10 54 */	addi r3, r30, 0x1054
/* 804FE540  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804FE544  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804FE548  38 84 0F 38 */	addi r4, r4, 0xf38
/* 804FE54C  4B B7 85 60 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 804FE550  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804FE554  EC 00 F8 2A */	fadds f0, f0, f31
/* 804FE558  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 804FE55C  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 804FE560  EC 00 F8 2A */	fadds f0, f0, f31
/* 804FE564  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 804FE568  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 804FE56C  38 80 00 01 */	li r4, 1
/* 804FE570  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804FE574  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804FE578  40 82 00 18 */	bne lbl_804FE590
/* 804FE57C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804FE580  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804FE584  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804FE588  41 82 00 08 */	beq lbl_804FE590
/* 804FE58C  38 80 00 00 */	li r4, 0
lbl_804FE590:
/* 804FE590  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804FE594  41 82 00 14 */	beq lbl_804FE5A8
/* 804FE598  38 00 00 03 */	li r0, 3
/* 804FE59C  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 804FE5A0  38 00 00 00 */	li r0, 0
/* 804FE5A4  B0 1E 06 6C */	sth r0, 0x66c(r30)
lbl_804FE5A8:
/* 804FE5A8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804FE5AC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804FE5B0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804FE5B4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804FE5B8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804FE5BC  7C 08 03 A6 */	mtlr r0
/* 804FE5C0  38 21 00 50 */	addi r1, r1, 0x50
/* 804FE5C4  4E 80 00 20 */	blr 
