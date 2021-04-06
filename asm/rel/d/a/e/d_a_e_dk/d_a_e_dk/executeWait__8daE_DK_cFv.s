lbl_806AB29C:
/* 806AB29C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806AB2A0  7C 08 02 A6 */	mflr r0
/* 806AB2A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 806AB2A8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 806AB2AC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 806AB2B0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 806AB2B4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 806AB2B8  7C 7F 1B 78 */	mr r31, r3
/* 806AB2BC  3C 80 80 6B */	lis r4, lit_3764@ha /* 0x806AD538@ha */
/* 806AB2C0  3B C4 D5 38 */	addi r30, r4, lit_3764@l /* 0x806AD538@l */
/* 806AB2C4  80 03 06 80 */	lwz r0, 0x680(r3)
/* 806AB2C8  2C 00 00 01 */	cmpwi r0, 1
/* 806AB2CC  41 82 00 4C */	beq lbl_806AB318
/* 806AB2D0  40 80 03 94 */	bge lbl_806AB664
/* 806AB2D4  2C 00 00 00 */	cmpwi r0, 0
/* 806AB2D8  40 80 00 08 */	bge lbl_806AB2E0
/* 806AB2DC  48 00 03 88 */	b lbl_806AB664
lbl_806AB2E0:
/* 806AB2E0  38 80 00 0F */	li r4, 0xf
/* 806AB2E4  38 A0 00 02 */	li r5, 2
/* 806AB2E8  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806AB2EC  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 806AB2F0  4B FF F2 D9 */	bl setBck__8daE_DK_cFiUcff
/* 806AB2F4  7F E3 FB 78 */	mr r3, r31
/* 806AB2F8  38 80 00 0C */	li r4, 0xc
/* 806AB2FC  38 A0 00 02 */	li r5, 2
/* 806AB300  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806AB304  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 806AB308  4B FF F3 85 */	bl setBckCore__8daE_DK_cFiUcff
/* 806AB30C  38 00 00 01 */	li r0, 1
/* 806AB310  90 1F 06 80 */	stw r0, 0x680(r31)
/* 806AB314  48 00 03 50 */	b lbl_806AB664
lbl_806AB318:
/* 806AB318  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806AB31C  38 63 00 0C */	addi r3, r3, 0xc
/* 806AB320  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806AB324  4B C7 D1 09 */	bl checkPass__12J3DFrameCtrlFf
/* 806AB328  2C 03 00 00 */	cmpwi r3, 0
/* 806AB32C  40 82 00 1C */	bne lbl_806AB348
/* 806AB330  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806AB334  38 63 00 0C */	addi r3, r3, 0xc
/* 806AB338  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 806AB33C  4B C7 D0 F1 */	bl checkPass__12J3DFrameCtrlFf
/* 806AB340  2C 03 00 00 */	cmpwi r3, 0
/* 806AB344  41 82 00 30 */	beq lbl_806AB374
lbl_806AB348:
/* 806AB348  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702A1@ha */
/* 806AB34C  38 03 02 A1 */	addi r0, r3, 0x02A1 /* 0x000702A1@l */
/* 806AB350  90 01 00 0C */	stw r0, 0xc(r1)
/* 806AB354  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 806AB358  38 81 00 0C */	addi r4, r1, 0xc
/* 806AB35C  38 A0 00 00 */	li r5, 0
/* 806AB360  38 C0 FF FF */	li r6, -1
/* 806AB364  81 9F 05 CC */	lwz r12, 0x5cc(r31)
/* 806AB368  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806AB36C  7D 89 03 A6 */	mtctr r12
/* 806AB370  4E 80 04 21 */	bctrl 
lbl_806AB374:
/* 806AB374  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806AB378  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 806AB37C  38 63 00 0C */	addi r3, r3, 0xc
/* 806AB380  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 806AB384  4B C7 D0 A9 */	bl checkPass__12J3DFrameCtrlFf
/* 806AB388  2C 03 00 00 */	cmpwi r3, 0
/* 806AB38C  40 82 00 1C */	bne lbl_806AB3A8
/* 806AB390  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806AB394  38 63 00 0C */	addi r3, r3, 0xc
/* 806AB398  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 806AB39C  4B C7 D0 91 */	bl checkPass__12J3DFrameCtrlFf
/* 806AB3A0  2C 03 00 00 */	cmpwi r3, 0
/* 806AB3A4  41 82 01 A0 */	beq lbl_806AB544
lbl_806AB3A8:
/* 806AB3A8  38 61 00 1C */	addi r3, r1, 0x1c
/* 806AB3AC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806AB3B0  38 BF 04 A8 */	addi r5, r31, 0x4a8
/* 806AB3B4  4B BB B7 81 */	bl __mi__4cXyzCFRC3Vec
/* 806AB3B8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806AB3BC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806AB3C0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 806AB3C4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 806AB3C8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806AB3CC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806AB3D0  FC 00 0A 10 */	fabs f0, f1
/* 806AB3D4  FC 40 00 18 */	frsp f2, f0
/* 806AB3D8  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 806AB3DC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806AB3E0  40 80 00 10 */	bge lbl_806AB3F0
/* 806AB3E4  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 806AB3E8  D0 1F 06 AC */	stfs f0, 0x6ac(r31)
/* 806AB3EC  48 00 00 24 */	b lbl_806AB410
lbl_806AB3F0:
/* 806AB3F0  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 806AB3F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AB3F8  40 81 00 10 */	ble lbl_806AB408
/* 806AB3FC  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 806AB400  D0 1F 06 AC */	stfs f0, 0x6ac(r31)
/* 806AB404  48 00 00 0C */	b lbl_806AB410
lbl_806AB408:
/* 806AB408  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 806AB40C  D0 1F 06 AC */	stfs f0, 0x6ac(r31)
lbl_806AB410:
/* 806AB410  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806AB414  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806AB418  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 806AB41C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806AB420  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806AB424  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806AB428  38 61 00 10 */	addi r3, r1, 0x10
/* 806AB42C  4B C9 BD 0D */	bl PSVECSquareMag
/* 806AB430  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 806AB434  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AB438  40 81 00 58 */	ble lbl_806AB490
/* 806AB43C  FC 00 08 34 */	frsqrte f0, f1
/* 806AB440  C8 9E 00 30 */	lfd f4, 0x30(r30)
/* 806AB444  FC 44 00 32 */	fmul f2, f4, f0
/* 806AB448  C8 7E 00 38 */	lfd f3, 0x38(r30)
/* 806AB44C  FC 00 00 32 */	fmul f0, f0, f0
/* 806AB450  FC 01 00 32 */	fmul f0, f1, f0
/* 806AB454  FC 03 00 28 */	fsub f0, f3, f0
/* 806AB458  FC 02 00 32 */	fmul f0, f2, f0
/* 806AB45C  FC 44 00 32 */	fmul f2, f4, f0
/* 806AB460  FC 00 00 32 */	fmul f0, f0, f0
/* 806AB464  FC 01 00 32 */	fmul f0, f1, f0
/* 806AB468  FC 03 00 28 */	fsub f0, f3, f0
/* 806AB46C  FC 02 00 32 */	fmul f0, f2, f0
/* 806AB470  FC 44 00 32 */	fmul f2, f4, f0
/* 806AB474  FC 00 00 32 */	fmul f0, f0, f0
/* 806AB478  FC 01 00 32 */	fmul f0, f1, f0
/* 806AB47C  FC 03 00 28 */	fsub f0, f3, f0
/* 806AB480  FC 02 00 32 */	fmul f0, f2, f0
/* 806AB484  FC 21 00 32 */	fmul f1, f1, f0
/* 806AB488  FC 20 08 18 */	frsp f1, f1
/* 806AB48C  48 00 00 88 */	b lbl_806AB514
lbl_806AB490:
/* 806AB490  C8 1E 00 40 */	lfd f0, 0x40(r30)
/* 806AB494  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AB498  40 80 00 10 */	bge lbl_806AB4A8
/* 806AB49C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806AB4A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806AB4A4  48 00 00 70 */	b lbl_806AB514
lbl_806AB4A8:
/* 806AB4A8  D0 21 00 08 */	stfs f1, 8(r1)
/* 806AB4AC  80 81 00 08 */	lwz r4, 8(r1)
/* 806AB4B0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806AB4B4  3C 00 7F 80 */	lis r0, 0x7f80
/* 806AB4B8  7C 03 00 00 */	cmpw r3, r0
/* 806AB4BC  41 82 00 14 */	beq lbl_806AB4D0
/* 806AB4C0  40 80 00 40 */	bge lbl_806AB500
/* 806AB4C4  2C 03 00 00 */	cmpwi r3, 0
/* 806AB4C8  41 82 00 20 */	beq lbl_806AB4E8
/* 806AB4CC  48 00 00 34 */	b lbl_806AB500
lbl_806AB4D0:
/* 806AB4D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806AB4D4  41 82 00 0C */	beq lbl_806AB4E0
/* 806AB4D8  38 00 00 01 */	li r0, 1
/* 806AB4DC  48 00 00 28 */	b lbl_806AB504
lbl_806AB4E0:
/* 806AB4E0  38 00 00 02 */	li r0, 2
/* 806AB4E4  48 00 00 20 */	b lbl_806AB504
lbl_806AB4E8:
/* 806AB4E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806AB4EC  41 82 00 0C */	beq lbl_806AB4F8
/* 806AB4F0  38 00 00 05 */	li r0, 5
/* 806AB4F4  48 00 00 10 */	b lbl_806AB504
lbl_806AB4F8:
/* 806AB4F8  38 00 00 03 */	li r0, 3
/* 806AB4FC  48 00 00 08 */	b lbl_806AB504
lbl_806AB500:
/* 806AB500  38 00 00 04 */	li r0, 4
lbl_806AB504:
/* 806AB504  2C 00 00 01 */	cmpwi r0, 1
/* 806AB508  40 82 00 0C */	bne lbl_806AB514
/* 806AB50C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806AB510  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806AB514:
/* 806AB514  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 806AB518  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AB51C  40 80 00 10 */	bge lbl_806AB52C
/* 806AB520  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 806AB524  D0 1F 06 B0 */	stfs f0, 0x6b0(r31)
/* 806AB528  48 00 00 0C */	b lbl_806AB534
lbl_806AB52C:
/* 806AB52C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806AB530  D0 1F 06 B0 */	stfs f0, 0x6b0(r31)
lbl_806AB534:
/* 806AB534  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806AB538  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 806AB53C  4B BC 56 C9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806AB540  B0 7F 04 DE */	sth r3, 0x4de(r31)
lbl_806AB544:
/* 806AB544  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 806AB548  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806AB54C  4C 41 13 82 */	cror 2, 1, 2
/* 806AB550  40 82 00 08 */	bne lbl_806AB558
/* 806AB554  EF FF 00 28 */	fsubs f31, f31, f0
lbl_806AB558:
/* 806AB558  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 806AB55C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 806AB560  4C 40 13 82 */	cror 2, 0, 2
/* 806AB564  41 82 00 14 */	beq lbl_806AB578
/* 806AB568  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 806AB56C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806AB570  4C 40 13 82 */	cror 2, 0, 2
/* 806AB574  40 82 00 18 */	bne lbl_806AB58C
lbl_806AB578:
/* 806AB578  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 806AB57C  C0 3F 06 AC */	lfs f1, 0x6ac(r31)
/* 806AB580  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 806AB584  4B BC 51 BD */	bl cLib_chaseF__FPfff
/* 806AB588  48 00 00 54 */	b lbl_806AB5DC
lbl_806AB58C:
/* 806AB58C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 806AB590  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806AB594  40 80 00 18 */	bge lbl_806AB5AC
/* 806AB598  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 806AB59C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806AB5A0  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 806AB5A4  4B BC 51 9D */	bl cLib_chaseF__FPfff
/* 806AB5A8  48 00 00 34 */	b lbl_806AB5DC
lbl_806AB5AC:
/* 806AB5AC  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 806AB5B0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806AB5B4  40 80 00 18 */	bge lbl_806AB5CC
/* 806AB5B8  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 806AB5BC  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 806AB5C0  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 806AB5C4  4B BC 51 7D */	bl cLib_chaseF__FPfff
/* 806AB5C8  48 00 00 14 */	b lbl_806AB5DC
lbl_806AB5CC:
/* 806AB5CC  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 806AB5D0  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806AB5D4  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 806AB5D8  4B BC 51 69 */	bl cLib_chaseF__FPfff
lbl_806AB5DC:
/* 806AB5DC  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 806AB5E0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806AB5E4  41 80 00 14 */	blt lbl_806AB5F8
/* 806AB5E8  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 806AB5EC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806AB5F0  4C 41 13 82 */	cror 2, 1, 2
/* 806AB5F4  40 82 00 18 */	bne lbl_806AB60C
lbl_806AB5F8:
/* 806AB5F8  38 7F 05 2C */	addi r3, r31, 0x52c
/* 806AB5FC  C0 3F 06 B0 */	lfs f1, 0x6b0(r31)
/* 806AB600  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 806AB604  4B BC 51 3D */	bl cLib_chaseF__FPfff
/* 806AB608  48 00 00 14 */	b lbl_806AB61C
lbl_806AB60C:
/* 806AB60C  38 7F 05 2C */	addi r3, r31, 0x52c
/* 806AB610  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806AB614  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 806AB618  4B BC 51 29 */	bl cLib_chaseF__FPfff
lbl_806AB61C:
/* 806AB61C  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 806AB620  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 806AB624  38 A0 00 10 */	li r5, 0x10
/* 806AB628  38 C0 01 00 */	li r6, 0x100
/* 806AB62C  38 E0 00 10 */	li r7, 0x10
/* 806AB630  4B BC 4F 11 */	bl cLib_addCalcAngleS__FPsssss
/* 806AB634  7F E3 FB 78 */	mr r3, r31
/* 806AB638  4B FF F2 79 */	bl checkPlayerSearch__8daE_DK_cFv
/* 806AB63C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806AB640  41 82 00 18 */	beq lbl_806AB658
/* 806AB644  7F E3 FB 78 */	mr r3, r31
/* 806AB648  38 80 00 01 */	li r4, 1
/* 806AB64C  38 A0 00 00 */	li r5, 0
/* 806AB650  4B FF F0 E1 */	bl setActionMode__8daE_DK_cFii
/* 806AB654  48 00 00 10 */	b lbl_806AB664
lbl_806AB658:
/* 806AB658  7F E3 FB 78 */	mr r3, r31
/* 806AB65C  FC 20 F8 90 */	fmr f1, f31
/* 806AB660  4B FF F4 B9 */	bl checkPlayerAttack__8daE_DK_cFf
lbl_806AB664:
/* 806AB664  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 806AB668  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 806AB66C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 806AB670  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 806AB674  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806AB678  7C 08 03 A6 */	mtlr r0
/* 806AB67C  38 21 00 50 */	addi r1, r1, 0x50
/* 806AB680  4E 80 00 20 */	blr 
