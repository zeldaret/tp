lbl_806EC348:
/* 806EC348  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806EC34C  7C 08 02 A6 */	mflr r0
/* 806EC350  90 01 00 84 */	stw r0, 0x84(r1)
/* 806EC354  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 806EC358  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 806EC35C  39 61 00 70 */	addi r11, r1, 0x70
/* 806EC360  4B C7 5E 7D */	bl _savegpr_29
/* 806EC364  7C 7E 1B 78 */	mr r30, r3
/* 806EC368  3C 80 80 6F */	lis r4, lit_3966@ha /* 0x806F0860@ha */
/* 806EC36C  3B E4 08 60 */	addi r31, r4, lit_3966@l /* 0x806F0860@l */
/* 806EC370  80 03 06 C8 */	lwz r0, 0x6c8(r3)
/* 806EC374  2C 00 00 03 */	cmpwi r0, 3
/* 806EC378  41 82 03 F0 */	beq lbl_806EC768
/* 806EC37C  40 80 00 1C */	bge lbl_806EC398
/* 806EC380  2C 00 00 01 */	cmpwi r0, 1
/* 806EC384  41 82 00 78 */	beq lbl_806EC3FC
/* 806EC388  40 80 01 FC */	bge lbl_806EC584
/* 806EC38C  2C 00 00 00 */	cmpwi r0, 0
/* 806EC390  40 80 00 18 */	bge lbl_806EC3A8
/* 806EC394  48 00 06 6C */	b lbl_806ECA00
lbl_806EC398:
/* 806EC398  2C 00 00 05 */	cmpwi r0, 5
/* 806EC39C  41 82 05 70 */	beq lbl_806EC90C
/* 806EC3A0  40 80 06 60 */	bge lbl_806ECA00
/* 806EC3A4  48 00 04 60 */	b lbl_806EC804
lbl_806EC3A8:
/* 806EC3A8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806EC3AC  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 806EC3B0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806EC3B4  80 1E 0D 24 */	lwz r0, 0xd24(r30)
/* 806EC3B8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806EC3BC  90 1E 0D 24 */	stw r0, 0xd24(r30)
/* 806EC3C0  38 00 00 00 */	li r0, 0
/* 806EC3C4  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 806EC3C8  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 806EC3CC  38 80 00 0F */	li r4, 0xf
/* 806EC3D0  38 A0 00 00 */	li r5, 0
/* 806EC3D4  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 806EC3D8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806EC3DC  4B FF E2 B5 */	bl setBck__8daE_HZ_cFiUcff
/* 806EC3E0  38 00 00 01 */	li r0, 1
/* 806EC3E4  98 1E 06 E4 */	stb r0, 0x6e4(r30)
/* 806EC3E8  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EC3EC  38 00 00 00 */	li r0, 0
/* 806EC3F0  90 1E 06 CC */	stw r0, 0x6cc(r30)
/* 806EC3F4  98 1E 06 EA */	stb r0, 0x6ea(r30)
/* 806EC3F8  48 00 06 08 */	b lbl_806ECA00
lbl_806EC3FC:
/* 806EC3FC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EC400  38 63 00 0C */	addi r3, r3, 0xc
/* 806EC404  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806EC408  4B C3 C0 25 */	bl checkPass__12J3DFrameCtrlFf
/* 806EC40C  2C 03 00 00 */	cmpwi r3, 0
/* 806EC410  41 82 00 30 */	beq lbl_806EC440
/* 806EC414  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070212@ha */
/* 806EC418  38 03 02 12 */	addi r0, r3, 0x0212 /* 0x00070212@l */
/* 806EC41C  90 01 00 38 */	stw r0, 0x38(r1)
/* 806EC420  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EC424  38 81 00 38 */	addi r4, r1, 0x38
/* 806EC428  38 A0 FF FF */	li r5, -1
/* 806EC42C  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EC430  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806EC434  7D 89 03 A6 */	mtctr r12
/* 806EC438  4E 80 04 21 */	bctrl 
/* 806EC43C  48 00 00 48 */	b lbl_806EC484
lbl_806EC440:
/* 806EC440  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EC444  38 63 00 0C */	addi r3, r3, 0xc
/* 806EC448  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 806EC44C  4B C3 BF E1 */	bl checkPass__12J3DFrameCtrlFf
/* 806EC450  2C 03 00 00 */	cmpwi r3, 0
/* 806EC454  41 82 00 30 */	beq lbl_806EC484
/* 806EC458  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007021F@ha */
/* 806EC45C  38 03 02 1F */	addi r0, r3, 0x021F /* 0x0007021F@l */
/* 806EC460  90 01 00 34 */	stw r0, 0x34(r1)
/* 806EC464  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EC468  38 81 00 34 */	addi r4, r1, 0x34
/* 806EC46C  38 A0 00 00 */	li r5, 0
/* 806EC470  38 C0 FF FF */	li r6, -1
/* 806EC474  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EC478  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806EC47C  7D 89 03 A6 */	mtctr r12
/* 806EC480  4E 80 04 21 */	bctrl 
lbl_806EC484:
/* 806EC484  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806EC488  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 806EC48C  88 1E 06 EA */	lbz r0, 0x6ea(r30)
/* 806EC490  28 00 00 00 */	cmplwi r0, 0
/* 806EC494  40 82 00 AC */	bne lbl_806EC540
/* 806EC498  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EC49C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806EC4A0  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 806EC4A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EC4A8  4C 41 13 82 */	cror 2, 1, 2
/* 806EC4AC  40 82 00 78 */	bne lbl_806EC524
/* 806EC4B0  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 806EC4B4  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 806EC4B8  80 1E 0B 24 */	lwz r0, 0xb24(r30)
/* 806EC4BC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806EC4C0  41 82 00 40 */	beq lbl_806EC500
/* 806EC4C4  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 806EC4C8  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 806EC4CC  90 01 00 30 */	stw r0, 0x30(r1)
/* 806EC4D0  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EC4D4  38 81 00 30 */	addi r4, r1, 0x30
/* 806EC4D8  38 A0 00 00 */	li r5, 0
/* 806EC4DC  38 C0 FF FF */	li r6, -1
/* 806EC4E0  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EC4E4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806EC4E8  7D 89 03 A6 */	mtctr r12
/* 806EC4EC  4E 80 04 21 */	bctrl 
/* 806EC4F0  88 7E 06 EA */	lbz r3, 0x6ea(r30)
/* 806EC4F4  38 03 00 01 */	addi r0, r3, 1
/* 806EC4F8  98 1E 06 EA */	stb r0, 0x6ea(r30)
/* 806EC4FC  48 00 05 04 */	b lbl_806ECA00
lbl_806EC500:
/* 806EC500  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 806EC504  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 806EC508  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EC50C  40 81 00 08 */	ble lbl_806EC514
/* 806EC510  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_806EC514:
/* 806EC514  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 806EC518  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EC51C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 806EC520  48 00 04 E0 */	b lbl_806ECA00
lbl_806EC524:
/* 806EC524  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 806EC528  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EC52C  4C 41 13 82 */	cror 2, 1, 2
/* 806EC530  40 82 04 D0 */	bne lbl_806ECA00
/* 806EC534  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 806EC538  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806EC53C  48 00 04 C4 */	b lbl_806ECA00
lbl_806EC540:
/* 806EC540  80 1E 0B 24 */	lwz r0, 0xb24(r30)
/* 806EC544  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806EC548  41 82 04 B8 */	beq lbl_806ECA00
/* 806EC54C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EC550  38 80 00 01 */	li r4, 1
/* 806EC554  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806EC558  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806EC55C  40 82 00 14 */	bne lbl_806EC570
/* 806EC560  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806EC564  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806EC568  41 82 00 08 */	beq lbl_806EC570
/* 806EC56C  38 80 00 00 */	li r4, 0
lbl_806EC570:
/* 806EC570  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806EC574  41 82 04 8C */	beq lbl_806ECA00
/* 806EC578  7F C3 F3 78 */	mr r3, r30
/* 806EC57C  4B FF FA ED */	bl initBackWalk__8daE_HZ_cFv
/* 806EC580  48 00 04 80 */	b lbl_806ECA00
lbl_806EC584:
/* 806EC584  38 61 00 48 */	addi r3, r1, 0x48
/* 806EC588  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806EC58C  38 BE 06 78 */	addi r5, r30, 0x678
/* 806EC590  4B B7 A5 A5 */	bl __mi__4cXyzCFRC3Vec
/* 806EC594  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806EC598  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806EC59C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806EC5A0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806EC5A4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 806EC5A8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806EC5AC  38 61 00 3C */	addi r3, r1, 0x3c
/* 806EC5B0  4B C5 AB 89 */	bl PSVECSquareMag
/* 806EC5B4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806EC5B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EC5BC  40 81 00 58 */	ble lbl_806EC614
/* 806EC5C0  FC 00 08 34 */	frsqrte f0, f1
/* 806EC5C4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806EC5C8  FC 44 00 32 */	fmul f2, f4, f0
/* 806EC5CC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806EC5D0  FC 00 00 32 */	fmul f0, f0, f0
/* 806EC5D4  FC 01 00 32 */	fmul f0, f1, f0
/* 806EC5D8  FC 03 00 28 */	fsub f0, f3, f0
/* 806EC5DC  FC 02 00 32 */	fmul f0, f2, f0
/* 806EC5E0  FC 44 00 32 */	fmul f2, f4, f0
/* 806EC5E4  FC 00 00 32 */	fmul f0, f0, f0
/* 806EC5E8  FC 01 00 32 */	fmul f0, f1, f0
/* 806EC5EC  FC 03 00 28 */	fsub f0, f3, f0
/* 806EC5F0  FC 02 00 32 */	fmul f0, f2, f0
/* 806EC5F4  FC 44 00 32 */	fmul f2, f4, f0
/* 806EC5F8  FC 00 00 32 */	fmul f0, f0, f0
/* 806EC5FC  FC 01 00 32 */	fmul f0, f1, f0
/* 806EC600  FC 03 00 28 */	fsub f0, f3, f0
/* 806EC604  FC 02 00 32 */	fmul f0, f2, f0
/* 806EC608  FF E1 00 32 */	fmul f31, f1, f0
/* 806EC60C  FF E0 F8 18 */	frsp f31, f31
/* 806EC610  48 00 00 90 */	b lbl_806EC6A0
lbl_806EC614:
/* 806EC614  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806EC618  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EC61C  40 80 00 10 */	bge lbl_806EC62C
/* 806EC620  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806EC624  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806EC628  48 00 00 78 */	b lbl_806EC6A0
lbl_806EC62C:
/* 806EC62C  D0 21 00 08 */	stfs f1, 8(r1)
/* 806EC630  80 81 00 08 */	lwz r4, 8(r1)
/* 806EC634  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806EC638  3C 00 7F 80 */	lis r0, 0x7f80
/* 806EC63C  7C 03 00 00 */	cmpw r3, r0
/* 806EC640  41 82 00 14 */	beq lbl_806EC654
/* 806EC644  40 80 00 40 */	bge lbl_806EC684
/* 806EC648  2C 03 00 00 */	cmpwi r3, 0
/* 806EC64C  41 82 00 20 */	beq lbl_806EC66C
/* 806EC650  48 00 00 34 */	b lbl_806EC684
lbl_806EC654:
/* 806EC654  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806EC658  41 82 00 0C */	beq lbl_806EC664
/* 806EC65C  38 00 00 01 */	li r0, 1
/* 806EC660  48 00 00 28 */	b lbl_806EC688
lbl_806EC664:
/* 806EC664  38 00 00 02 */	li r0, 2
/* 806EC668  48 00 00 20 */	b lbl_806EC688
lbl_806EC66C:
/* 806EC66C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806EC670  41 82 00 0C */	beq lbl_806EC67C
/* 806EC674  38 00 00 05 */	li r0, 5
/* 806EC678  48 00 00 10 */	b lbl_806EC688
lbl_806EC67C:
/* 806EC67C  38 00 00 03 */	li r0, 3
/* 806EC680  48 00 00 08 */	b lbl_806EC688
lbl_806EC684:
/* 806EC684  38 00 00 04 */	li r0, 4
lbl_806EC688:
/* 806EC688  2C 00 00 01 */	cmpwi r0, 1
/* 806EC68C  40 82 00 10 */	bne lbl_806EC69C
/* 806EC690  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806EC694  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806EC698  48 00 00 08 */	b lbl_806EC6A0
lbl_806EC69C:
/* 806EC69C  FF E0 08 90 */	fmr f31, f1
lbl_806EC6A0:
/* 806EC6A0  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806EC6A4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806EC6A8  40 80 00 0C */	bge lbl_806EC6B4
/* 806EC6AC  3B A0 08 00 */	li r29, 0x800
/* 806EC6B0  48 00 00 08 */	b lbl_806EC6B8
lbl_806EC6B4:
/* 806EC6B4  3B A0 02 00 */	li r29, 0x200
lbl_806EC6B8:
/* 806EC6B8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806EC6BC  38 9E 06 78 */	addi r4, r30, 0x678
/* 806EC6C0  4B B8 45 45 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806EC6C4  7C 64 1B 78 */	mr r4, r3
/* 806EC6C8  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806EC6CC  7F A5 EB 78 */	mr r5, r29
/* 806EC6D0  4B B8 44 C1 */	bl cLib_chaseAngleS__FPsss
/* 806EC6D4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806EC6D8  3C 80 80 6F */	lis r4, l_HIO@ha /* 0x806F0B7C@ha */
/* 806EC6DC  3B A4 0B 7C */	addi r29, r4, l_HIO@l /* 0x806F0B7C@l */
/* 806EC6E0  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 806EC6E4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806EC6E8  4B B8 40 59 */	bl cLib_chaseF__FPfff
/* 806EC6EC  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 806EC6F0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806EC6F4  40 80 03 0C */	bge lbl_806ECA00
/* 806EC6F8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806EC6FC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806EC700  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806EC704  38 9E 06 78 */	addi r4, r30, 0x678
/* 806EC708  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806EC70C  C0 5D 00 18 */	lfs f2, 0x18(r29)
/* 806EC710  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 806EC714  4B B8 36 E1 */	bl cLib_addCalcPosXZ__FP4cXyzRC4cXyzfff
/* 806EC718  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806EC71C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806EC720  40 82 00 0C */	bne lbl_806EC72C
/* 806EC724  38 00 00 03 */	li r0, 3
/* 806EC728  90 1E 06 C8 */	stw r0, 0x6c8(r30)
lbl_806EC72C:
/* 806EC72C  80 1E 0B 24 */	lwz r0, 0xb24(r30)
/* 806EC730  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806EC734  41 82 00 28 */	beq lbl_806EC75C
/* 806EC738  80 7E 06 CC */	lwz r3, 0x6cc(r30)
/* 806EC73C  38 03 00 01 */	addi r0, r3, 1
/* 806EC740  90 1E 06 CC */	stw r0, 0x6cc(r30)
/* 806EC744  80 1E 06 CC */	lwz r0, 0x6cc(r30)
/* 806EC748  2C 00 00 1E */	cmpwi r0, 0x1e
/* 806EC74C  41 80 02 B4 */	blt lbl_806ECA00
/* 806EC750  38 00 00 03 */	li r0, 3
/* 806EC754  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EC758  48 00 02 A8 */	b lbl_806ECA00
lbl_806EC75C:
/* 806EC75C  38 00 00 00 */	li r0, 0
/* 806EC760  90 1E 06 CC */	stw r0, 0x6cc(r30)
/* 806EC764  48 00 02 9C */	b lbl_806ECA00
lbl_806EC768:
/* 806EC768  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806EC76C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 806EC770  4B B8 44 95 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806EC774  7C 64 1B 78 */	mr r4, r3
/* 806EC778  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806EC77C  38 A0 04 00 */	li r5, 0x400
/* 806EC780  4B B8 44 11 */	bl cLib_chaseAngleS__FPsss
/* 806EC784  2C 03 00 00 */	cmpwi r3, 0
/* 806EC788  41 82 02 78 */	beq lbl_806ECA00
/* 806EC78C  7F C3 F3 78 */	mr r3, r30
/* 806EC790  38 80 00 05 */	li r4, 5
/* 806EC794  38 A0 00 00 */	li r5, 0
/* 806EC798  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806EC79C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806EC7A0  4B FF DE F1 */	bl setBck__8daE_HZ_cFiUcff
/* 806EC7A4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070208@ha */
/* 806EC7A8  38 03 02 08 */	addi r0, r3, 0x0208 /* 0x00070208@l */
/* 806EC7AC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 806EC7B0  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EC7B4  38 81 00 2C */	addi r4, r1, 0x2c
/* 806EC7B8  38 A0 FF FF */	li r5, -1
/* 806EC7BC  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EC7C0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806EC7C4  7D 89 03 A6 */	mtctr r12
/* 806EC7C8  4E 80 04 21 */	bctrl 
/* 806EC7CC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070209@ha */
/* 806EC7D0  38 03 02 09 */	addi r0, r3, 0x0209 /* 0x00070209@l */
/* 806EC7D4  90 01 00 28 */	stw r0, 0x28(r1)
/* 806EC7D8  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EC7DC  38 81 00 28 */	addi r4, r1, 0x28
/* 806EC7E0  38 A0 00 00 */	li r5, 0
/* 806EC7E4  38 C0 FF FF */	li r6, -1
/* 806EC7E8  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EC7EC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806EC7F0  7D 89 03 A6 */	mtctr r12
/* 806EC7F4  4E 80 04 21 */	bctrl 
/* 806EC7F8  38 00 00 04 */	li r0, 4
/* 806EC7FC  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EC800  48 00 02 00 */	b lbl_806ECA00
lbl_806EC804:
/* 806EC804  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EC808  38 63 00 0C */	addi r3, r3, 0xc
/* 806EC80C  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806EC810  4B C3 BC 1D */	bl checkPass__12J3DFrameCtrlFf
/* 806EC814  2C 03 00 00 */	cmpwi r3, 0
/* 806EC818  41 82 00 34 */	beq lbl_806EC84C
/* 806EC81C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070209@ha */
/* 806EC820  38 03 02 09 */	addi r0, r3, 0x0209 /* 0x00070209@l */
/* 806EC824  90 01 00 24 */	stw r0, 0x24(r1)
/* 806EC828  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EC82C  38 81 00 24 */	addi r4, r1, 0x24
/* 806EC830  38 A0 00 00 */	li r5, 0
/* 806EC834  38 C0 FF FF */	li r6, -1
/* 806EC838  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EC83C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806EC840  7D 89 03 A6 */	mtctr r12
/* 806EC844  4E 80 04 21 */	bctrl 
/* 806EC848  48 00 01 B8 */	b lbl_806ECA00
lbl_806EC84C:
/* 806EC84C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EC850  38 63 00 0C */	addi r3, r3, 0xc
/* 806EC854  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 806EC858  4B C3 BB D5 */	bl checkPass__12J3DFrameCtrlFf
/* 806EC85C  2C 03 00 00 */	cmpwi r3, 0
/* 806EC860  41 82 00 30 */	beq lbl_806EC890
/* 806EC864  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070215@ha */
/* 806EC868  38 03 02 15 */	addi r0, r3, 0x0215 /* 0x00070215@l */
/* 806EC86C  90 01 00 20 */	stw r0, 0x20(r1)
/* 806EC870  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EC874  38 81 00 20 */	addi r4, r1, 0x20
/* 806EC878  38 A0 FF FF */	li r5, -1
/* 806EC87C  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EC880  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806EC884  7D 89 03 A6 */	mtctr r12
/* 806EC888  4E 80 04 21 */	bctrl 
/* 806EC88C  48 00 01 74 */	b lbl_806ECA00
lbl_806EC890:
/* 806EC890  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EC894  38 63 00 0C */	addi r3, r3, 0xc
/* 806EC898  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 806EC89C  4B C3 BB 91 */	bl checkPass__12J3DFrameCtrlFf
/* 806EC8A0  2C 03 00 00 */	cmpwi r3, 0
/* 806EC8A4  41 82 01 5C */	beq lbl_806ECA00
/* 806EC8A8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806EC8AC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806EC8B0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806EC8B4  38 00 00 05 */	li r0, 5
/* 806EC8B8  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EC8BC  38 00 00 00 */	li r0, 0
/* 806EC8C0  98 1E 06 E4 */	stb r0, 0x6e4(r30)
/* 806EC8C4  7F C3 F3 78 */	mr r3, r30
/* 806EC8C8  38 80 00 00 */	li r4, 0
/* 806EC8CC  4B FF E7 D9 */	bl setTgSetBit__8daE_HZ_cFi
/* 806EC8D0  80 1E 0D 24 */	lwz r0, 0xd24(r30)
/* 806EC8D4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806EC8D8  90 1E 0D 24 */	stw r0, 0xd24(r30)
/* 806EC8DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007021F@ha */
/* 806EC8E0  38 03 02 1F */	addi r0, r3, 0x021F /* 0x0007021F@l */
/* 806EC8E4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806EC8E8  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EC8EC  38 81 00 1C */	addi r4, r1, 0x1c
/* 806EC8F0  38 A0 00 00 */	li r5, 0
/* 806EC8F4  38 C0 FF FF */	li r6, -1
/* 806EC8F8  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EC8FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806EC900  7D 89 03 A6 */	mtctr r12
/* 806EC904  4E 80 04 21 */	bctrl 
/* 806EC908  48 00 00 F8 */	b lbl_806ECA00
lbl_806EC90C:
/* 806EC90C  38 00 00 01 */	li r0, 1
/* 806EC910  98 1E 06 E7 */	stb r0, 0x6e7(r30)
/* 806EC914  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EC918  38 63 00 0C */	addi r3, r3, 0xc
/* 806EC91C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 806EC920  4B C3 BB 0D */	bl checkPass__12J3DFrameCtrlFf
/* 806EC924  2C 03 00 00 */	cmpwi r3, 0
/* 806EC928  41 82 00 30 */	beq lbl_806EC958
/* 806EC92C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070216@ha */
/* 806EC930  38 03 02 16 */	addi r0, r3, 0x0216 /* 0x00070216@l */
/* 806EC934  90 01 00 18 */	stw r0, 0x18(r1)
/* 806EC938  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EC93C  38 81 00 18 */	addi r4, r1, 0x18
/* 806EC940  38 A0 00 00 */	li r5, 0
/* 806EC944  38 C0 FF FF */	li r6, -1
/* 806EC948  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EC94C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806EC950  7D 89 03 A6 */	mtctr r12
/* 806EC954  4E 80 04 21 */	bctrl 
lbl_806EC958:
/* 806EC958  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806EC95C  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 806EC960  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806EC964  4C 40 13 82 */	cror 2, 0, 2
/* 806EC968  40 82 00 10 */	bne lbl_806EC978
/* 806EC96C  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 806EC970  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806EC974  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_806EC978:
/* 806EC978  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806EC97C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 806EC980  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806EC984  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 806EC988  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 806EC98C  4B B8 34 69 */	bl cLib_addCalcPosXZ__FP4cXyzRC4cXyzfff
/* 806EC990  38 7E 04 A8 */	addi r3, r30, 0x4a8
/* 806EC994  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806EC998  4B B7 A6 95 */	bl __eq__4cXyzCFRC3Vec
/* 806EC99C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EC9A0  41 82 00 60 */	beq lbl_806ECA00
/* 806EC9A4  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EC9A8  38 80 00 01 */	li r4, 1
/* 806EC9AC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806EC9B0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806EC9B4  40 82 00 18 */	bne lbl_806EC9CC
/* 806EC9B8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806EC9BC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806EC9C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806EC9C4  41 82 00 08 */	beq lbl_806EC9CC
/* 806EC9C8  38 80 00 00 */	li r4, 0
lbl_806EC9CC:
/* 806EC9CC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806EC9D0  41 82 00 30 */	beq lbl_806ECA00
/* 806EC9D4  7F C3 F3 78 */	mr r3, r30
/* 806EC9D8  4B FF E9 11 */	bl setCloseSmokeEffect__8daE_HZ_cFv
/* 806EC9DC  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 806EC9E0  38 03 20 00 */	addi r0, r3, 0x2000
/* 806EC9E4  54 00 04 22 */	rlwinm r0, r0, 0, 0x10, 0x11
/* 806EC9E8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806EC9EC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806EC9F0  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 806EC9F4  7F C3 F3 78 */	mr r3, r30
/* 806EC9F8  38 80 00 01 */	li r4, 1
/* 806EC9FC  4B FF E0 E1 */	bl setActionMode__8daE_HZ_cFi
lbl_806ECA00:
/* 806ECA00  7F C3 F3 78 */	mr r3, r30
/* 806ECA04  38 80 00 11 */	li r4, 0x11
/* 806ECA08  4B FF DD 2D */	bl checkBck__8daE_HZ_cFi
/* 806ECA0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806ECA10  41 82 00 B4 */	beq lbl_806ECAC4
/* 806ECA14  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806ECA18  38 63 00 0C */	addi r3, r3, 0xc
/* 806ECA1C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806ECA20  4B C3 BA 0D */	bl checkPass__12J3DFrameCtrlFf
/* 806ECA24  2C 03 00 00 */	cmpwi r3, 0
/* 806ECA28  41 82 00 5C */	beq lbl_806ECA84
/* 806ECA2C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070209@ha */
/* 806ECA30  38 03 02 09 */	addi r0, r3, 0x0209 /* 0x00070209@l */
/* 806ECA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 806ECA38  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806ECA3C  38 81 00 14 */	addi r4, r1, 0x14
/* 806ECA40  38 A0 00 00 */	li r5, 0
/* 806ECA44  38 C0 FF FF */	li r6, -1
/* 806ECA48  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806ECA4C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806ECA50  7D 89 03 A6 */	mtctr r12
/* 806ECA54  4E 80 04 21 */	bctrl 
/* 806ECA58  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070208@ha */
/* 806ECA5C  38 03 02 08 */	addi r0, r3, 0x0208 /* 0x00070208@l */
/* 806ECA60  90 01 00 10 */	stw r0, 0x10(r1)
/* 806ECA64  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806ECA68  38 81 00 10 */	addi r4, r1, 0x10
/* 806ECA6C  38 A0 FF FF */	li r5, -1
/* 806ECA70  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806ECA74  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806ECA78  7D 89 03 A6 */	mtctr r12
/* 806ECA7C  4E 80 04 21 */	bctrl 
/* 806ECA80  48 00 00 44 */	b lbl_806ECAC4
lbl_806ECA84:
/* 806ECA84  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806ECA88  38 63 00 0C */	addi r3, r3, 0xc
/* 806ECA8C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 806ECA90  4B C3 B9 9D */	bl checkPass__12J3DFrameCtrlFf
/* 806ECA94  2C 03 00 00 */	cmpwi r3, 0
/* 806ECA98  41 82 00 2C */	beq lbl_806ECAC4
/* 806ECA9C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070208@ha */
/* 806ECAA0  38 03 02 08 */	addi r0, r3, 0x0208 /* 0x00070208@l */
/* 806ECAA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806ECAA8  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806ECAAC  38 81 00 0C */	addi r4, r1, 0xc
/* 806ECAB0  38 A0 FF FF */	li r5, -1
/* 806ECAB4  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806ECAB8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806ECABC  7D 89 03 A6 */	mtctr r12
/* 806ECAC0  4E 80 04 21 */	bctrl 
lbl_806ECAC4:
/* 806ECAC4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806ECAC8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806ECACC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 806ECAD0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 806ECAD4  39 61 00 70 */	addi r11, r1, 0x70
/* 806ECAD8  4B C7 57 51 */	bl _restgpr_29
/* 806ECADC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 806ECAE0  7C 08 03 A6 */	mtlr r0
/* 806ECAE4  38 21 00 80 */	addi r1, r1, 0x80
/* 806ECAE8  4E 80 00 20 */	blr 
