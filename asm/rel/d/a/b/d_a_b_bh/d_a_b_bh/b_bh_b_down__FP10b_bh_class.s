lbl_805B0274:
/* 805B0274  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805B0278  7C 08 02 A6 */	mflr r0
/* 805B027C  90 01 00 54 */	stw r0, 0x54(r1)
/* 805B0280  39 61 00 50 */	addi r11, r1, 0x50
/* 805B0284  4B DB 1F 55 */	bl _savegpr_28
/* 805B0288  7C 7D 1B 78 */	mr r29, r3
/* 805B028C  3C 60 80 5B */	lis r3, lit_3764@ha /* 0x805B3140@ha */
/* 805B0290  3B E3 31 40 */	addi r31, r3, lit_3764@l /* 0x805B3140@l */
/* 805B0294  80 1D 04 A4 */	lwz r0, 0x4a4(r29)
/* 805B0298  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B029C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805B02A0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805B02A4  38 81 00 0C */	addi r4, r1, 0xc
/* 805B02A8  4B A6 95 51 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805B02AC  7C 7C 1B 78 */	mr r28, r3
/* 805B02B0  3B C0 00 00 */	li r30, 0
/* 805B02B4  38 61 00 14 */	addi r3, r1, 0x14
/* 805B02B8  38 9D 06 B0 */	addi r4, r29, 0x6b0
/* 805B02BC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805B02C0  4B CB 68 75 */	bl __mi__4cXyzCFRC3Vec
/* 805B02C4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805B02C8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805B02CC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805B02D0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805B02D4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805B02D8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805B02DC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805B02E0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805B02E4  A8 1D 06 6C */	lha r0, 0x66c(r29)
/* 805B02E8  2C 00 00 02 */	cmpwi r0, 2
/* 805B02EC  41 82 02 B4 */	beq lbl_805B05A0
/* 805B02F0  40 80 02 EC */	bge lbl_805B05DC
/* 805B02F4  2C 00 00 00 */	cmpwi r0, 0
/* 805B02F8  41 82 00 10 */	beq lbl_805B0308
/* 805B02FC  40 80 00 40 */	bge lbl_805B033C
/* 805B0300  48 00 02 DC */	b lbl_805B05DC
/* 805B0304  48 00 02 D8 */	b lbl_805B05DC
lbl_805B0308:
/* 805B0308  7F A3 EB 78 */	mr r3, r29
/* 805B030C  38 80 00 0B */	li r4, 0xb
/* 805B0310  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 805B0314  38 A0 00 02 */	li r5, 2
/* 805B0318  FC 40 08 90 */	fmr f2, f1
/* 805B031C  4B FF DF 89 */	bl anm_init__FP10b_bh_classifUcf
/* 805B0320  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805B0324  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 805B0328  38 00 00 01 */	li r0, 1
/* 805B032C  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 805B0330  38 00 00 C8 */	li r0, 0xc8
/* 805B0334  B0 1D 06 94 */	sth r0, 0x694(r29)
/* 805B0338  48 00 02 A4 */	b lbl_805B05DC
lbl_805B033C:
/* 805B033C  38 61 00 20 */	addi r3, r1, 0x20
/* 805B0340  4B D9 6D F9 */	bl PSVECSquareMag
/* 805B0344  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805B0348  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B034C  40 81 00 58 */	ble lbl_805B03A4
/* 805B0350  FC 00 08 34 */	frsqrte f0, f1
/* 805B0354  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 805B0358  FC 44 00 32 */	fmul f2, f4, f0
/* 805B035C  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 805B0360  FC 00 00 32 */	fmul f0, f0, f0
/* 805B0364  FC 01 00 32 */	fmul f0, f1, f0
/* 805B0368  FC 03 00 28 */	fsub f0, f3, f0
/* 805B036C  FC 02 00 32 */	fmul f0, f2, f0
/* 805B0370  FC 44 00 32 */	fmul f2, f4, f0
/* 805B0374  FC 00 00 32 */	fmul f0, f0, f0
/* 805B0378  FC 01 00 32 */	fmul f0, f1, f0
/* 805B037C  FC 03 00 28 */	fsub f0, f3, f0
/* 805B0380  FC 02 00 32 */	fmul f0, f2, f0
/* 805B0384  FC 44 00 32 */	fmul f2, f4, f0
/* 805B0388  FC 00 00 32 */	fmul f0, f0, f0
/* 805B038C  FC 01 00 32 */	fmul f0, f1, f0
/* 805B0390  FC 03 00 28 */	fsub f0, f3, f0
/* 805B0394  FC 02 00 32 */	fmul f0, f2, f0
/* 805B0398  FC 21 00 32 */	fmul f1, f1, f0
/* 805B039C  FC 20 08 18 */	frsp f1, f1
/* 805B03A0  48 00 00 88 */	b lbl_805B0428
lbl_805B03A4:
/* 805B03A4  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 805B03A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B03AC  40 80 00 10 */	bge lbl_805B03BC
/* 805B03B0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805B03B4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805B03B8  48 00 00 70 */	b lbl_805B0428
lbl_805B03BC:
/* 805B03BC  D0 21 00 08 */	stfs f1, 8(r1)
/* 805B03C0  80 81 00 08 */	lwz r4, 8(r1)
/* 805B03C4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805B03C8  3C 00 7F 80 */	lis r0, 0x7f80
/* 805B03CC  7C 03 00 00 */	cmpw r3, r0
/* 805B03D0  41 82 00 14 */	beq lbl_805B03E4
/* 805B03D4  40 80 00 40 */	bge lbl_805B0414
/* 805B03D8  2C 03 00 00 */	cmpwi r3, 0
/* 805B03DC  41 82 00 20 */	beq lbl_805B03FC
/* 805B03E0  48 00 00 34 */	b lbl_805B0414
lbl_805B03E4:
/* 805B03E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805B03E8  41 82 00 0C */	beq lbl_805B03F4
/* 805B03EC  38 00 00 01 */	li r0, 1
/* 805B03F0  48 00 00 28 */	b lbl_805B0418
lbl_805B03F4:
/* 805B03F4  38 00 00 02 */	li r0, 2
/* 805B03F8  48 00 00 20 */	b lbl_805B0418
lbl_805B03FC:
/* 805B03FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805B0400  41 82 00 0C */	beq lbl_805B040C
/* 805B0404  38 00 00 05 */	li r0, 5
/* 805B0408  48 00 00 10 */	b lbl_805B0418
lbl_805B040C:
/* 805B040C  38 00 00 03 */	li r0, 3
/* 805B0410  48 00 00 08 */	b lbl_805B0418
lbl_805B0414:
/* 805B0414  38 00 00 04 */	li r0, 4
lbl_805B0418:
/* 805B0418  2C 00 00 01 */	cmpwi r0, 1
/* 805B041C  40 82 00 0C */	bne lbl_805B0428
/* 805B0420  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805B0424  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805B0428:
/* 805B0428  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 805B042C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B0430  40 81 00 08 */	ble lbl_805B0438
/* 805B0434  3B C0 00 01 */	li r30, 1
lbl_805B0438:
/* 805B0438  A8 1D 06 94 */	lha r0, 0x694(r29)
/* 805B043C  2C 00 00 64 */	cmpwi r0, 0x64
/* 805B0440  40 81 00 2C */	ble lbl_805B046C
/* 805B0444  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070105@ha */
/* 805B0448  38 03 01 05 */	addi r0, r3, 0x0105 /* 0x00070105@l */
/* 805B044C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B0450  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 805B0454  38 81 00 10 */	addi r4, r1, 0x10
/* 805B0458  38 A0 FF FF */	li r5, -1
/* 805B045C  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 805B0460  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 805B0464  7D 89 03 A6 */	mtctr r12
/* 805B0468  4E 80 04 21 */	bctrl 
lbl_805B046C:
/* 805B046C  A8 9D 06 68 */	lha r4, 0x668(r29)
/* 805B0470  1C 04 03 84 */	mulli r0, r4, 0x384
/* 805B0474  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805B0478  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805B047C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805B0480  7C 23 04 2E */	lfsx f1, r3, r0
/* 805B0484  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 805B0488  EC 20 00 72 */	fmuls f1, f0, f1
/* 805B048C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805B0490  1C 04 03 E8 */	mulli r0, r4, 0x3e8
/* 805B0494  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805B0498  7C 63 02 14 */	add r3, r3, r0
/* 805B049C  C0 43 00 04 */	lfs f2, 4(r3)
/* 805B04A0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805B04A4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805B04A8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 805B04AC  C0 1D 06 B0 */	lfs f0, 0x6b0(r29)
/* 805B04B0  EC 20 08 2A */	fadds f1, f0, f1
/* 805B04B4  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 805B04B8  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 805B04BC  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 805B04C0  EC 63 00 32 */	fmuls f3, f3, f0
/* 805B04C4  4B CB F5 79 */	bl cLib_addCalc2__FPffff
/* 805B04C8  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 805B04CC  C0 3D 06 B8 */	lfs f1, 0x6b8(r29)
/* 805B04D0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 805B04D4  EC 21 00 2A */	fadds f1, f1, f0
/* 805B04D8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 805B04DC  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 805B04E0  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 805B04E4  EC 63 00 32 */	fmuls f3, f3, f0
/* 805B04E8  4B CB F5 55 */	bl cLib_addCalc2__FPffff
/* 805B04EC  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 805B04F0  C0 3D 06 B4 */	lfs f1, 0x6b4(r29)
/* 805B04F4  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 805B04F8  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B04FC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 805B0500  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 805B0504  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 805B0508  EC 63 00 32 */	fmuls f3, f3, f0
/* 805B050C  4B CB F5 31 */	bl cLib_addCalc2__FPffff
/* 805B0510  38 7D 06 90 */	addi r3, r29, 0x690
/* 805B0514  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 805B0518  FC 40 08 90 */	fmr f2, f1
/* 805B051C  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 805B0520  4B CB F5 1D */	bl cLib_addCalc2__FPffff
/* 805B0524  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 805B0528  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 805B052C  C0 3D 06 B4 */	lfs f1, 0x6b4(r29)
/* 805B0530  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 805B0534  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B0538  EC 02 00 2A */	fadds f0, f2, f0
/* 805B053C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805B0540  4C 40 13 82 */	cror 2, 0, 2
/* 805B0544  40 82 00 0C */	bne lbl_805B0550
/* 805B0548  38 00 00 02 */	li r0, 2
/* 805B054C  B0 1D 06 6C */	sth r0, 0x66c(r29)
lbl_805B0550:
/* 805B0550  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805B0554  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 805B0558  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805B055C  40 80 00 80 */	bge lbl_805B05DC
/* 805B0560  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 805B0564  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805B0568  4C 41 13 82 */	cror 2, 1, 2
/* 805B056C  40 82 00 70 */	bne lbl_805B05DC
/* 805B0570  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070107@ha */
/* 805B0574  38 03 01 07 */	addi r0, r3, 0x0107 /* 0x00070107@l */
/* 805B0578  90 1D 0A 30 */	stw r0, 0xa30(r29)
/* 805B057C  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 805B0580  28 00 00 00 */	cmplwi r0, 0
/* 805B0584  40 82 00 10 */	bne lbl_805B0594
/* 805B0588  38 00 00 01 */	li r0, 1
/* 805B058C  98 1D 0A 2C */	stb r0, 0xa2c(r29)
/* 805B0590  48 00 00 4C */	b lbl_805B05DC
lbl_805B0594:
/* 805B0594  38 00 00 03 */	li r0, 3
/* 805B0598  98 1D 0A 2C */	stb r0, 0xa2c(r29)
/* 805B059C  48 00 00 40 */	b lbl_805B05DC
lbl_805B05A0:
/* 805B05A0  88 1C 06 FC */	lbz r0, 0x6fc(r28)
/* 805B05A4  7C 00 07 75 */	extsb. r0, r0
/* 805B05A8  41 82 00 34 */	beq lbl_805B05DC
/* 805B05AC  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 805B05B0  2C 00 00 00 */	cmpwi r0, 0
/* 805B05B4  40 81 00 20 */	ble lbl_805B05D4
/* 805B05B8  38 00 00 14 */	li r0, 0x14
/* 805B05BC  B0 1D 06 6A */	sth r0, 0x66a(r29)
/* 805B05C0  38 00 00 00 */	li r0, 0
/* 805B05C4  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 805B05C8  38 00 00 01 */	li r0, 1
/* 805B05CC  98 1D 0F 20 */	stb r0, 0xf20(r29)
/* 805B05D0  48 00 00 0C */	b lbl_805B05DC
lbl_805B05D4:
/* 805B05D4  38 00 00 03 */	li r0, 3
/* 805B05D8  B0 1D 06 6C */	sth r0, 0x66c(r29)
lbl_805B05DC:
/* 805B05DC  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 805B05E0  38 80 C0 00 */	li r4, -16384
/* 805B05E4  38 A0 00 04 */	li r5, 4
/* 805B05E8  38 C0 02 00 */	li r6, 0x200
/* 805B05EC  4B CC 00 1D */	bl cLib_addCalcAngleS2__FPssss
/* 805B05F0  7F C3 F3 78 */	mr r3, r30
/* 805B05F4  39 61 00 50 */	addi r11, r1, 0x50
/* 805B05F8  4B DB 1C 2D */	bl _restgpr_28
/* 805B05FC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805B0600  7C 08 03 A6 */	mtlr r0
/* 805B0604  38 21 00 50 */	addi r1, r1, 0x50
/* 805B0608  4E 80 00 20 */	blr 
