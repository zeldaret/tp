lbl_805DF250:
/* 805DF250  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805DF254  7C 08 02 A6 */	mflr r0
/* 805DF258  90 01 00 84 */	stw r0, 0x84(r1)
/* 805DF25C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 805DF260  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 805DF264  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 805DF268  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 805DF26C  39 61 00 60 */	addi r11, r1, 0x60
/* 805DF270  4B D8 2F 68 */	b _savegpr_28
/* 805DF274  7C 7D 1B 78 */	mr r29, r3
/* 805DF278  7C BE 2B 78 */	mr r30, r5
/* 805DF27C  7C DC 33 78 */	mr r28, r6
/* 805DF280  FF C0 08 90 */	fmr f30, f1
/* 805DF284  3C 60 80 5F */	lis r3, lit_3911@ha
/* 805DF288  3B E3 D0 60 */	addi r31, r3, lit_3911@l
/* 805DF28C  7F 83 E3 78 */	mr r3, r28
/* 805DF290  4B D6 7E A8 */	b PSVECSquareMag
/* 805DF294  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805DF298  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805DF29C  40 81 00 58 */	ble lbl_805DF2F4
/* 805DF2A0  FC 00 08 34 */	frsqrte f0, f1
/* 805DF2A4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805DF2A8  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF2AC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805DF2B0  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF2B4  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF2B8  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF2BC  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF2C0  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF2C4  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF2C8  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF2CC  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF2D0  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF2D4  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF2D8  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF2DC  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF2E0  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF2E4  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF2E8  FC 21 00 32 */	fmul f1, f1, f0
/* 805DF2EC  FC 20 08 18 */	frsp f1, f1
/* 805DF2F0  48 00 00 88 */	b lbl_805DF378
lbl_805DF2F4:
/* 805DF2F4  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 805DF2F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805DF2FC  40 80 00 10 */	bge lbl_805DF30C
/* 805DF300  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805DF304  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805DF308  48 00 00 70 */	b lbl_805DF378
lbl_805DF30C:
/* 805DF30C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 805DF310  80 81 00 20 */	lwz r4, 0x20(r1)
/* 805DF314  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805DF318  3C 00 7F 80 */	lis r0, 0x7f80
/* 805DF31C  7C 03 00 00 */	cmpw r3, r0
/* 805DF320  41 82 00 14 */	beq lbl_805DF334
/* 805DF324  40 80 00 40 */	bge lbl_805DF364
/* 805DF328  2C 03 00 00 */	cmpwi r3, 0
/* 805DF32C  41 82 00 20 */	beq lbl_805DF34C
/* 805DF330  48 00 00 34 */	b lbl_805DF364
lbl_805DF334:
/* 805DF334  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805DF338  41 82 00 0C */	beq lbl_805DF344
/* 805DF33C  38 00 00 01 */	li r0, 1
/* 805DF340  48 00 00 28 */	b lbl_805DF368
lbl_805DF344:
/* 805DF344  38 00 00 02 */	li r0, 2
/* 805DF348  48 00 00 20 */	b lbl_805DF368
lbl_805DF34C:
/* 805DF34C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805DF350  41 82 00 0C */	beq lbl_805DF35C
/* 805DF354  38 00 00 05 */	li r0, 5
/* 805DF358  48 00 00 10 */	b lbl_805DF368
lbl_805DF35C:
/* 805DF35C  38 00 00 03 */	li r0, 3
/* 805DF360  48 00 00 08 */	b lbl_805DF368
lbl_805DF364:
/* 805DF364  38 00 00 04 */	li r0, 4
lbl_805DF368:
/* 805DF368  2C 00 00 01 */	cmpwi r0, 1
/* 805DF36C  40 82 00 0C */	bne lbl_805DF378
/* 805DF370  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805DF374  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805DF378:
/* 805DF378  C0 1C 00 00 */	lfs f0, 0(r28)
/* 805DF37C  EC 00 08 24 */	fdivs f0, f0, f1
/* 805DF380  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805DF384  C0 1C 00 04 */	lfs f0, 4(r28)
/* 805DF388  EC 00 08 24 */	fdivs f0, f0, f1
/* 805DF38C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805DF390  C0 1C 00 08 */	lfs f0, 8(r28)
/* 805DF394  EC 00 08 24 */	fdivs f0, f0, f1
/* 805DF398  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805DF39C  38 61 00 24 */	addi r3, r1, 0x24
/* 805DF3A0  7F C4 F3 78 */	mr r4, r30
/* 805DF3A4  7C 65 1B 78 */	mr r5, r3
/* 805DF3A8  4B D6 7D 0C */	b PSVECSubtract
/* 805DF3AC  38 61 00 24 */	addi r3, r1, 0x24
/* 805DF3B0  7F 84 E3 78 */	mr r4, r28
/* 805DF3B4  4B D6 7D E0 */	b PSVECDotProduct
/* 805DF3B8  38 61 00 3C */	addi r3, r1, 0x3c
/* 805DF3BC  7C 64 1B 78 */	mr r4, r3
/* 805DF3C0  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 805DF3C4  EC 20 00 72 */	fmuls f1, f0, f1
/* 805DF3C8  4B D6 7D 10 */	b PSVECScale
/* 805DF3CC  38 61 00 3C */	addi r3, r1, 0x3c
/* 805DF3D0  7F C4 F3 78 */	mr r4, r30
/* 805DF3D4  7C 65 1B 78 */	mr r5, r3
/* 805DF3D8  4B D6 7C B8 */	b PSVECAdd
/* 805DF3DC  7F C3 F3 78 */	mr r3, r30
/* 805DF3E0  4B D6 7D 58 */	b PSVECSquareMag
/* 805DF3E4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805DF3E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805DF3EC  40 81 00 58 */	ble lbl_805DF444
/* 805DF3F0  FC 00 08 34 */	frsqrte f0, f1
/* 805DF3F4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805DF3F8  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF3FC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805DF400  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF404  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF408  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF40C  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF410  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF414  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF418  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF41C  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF420  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF424  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF428  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF42C  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF430  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF434  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF438  FC 21 00 32 */	fmul f1, f1, f0
/* 805DF43C  FC 20 08 18 */	frsp f1, f1
/* 805DF440  48 00 00 88 */	b lbl_805DF4C8
lbl_805DF444:
/* 805DF444  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 805DF448  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805DF44C  40 80 00 10 */	bge lbl_805DF45C
/* 805DF450  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805DF454  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805DF458  48 00 00 70 */	b lbl_805DF4C8
lbl_805DF45C:
/* 805DF45C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805DF460  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 805DF464  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805DF468  3C 00 7F 80 */	lis r0, 0x7f80
/* 805DF46C  7C 03 00 00 */	cmpw r3, r0
/* 805DF470  41 82 00 14 */	beq lbl_805DF484
/* 805DF474  40 80 00 40 */	bge lbl_805DF4B4
/* 805DF478  2C 03 00 00 */	cmpwi r3, 0
/* 805DF47C  41 82 00 20 */	beq lbl_805DF49C
/* 805DF480  48 00 00 34 */	b lbl_805DF4B4
lbl_805DF484:
/* 805DF484  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805DF488  41 82 00 0C */	beq lbl_805DF494
/* 805DF48C  38 00 00 01 */	li r0, 1
/* 805DF490  48 00 00 28 */	b lbl_805DF4B8
lbl_805DF494:
/* 805DF494  38 00 00 02 */	li r0, 2
/* 805DF498  48 00 00 20 */	b lbl_805DF4B8
lbl_805DF49C:
/* 805DF49C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805DF4A0  41 82 00 0C */	beq lbl_805DF4AC
/* 805DF4A4  38 00 00 05 */	li r0, 5
/* 805DF4A8  48 00 00 10 */	b lbl_805DF4B8
lbl_805DF4AC:
/* 805DF4AC  38 00 00 03 */	li r0, 3
/* 805DF4B0  48 00 00 08 */	b lbl_805DF4B8
lbl_805DF4B4:
/* 805DF4B4  38 00 00 04 */	li r0, 4
lbl_805DF4B8:
/* 805DF4B8  2C 00 00 01 */	cmpwi r0, 1
/* 805DF4BC  40 82 00 0C */	bne lbl_805DF4C8
/* 805DF4C0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805DF4C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805DF4C8:
/* 805DF4C8  EF DE 00 72 */	fmuls f30, f30, f1
/* 805DF4CC  38 61 00 3C */	addi r3, r1, 0x3c
/* 805DF4D0  4B D6 7C 68 */	b PSVECSquareMag
/* 805DF4D4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805DF4D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805DF4DC  40 81 00 58 */	ble lbl_805DF534
/* 805DF4E0  FC 00 08 34 */	frsqrte f0, f1
/* 805DF4E4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805DF4E8  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF4EC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805DF4F0  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF4F4  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF4F8  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF4FC  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF500  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF504  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF508  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF50C  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF510  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF514  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF518  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF51C  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF520  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF524  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF528  FF E1 00 32 */	fmul f31, f1, f0
/* 805DF52C  FF E0 F8 18 */	frsp f31, f31
/* 805DF530  48 00 00 90 */	b lbl_805DF5C0
lbl_805DF534:
/* 805DF534  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 805DF538  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805DF53C  40 80 00 10 */	bge lbl_805DF54C
/* 805DF540  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805DF544  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 805DF548  48 00 00 78 */	b lbl_805DF5C0
lbl_805DF54C:
/* 805DF54C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805DF550  80 81 00 18 */	lwz r4, 0x18(r1)
/* 805DF554  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805DF558  3C 00 7F 80 */	lis r0, 0x7f80
/* 805DF55C  7C 03 00 00 */	cmpw r3, r0
/* 805DF560  41 82 00 14 */	beq lbl_805DF574
/* 805DF564  40 80 00 40 */	bge lbl_805DF5A4
/* 805DF568  2C 03 00 00 */	cmpwi r3, 0
/* 805DF56C  41 82 00 20 */	beq lbl_805DF58C
/* 805DF570  48 00 00 34 */	b lbl_805DF5A4
lbl_805DF574:
/* 805DF574  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805DF578  41 82 00 0C */	beq lbl_805DF584
/* 805DF57C  38 00 00 01 */	li r0, 1
/* 805DF580  48 00 00 28 */	b lbl_805DF5A8
lbl_805DF584:
/* 805DF584  38 00 00 02 */	li r0, 2
/* 805DF588  48 00 00 20 */	b lbl_805DF5A8
lbl_805DF58C:
/* 805DF58C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805DF590  41 82 00 0C */	beq lbl_805DF59C
/* 805DF594  38 00 00 05 */	li r0, 5
/* 805DF598  48 00 00 10 */	b lbl_805DF5A8
lbl_805DF59C:
/* 805DF59C  38 00 00 03 */	li r0, 3
/* 805DF5A0  48 00 00 08 */	b lbl_805DF5A8
lbl_805DF5A4:
/* 805DF5A4  38 00 00 04 */	li r0, 4
lbl_805DF5A8:
/* 805DF5A8  2C 00 00 01 */	cmpwi r0, 1
/* 805DF5AC  40 82 00 10 */	bne lbl_805DF5BC
/* 805DF5B0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805DF5B4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 805DF5B8  48 00 00 08 */	b lbl_805DF5C0
lbl_805DF5BC:
/* 805DF5BC  FF E0 08 90 */	fmr f31, f1
lbl_805DF5C0:
/* 805DF5C0  7F C3 F3 78 */	mr r3, r30
/* 805DF5C4  4B D6 7B 74 */	b PSVECSquareMag
/* 805DF5C8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805DF5CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805DF5D0  40 81 00 58 */	ble lbl_805DF628
/* 805DF5D4  FC 00 08 34 */	frsqrte f0, f1
/* 805DF5D8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805DF5DC  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF5E0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805DF5E4  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF5E8  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF5EC  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF5F0  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF5F4  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF5F8  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF5FC  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF600  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF604  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF608  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF60C  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF610  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF614  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF618  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF61C  FC 21 00 32 */	fmul f1, f1, f0
/* 805DF620  FC 20 08 18 */	frsp f1, f1
/* 805DF624  48 00 00 88 */	b lbl_805DF6AC
lbl_805DF628:
/* 805DF628  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 805DF62C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805DF630  40 80 00 10 */	bge lbl_805DF640
/* 805DF634  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805DF638  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805DF63C  48 00 00 70 */	b lbl_805DF6AC
lbl_805DF640:
/* 805DF640  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805DF644  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805DF648  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805DF64C  3C 00 7F 80 */	lis r0, 0x7f80
/* 805DF650  7C 03 00 00 */	cmpw r3, r0
/* 805DF654  41 82 00 14 */	beq lbl_805DF668
/* 805DF658  40 80 00 40 */	bge lbl_805DF698
/* 805DF65C  2C 03 00 00 */	cmpwi r3, 0
/* 805DF660  41 82 00 20 */	beq lbl_805DF680
/* 805DF664  48 00 00 34 */	b lbl_805DF698
lbl_805DF668:
/* 805DF668  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805DF66C  41 82 00 0C */	beq lbl_805DF678
/* 805DF670  38 00 00 01 */	li r0, 1
/* 805DF674  48 00 00 28 */	b lbl_805DF69C
lbl_805DF678:
/* 805DF678  38 00 00 02 */	li r0, 2
/* 805DF67C  48 00 00 20 */	b lbl_805DF69C
lbl_805DF680:
/* 805DF680  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805DF684  41 82 00 0C */	beq lbl_805DF690
/* 805DF688  38 00 00 05 */	li r0, 5
/* 805DF68C  48 00 00 10 */	b lbl_805DF69C
lbl_805DF690:
/* 805DF690  38 00 00 03 */	li r0, 3
/* 805DF694  48 00 00 08 */	b lbl_805DF69C
lbl_805DF698:
/* 805DF698  38 00 00 04 */	li r0, 4
lbl_805DF69C:
/* 805DF69C  2C 00 00 01 */	cmpwi r0, 1
/* 805DF6A0  40 82 00 0C */	bne lbl_805DF6AC
/* 805DF6A4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805DF6A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805DF6AC:
/* 805DF6AC  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 805DF6B0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 805DF6B4  EC 00 F8 24 */	fdivs f0, f0, f31
/* 805DF6B8  EC 00 00 72 */	fmuls f0, f0, f1
/* 805DF6BC  EC 02 00 32 */	fmuls f0, f2, f0
/* 805DF6C0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805DF6C4  38 61 00 3C */	addi r3, r1, 0x3c
/* 805DF6C8  4B D6 7A 70 */	b PSVECSquareMag
/* 805DF6CC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805DF6D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805DF6D4  40 81 00 58 */	ble lbl_805DF72C
/* 805DF6D8  FC 00 08 34 */	frsqrte f0, f1
/* 805DF6DC  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805DF6E0  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF6E4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805DF6E8  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF6EC  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF6F0  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF6F4  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF6F8  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF6FC  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF700  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF704  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF708  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF70C  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF710  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF714  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF718  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF71C  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF720  FC 21 00 32 */	fmul f1, f1, f0
/* 805DF724  FC 20 08 18 */	frsp f1, f1
/* 805DF728  48 00 00 88 */	b lbl_805DF7B0
lbl_805DF72C:
/* 805DF72C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 805DF730  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805DF734  40 80 00 10 */	bge lbl_805DF744
/* 805DF738  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805DF73C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805DF740  48 00 00 70 */	b lbl_805DF7B0
lbl_805DF744:
/* 805DF744  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805DF748  80 81 00 10 */	lwz r4, 0x10(r1)
/* 805DF74C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805DF750  3C 00 7F 80 */	lis r0, 0x7f80
/* 805DF754  7C 03 00 00 */	cmpw r3, r0
/* 805DF758  41 82 00 14 */	beq lbl_805DF76C
/* 805DF75C  40 80 00 40 */	bge lbl_805DF79C
/* 805DF760  2C 03 00 00 */	cmpwi r3, 0
/* 805DF764  41 82 00 20 */	beq lbl_805DF784
/* 805DF768  48 00 00 34 */	b lbl_805DF79C
lbl_805DF76C:
/* 805DF76C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805DF770  41 82 00 0C */	beq lbl_805DF77C
/* 805DF774  38 00 00 01 */	li r0, 1
/* 805DF778  48 00 00 28 */	b lbl_805DF7A0
lbl_805DF77C:
/* 805DF77C  38 00 00 02 */	li r0, 2
/* 805DF780  48 00 00 20 */	b lbl_805DF7A0
lbl_805DF784:
/* 805DF784  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805DF788  41 82 00 0C */	beq lbl_805DF794
/* 805DF78C  38 00 00 05 */	li r0, 5
/* 805DF790  48 00 00 10 */	b lbl_805DF7A0
lbl_805DF794:
/* 805DF794  38 00 00 03 */	li r0, 3
/* 805DF798  48 00 00 08 */	b lbl_805DF7A0
lbl_805DF79C:
/* 805DF79C  38 00 00 04 */	li r0, 4
lbl_805DF7A0:
/* 805DF7A0  2C 00 00 01 */	cmpwi r0, 1
/* 805DF7A4  40 82 00 0C */	bne lbl_805DF7B0
/* 805DF7A8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805DF7AC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805DF7B0:
/* 805DF7B0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 805DF7B4  EC 00 08 24 */	fdivs f0, f0, f1
/* 805DF7B8  EC 1E 00 32 */	fmuls f0, f30, f0
/* 805DF7BC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805DF7C0  38 61 00 3C */	addi r3, r1, 0x3c
/* 805DF7C4  4B D6 79 74 */	b PSVECSquareMag
/* 805DF7C8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805DF7CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805DF7D0  40 81 00 58 */	ble lbl_805DF828
/* 805DF7D4  FC 00 08 34 */	frsqrte f0, f1
/* 805DF7D8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805DF7DC  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF7E0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805DF7E4  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF7E8  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF7EC  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF7F0  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF7F4  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF7F8  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF7FC  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF800  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF804  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF808  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF80C  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF810  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF814  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF818  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF81C  FF E1 00 32 */	fmul f31, f1, f0
/* 805DF820  FF E0 F8 18 */	frsp f31, f31
/* 805DF824  48 00 00 90 */	b lbl_805DF8B4
lbl_805DF828:
/* 805DF828  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 805DF82C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805DF830  40 80 00 10 */	bge lbl_805DF840
/* 805DF834  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805DF838  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 805DF83C  48 00 00 78 */	b lbl_805DF8B4
lbl_805DF840:
/* 805DF840  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805DF844  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805DF848  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805DF84C  3C 00 7F 80 */	lis r0, 0x7f80
/* 805DF850  7C 03 00 00 */	cmpw r3, r0
/* 805DF854  41 82 00 14 */	beq lbl_805DF868
/* 805DF858  40 80 00 40 */	bge lbl_805DF898
/* 805DF85C  2C 03 00 00 */	cmpwi r3, 0
/* 805DF860  41 82 00 20 */	beq lbl_805DF880
/* 805DF864  48 00 00 34 */	b lbl_805DF898
lbl_805DF868:
/* 805DF868  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805DF86C  41 82 00 0C */	beq lbl_805DF878
/* 805DF870  38 00 00 01 */	li r0, 1
/* 805DF874  48 00 00 28 */	b lbl_805DF89C
lbl_805DF878:
/* 805DF878  38 00 00 02 */	li r0, 2
/* 805DF87C  48 00 00 20 */	b lbl_805DF89C
lbl_805DF880:
/* 805DF880  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805DF884  41 82 00 0C */	beq lbl_805DF890
/* 805DF888  38 00 00 05 */	li r0, 5
/* 805DF88C  48 00 00 10 */	b lbl_805DF89C
lbl_805DF890:
/* 805DF890  38 00 00 03 */	li r0, 3
/* 805DF894  48 00 00 08 */	b lbl_805DF89C
lbl_805DF898:
/* 805DF898  38 00 00 04 */	li r0, 4
lbl_805DF89C:
/* 805DF89C  2C 00 00 01 */	cmpwi r0, 1
/* 805DF8A0  40 82 00 10 */	bne lbl_805DF8B0
/* 805DF8A4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805DF8A8  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 805DF8AC  48 00 00 08 */	b lbl_805DF8B4
lbl_805DF8B0:
/* 805DF8B0  FF E0 08 90 */	fmr f31, f1
lbl_805DF8B4:
/* 805DF8B4  7F C3 F3 78 */	mr r3, r30
/* 805DF8B8  4B D6 78 80 */	b PSVECSquareMag
/* 805DF8BC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805DF8C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805DF8C4  40 81 00 58 */	ble lbl_805DF91C
/* 805DF8C8  FC 00 08 34 */	frsqrte f0, f1
/* 805DF8CC  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805DF8D0  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF8D4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805DF8D8  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF8DC  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF8E0  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF8E4  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF8E8  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF8EC  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF8F0  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF8F4  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF8F8  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF8FC  FC 44 00 32 */	fmul f2, f4, f0
/* 805DF900  FC 00 00 32 */	fmul f0, f0, f0
/* 805DF904  FC 01 00 32 */	fmul f0, f1, f0
/* 805DF908  FC 03 00 28 */	fsub f0, f3, f0
/* 805DF90C  FC 02 00 32 */	fmul f0, f2, f0
/* 805DF910  FC 21 00 32 */	fmul f1, f1, f0
/* 805DF914  FC 20 08 18 */	frsp f1, f1
/* 805DF918  48 00 00 88 */	b lbl_805DF9A0
lbl_805DF91C:
/* 805DF91C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 805DF920  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805DF924  40 80 00 10 */	bge lbl_805DF934
/* 805DF928  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805DF92C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805DF930  48 00 00 70 */	b lbl_805DF9A0
lbl_805DF934:
/* 805DF934  D0 21 00 08 */	stfs f1, 8(r1)
/* 805DF938  80 81 00 08 */	lwz r4, 8(r1)
/* 805DF93C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805DF940  3C 00 7F 80 */	lis r0, 0x7f80
/* 805DF944  7C 03 00 00 */	cmpw r3, r0
/* 805DF948  41 82 00 14 */	beq lbl_805DF95C
/* 805DF94C  40 80 00 40 */	bge lbl_805DF98C
/* 805DF950  2C 03 00 00 */	cmpwi r3, 0
/* 805DF954  41 82 00 20 */	beq lbl_805DF974
/* 805DF958  48 00 00 34 */	b lbl_805DF98C
lbl_805DF95C:
/* 805DF95C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805DF960  41 82 00 0C */	beq lbl_805DF96C
/* 805DF964  38 00 00 01 */	li r0, 1
/* 805DF968  48 00 00 28 */	b lbl_805DF990
lbl_805DF96C:
/* 805DF96C  38 00 00 02 */	li r0, 2
/* 805DF970  48 00 00 20 */	b lbl_805DF990
lbl_805DF974:
/* 805DF974  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805DF978  41 82 00 0C */	beq lbl_805DF984
/* 805DF97C  38 00 00 05 */	li r0, 5
/* 805DF980  48 00 00 10 */	b lbl_805DF990
lbl_805DF984:
/* 805DF984  38 00 00 03 */	li r0, 3
/* 805DF988  48 00 00 08 */	b lbl_805DF990
lbl_805DF98C:
/* 805DF98C  38 00 00 04 */	li r0, 4
lbl_805DF990:
/* 805DF990  2C 00 00 01 */	cmpwi r0, 1
/* 805DF994  40 82 00 0C */	bne lbl_805DF9A0
/* 805DF998  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805DF99C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805DF9A0:
/* 805DF9A0  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 805DF9A4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 805DF9A8  EC 00 F8 24 */	fdivs f0, f0, f31
/* 805DF9AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 805DF9B0  EC 22 00 32 */	fmuls f1, f2, f0
/* 805DF9B4  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 805DF9B8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 805DF9BC  D0 1D 00 00 */	stfs f0, 0(r29)
/* 805DF9C0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 805DF9C4  D0 1D 00 04 */	stfs f0, 4(r29)
/* 805DF9C8  D0 3D 00 08 */	stfs f1, 8(r29)
/* 805DF9CC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 805DF9D0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 805DF9D4  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 805DF9D8  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 805DF9DC  39 61 00 60 */	addi r11, r1, 0x60
/* 805DF9E0  4B D8 28 44 */	b _restgpr_28
/* 805DF9E4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805DF9E8  7C 08 03 A6 */	mtlr r0
/* 805DF9EC  38 21 00 80 */	addi r1, r1, 0x80
/* 805DF9F0  4E 80 00 20 */	blr 
