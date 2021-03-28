lbl_8011FBC0:
/* 8011FBC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011FBC4  7C 08 02 A6 */	mflr r0
/* 8011FBC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011FBCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011FBD0  93 C1 00 08 */	stw r30, 8(r1)
/* 8011FBD4  7C 7E 1B 78 */	mr r30, r3
/* 8011FBD8  C0 23 34 78 */	lfs f1, 0x3478(r3)
/* 8011FBDC  C0 02 93 EC */	lfs f0, lit_13119(r2)
/* 8011FBE0  EC 01 00 2A */	fadds f0, f1, f0
/* 8011FBE4  D0 03 34 78 */	stfs f0, 0x3478(r3)
/* 8011FBE8  C0 23 34 78 */	lfs f1, 0x3478(r3)
/* 8011FBEC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8011FBF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011FBF4  4C 41 13 82 */	cror 2, 1, 2
/* 8011FBF8  40 82 00 0C */	bne lbl_8011FC04
/* 8011FBFC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8011FC00  D0 1E 34 78 */	stfs f0, 0x3478(r30)
lbl_8011FC04:
/* 8011FC04  38 7E 34 7C */	addi r3, r30, 0x347c
/* 8011FC08  C0 3E 34 80 */	lfs f1, 0x3480(r30)
/* 8011FC0C  C0 42 96 84 */	lfs f2, lit_39330(r2)
/* 8011FC10  48 15 0B 31 */	bl cLib_chaseF__FPfff
/* 8011FC14  7C 7F 1B 78 */	mr r31, r3
/* 8011FC18  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 8011FC1C  C0 1E 34 7C */	lfs f0, 0x347c(r30)
/* 8011FC20  EC 01 00 32 */	fmuls f0, f1, f0
/* 8011FC24  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011FC28  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8011FC2C  40 80 00 08 */	bge lbl_8011FC34
/* 8011FC30  48 00 00 18 */	b lbl_8011FC48
lbl_8011FC34:
/* 8011FC34  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8011FC38  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8011FC3C  40 81 00 08 */	ble lbl_8011FC44
/* 8011FC40  48 00 00 08 */	b lbl_8011FC48
lbl_8011FC44:
/* 8011FC44  FC 20 00 90 */	fmr f1, f0
lbl_8011FC48:
/* 8011FC48  D0 3E 34 84 */	stfs f1, 0x3484(r30)
/* 8011FC4C  80 7E 06 4C */	lwz r3, 0x64c(r30)
/* 8011FC50  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8011FC54  C0 3E 34 78 */	lfs f1, 0x3478(r30)
/* 8011FC58  C0 5E 34 7C */	lfs f2, 0x347c(r30)
/* 8011FC5C  4B F1 B0 AD */	bl setWarpSRT__11dRes_info_cFP12J3DModelDataRC4cXyzff
/* 8011FC60  80 7E 06 B8 */	lwz r3, 0x6b8(r30)
/* 8011FC64  80 63 00 04 */	lwz r3, 4(r3)
/* 8011FC68  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8011FC6C  C0 3E 34 78 */	lfs f1, 0x3478(r30)
/* 8011FC70  C0 5E 34 7C */	lfs f2, 0x347c(r30)
/* 8011FC74  4B F1 B0 95 */	bl setWarpSRT__11dRes_info_cFP12J3DModelDataRC4cXyzff
/* 8011FC78  80 7E 06 78 */	lwz r3, 0x678(r30)
/* 8011FC7C  80 63 00 04 */	lwz r3, 4(r3)
/* 8011FC80  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8011FC84  C0 3E 34 78 */	lfs f1, 0x3478(r30)
/* 8011FC88  C0 5E 34 7C */	lfs f2, 0x347c(r30)
/* 8011FC8C  4B F1 B0 7D */	bl setWarpSRT__11dRes_info_cFP12J3DModelDataRC4cXyzff
/* 8011FC90  80 7E 06 BC */	lwz r3, 0x6bc(r30)
/* 8011FC94  80 63 00 04 */	lwz r3, 4(r3)
/* 8011FC98  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8011FC9C  C0 3E 34 78 */	lfs f1, 0x3478(r30)
/* 8011FCA0  C0 5E 34 7C */	lfs f2, 0x347c(r30)
/* 8011FCA4  4B F1 B0 65 */	bl setWarpSRT__11dRes_info_cFP12J3DModelDataRC4cXyzff
/* 8011FCA8  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 8011FCAC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011FCB0  41 82 00 20 */	beq lbl_8011FCD0
/* 8011FCB4  80 7E 07 8C */	lwz r3, 0x78c(r30)
/* 8011FCB8  80 63 00 04 */	lwz r3, 4(r3)
/* 8011FCBC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8011FCC0  C0 3E 34 78 */	lfs f1, 0x3478(r30)
/* 8011FCC4  C0 5E 34 7C */	lfs f2, 0x347c(r30)
/* 8011FCC8  4B F1 B0 41 */	bl setWarpSRT__11dRes_info_cFP12J3DModelDataRC4cXyzff
/* 8011FCCC  48 00 00 64 */	b lbl_8011FD30
lbl_8011FCD0:
/* 8011FCD0  80 7E 06 54 */	lwz r3, 0x654(r30)
/* 8011FCD4  80 63 00 04 */	lwz r3, 4(r3)
/* 8011FCD8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8011FCDC  C0 3E 34 78 */	lfs f1, 0x3478(r30)
/* 8011FCE0  C0 5E 34 7C */	lfs f2, 0x347c(r30)
/* 8011FCE4  4B F1 B0 25 */	bl setWarpSRT__11dRes_info_cFP12J3DModelDataRC4cXyzff
/* 8011FCE8  80 7E 06 58 */	lwz r3, 0x658(r30)
/* 8011FCEC  80 63 00 04 */	lwz r3, 4(r3)
/* 8011FCF0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8011FCF4  C0 3E 34 78 */	lfs f1, 0x3478(r30)
/* 8011FCF8  C0 5E 34 7C */	lfs f2, 0x347c(r30)
/* 8011FCFC  4B F1 B0 0D */	bl setWarpSRT__11dRes_info_cFP12J3DModelDataRC4cXyzff
/* 8011FD00  80 7E 06 5C */	lwz r3, 0x65c(r30)
/* 8011FD04  80 63 00 04 */	lwz r3, 4(r3)
/* 8011FD08  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8011FD0C  C0 3E 34 78 */	lfs f1, 0x3478(r30)
/* 8011FD10  C0 5E 34 7C */	lfs f2, 0x347c(r30)
/* 8011FD14  4B F1 AF F5 */	bl setWarpSRT__11dRes_info_cFP12J3DModelDataRC4cXyzff
/* 8011FD18  80 7E 07 84 */	lwz r3, 0x784(r30)
/* 8011FD1C  80 63 00 04 */	lwz r3, 4(r3)
/* 8011FD20  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8011FD24  C0 3E 34 78 */	lfs f1, 0x3478(r30)
/* 8011FD28  C0 5E 34 7C */	lfs f2, 0x347c(r30)
/* 8011FD2C  4B F1 AF DD */	bl setWarpSRT__11dRes_info_cFP12J3DModelDataRC4cXyzff
lbl_8011FD30:
/* 8011FD30  7F E3 FB 78 */	mr r3, r31
/* 8011FD34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011FD38  83 C1 00 08 */	lwz r30, 8(r1)
/* 8011FD3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011FD40  7C 08 03 A6 */	mtlr r0
/* 8011FD44  38 21 00 10 */	addi r1, r1, 0x10
/* 8011FD48  4E 80 00 20 */	blr 
