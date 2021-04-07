lbl_80A122D0:
/* 80A122D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A122D4  7C 08 02 A6 */	mflr r0
/* 80A122D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A122DC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A122E0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80A122E4  7C 7F 1B 78 */	mr r31, r3
/* 80A122E8  3C 60 80 A1 */	lis r3, l_insectParams@ha /* 0x80A13DAC@ha */
/* 80A122EC  3B C3 3D AC */	addi r30, r3, l_insectParams@l /* 0x80A13DAC@l */
/* 80A122F0  80 7F 0E 04 */	lwz r3, 0xe04(r31)
/* 80A122F4  80 9F 0E 08 */	lwz r4, 0xe08(r31)
/* 80A122F8  4B 63 F4 B9 */	bl dPath_GetPnt__FPC5dPathi
/* 80A122FC  80 7F 0E 08 */	lwz r3, 0xe08(r31)
/* 80A12300  38 03 00 01 */	addi r0, r3, 1
/* 80A12304  90 1F 0E 08 */	stw r0, 0xe08(r31)
/* 80A12308  80 9F 0E 08 */	lwz r4, 0xe08(r31)
/* 80A1230C  80 7F 0E 04 */	lwz r3, 0xe04(r31)
/* 80A12310  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80A12314  7C 04 28 00 */	cmpw r4, r5
/* 80A12318  41 80 00 1C */	blt lbl_80A12334
/* 80A1231C  38 05 FF FF */	addi r0, r5, -1
/* 80A12320  90 1F 0E 08 */	stw r0, 0xe08(r31)
/* 80A12324  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 80A12328  D0 1F 0E 0C */	stfs f0, 0xe0c(r31)
/* 80A1232C  38 60 00 01 */	li r3, 1
/* 80A12330  48 00 01 38 */	b lbl_80A12468
lbl_80A12334:
/* 80A12334  4B 63 F4 7D */	bl dPath_GetPnt__FPC5dPathi
/* 80A12338  80 7F 0E 04 */	lwz r3, 0xe04(r31)
/* 80A1233C  80 9F 0E 08 */	lwz r4, 0xe08(r31)
/* 80A12340  4B 63 F4 71 */	bl dPath_GetPnt__FPC5dPathi
/* 80A12344  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80A12348  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A1234C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A12350  C0 3E 01 44 */	lfs f1, 0x144(r30)
/* 80A12354  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80A12358  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80A1235C  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80A12360  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A12364  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A12368  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80A1236C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80A12370  38 61 00 0C */	addi r3, r1, 0xc
/* 80A12374  38 81 00 18 */	addi r4, r1, 0x18
/* 80A12378  4B 93 50 25 */	bl PSVECSquareDistance
/* 80A1237C  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 80A12380  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A12384  40 81 00 58 */	ble lbl_80A123DC
/* 80A12388  FC 00 08 34 */	frsqrte f0, f1
/* 80A1238C  C8 9E 03 88 */	lfd f4, 0x388(r30)
/* 80A12390  FC 44 00 32 */	fmul f2, f4, f0
/* 80A12394  C8 7E 03 90 */	lfd f3, 0x390(r30)
/* 80A12398  FC 00 00 32 */	fmul f0, f0, f0
/* 80A1239C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A123A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A123A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A123A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A123AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A123B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A123B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A123B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A123BC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A123C0  FC 00 00 32 */	fmul f0, f0, f0
/* 80A123C4  FC 01 00 32 */	fmul f0, f1, f0
/* 80A123C8  FC 03 00 28 */	fsub f0, f3, f0
/* 80A123CC  FC 02 00 32 */	fmul f0, f2, f0
/* 80A123D0  FC 21 00 32 */	fmul f1, f1, f0
/* 80A123D4  FC 20 08 18 */	frsp f1, f1
/* 80A123D8  48 00 00 88 */	b lbl_80A12460
lbl_80A123DC:
/* 80A123DC  C8 1E 03 98 */	lfd f0, 0x398(r30)
/* 80A123E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A123E4  40 80 00 10 */	bge lbl_80A123F4
/* 80A123E8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A123EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A123F0  48 00 00 70 */	b lbl_80A12460
lbl_80A123F4:
/* 80A123F4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A123F8  80 81 00 08 */	lwz r4, 8(r1)
/* 80A123FC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A12400  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A12404  7C 03 00 00 */	cmpw r3, r0
/* 80A12408  41 82 00 14 */	beq lbl_80A1241C
/* 80A1240C  40 80 00 40 */	bge lbl_80A1244C
/* 80A12410  2C 03 00 00 */	cmpwi r3, 0
/* 80A12414  41 82 00 20 */	beq lbl_80A12434
/* 80A12418  48 00 00 34 */	b lbl_80A1244C
lbl_80A1241C:
/* 80A1241C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A12420  41 82 00 0C */	beq lbl_80A1242C
/* 80A12424  38 00 00 01 */	li r0, 1
/* 80A12428  48 00 00 28 */	b lbl_80A12450
lbl_80A1242C:
/* 80A1242C  38 00 00 02 */	li r0, 2
/* 80A12430  48 00 00 20 */	b lbl_80A12450
lbl_80A12434:
/* 80A12434  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A12438  41 82 00 0C */	beq lbl_80A12444
/* 80A1243C  38 00 00 05 */	li r0, 5
/* 80A12440  48 00 00 10 */	b lbl_80A12450
lbl_80A12444:
/* 80A12444  38 00 00 03 */	li r0, 3
/* 80A12448  48 00 00 08 */	b lbl_80A12450
lbl_80A1244C:
/* 80A1244C  38 00 00 04 */	li r0, 4
lbl_80A12450:
/* 80A12450  2C 00 00 01 */	cmpwi r0, 1
/* 80A12454  40 82 00 0C */	bne lbl_80A12460
/* 80A12458  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A1245C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A12460:
/* 80A12460  D0 3F 0E 0C */	stfs f1, 0xe0c(r31)
/* 80A12464  38 60 00 00 */	li r3, 0
lbl_80A12468:
/* 80A12468  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A1246C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80A12470  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A12474  7C 08 03 A6 */	mtlr r0
/* 80A12478  38 21 00 30 */	addi r1, r1, 0x30
/* 80A1247C  4E 80 00 20 */	blr 
