lbl_8026FAB8:
/* 8026FAB8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8026FABC  7C 08 02 A6 */	mflr r0
/* 8026FAC0  90 01 00 74 */	stw r0, 0x74(r1)
/* 8026FAC4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8026FAC8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8026FACC  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8026FAD0  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8026FAD4  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8026FAD8  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 8026FADC  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 8026FAE0  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 8026FAE4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8026FAE8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8026FAEC  7C 7E 1B 78 */	mr r30, r3
/* 8026FAF0  7C 9F 23 78 */	mr r31, r4
/* 8026FAF4  FF A0 08 90 */	fmr f29, f1
/* 8026FAF8  FF C0 10 90 */	fmr f30, f2
/* 8026FAFC  FF E0 18 90 */	fmr f31, f3
/* 8026FB00  4B FF 75 6D */	bl __ne__4cXyzCFRC3Vec
/* 8026FB04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026FB08  41 82 01 C4 */	beq lbl_8026FCCC
/* 8026FB0C  38 61 00 10 */	addi r3, r1, 0x10
/* 8026FB10  7F C4 F3 78 */	mr r4, r30
/* 8026FB14  7F E5 FB 78 */	mr r5, r31
/* 8026FB18  4B FF 70 1D */	bl __mi__4cXyzCFRC3Vec
/* 8026FB1C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8026FB20  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8026FB24  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8026FB28  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8026FB2C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8026FB30  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8026FB34  38 61 00 1C */	addi r3, r1, 0x1c
/* 8026FB38  48 0D 76 01 */	bl PSVECSquareMag
/* 8026FB3C  C0 02 B7 E0 */	lfs f0, lit_2262(r2)
/* 8026FB40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026FB44  40 81 00 58 */	ble lbl_8026FB9C
/* 8026FB48  FC 00 08 34 */	frsqrte f0, f1
/* 8026FB4C  C8 82 B7 E8 */	lfd f4, lit_2379(r2)
/* 8026FB50  FC 44 00 32 */	fmul f2, f4, f0
/* 8026FB54  C8 62 B7 F0 */	lfd f3, lit_2380(r2)
/* 8026FB58  FC 00 00 32 */	fmul f0, f0, f0
/* 8026FB5C  FC 01 00 32 */	fmul f0, f1, f0
/* 8026FB60  FC 03 00 28 */	fsub f0, f3, f0
/* 8026FB64  FC 02 00 32 */	fmul f0, f2, f0
/* 8026FB68  FC 44 00 32 */	fmul f2, f4, f0
/* 8026FB6C  FC 00 00 32 */	fmul f0, f0, f0
/* 8026FB70  FC 01 00 32 */	fmul f0, f1, f0
/* 8026FB74  FC 03 00 28 */	fsub f0, f3, f0
/* 8026FB78  FC 02 00 32 */	fmul f0, f2, f0
/* 8026FB7C  FC 44 00 32 */	fmul f2, f4, f0
/* 8026FB80  FC 00 00 32 */	fmul f0, f0, f0
/* 8026FB84  FC 01 00 32 */	fmul f0, f1, f0
/* 8026FB88  FC 03 00 28 */	fsub f0, f3, f0
/* 8026FB8C  FC 02 00 32 */	fmul f0, f2, f0
/* 8026FB90  FC 21 00 32 */	fmul f1, f1, f0
/* 8026FB94  FC 20 08 18 */	frsp f1, f1
/* 8026FB98  48 00 00 88 */	b lbl_8026FC20
lbl_8026FB9C:
/* 8026FB9C  C8 02 B7 F8 */	lfd f0, lit_2381(r2)
/* 8026FBA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026FBA4  40 80 00 10 */	bge lbl_8026FBB4
/* 8026FBA8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8026FBAC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8026FBB0  48 00 00 70 */	b lbl_8026FC20
lbl_8026FBB4:
/* 8026FBB4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8026FBB8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8026FBBC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8026FBC0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8026FBC4  7C 03 00 00 */	cmpw r3, r0
/* 8026FBC8  41 82 00 14 */	beq lbl_8026FBDC
/* 8026FBCC  40 80 00 40 */	bge lbl_8026FC0C
/* 8026FBD0  2C 03 00 00 */	cmpwi r3, 0
/* 8026FBD4  41 82 00 20 */	beq lbl_8026FBF4
/* 8026FBD8  48 00 00 34 */	b lbl_8026FC0C
lbl_8026FBDC:
/* 8026FBDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8026FBE0  41 82 00 0C */	beq lbl_8026FBEC
/* 8026FBE4  38 00 00 01 */	li r0, 1
/* 8026FBE8  48 00 00 28 */	b lbl_8026FC10
lbl_8026FBEC:
/* 8026FBEC  38 00 00 02 */	li r0, 2
/* 8026FBF0  48 00 00 20 */	b lbl_8026FC10
lbl_8026FBF4:
/* 8026FBF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8026FBF8  41 82 00 0C */	beq lbl_8026FC04
/* 8026FBFC  38 00 00 05 */	li r0, 5
/* 8026FC00  48 00 00 10 */	b lbl_8026FC10
lbl_8026FC04:
/* 8026FC04  38 00 00 03 */	li r0, 3
/* 8026FC08  48 00 00 08 */	b lbl_8026FC10
lbl_8026FC0C:
/* 8026FC0C  38 00 00 04 */	li r0, 4
lbl_8026FC10:
/* 8026FC10  2C 00 00 01 */	cmpwi r0, 1
/* 8026FC14  40 82 00 0C */	bne lbl_8026FC20
/* 8026FC18  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8026FC1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8026FC20:
/* 8026FC20  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8026FC24  40 80 00 20 */	bge lbl_8026FC44
/* 8026FC28  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8026FC2C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8026FC30  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8026FC34  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8026FC38  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8026FC3C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8026FC40  48 00 00 8C */	b lbl_8026FCCC
lbl_8026FC44:
/* 8026FC44  EF 81 07 72 */	fmuls f28, f1, f29
/* 8026FC48  38 61 00 1C */	addi r3, r1, 0x1c
/* 8026FC4C  7C 64 1B 78 */	mr r4, r3
/* 8026FC50  FC 20 E8 90 */	fmr f1, f29
/* 8026FC54  48 0D 74 85 */	bl PSVECScale
/* 8026FC58  FC 00 E2 10 */	fabs f0, f28
/* 8026FC5C  FC 20 00 18 */	frsp f1, f0
/* 8026FC60  C0 02 B8 00 */	lfs f0, lit_2382(r2)
/* 8026FC64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026FC68  41 80 00 4C */	blt lbl_8026FCB4
/* 8026FC6C  FC 1C F0 40 */	fcmpo cr0, f28, f30
/* 8026FC70  40 81 00 18 */	ble lbl_8026FC88
/* 8026FC74  38 61 00 1C */	addi r3, r1, 0x1c
/* 8026FC78  7C 64 1B 78 */	mr r4, r3
/* 8026FC7C  EC 3E E0 24 */	fdivs f1, f30, f28
/* 8026FC80  48 0D 74 59 */	bl PSVECScale
/* 8026FC84  48 00 00 1C */	b lbl_8026FCA0
lbl_8026FC88:
/* 8026FC88  FC 1C F8 40 */	fcmpo cr0, f28, f31
/* 8026FC8C  40 80 00 14 */	bge lbl_8026FCA0
/* 8026FC90  38 61 00 1C */	addi r3, r1, 0x1c
/* 8026FC94  7C 64 1B 78 */	mr r4, r3
/* 8026FC98  EC 3F E0 24 */	fdivs f1, f31, f28
/* 8026FC9C  48 0D 74 3D */	bl PSVECScale
lbl_8026FCA0:
/* 8026FCA0  7F C3 F3 78 */	mr r3, r30
/* 8026FCA4  38 81 00 1C */	addi r4, r1, 0x1c
/* 8026FCA8  7F C5 F3 78 */	mr r5, r30
/* 8026FCAC  48 0D 74 09 */	bl PSVECSubtract
/* 8026FCB0  48 00 00 1C */	b lbl_8026FCCC
lbl_8026FCB4:
/* 8026FCB4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8026FCB8  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8026FCBC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8026FCC0  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8026FCC4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8026FCC8  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_8026FCCC:
/* 8026FCCC  7F C3 F3 78 */	mr r3, r30
/* 8026FCD0  7F E4 FB 78 */	mr r4, r31
/* 8026FCD4  48 0D 76 C9 */	bl PSVECSquareDistance
/* 8026FCD8  C0 02 B7 E0 */	lfs f0, lit_2262(r2)
/* 8026FCDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026FCE0  40 81 00 58 */	ble lbl_8026FD38
/* 8026FCE4  FC 00 08 34 */	frsqrte f0, f1
/* 8026FCE8  C8 82 B7 E8 */	lfd f4, lit_2379(r2)
/* 8026FCEC  FC 44 00 32 */	fmul f2, f4, f0
/* 8026FCF0  C8 62 B7 F0 */	lfd f3, lit_2380(r2)
/* 8026FCF4  FC 00 00 32 */	fmul f0, f0, f0
/* 8026FCF8  FC 01 00 32 */	fmul f0, f1, f0
/* 8026FCFC  FC 03 00 28 */	fsub f0, f3, f0
/* 8026FD00  FC 02 00 32 */	fmul f0, f2, f0
/* 8026FD04  FC 44 00 32 */	fmul f2, f4, f0
/* 8026FD08  FC 00 00 32 */	fmul f0, f0, f0
/* 8026FD0C  FC 01 00 32 */	fmul f0, f1, f0
/* 8026FD10  FC 03 00 28 */	fsub f0, f3, f0
/* 8026FD14  FC 02 00 32 */	fmul f0, f2, f0
/* 8026FD18  FC 44 00 32 */	fmul f2, f4, f0
/* 8026FD1C  FC 00 00 32 */	fmul f0, f0, f0
/* 8026FD20  FC 01 00 32 */	fmul f0, f1, f0
/* 8026FD24  FC 03 00 28 */	fsub f0, f3, f0
/* 8026FD28  FC 02 00 32 */	fmul f0, f2, f0
/* 8026FD2C  FC 21 00 32 */	fmul f1, f1, f0
/* 8026FD30  FC 20 08 18 */	frsp f1, f1
/* 8026FD34  48 00 00 88 */	b lbl_8026FDBC
lbl_8026FD38:
/* 8026FD38  C8 02 B7 F8 */	lfd f0, lit_2381(r2)
/* 8026FD3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026FD40  40 80 00 10 */	bge lbl_8026FD50
/* 8026FD44  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8026FD48  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8026FD4C  48 00 00 70 */	b lbl_8026FDBC
lbl_8026FD50:
/* 8026FD50  D0 21 00 08 */	stfs f1, 8(r1)
/* 8026FD54  80 81 00 08 */	lwz r4, 8(r1)
/* 8026FD58  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8026FD5C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8026FD60  7C 03 00 00 */	cmpw r3, r0
/* 8026FD64  41 82 00 14 */	beq lbl_8026FD78
/* 8026FD68  40 80 00 40 */	bge lbl_8026FDA8
/* 8026FD6C  2C 03 00 00 */	cmpwi r3, 0
/* 8026FD70  41 82 00 20 */	beq lbl_8026FD90
/* 8026FD74  48 00 00 34 */	b lbl_8026FDA8
lbl_8026FD78:
/* 8026FD78  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8026FD7C  41 82 00 0C */	beq lbl_8026FD88
/* 8026FD80  38 00 00 01 */	li r0, 1
/* 8026FD84  48 00 00 28 */	b lbl_8026FDAC
lbl_8026FD88:
/* 8026FD88  38 00 00 02 */	li r0, 2
/* 8026FD8C  48 00 00 20 */	b lbl_8026FDAC
lbl_8026FD90:
/* 8026FD90  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8026FD94  41 82 00 0C */	beq lbl_8026FDA0
/* 8026FD98  38 00 00 05 */	li r0, 5
/* 8026FD9C  48 00 00 10 */	b lbl_8026FDAC
lbl_8026FDA0:
/* 8026FDA0  38 00 00 03 */	li r0, 3
/* 8026FDA4  48 00 00 08 */	b lbl_8026FDAC
lbl_8026FDA8:
/* 8026FDA8  38 00 00 04 */	li r0, 4
lbl_8026FDAC:
/* 8026FDAC  2C 00 00 01 */	cmpwi r0, 1
/* 8026FDB0  40 82 00 0C */	bne lbl_8026FDBC
/* 8026FDB4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8026FDB8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8026FDBC:
/* 8026FDBC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8026FDC0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8026FDC4  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8026FDC8  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8026FDCC  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 8026FDD0  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8026FDD4  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 8026FDD8  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 8026FDDC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8026FDE0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8026FDE4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8026FDE8  7C 08 03 A6 */	mtlr r0
/* 8026FDEC  38 21 00 70 */	addi r1, r1, 0x70
/* 8026FDF0  4E 80 00 20 */	blr 
