lbl_80CDF2B8:
/* 80CDF2B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CDF2BC  7C 08 02 A6 */	mflr r0
/* 80CDF2C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CDF2C4  39 61 00 40 */	addi r11, r1, 0x40
/* 80CDF2C8  4B 68 2F 10 */	b _savegpr_28
/* 80CDF2CC  7C 7F 1B 78 */	mr r31, r3
/* 80CDF2D0  3C 60 80 CE */	lis r3, lit_3702@ha
/* 80CDF2D4  3B C3 F7 20 */	addi r30, r3, lit_3702@l
/* 80CDF2D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDF2DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDF2E0  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80CDF2E4  3B 80 00 00 */	li r28, 0
/* 80CDF2E8  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 80CDF2EC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CDF2F0  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 80CDF2F4  41 80 00 1C */	blt lbl_80CDF310
/* 80CDF2F8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80CDF2FC  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80CDF300  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CDF304  EC 02 00 2A */	fadds f0, f2, f0
/* 80CDF308  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80CDF30C  40 81 00 0C */	ble lbl_80CDF318
lbl_80CDF310:
/* 80CDF310  38 60 00 00 */	li r3, 0
/* 80CDF314  48 00 01 6C */	b lbl_80CDF480
lbl_80CDF318:
/* 80CDF318  38 61 00 18 */	addi r3, r1, 0x18
/* 80CDF31C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CDF320  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80CDF324  4B 58 78 10 */	b __mi__4cXyzCFRC3Vec
/* 80CDF328  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80CDF32C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80CDF330  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CDF334  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CDF338  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80CDF33C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80CDF340  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80CDF344  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80CDF348  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CDF34C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CDF350  38 61 00 0C */	addi r3, r1, 0xc
/* 80CDF354  4B 66 7D E4 */	b PSVECSquareMag
/* 80CDF358  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80CDF35C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CDF360  40 81 00 58 */	ble lbl_80CDF3B8
/* 80CDF364  FC 00 08 34 */	frsqrte f0, f1
/* 80CDF368  C8 9E 00 18 */	lfd f4, 0x18(r30)
/* 80CDF36C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CDF370  C8 7E 00 20 */	lfd f3, 0x20(r30)
/* 80CDF374  FC 00 00 32 */	fmul f0, f0, f0
/* 80CDF378  FC 01 00 32 */	fmul f0, f1, f0
/* 80CDF37C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CDF380  FC 02 00 32 */	fmul f0, f2, f0
/* 80CDF384  FC 44 00 32 */	fmul f2, f4, f0
/* 80CDF388  FC 00 00 32 */	fmul f0, f0, f0
/* 80CDF38C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CDF390  FC 03 00 28 */	fsub f0, f3, f0
/* 80CDF394  FC 02 00 32 */	fmul f0, f2, f0
/* 80CDF398  FC 44 00 32 */	fmul f2, f4, f0
/* 80CDF39C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CDF3A0  FC 01 00 32 */	fmul f0, f1, f0
/* 80CDF3A4  FC 03 00 28 */	fsub f0, f3, f0
/* 80CDF3A8  FC 02 00 32 */	fmul f0, f2, f0
/* 80CDF3AC  FC 21 00 32 */	fmul f1, f1, f0
/* 80CDF3B0  FC 20 08 18 */	frsp f1, f1
/* 80CDF3B4  48 00 00 88 */	b lbl_80CDF43C
lbl_80CDF3B8:
/* 80CDF3B8  C8 1E 00 28 */	lfd f0, 0x28(r30)
/* 80CDF3BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CDF3C0  40 80 00 10 */	bge lbl_80CDF3D0
/* 80CDF3C4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CDF3C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80CDF3CC  48 00 00 70 */	b lbl_80CDF43C
lbl_80CDF3D0:
/* 80CDF3D0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CDF3D4  80 81 00 08 */	lwz r4, 8(r1)
/* 80CDF3D8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CDF3DC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CDF3E0  7C 03 00 00 */	cmpw r3, r0
/* 80CDF3E4  41 82 00 14 */	beq lbl_80CDF3F8
/* 80CDF3E8  40 80 00 40 */	bge lbl_80CDF428
/* 80CDF3EC  2C 03 00 00 */	cmpwi r3, 0
/* 80CDF3F0  41 82 00 20 */	beq lbl_80CDF410
/* 80CDF3F4  48 00 00 34 */	b lbl_80CDF428
lbl_80CDF3F8:
/* 80CDF3F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CDF3FC  41 82 00 0C */	beq lbl_80CDF408
/* 80CDF400  38 00 00 01 */	li r0, 1
/* 80CDF404  48 00 00 28 */	b lbl_80CDF42C
lbl_80CDF408:
/* 80CDF408  38 00 00 02 */	li r0, 2
/* 80CDF40C  48 00 00 20 */	b lbl_80CDF42C
lbl_80CDF410:
/* 80CDF410  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CDF414  41 82 00 0C */	beq lbl_80CDF420
/* 80CDF418  38 00 00 05 */	li r0, 5
/* 80CDF41C  48 00 00 10 */	b lbl_80CDF42C
lbl_80CDF420:
/* 80CDF420  38 00 00 03 */	li r0, 3
/* 80CDF424  48 00 00 08 */	b lbl_80CDF42C
lbl_80CDF428:
/* 80CDF428  38 00 00 04 */	li r0, 4
lbl_80CDF42C:
/* 80CDF42C  2C 00 00 01 */	cmpwi r0, 1
/* 80CDF430  40 82 00 0C */	bne lbl_80CDF43C
/* 80CDF434  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CDF438  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80CDF43C:
/* 80CDF43C  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80CDF440  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CDF444  EC 02 00 28 */	fsubs f0, f2, f0
/* 80CDF448  FC 00 02 10 */	fabs f0, f0
/* 80CDF44C  FC 60 00 18 */	frsp f3, f0
/* 80CDF450  C0 5F 05 6C */	lfs f2, 0x56c(r31)
/* 80CDF454  C0 1F 05 74 */	lfs f0, 0x574(r31)
/* 80CDF458  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80CDF45C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80CDF460  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CDF464  4C 40 13 82 */	cror 2, 0, 2
/* 80CDF468  40 82 00 0C */	bne lbl_80CDF474
/* 80CDF46C  3B 80 00 01 */	li r28, 1
/* 80CDF470  48 00 00 0C */	b lbl_80CDF47C
lbl_80CDF474:
/* 80CDF474  38 00 00 00 */	li r0, 0
/* 80CDF478  98 1F 05 69 */	stb r0, 0x569(r31)
lbl_80CDF47C:
/* 80CDF47C  7F 83 E3 78 */	mr r3, r28
lbl_80CDF480:
/* 80CDF480  39 61 00 40 */	addi r11, r1, 0x40
/* 80CDF484  4B 68 2D A0 */	b _restgpr_28
/* 80CDF488  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CDF48C  7C 08 03 A6 */	mtlr r0
/* 80CDF490  38 21 00 40 */	addi r1, r1, 0x40
/* 80CDF494  4E 80 00 20 */	blr 
