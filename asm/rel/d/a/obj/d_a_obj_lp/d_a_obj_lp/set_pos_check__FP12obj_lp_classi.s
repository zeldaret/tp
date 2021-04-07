lbl_80C552C0:
/* 80C552C0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C552C4  7C 08 02 A6 */	mflr r0
/* 80C552C8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C552CC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80C552D0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80C552D4  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80C552D8  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80C552DC  39 61 00 40 */	addi r11, r1, 0x40
/* 80C552E0  4B 70 CE F1 */	bl _savegpr_26
/* 80C552E4  7C 7E 1B 78 */	mr r30, r3
/* 80C552E8  7C 9F 23 78 */	mr r31, r4
/* 80C552EC  3C 60 80 C5 */	lis r3, lit_3916@ha /* 0x80C55A10@ha */
/* 80C552F0  3B 83 5A 10 */	addi r28, r3, lit_3916@l /* 0x80C55A10@l */
/* 80C552F4  C3 DC 00 9C */	lfs f30, 0x9c(r28)
/* 80C552F8  88 1E 05 72 */	lbz r0, 0x572(r30)
/* 80C552FC  28 00 00 01 */	cmplwi r0, 1
/* 80C55300  40 82 00 0C */	bne lbl_80C5530C
/* 80C55304  C0 1C 00 A0 */	lfs f0, 0xa0(r28)
/* 80C55308  EF DE 00 32 */	fmuls f30, f30, f0
lbl_80C5530C:
/* 80C5530C  3B 40 00 00 */	li r26, 0
/* 80C55310  3B A0 00 00 */	li r29, 0
/* 80C55314  1C 7F 00 54 */	mulli r3, r31, 0x54
/* 80C55318  3B 63 05 8C */	addi r27, r3, 0x58c
/* 80C5531C  7F 7E DA 14 */	add r27, r30, r27
/* 80C55320  C3 FC 00 08 */	lfs f31, 8(r28)
/* 80C55324  48 00 01 30 */	b lbl_80C55454
lbl_80C55328:
/* 80C55328  38 61 00 0C */	addi r3, r1, 0xc
/* 80C5532C  38 9D 05 8C */	addi r4, r29, 0x58c
/* 80C55330  7C 9E 22 14 */	add r4, r30, r4
/* 80C55334  7F 65 DB 78 */	mr r5, r27
/* 80C55338  4B 61 17 FD */	bl __mi__4cXyzCFRC3Vec
/* 80C5533C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C55340  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C55344  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C55348  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C5534C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C55350  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C55354  38 61 00 18 */	addi r3, r1, 0x18
/* 80C55358  4B 6F 1D E1 */	bl PSVECSquareMag
/* 80C5535C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80C55360  40 81 00 58 */	ble lbl_80C553B8
/* 80C55364  FC 00 08 34 */	frsqrte f0, f1
/* 80C55368  C8 9C 00 50 */	lfd f4, 0x50(r28)
/* 80C5536C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C55370  C8 7C 00 58 */	lfd f3, 0x58(r28)
/* 80C55374  FC 00 00 32 */	fmul f0, f0, f0
/* 80C55378  FC 01 00 32 */	fmul f0, f1, f0
/* 80C5537C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C55380  FC 02 00 32 */	fmul f0, f2, f0
/* 80C55384  FC 44 00 32 */	fmul f2, f4, f0
/* 80C55388  FC 00 00 32 */	fmul f0, f0, f0
/* 80C5538C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C55390  FC 03 00 28 */	fsub f0, f3, f0
/* 80C55394  FC 02 00 32 */	fmul f0, f2, f0
/* 80C55398  FC 44 00 32 */	fmul f2, f4, f0
/* 80C5539C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C553A0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C553A4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C553A8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C553AC  FC 21 00 32 */	fmul f1, f1, f0
/* 80C553B0  FC 20 08 18 */	frsp f1, f1
/* 80C553B4  48 00 00 88 */	b lbl_80C5543C
lbl_80C553B8:
/* 80C553B8  C8 1C 00 60 */	lfd f0, 0x60(r28)
/* 80C553BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C553C0  40 80 00 10 */	bge lbl_80C553D0
/* 80C553C4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C553C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C553CC  48 00 00 70 */	b lbl_80C5543C
lbl_80C553D0:
/* 80C553D0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C553D4  80 81 00 08 */	lwz r4, 8(r1)
/* 80C553D8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C553DC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C553E0  7C 03 00 00 */	cmpw r3, r0
/* 80C553E4  41 82 00 14 */	beq lbl_80C553F8
/* 80C553E8  40 80 00 40 */	bge lbl_80C55428
/* 80C553EC  2C 03 00 00 */	cmpwi r3, 0
/* 80C553F0  41 82 00 20 */	beq lbl_80C55410
/* 80C553F4  48 00 00 34 */	b lbl_80C55428
lbl_80C553F8:
/* 80C553F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C553FC  41 82 00 0C */	beq lbl_80C55408
/* 80C55400  38 00 00 01 */	li r0, 1
/* 80C55404  48 00 00 28 */	b lbl_80C5542C
lbl_80C55408:
/* 80C55408  38 00 00 02 */	li r0, 2
/* 80C5540C  48 00 00 20 */	b lbl_80C5542C
lbl_80C55410:
/* 80C55410  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C55414  41 82 00 0C */	beq lbl_80C55420
/* 80C55418  38 00 00 05 */	li r0, 5
/* 80C5541C  48 00 00 10 */	b lbl_80C5542C
lbl_80C55420:
/* 80C55420  38 00 00 03 */	li r0, 3
/* 80C55424  48 00 00 08 */	b lbl_80C5542C
lbl_80C55428:
/* 80C55428  38 00 00 04 */	li r0, 4
lbl_80C5542C:
/* 80C5542C  2C 00 00 01 */	cmpwi r0, 1
/* 80C55430  40 82 00 0C */	bne lbl_80C5543C
/* 80C55434  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C55438  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C5543C:
/* 80C5543C  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80C55440  40 80 00 0C */	bge lbl_80C5544C
/* 80C55444  38 60 00 00 */	li r3, 0
/* 80C55448  48 00 00 18 */	b lbl_80C55460
lbl_80C5544C:
/* 80C5544C  3B 5A 00 01 */	addi r26, r26, 1
/* 80C55450  3B BD 00 54 */	addi r29, r29, 0x54
lbl_80C55454:
/* 80C55454  7C 1A F8 00 */	cmpw r26, r31
/* 80C55458  41 80 FE D0 */	blt lbl_80C55328
/* 80C5545C  38 60 00 01 */	li r3, 1
lbl_80C55460:
/* 80C55460  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80C55464  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80C55468  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80C5546C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80C55470  39 61 00 40 */	addi r11, r1, 0x40
/* 80C55474  4B 70 CD A9 */	bl _restgpr_26
/* 80C55478  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C5547C  7C 08 03 A6 */	mtlr r0
/* 80C55480  38 21 00 60 */	addi r1, r1, 0x60
/* 80C55484  4E 80 00 20 */	blr 
