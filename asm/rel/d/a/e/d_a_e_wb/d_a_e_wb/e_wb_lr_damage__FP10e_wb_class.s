lbl_807D91EC:
/* 807D91EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807D91F0  7C 08 02 A6 */	mflr r0
/* 807D91F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 807D91F8  39 61 00 30 */	addi r11, r1, 0x30
/* 807D91FC  4B B8 8F E0 */	b _savegpr_29
/* 807D9200  7C 7D 1B 78 */	mr r29, r3
/* 807D9204  3C 80 80 7E */	lis r4, lit_3882@ha
/* 807D9208  3B E4 29 8C */	addi r31, r4, lit_3882@l
/* 807D920C  3B C0 00 00 */	li r30, 0
/* 807D9210  38 00 00 0A */	li r0, 0xa
/* 807D9214  B0 03 06 A0 */	sth r0, 0x6a0(r3)
/* 807D9218  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 807D921C  2C 00 00 02 */	cmpwi r0, 2
/* 807D9220  41 82 02 58 */	beq lbl_807D9478
/* 807D9224  40 80 00 14 */	bge lbl_807D9238
/* 807D9228  2C 00 00 00 */	cmpwi r0, 0
/* 807D922C  41 82 00 1C */	beq lbl_807D9248
/* 807D9230  40 80 00 FC */	bge lbl_807D932C
/* 807D9234  48 00 03 98 */	b lbl_807D95CC
lbl_807D9238:
/* 807D9238  2C 00 00 04 */	cmpwi r0, 4
/* 807D923C  41 82 03 34 */	beq lbl_807D9570
/* 807D9240  40 80 03 8C */	bge lbl_807D95CC
/* 807D9244  48 00 02 8C */	b lbl_807D94D0
lbl_807D9248:
/* 807D9248  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807D924C  4B A8 E7 08 */	b cM_rndF__Ff
/* 807D9250  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 807D9254  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D9258  41 80 00 10 */	blt lbl_807D9268
/* 807D925C  88 1D 17 20 */	lbz r0, 0x1720(r29)
/* 807D9260  7C 00 07 75 */	extsb. r0, r0
/* 807D9264  41 82 00 28 */	beq lbl_807D928C
lbl_807D9268:
/* 807D9268  7F A3 EB 78 */	mr r3, r29
/* 807D926C  38 80 00 0C */	li r4, 0xc
/* 807D9270  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807D9274  38 A0 00 00 */	li r5, 0
/* 807D9278  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D927C  4B FF 92 CD */	bl anm_init__FP10e_wb_classifUcf
/* 807D9280  38 00 00 00 */	li r0, 0
/* 807D9284  98 1D 06 E4 */	stb r0, 0x6e4(r29)
/* 807D9288  48 00 00 24 */	b lbl_807D92AC
lbl_807D928C:
/* 807D928C  7F A3 EB 78 */	mr r3, r29
/* 807D9290  38 80 00 0D */	li r4, 0xd
/* 807D9294  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807D9298  38 A0 00 00 */	li r5, 0
/* 807D929C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D92A0  4B FF 92 A9 */	bl anm_init__FP10e_wb_classifUcf
/* 807D92A4  38 00 00 01 */	li r0, 1
/* 807D92A8  98 1D 06 E4 */	stb r0, 0x6e4(r29)
lbl_807D92AC:
/* 807D92AC  38 00 00 01 */	li r0, 1
/* 807D92B0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807D92B4  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 807D92B8  60 00 00 40 */	ori r0, r0, 0x40
/* 807D92BC  B0 1D 06 BE */	sth r0, 0x6be(r29)
/* 807D92C0  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 807D92C4  4B A8 E6 90 */	b cM_rndF__Ff
/* 807D92C8  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 807D92CC  EC 00 08 2A */	fadds f0, f0, f1
/* 807D92D0  FC 00 00 1E */	fctiwz f0, f0
/* 807D92D4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807D92D8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807D92DC  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 807D92E0  38 00 00 0F */	li r0, 0xf
/* 807D92E4  B0 1D 06 9A */	sth r0, 0x69a(r29)
/* 807D92E8  88 1D 17 20 */	lbz r0, 0x1720(r29)
/* 807D92EC  7C 00 07 75 */	extsb. r0, r0
/* 807D92F0  41 82 00 18 */	beq lbl_807D9308
/* 807D92F4  C0 1F 01 E4 */	lfs f0, 0x1e4(r31)
/* 807D92F8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807D92FC  38 00 F9 C0 */	li r0, -1600
/* 807D9300  B0 1D 06 B6 */	sth r0, 0x6b6(r29)
/* 807D9304  48 00 02 C8 */	b lbl_807D95CC
lbl_807D9308:
/* 807D9308  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 807D930C  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 807D9310  EC 21 00 32 */	fmuls f1, f1, f0
/* 807D9314  4B A8 E6 78 */	b cM_rndFX__Ff
/* 807D9318  FC 00 08 1E */	fctiwz f0, f1
/* 807D931C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807D9320  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807D9324  B0 1D 06 B6 */	sth r0, 0x6b6(r29)
/* 807D9328  48 00 02 A4 */	b lbl_807D95CC
lbl_807D932C:
/* 807D932C  80 9D 05 E0 */	lwz r4, 0x5e0(r29)
/* 807D9330  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 807D9334  FC 00 00 1E */	fctiwz f0, f0
/* 807D9338  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807D933C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807D9340  2C 00 00 0A */	cmpwi r0, 0xa
/* 807D9344  40 82 00 B0 */	bne lbl_807D93F4
/* 807D9348  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 807D934C  D0 1D 16 84 */	stfs f0, 0x1684(r29)
/* 807D9350  38 00 0F A0 */	li r0, 0xfa0
/* 807D9354  B0 1D 16 8A */	sth r0, 0x168a(r29)
/* 807D9358  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 807D935C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 807D9360  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D9364  40 81 00 4C */	ble lbl_807D93B0
/* 807D9368  88 1D 06 E4 */	lbz r0, 0x6e4(r29)
/* 807D936C  7C 00 07 75 */	extsb. r0, r0
/* 807D9370  40 82 00 1C */	bne lbl_807D938C
/* 807D9374  38 80 00 0E */	li r4, 0xe
/* 807D9378  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807D937C  38 A0 00 02 */	li r5, 2
/* 807D9380  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D9384  4B FF 91 C5 */	bl anm_init__FP10e_wb_classifUcf
/* 807D9388  48 00 00 18 */	b lbl_807D93A0
lbl_807D938C:
/* 807D938C  38 80 00 0F */	li r4, 0xf
/* 807D9390  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807D9394  38 A0 00 02 */	li r5, 2
/* 807D9398  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D939C  4B FF 91 AD */	bl anm_init__FP10e_wb_classifUcf
lbl_807D93A0:
/* 807D93A0  38 00 00 02 */	li r0, 2
/* 807D93A4  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807D93A8  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 807D93AC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_807D93B0:
/* 807D93B0  38 00 00 01 */	li r0, 1
/* 807D93B4  98 1D 14 2E */	stb r0, 0x142e(r29)
/* 807D93B8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807D93BC  D0 01 00 08 */	stfs f0, 8(r1)
/* 807D93C0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807D93C4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807D93C8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807D93CC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807D93D0  38 61 00 08 */	addi r3, r1, 8
/* 807D93D4  38 80 00 64 */	li r4, 0x64
/* 807D93D8  28 1D 00 00 */	cmplwi r29, 0
/* 807D93DC  41 82 00 0C */	beq lbl_807D93E8
/* 807D93E0  80 BD 00 04 */	lwz r5, 4(r29)
/* 807D93E4  48 00 00 08 */	b lbl_807D93EC
lbl_807D93E8:
/* 807D93E8  38 A0 FF FF */	li r5, -1
lbl_807D93EC:
/* 807D93EC  38 C0 00 05 */	li r6, 5
/* 807D93F0  4B 9C ED D0 */	b dKy_Sound_set__F4cXyziUii
lbl_807D93F4:
/* 807D93F4  80 7D 05 E0 */	lwz r3, 0x5e0(r29)
/* 807D93F8  38 80 00 01 */	li r4, 1
/* 807D93FC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807D9400  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D9404  40 82 00 18 */	bne lbl_807D941C
/* 807D9408  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807D940C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807D9410  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807D9414  41 82 00 08 */	beq lbl_807D941C
/* 807D9418  38 80 00 00 */	li r4, 0
lbl_807D941C:
/* 807D941C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807D9420  41 82 00 B0 */	beq lbl_807D94D0
/* 807D9424  38 00 00 03 */	li r0, 3
/* 807D9428  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807D942C  80 1D 05 E8 */	lwz r0, 0x5e8(r29)
/* 807D9430  2C 00 00 0C */	cmpwi r0, 0xc
/* 807D9434  40 82 00 20 */	bne lbl_807D9454
/* 807D9438  7F A3 EB 78 */	mr r3, r29
/* 807D943C  38 80 00 12 */	li r4, 0x12
/* 807D9440  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807D9444  38 A0 00 02 */	li r5, 2
/* 807D9448  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D944C  4B FF 90 FD */	bl anm_init__FP10e_wb_classifUcf
/* 807D9450  48 00 00 80 */	b lbl_807D94D0
lbl_807D9454:
/* 807D9454  2C 00 00 0D */	cmpwi r0, 0xd
/* 807D9458  40 82 00 78 */	bne lbl_807D94D0
/* 807D945C  7F A3 EB 78 */	mr r3, r29
/* 807D9460  38 80 00 13 */	li r4, 0x13
/* 807D9464  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807D9468  38 A0 00 02 */	li r5, 2
/* 807D946C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D9470  4B FF 90 D9 */	bl anm_init__FP10e_wb_classifUcf
/* 807D9474  48 00 00 5C */	b lbl_807D94D0
lbl_807D9478:
/* 807D9478  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 807D947C  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 807D9480  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D9484  40 80 00 4C */	bge lbl_807D94D0
/* 807D9488  80 1D 05 E8 */	lwz r0, 0x5e8(r29)
/* 807D948C  2C 00 00 0E */	cmpwi r0, 0xe
/* 807D9490  40 82 00 1C */	bne lbl_807D94AC
/* 807D9494  38 80 00 12 */	li r4, 0x12
/* 807D9498  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807D949C  38 A0 00 02 */	li r5, 2
/* 807D94A0  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D94A4  4B FF 90 A5 */	bl anm_init__FP10e_wb_classifUcf
/* 807D94A8  48 00 00 20 */	b lbl_807D94C8
lbl_807D94AC:
/* 807D94AC  2C 00 00 0F */	cmpwi r0, 0xf
/* 807D94B0  40 82 00 18 */	bne lbl_807D94C8
/* 807D94B4  38 80 00 13 */	li r4, 0x13
/* 807D94B8  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807D94BC  38 A0 00 02 */	li r5, 2
/* 807D94C0  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D94C4  4B FF 90 85 */	bl anm_init__FP10e_wb_classifUcf
lbl_807D94C8:
/* 807D94C8  38 00 00 03 */	li r0, 3
/* 807D94CC  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_807D94D0:
/* 807D94D0  A8 1D 06 9A */	lha r0, 0x69a(r29)
/* 807D94D4  2C 00 00 00 */	cmpwi r0, 0
/* 807D94D8  40 82 00 08 */	bne lbl_807D94E0
/* 807D94DC  3B C0 00 01 */	li r30, 1
lbl_807D94E0:
/* 807D94E0  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 807D94E4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 807D94E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D94EC  40 81 00 0C */	ble lbl_807D94F8
/* 807D94F0  38 00 00 02 */	li r0, 2
/* 807D94F4  98 1D 14 2C */	stb r0, 0x142c(r29)
lbl_807D94F8:
/* 807D94F8  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 807D94FC  2C 00 00 00 */	cmpwi r0, 0
/* 807D9500  40 82 00 58 */	bne lbl_807D9558
/* 807D9504  88 1D 17 20 */	lbz r0, 0x1720(r29)
/* 807D9508  7C 00 07 75 */	extsb. r0, r0
/* 807D950C  40 82 00 4C */	bne lbl_807D9558
/* 807D9510  88 1D 06 E4 */	lbz r0, 0x6e4(r29)
/* 807D9514  7C 00 07 75 */	extsb. r0, r0
/* 807D9518  40 82 00 20 */	bne lbl_807D9538
/* 807D951C  7F A3 EB 78 */	mr r3, r29
/* 807D9520  38 80 00 10 */	li r4, 0x10
/* 807D9524  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807D9528  38 A0 00 00 */	li r5, 0
/* 807D952C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D9530  4B FF 90 19 */	bl anm_init__FP10e_wb_classifUcf
/* 807D9534  48 00 00 1C */	b lbl_807D9550
lbl_807D9538:
/* 807D9538  7F A3 EB 78 */	mr r3, r29
/* 807D953C  38 80 00 11 */	li r4, 0x11
/* 807D9540  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807D9544  38 A0 00 00 */	li r5, 0
/* 807D9548  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D954C  4B FF 8F FD */	bl anm_init__FP10e_wb_classifUcf
lbl_807D9550:
/* 807D9550  38 00 00 04 */	li r0, 4
/* 807D9554  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_807D9558:
/* 807D9558  38 7D 06 B6 */	addi r3, r29, 0x6b6
/* 807D955C  38 80 00 00 */	li r4, 0
/* 807D9560  38 A0 00 01 */	li r5, 1
/* 807D9564  38 C0 00 64 */	li r6, 0x64
/* 807D9568  4B A9 70 A0 */	b cLib_addCalcAngleS2__FPssss
/* 807D956C  48 00 00 60 */	b lbl_807D95CC
lbl_807D9570:
/* 807D9570  80 7D 05 E0 */	lwz r3, 0x5e0(r29)
/* 807D9574  38 80 00 01 */	li r4, 1
/* 807D9578  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807D957C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D9580  40 82 00 18 */	bne lbl_807D9598
/* 807D9584  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807D9588  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807D958C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807D9590  41 82 00 08 */	beq lbl_807D9598
/* 807D9594  38 80 00 00 */	li r4, 0
lbl_807D9598:
/* 807D9598  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807D959C  41 82 00 30 */	beq lbl_807D95CC
/* 807D95A0  38 80 00 00 */	li r4, 0
/* 807D95A4  B0 9D 06 90 */	sth r4, 0x690(r29)
/* 807D95A8  B0 9D 05 B4 */	sth r4, 0x5b4(r29)
/* 807D95AC  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 807D95B0  A8 1D 06 B0 */	lha r0, 0x6b0(r29)
/* 807D95B4  7C 03 02 14 */	add r0, r3, r0
/* 807D95B8  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 807D95BC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807D95C0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 807D95C4  B0 9D 06 B6 */	sth r4, 0x6b6(r29)
/* 807D95C8  B0 9D 06 B0 */	sth r4, 0x6b0(r29)
lbl_807D95CC:
/* 807D95CC  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807D95D0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807D95D4  C0 5F 00 E8 */	lfs f2, 0xe8(r31)
/* 807D95D8  4B A9 64 A8 */	b cLib_addCalc0__FPfff
/* 807D95DC  A8 7D 06 B0 */	lha r3, 0x6b0(r29)
/* 807D95E0  A8 1D 06 B6 */	lha r0, 0x6b6(r29)
/* 807D95E4  7C 03 02 14 */	add r0, r3, r0
/* 807D95E8  B0 1D 06 B0 */	sth r0, 0x6b0(r29)
/* 807D95EC  7F C3 F3 78 */	mr r3, r30
/* 807D95F0  39 61 00 30 */	addi r11, r1, 0x30
/* 807D95F4  4B B8 8C 34 */	b _restgpr_29
/* 807D95F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807D95FC  7C 08 03 A6 */	mtlr r0
/* 807D9600  38 21 00 30 */	addi r1, r1, 0x30
/* 807D9604  4E 80 00 20 */	blr 
