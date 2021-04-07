lbl_80BDF3B8:
/* 80BDF3B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BDF3BC  7C 08 02 A6 */	mflr r0
/* 80BDF3C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BDF3C4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BDF3C8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BDF3CC  7C 7E 1B 78 */	mr r30, r3
/* 80BDF3D0  3C 60 80 BE */	lis r3, l_swOffset@ha /* 0x80BDF870@ha */
/* 80BDF3D4  3B E3 F8 70 */	addi r31, r3, l_swOffset@l /* 0x80BDF870@l */
/* 80BDF3D8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BDF3DC  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 80BDF3E0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BDF3E4  7C 04 07 74 */	extsb r4, r0
/* 80BDF3E8  4B 47 24 05 */	bl dPath_GetRoomPath__Fii
/* 80BDF3EC  88 9E 05 E0 */	lbz r4, 0x5e0(r30)
/* 80BDF3F0  88 1E 05 E1 */	lbz r0, 0x5e1(r30)
/* 80BDF3F4  7C 00 07 74 */	extsb r0, r0
/* 80BDF3F8  7C 84 02 14 */	add r4, r4, r0
/* 80BDF3FC  4B 47 23 B5 */	bl dPath_GetPnt__FPC5dPathi
/* 80BDF400  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BDF404  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BDF408  C0 23 00 08 */	lfs f1, 8(r3)
/* 80BDF40C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BDF410  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BDF414  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BDF418  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BDF41C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDF420  40 81 00 18 */	ble lbl_80BDF438
/* 80BDF424  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80BDF428  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80BDF42C  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80BDF430  4B 69 13 11 */	bl cLib_chaseF__FPfff
/* 80BDF434  48 00 00 14 */	b lbl_80BDF448
lbl_80BDF438:
/* 80BDF438  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80BDF43C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80BDF440  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80BDF444  4B 69 12 FD */	bl cLib_chaseF__FPfff
lbl_80BDF448:
/* 80BDF448  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80BDF44C  FC 00 02 10 */	fabs f0, f0
/* 80BDF450  FC 20 00 18 */	frsp f1, f0
/* 80BDF454  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BDF458  38 81 00 10 */	addi r4, r1, 0x10
/* 80BDF45C  4B 69 13 51 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80BDF460  88 9E 05 E0 */	lbz r4, 0x5e0(r30)
/* 80BDF464  88 1E 05 E1 */	lbz r0, 0x5e1(r30)
/* 80BDF468  7C 00 07 74 */	extsb r0, r0
/* 80BDF46C  7C 04 02 14 */	add r0, r4, r0
/* 80BDF470  2C 00 00 01 */	cmpwi r0, 1
/* 80BDF474  40 82 01 04 */	bne lbl_80BDF578
/* 80BDF478  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BDF47C  38 81 00 10 */	addi r4, r1, 0x10
/* 80BDF480  4B 76 7F 1D */	bl PSVECSquareDistance
/* 80BDF484  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80BDF488  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDF48C  40 81 00 58 */	ble lbl_80BDF4E4
/* 80BDF490  FC 00 08 34 */	frsqrte f0, f1
/* 80BDF494  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 80BDF498  FC 44 00 32 */	fmul f2, f4, f0
/* 80BDF49C  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BDF4A0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BDF4A4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BDF4A8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BDF4AC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BDF4B0  FC 44 00 32 */	fmul f2, f4, f0
/* 80BDF4B4  FC 00 00 32 */	fmul f0, f0, f0
/* 80BDF4B8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BDF4BC  FC 03 00 28 */	fsub f0, f3, f0
/* 80BDF4C0  FC 02 00 32 */	fmul f0, f2, f0
/* 80BDF4C4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BDF4C8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BDF4CC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BDF4D0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BDF4D4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BDF4D8  FC 21 00 32 */	fmul f1, f1, f0
/* 80BDF4DC  FC 20 08 18 */	frsp f1, f1
/* 80BDF4E0  48 00 00 88 */	b lbl_80BDF568
lbl_80BDF4E4:
/* 80BDF4E4  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 80BDF4E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDF4EC  40 80 00 10 */	bge lbl_80BDF4FC
/* 80BDF4F0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BDF4F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BDF4F8  48 00 00 70 */	b lbl_80BDF568
lbl_80BDF4FC:
/* 80BDF4FC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BDF500  80 81 00 08 */	lwz r4, 8(r1)
/* 80BDF504  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BDF508  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BDF50C  7C 03 00 00 */	cmpw r3, r0
/* 80BDF510  41 82 00 14 */	beq lbl_80BDF524
/* 80BDF514  40 80 00 40 */	bge lbl_80BDF554
/* 80BDF518  2C 03 00 00 */	cmpwi r3, 0
/* 80BDF51C  41 82 00 20 */	beq lbl_80BDF53C
/* 80BDF520  48 00 00 34 */	b lbl_80BDF554
lbl_80BDF524:
/* 80BDF524  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BDF528  41 82 00 0C */	beq lbl_80BDF534
/* 80BDF52C  38 00 00 01 */	li r0, 1
/* 80BDF530  48 00 00 28 */	b lbl_80BDF558
lbl_80BDF534:
/* 80BDF534  38 00 00 02 */	li r0, 2
/* 80BDF538  48 00 00 20 */	b lbl_80BDF558
lbl_80BDF53C:
/* 80BDF53C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BDF540  41 82 00 0C */	beq lbl_80BDF54C
/* 80BDF544  38 00 00 05 */	li r0, 5
/* 80BDF548  48 00 00 10 */	b lbl_80BDF558
lbl_80BDF54C:
/* 80BDF54C  38 00 00 03 */	li r0, 3
/* 80BDF550  48 00 00 08 */	b lbl_80BDF558
lbl_80BDF554:
/* 80BDF554  38 00 00 04 */	li r0, 4
lbl_80BDF558:
/* 80BDF558  2C 00 00 01 */	cmpwi r0, 1
/* 80BDF55C  40 82 00 0C */	bne lbl_80BDF568
/* 80BDF560  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BDF564  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BDF568:
/* 80BDF568  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80BDF56C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDF570  7C 00 00 26 */	mfcr r0
/* 80BDF574  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_80BDF578:
/* 80BDF578  2C 03 00 00 */	cmpwi r3, 0
/* 80BDF57C  41 82 00 54 */	beq lbl_80BDF5D0
/* 80BDF580  88 7E 05 E0 */	lbz r3, 0x5e0(r30)
/* 80BDF584  88 9E 05 E1 */	lbz r4, 0x5e1(r30)
/* 80BDF588  7C 80 07 74 */	extsb r0, r4
/* 80BDF58C  7C 03 02 14 */	add r0, r3, r0
/* 80BDF590  2C 00 00 01 */	cmpwi r0, 1
/* 80BDF594  41 82 00 2C */	beq lbl_80BDF5C0
/* 80BDF598  7C 03 22 14 */	add r0, r3, r4
/* 80BDF59C  98 1E 05 E0 */	stb r0, 0x5e0(r30)
/* 80BDF5A0  88 1E 05 E0 */	lbz r0, 0x5e0(r30)
/* 80BDF5A4  28 00 00 00 */	cmplwi r0, 0
/* 80BDF5A8  40 82 00 10 */	bne lbl_80BDF5B8
/* 80BDF5AC  38 00 00 01 */	li r0, 1
/* 80BDF5B0  98 1E 05 E1 */	stb r0, 0x5e1(r30)
/* 80BDF5B4  48 00 00 0C */	b lbl_80BDF5C0
lbl_80BDF5B8:
/* 80BDF5B8  38 00 FF FF */	li r0, -1
/* 80BDF5BC  98 1E 05 E1 */	stb r0, 0x5e1(r30)
lbl_80BDF5C0:
/* 80BDF5C0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80BDF5C4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80BDF5C8  38 60 00 01 */	li r3, 1
/* 80BDF5CC  48 00 00 34 */	b lbl_80BDF600
lbl_80BDF5D0:
/* 80BDF5D0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080158@ha */
/* 80BDF5D4  38 03 01 58 */	addi r0, r3, 0x0158 /* 0x00080158@l */
/* 80BDF5D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BDF5DC  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80BDF5E0  38 81 00 0C */	addi r4, r1, 0xc
/* 80BDF5E4  38 A0 00 00 */	li r5, 0
/* 80BDF5E8  38 C0 FF FF */	li r6, -1
/* 80BDF5EC  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 80BDF5F0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80BDF5F4  7D 89 03 A6 */	mtctr r12
/* 80BDF5F8  4E 80 04 21 */	bctrl 
/* 80BDF5FC  38 60 00 00 */	li r3, 0
lbl_80BDF600:
/* 80BDF600  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BDF604  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BDF608  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BDF60C  7C 08 03 A6 */	mtlr r0
/* 80BDF610  38 21 00 30 */	addi r1, r1, 0x30
/* 80BDF614  4E 80 00 20 */	blr 
