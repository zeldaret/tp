lbl_807C915C:
/* 807C915C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807C9160  7C 08 02 A6 */	mflr r0
/* 807C9164  90 01 00 94 */	stw r0, 0x94(r1)
/* 807C9168  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 807C916C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 807C9170  39 61 00 80 */	addi r11, r1, 0x80
/* 807C9174  4B B9 90 61 */	bl _savegpr_27
/* 807C9178  7C 7B 1B 78 */	mr r27, r3
/* 807C917C  3C 60 80 7D */	lis r3, lit_3907@ha /* 0x807CECA8@ha */
/* 807C9180  3B A3 EC A8 */	addi r29, r3, lit_3907@l /* 0x807CECA8@l */
/* 807C9184  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C9188  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C918C  83 9E 5D AC */	lwz r28, 0x5dac(r30)
/* 807C9190  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 807C9194  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 807C9198  4B A9 E4 DD */	bl cM_atan2s__Fff
/* 807C919C  7C 7F 1B 78 */	mr r31, r3
/* 807C91A0  80 1B 1C C8 */	lwz r0, 0x1cc8(r27)
/* 807C91A4  60 00 00 01 */	ori r0, r0, 1
/* 807C91A8  90 1B 1C C8 */	stw r0, 0x1cc8(r27)
/* 807C91AC  80 1B 1E 04 */	lwz r0, 0x1e04(r27)
/* 807C91B0  60 00 00 01 */	ori r0, r0, 1
/* 807C91B4  90 1B 1E 04 */	stw r0, 0x1e04(r27)
/* 807C91B8  3C 60 00 01 */	lis r3, 0x0001 /* 0x00016060@ha */
/* 807C91BC  38 03 60 60 */	addi r0, r3, 0x6060 /* 0x00016060@l */
/* 807C91C0  90 1B 1C D8 */	stw r0, 0x1cd8(r27)
/* 807C91C4  90 1B 1E 14 */	stw r0, 0x1e14(r27)
/* 807C91C8  80 1B 13 20 */	lwz r0, 0x1320(r27)
/* 807C91CC  28 00 00 16 */	cmplwi r0, 0x16
/* 807C91D0  41 81 08 50 */	bgt lbl_807C9A20
/* 807C91D4  3C 60 80 7D */	lis r3, lit_7243@ha /* 0x807CF27C@ha */
/* 807C91D8  38 63 F2 7C */	addi r3, r3, lit_7243@l /* 0x807CF27C@l */
/* 807C91DC  54 00 10 3A */	slwi r0, r0, 2
/* 807C91E0  7C 03 00 2E */	lwzx r0, r3, r0
/* 807C91E4  7C 09 03 A6 */	mtctr r0
/* 807C91E8  4E 80 04 20 */	bctr 
lbl_807C91EC:
/* 807C91EC  38 00 00 00 */	li r0, 0
/* 807C91F0  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 807C91F4  80 1B 13 20 */	lwz r0, 0x1320(r27)
/* 807C91F8  2C 00 00 00 */	cmpwi r0, 0
/* 807C91FC  40 82 00 20 */	bne lbl_807C921C
/* 807C9200  7F 63 DB 78 */	mr r3, r27
/* 807C9204  38 80 00 0C */	li r4, 0xc
/* 807C9208  38 A0 00 02 */	li r5, 2
/* 807C920C  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 807C9210  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807C9214  4B FF A6 05 */	bl setBck__8daE_VA_cFiUcff
/* 807C9218  48 00 00 BC */	b lbl_807C92D4
lbl_807C921C:
/* 807C921C  2C 00 00 14 */	cmpwi r0, 0x14
/* 807C9220  40 82 00 48 */	bne lbl_807C9268
/* 807C9224  7F 63 DB 78 */	mr r3, r27
/* 807C9228  38 80 00 1A */	li r4, 0x1a
/* 807C922C  38 A0 00 00 */	li r5, 0
/* 807C9230  C0 3D 00 A0 */	lfs f1, 0xa0(r29)
/* 807C9234  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807C9238  4B FF A5 E1 */	bl setBck__8daE_VA_cFiUcff
/* 807C923C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070335@ha */
/* 807C9240  38 03 03 35 */	addi r0, r3, 0x0335 /* 0x00070335@l */
/* 807C9244  90 01 00 24 */	stw r0, 0x24(r1)
/* 807C9248  38 7B 12 54 */	addi r3, r27, 0x1254
/* 807C924C  38 81 00 24 */	addi r4, r1, 0x24
/* 807C9250  38 A0 FF FF */	li r5, -1
/* 807C9254  81 9B 12 54 */	lwz r12, 0x1254(r27)
/* 807C9258  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C925C  7D 89 03 A6 */	mtctr r12
/* 807C9260  4E 80 04 21 */	bctrl 
/* 807C9264  48 00 00 70 */	b lbl_807C92D4
lbl_807C9268:
/* 807C9268  2C 00 00 15 */	cmpwi r0, 0x15
/* 807C926C  40 82 00 20 */	bne lbl_807C928C
/* 807C9270  7F 63 DB 78 */	mr r3, r27
/* 807C9274  38 80 00 1C */	li r4, 0x1c
/* 807C9278  38 A0 00 00 */	li r5, 0
/* 807C927C  C0 3D 00 A0 */	lfs f1, 0xa0(r29)
/* 807C9280  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807C9284  4B FF A5 95 */	bl setBck__8daE_VA_cFiUcff
/* 807C9288  48 00 00 4C */	b lbl_807C92D4
lbl_807C928C:
/* 807C928C  2C 00 00 16 */	cmpwi r0, 0x16
/* 807C9290  40 82 00 44 */	bne lbl_807C92D4
/* 807C9294  7F 63 DB 78 */	mr r3, r27
/* 807C9298  38 80 00 28 */	li r4, 0x28
/* 807C929C  38 A0 00 00 */	li r5, 0
/* 807C92A0  C0 3D 00 A0 */	lfs f1, 0xa0(r29)
/* 807C92A4  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807C92A8  4B FF A5 71 */	bl setBck__8daE_VA_cFiUcff
/* 807C92AC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007032E@ha */
/* 807C92B0  38 03 03 2E */	addi r0, r3, 0x032E /* 0x0007032E@l */
/* 807C92B4  90 01 00 20 */	stw r0, 0x20(r1)
/* 807C92B8  38 7B 12 54 */	addi r3, r27, 0x1254
/* 807C92BC  38 81 00 20 */	addi r4, r1, 0x20
/* 807C92C0  38 A0 FF FF */	li r5, -1
/* 807C92C4  81 9B 12 54 */	lwz r12, 0x1254(r27)
/* 807C92C8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C92CC  7D 89 03 A6 */	mtctr r12
/* 807C92D0  4E 80 04 21 */	bctrl 
lbl_807C92D4:
/* 807C92D4  38 00 00 01 */	li r0, 1
/* 807C92D8  90 1B 13 20 */	stw r0, 0x1320(r27)
/* 807C92DC  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807C92E0  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 807C92E4  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 807C92E8  3C 63 00 01 */	addis r3, r3, 1
/* 807C92EC  38 03 80 00 */	addi r0, r3, -32768
/* 807C92F0  C0 3D 00 3C */	lfs f1, 0x3c(r29)
/* 807C92F4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 807C92F8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 807C92FC  54 05 04 38 */	rlwinm r5, r0, 0, 0x10, 0x1c
/* 807C9300  7C 64 2A 14 */	add r3, r4, r5
/* 807C9304  C0 03 00 04 */	lfs f0, 4(r3)
/* 807C9308  EC 41 00 32 */	fmuls f2, f1, f0
/* 807C930C  7C 04 2C 2E */	lfsx f0, r4, r5
/* 807C9310  EC 01 00 32 */	fmuls f0, f1, f0
/* 807C9314  D0 1B 12 F8 */	stfs f0, 0x12f8(r27)
/* 807C9318  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 807C931C  D0 1B 12 FC */	stfs f0, 0x12fc(r27)
/* 807C9320  D0 5B 13 00 */	stfs f2, 0x1300(r27)
/* 807C9324  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 807C9328  38 00 00 0F */	li r0, 0xf
/* 807C932C  90 1B 13 40 */	stw r0, 0x1340(r27)
lbl_807C9330:
/* 807C9330  80 1B 13 40 */	lwz r0, 0x1340(r27)
/* 807C9334  2C 00 00 00 */	cmpwi r0, 0
/* 807C9338  40 82 00 30 */	bne lbl_807C9368
/* 807C933C  7F 63 DB 78 */	mr r3, r27
/* 807C9340  38 80 00 0C */	li r4, 0xc
/* 807C9344  4B FF A5 79 */	bl checkBck__8daE_VA_cFi
/* 807C9348  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807C934C  40 82 00 1C */	bne lbl_807C9368
/* 807C9350  7F 63 DB 78 */	mr r3, r27
/* 807C9354  38 80 00 0C */	li r4, 0xc
/* 807C9358  38 A0 00 02 */	li r5, 2
/* 807C935C  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 807C9360  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807C9364  4B FF A4 B5 */	bl setBck__8daE_VA_cFiUcff
lbl_807C9368:
/* 807C9368  7F 63 DB 78 */	mr r3, r27
/* 807C936C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 807C9370  4B 85 13 A1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C9374  7C 64 1B 78 */	mr r4, r3
/* 807C9378  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 807C937C  38 A0 00 08 */	li r5, 8
/* 807C9380  38 C0 08 00 */	li r6, 0x800
/* 807C9384  38 E0 00 80 */	li r7, 0x80
/* 807C9388  4B AA 71 B9 */	bl cLib_addCalcAngleS__FPsssss
/* 807C938C  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 807C9390  38 9B 12 F8 */	addi r4, r27, 0x12f8
/* 807C9394  4B AA 78 E1 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 807C9398  C0 3D 01 64 */	lfs f1, 0x164(r29)
/* 807C939C  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 807C93A0  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 807C93A4  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 807C93A8  7C 64 02 14 */	add r3, r4, r0
/* 807C93AC  C0 03 00 04 */	lfs f0, 4(r3)
/* 807C93B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 807C93B4  FC 00 02 10 */	fabs f0, f0
/* 807C93B8  FF E0 00 18 */	frsp f31, f0
/* 807C93BC  7C 04 04 2E */	lfsx f0, r4, r0
/* 807C93C0  EC 21 00 32 */	fmuls f1, f1, f0
/* 807C93C4  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 807C93C8  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 807C93CC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807C93D0  4C 41 13 82 */	cror 2, 1, 2
/* 807C93D4  40 82 00 28 */	bne lbl_807C93FC
/* 807C93D8  38 7B 04 FC */	addi r3, r27, 0x4fc
/* 807C93DC  C0 3D 00 04 */	lfs f1, 4(r29)
/* 807C93E0  C0 5D 00 48 */	lfs f2, 0x48(r29)
/* 807C93E4  4B AA 73 5D */	bl cLib_chaseF__FPfff
/* 807C93E8  38 7B 04 D4 */	addi r3, r27, 0x4d4
/* 807C93EC  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 807C93F0  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807C93F4  4B AA 73 4D */	bl cLib_chaseF__FPfff
/* 807C93F8  48 00 00 10 */	b lbl_807C9408
lbl_807C93FC:
/* 807C93FC  38 7B 04 FC */	addi r3, r27, 0x4fc
/* 807C9400  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807C9404  4B AA 73 3D */	bl cLib_chaseF__FPfff
lbl_807C9408:
/* 807C9408  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 807C940C  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 807C9410  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807C9414  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807C9418  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807C941C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 807C9420  38 61 00 40 */	addi r3, r1, 0x40
/* 807C9424  4B B7 DD 15 */	bl PSVECSquareMag
/* 807C9428  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807C942C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C9430  40 81 00 58 */	ble lbl_807C9488
/* 807C9434  FC 00 08 34 */	frsqrte f0, f1
/* 807C9438  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 807C943C  FC 44 00 32 */	fmul f2, f4, f0
/* 807C9440  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 807C9444  FC 00 00 32 */	fmul f0, f0, f0
/* 807C9448  FC 01 00 32 */	fmul f0, f1, f0
/* 807C944C  FC 03 00 28 */	fsub f0, f3, f0
/* 807C9450  FC 02 00 32 */	fmul f0, f2, f0
/* 807C9454  FC 44 00 32 */	fmul f2, f4, f0
/* 807C9458  FC 00 00 32 */	fmul f0, f0, f0
/* 807C945C  FC 01 00 32 */	fmul f0, f1, f0
/* 807C9460  FC 03 00 28 */	fsub f0, f3, f0
/* 807C9464  FC 02 00 32 */	fmul f0, f2, f0
/* 807C9468  FC 44 00 32 */	fmul f2, f4, f0
/* 807C946C  FC 00 00 32 */	fmul f0, f0, f0
/* 807C9470  FC 01 00 32 */	fmul f0, f1, f0
/* 807C9474  FC 03 00 28 */	fsub f0, f3, f0
/* 807C9478  FC 02 00 32 */	fmul f0, f2, f0
/* 807C947C  FC 21 00 32 */	fmul f1, f1, f0
/* 807C9480  FC 20 08 18 */	frsp f1, f1
/* 807C9484  48 00 00 88 */	b lbl_807C950C
lbl_807C9488:
/* 807C9488  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 807C948C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C9490  40 80 00 10 */	bge lbl_807C94A0
/* 807C9494  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807C9498  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807C949C  48 00 00 70 */	b lbl_807C950C
lbl_807C94A0:
/* 807C94A0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807C94A4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807C94A8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807C94AC  3C 00 7F 80 */	lis r0, 0x7f80
/* 807C94B0  7C 03 00 00 */	cmpw r3, r0
/* 807C94B4  41 82 00 14 */	beq lbl_807C94C8
/* 807C94B8  40 80 00 40 */	bge lbl_807C94F8
/* 807C94BC  2C 03 00 00 */	cmpwi r3, 0
/* 807C94C0  41 82 00 20 */	beq lbl_807C94E0
/* 807C94C4  48 00 00 34 */	b lbl_807C94F8
lbl_807C94C8:
/* 807C94C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807C94CC  41 82 00 0C */	beq lbl_807C94D8
/* 807C94D0  38 00 00 01 */	li r0, 1
/* 807C94D4  48 00 00 28 */	b lbl_807C94FC
lbl_807C94D8:
/* 807C94D8  38 00 00 02 */	li r0, 2
/* 807C94DC  48 00 00 20 */	b lbl_807C94FC
lbl_807C94E0:
/* 807C94E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807C94E4  41 82 00 0C */	beq lbl_807C94F0
/* 807C94E8  38 00 00 05 */	li r0, 5
/* 807C94EC  48 00 00 10 */	b lbl_807C94FC
lbl_807C94F0:
/* 807C94F0  38 00 00 03 */	li r0, 3
/* 807C94F4  48 00 00 08 */	b lbl_807C94FC
lbl_807C94F8:
/* 807C94F8  38 00 00 04 */	li r0, 4
lbl_807C94FC:
/* 807C94FC  2C 00 00 01 */	cmpwi r0, 1
/* 807C9500  40 82 00 0C */	bne lbl_807C950C
/* 807C9504  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807C9508  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807C950C:
/* 807C950C  C0 1D 01 40 */	lfs f0, 0x140(r29)
/* 807C9510  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C9514  40 81 00 30 */	ble lbl_807C9544
/* 807C9518  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 807C951C  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 807C9520  D0 1B 12 F8 */	stfs f0, 0x12f8(r27)
/* 807C9524  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 807C9528  D0 1B 12 FC */	stfs f0, 0x12fc(r27)
/* 807C952C  D0 3B 13 00 */	stfs f1, 0x1300(r27)
/* 807C9530  38 7B 05 2C */	addi r3, r27, 0x52c
/* 807C9534  C0 3D 00 04 */	lfs f1, 4(r29)
/* 807C9538  C0 5D 00 48 */	lfs f2, 0x48(r29)
/* 807C953C  4B AA 72 05 */	bl cLib_chaseF__FPfff
/* 807C9540  48 00 00 14 */	b lbl_807C9554
lbl_807C9544:
/* 807C9544  38 7B 05 2C */	addi r3, r27, 0x52c
/* 807C9548  FC 20 F8 90 */	fmr f1, f31
/* 807C954C  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807C9550  4B AA 71 F1 */	bl cLib_chaseF__FPfff
lbl_807C9554:
/* 807C9554  C0 3D 00 04 */	lfs f1, 4(r29)
/* 807C9558  C0 1B 04 FC */	lfs f0, 0x4fc(r27)
/* 807C955C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C9560  40 82 04 C0 */	bne lbl_807C9A20
/* 807C9564  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 807C9568  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C956C  40 82 04 B4 */	bne lbl_807C9A20
/* 807C9570  38 00 00 02 */	li r0, 2
/* 807C9574  90 1B 13 20 */	stw r0, 0x1320(r27)
/* 807C9578  48 00 04 A8 */	b lbl_807C9A20
lbl_807C957C:
/* 807C957C  38 00 00 03 */	li r0, 3
/* 807C9580  90 1B 13 20 */	stw r0, 0x1320(r27)
/* 807C9584  38 00 00 1E */	li r0, 0x1e
/* 807C9588  90 1B 13 40 */	stw r0, 0x1340(r27)
/* 807C958C  38 00 00 00 */	li r0, 0
/* 807C9590  90 1B 13 24 */	stw r0, 0x1324(r27)
/* 807C9594  C0 3D 00 68 */	lfs f1, 0x68(r29)
/* 807C9598  4B A9 E3 BD */	bl cM_rndF__Ff
/* 807C959C  C0 1D 00 B0 */	lfs f0, 0xb0(r29)
/* 807C95A0  EC 00 08 2A */	fadds f0, f0, f1
/* 807C95A4  FC 00 00 1E */	fctiwz f0, f0
/* 807C95A8  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 807C95AC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807C95B0  90 1B 13 44 */	stw r0, 0x1344(r27)
/* 807C95B4  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 807C95B8  4B A9 E3 9D */	bl cM_rndF__Ff
/* 807C95BC  C0 1D 01 10 */	lfs f0, 0x110(r29)
/* 807C95C0  EC 00 08 2A */	fadds f0, f0, f1
/* 807C95C4  FC 00 00 1E */	fctiwz f0, f0
/* 807C95C8  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 807C95CC  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 807C95D0  90 1B 13 48 */	stw r0, 0x1348(r27)
lbl_807C95D4:
/* 807C95D4  7F 63 DB 78 */	mr r3, r27
/* 807C95D8  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 807C95DC  4B 85 11 35 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C95E0  7C 64 1B 78 */	mr r4, r3
/* 807C95E4  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 807C95E8  38 A0 00 08 */	li r5, 8
/* 807C95EC  38 C0 08 00 */	li r6, 0x800
/* 807C95F0  38 E0 00 80 */	li r7, 0x80
/* 807C95F4  4B AA 6F 4D */	bl cLib_addCalcAngleS__FPsssss
/* 807C95F8  80 1B 13 24 */	lwz r0, 0x1324(r27)
/* 807C95FC  2C 00 00 00 */	cmpwi r0, 0
/* 807C9600  41 82 00 10 */	beq lbl_807C9610
/* 807C9604  38 1F 40 00 */	addi r0, r31, 0x4000
/* 807C9608  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 807C960C  48 00 00 0C */	b lbl_807C9618
lbl_807C9610:
/* 807C9610  38 1F C0 00 */	addi r0, r31, -16384
/* 807C9614  B0 1B 04 DE */	sth r0, 0x4de(r27)
lbl_807C9618:
/* 807C9618  38 7B 05 2C */	addi r3, r27, 0x52c
/* 807C961C  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 807C9620  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807C9624  4B AA 71 1D */	bl cLib_chaseF__FPfff
/* 807C9628  80 1B 13 40 */	lwz r0, 0x1340(r27)
/* 807C962C  2C 00 00 00 */	cmpwi r0, 0
/* 807C9630  40 82 03 F0 */	bne lbl_807C9A20
/* 807C9634  38 00 00 04 */	li r0, 4
/* 807C9638  90 1B 13 20 */	stw r0, 0x1320(r27)
/* 807C963C  48 00 03 E4 */	b lbl_807C9A20
lbl_807C9640:
/* 807C9640  7F 63 DB 78 */	mr r3, r27
/* 807C9644  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 807C9648  4B 85 10 C9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C964C  7C 64 1B 78 */	mr r4, r3
/* 807C9650  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 807C9654  38 A0 00 08 */	li r5, 8
/* 807C9658  38 C0 08 00 */	li r6, 0x800
/* 807C965C  38 E0 00 80 */	li r7, 0x80
/* 807C9660  4B AA 6E E1 */	bl cLib_addCalcAngleS__FPsssss
/* 807C9664  80 1B 13 24 */	lwz r0, 0x1324(r27)
/* 807C9668  2C 00 00 00 */	cmpwi r0, 0
/* 807C966C  41 82 00 10 */	beq lbl_807C967C
/* 807C9670  38 1F 40 00 */	addi r0, r31, 0x4000
/* 807C9674  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 807C9678  48 00 00 0C */	b lbl_807C9684
lbl_807C967C:
/* 807C967C  38 1F C0 00 */	addi r0, r31, -16384
/* 807C9680  B0 1B 04 DE */	sth r0, 0x4de(r27)
lbl_807C9684:
/* 807C9684  38 7B 05 2C */	addi r3, r27, 0x52c
/* 807C9688  C0 3D 00 04 */	lfs f1, 4(r29)
/* 807C968C  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807C9690  4B AA 70 B1 */	bl cLib_chaseF__FPfff
/* 807C9694  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 807C9698  C0 3D 00 04 */	lfs f1, 4(r29)
/* 807C969C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807C96A0  40 82 03 80 */	bne lbl_807C9A20
/* 807C96A4  80 1B 13 4C */	lwz r0, 0x134c(r27)
/* 807C96A8  2C 00 00 00 */	cmpwi r0, 0
/* 807C96AC  40 82 00 30 */	bne lbl_807C96DC
/* 807C96B0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807C96B4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807C96B8  80 63 00 00 */	lwz r3, 0(r3)
/* 807C96BC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807C96C0  38 80 00 01 */	li r4, 1
/* 807C96C4  4B AE 87 31 */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 807C96C8  7F 63 DB 78 */	mr r3, r27
/* 807C96CC  38 80 00 13 */	li r4, 0x13
/* 807C96D0  38 A0 00 01 */	li r5, 1
/* 807C96D4  4B FF A2 45 */	bl setActionMode__8daE_VA_cFii
/* 807C96D8  48 00 03 48 */	b lbl_807C9A20
lbl_807C96DC:
/* 807C96DC  80 1B 13 44 */	lwz r0, 0x1344(r27)
/* 807C96E0  2C 00 00 00 */	cmpwi r0, 0
/* 807C96E4  40 82 01 34 */	bne lbl_807C9818
/* 807C96E8  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 807C96EC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 807C96F0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807C96F4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 807C96F8  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 807C96FC  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 807C9700  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807C9704  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807C9708  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 807C970C  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 807C9710  38 61 00 28 */	addi r3, r1, 0x28
/* 807C9714  38 81 00 34 */	addi r4, r1, 0x34
/* 807C9718  4B B7 DC 85 */	bl PSVECSquareDistance
/* 807C971C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807C9720  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C9724  40 81 00 58 */	ble lbl_807C977C
/* 807C9728  FC 00 08 34 */	frsqrte f0, f1
/* 807C972C  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 807C9730  FC 44 00 32 */	fmul f2, f4, f0
/* 807C9734  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 807C9738  FC 00 00 32 */	fmul f0, f0, f0
/* 807C973C  FC 01 00 32 */	fmul f0, f1, f0
/* 807C9740  FC 03 00 28 */	fsub f0, f3, f0
/* 807C9744  FC 02 00 32 */	fmul f0, f2, f0
/* 807C9748  FC 44 00 32 */	fmul f2, f4, f0
/* 807C974C  FC 00 00 32 */	fmul f0, f0, f0
/* 807C9750  FC 01 00 32 */	fmul f0, f1, f0
/* 807C9754  FC 03 00 28 */	fsub f0, f3, f0
/* 807C9758  FC 02 00 32 */	fmul f0, f2, f0
/* 807C975C  FC 44 00 32 */	fmul f2, f4, f0
/* 807C9760  FC 00 00 32 */	fmul f0, f0, f0
/* 807C9764  FC 01 00 32 */	fmul f0, f1, f0
/* 807C9768  FC 03 00 28 */	fsub f0, f3, f0
/* 807C976C  FC 02 00 32 */	fmul f0, f2, f0
/* 807C9770  FC 21 00 32 */	fmul f1, f1, f0
/* 807C9774  FC 20 08 18 */	frsp f1, f1
/* 807C9778  48 00 00 88 */	b lbl_807C9800
lbl_807C977C:
/* 807C977C  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 807C9780  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C9784  40 80 00 10 */	bge lbl_807C9794
/* 807C9788  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807C978C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807C9790  48 00 00 70 */	b lbl_807C9800
lbl_807C9794:
/* 807C9794  D0 21 00 08 */	stfs f1, 8(r1)
/* 807C9798  80 81 00 08 */	lwz r4, 8(r1)
/* 807C979C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807C97A0  3C 00 7F 80 */	lis r0, 0x7f80
/* 807C97A4  7C 03 00 00 */	cmpw r3, r0
/* 807C97A8  41 82 00 14 */	beq lbl_807C97BC
/* 807C97AC  40 80 00 40 */	bge lbl_807C97EC
/* 807C97B0  2C 03 00 00 */	cmpwi r3, 0
/* 807C97B4  41 82 00 20 */	beq lbl_807C97D4
/* 807C97B8  48 00 00 34 */	b lbl_807C97EC
lbl_807C97BC:
/* 807C97BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807C97C0  41 82 00 0C */	beq lbl_807C97CC
/* 807C97C4  38 00 00 01 */	li r0, 1
/* 807C97C8  48 00 00 28 */	b lbl_807C97F0
lbl_807C97CC:
/* 807C97CC  38 00 00 02 */	li r0, 2
/* 807C97D0  48 00 00 20 */	b lbl_807C97F0
lbl_807C97D4:
/* 807C97D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807C97D8  41 82 00 0C */	beq lbl_807C97E4
/* 807C97DC  38 00 00 05 */	li r0, 5
/* 807C97E0  48 00 00 10 */	b lbl_807C97F0
lbl_807C97E4:
/* 807C97E4  38 00 00 03 */	li r0, 3
/* 807C97E8  48 00 00 08 */	b lbl_807C97F0
lbl_807C97EC:
/* 807C97EC  38 00 00 04 */	li r0, 4
lbl_807C97F0:
/* 807C97F0  2C 00 00 01 */	cmpwi r0, 1
/* 807C97F4  40 82 00 0C */	bne lbl_807C9800
/* 807C97F8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807C97FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807C9800:
/* 807C9800  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 807C9804  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C9808  40 81 00 10 */	ble lbl_807C9818
/* 807C980C  38 00 00 0A */	li r0, 0xa
/* 807C9810  90 1B 13 20 */	stw r0, 0x1320(r27)
/* 807C9814  48 00 02 0C */	b lbl_807C9A20
lbl_807C9818:
/* 807C9818  38 00 00 1E */	li r0, 0x1e
/* 807C981C  90 1B 13 40 */	stw r0, 0x1340(r27)
/* 807C9820  38 00 00 03 */	li r0, 3
/* 807C9824  90 1B 13 20 */	stw r0, 0x1320(r27)
/* 807C9828  7F 63 DB 78 */	mr r3, r27
/* 807C982C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 807C9830  4B 85 0E E1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C9834  7C 03 F8 50 */	subf r0, r3, r31
/* 807C9838  7C 00 07 35 */	extsh. r0, r0
/* 807C983C  40 80 00 10 */	bge lbl_807C984C
/* 807C9840  38 00 00 00 */	li r0, 0
/* 807C9844  90 1B 13 24 */	stw r0, 0x1324(r27)
/* 807C9848  48 00 01 D8 */	b lbl_807C9A20
lbl_807C984C:
/* 807C984C  38 00 00 01 */	li r0, 1
/* 807C9850  90 1B 13 24 */	stw r0, 0x1324(r27)
/* 807C9854  48 00 01 CC */	b lbl_807C9A20
lbl_807C9858:
/* 807C9858  38 00 00 1E */	li r0, 0x1e
/* 807C985C  90 1B 13 40 */	stw r0, 0x1340(r27)
/* 807C9860  38 00 00 0B */	li r0, 0xb
/* 807C9864  90 1B 13 20 */	stw r0, 0x1320(r27)
lbl_807C9868:
/* 807C9868  80 1B 13 40 */	lwz r0, 0x1340(r27)
/* 807C986C  2C 00 00 00 */	cmpwi r0, 0
/* 807C9870  40 82 01 B0 */	bne lbl_807C9A20
/* 807C9874  7F 63 DB 78 */	mr r3, r27
/* 807C9878  38 80 00 08 */	li r4, 8
/* 807C987C  38 A0 00 00 */	li r5, 0
/* 807C9880  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 807C9884  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807C9888  4B FF 9F 91 */	bl setBck__8daE_VA_cFiUcff
/* 807C988C  38 00 00 0C */	li r0, 0xc
/* 807C9890  90 1B 13 20 */	stw r0, 0x1320(r27)
/* 807C9894  48 00 01 8C */	b lbl_807C9A20
lbl_807C9898:
/* 807C9898  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 807C989C  38 63 00 0C */	addi r3, r3, 0xc
/* 807C98A0  C0 3D 01 9C */	lfs f1, 0x19c(r29)
/* 807C98A4  4B B5 EB 89 */	bl checkPass__12J3DFrameCtrlFf
/* 807C98A8  2C 03 00 00 */	cmpwi r3, 0
/* 807C98AC  41 82 00 58 */	beq lbl_807C9904
/* 807C98B0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070340@ha */
/* 807C98B4  38 03 03 40 */	addi r0, r3, 0x0340 /* 0x00070340@l */
/* 807C98B8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807C98BC  38 7B 12 54 */	addi r3, r27, 0x1254
/* 807C98C0  38 81 00 1C */	addi r4, r1, 0x1c
/* 807C98C4  38 A0 00 00 */	li r5, 0
/* 807C98C8  38 C0 FF FF */	li r6, -1
/* 807C98CC  81 9B 12 54 */	lwz r12, 0x1254(r27)
/* 807C98D0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807C98D4  7D 89 03 A6 */	mtctr r12
/* 807C98D8  4E 80 04 21 */	bctrl 
/* 807C98DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070336@ha */
/* 807C98E0  38 03 03 36 */	addi r0, r3, 0x0336 /* 0x00070336@l */
/* 807C98E4  90 01 00 18 */	stw r0, 0x18(r1)
/* 807C98E8  38 7B 12 54 */	addi r3, r27, 0x1254
/* 807C98EC  38 81 00 18 */	addi r4, r1, 0x18
/* 807C98F0  38 A0 FF FF */	li r5, -1
/* 807C98F4  81 9B 12 54 */	lwz r12, 0x1254(r27)
/* 807C98F8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C98FC  7D 89 03 A6 */	mtctr r12
/* 807C9900  4E 80 04 21 */	bctrl 
lbl_807C9904:
/* 807C9904  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 807C9908  38 63 00 0C */	addi r3, r3, 0xc
/* 807C990C  C0 3D 01 A0 */	lfs f1, 0x1a0(r29)
/* 807C9910  4B B5 EB 1D */	bl checkPass__12J3DFrameCtrlFf
/* 807C9914  2C 03 00 00 */	cmpwi r3, 0
/* 807C9918  41 82 00 58 */	beq lbl_807C9970
/* 807C991C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070337@ha */
/* 807C9920  38 03 03 37 */	addi r0, r3, 0x0337 /* 0x00070337@l */
/* 807C9924  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C9928  38 7B 12 54 */	addi r3, r27, 0x1254
/* 807C992C  38 81 00 14 */	addi r4, r1, 0x14
/* 807C9930  38 A0 FF FF */	li r5, -1
/* 807C9934  81 9B 12 54 */	lwz r12, 0x1254(r27)
/* 807C9938  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C993C  7D 89 03 A6 */	mtctr r12
/* 807C9940  4E 80 04 21 */	bctrl 
/* 807C9944  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070341@ha */
/* 807C9948  38 03 03 41 */	addi r0, r3, 0x0341 /* 0x00070341@l */
/* 807C994C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807C9950  38 7B 12 54 */	addi r3, r27, 0x1254
/* 807C9954  38 81 00 10 */	addi r4, r1, 0x10
/* 807C9958  38 A0 00 00 */	li r5, 0
/* 807C995C  38 C0 FF FF */	li r6, -1
/* 807C9960  81 9B 12 54 */	lwz r12, 0x1254(r27)
/* 807C9964  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807C9968  7D 89 03 A6 */	mtctr r12
/* 807C996C  4E 80 04 21 */	bctrl 
lbl_807C9970:
/* 807C9970  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 807C9974  38 63 00 0C */	addi r3, r3, 0xc
/* 807C9978  C0 3D 01 A4 */	lfs f1, 0x1a4(r29)
/* 807C997C  4B B5 EA B1 */	bl checkPass__12J3DFrameCtrlFf
/* 807C9980  2C 03 00 00 */	cmpwi r3, 0
/* 807C9984  41 82 00 0C */	beq lbl_807C9990
/* 807C9988  38 00 00 01 */	li r0, 1
/* 807C998C  98 1B 12 28 */	stb r0, 0x1228(r27)
lbl_807C9990:
/* 807C9990  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 807C9994  38 63 00 0C */	addi r3, r3, 0xc
/* 807C9998  C0 3D 01 60 */	lfs f1, 0x160(r29)
/* 807C999C  4B B5 EA 91 */	bl checkPass__12J3DFrameCtrlFf
/* 807C99A0  2C 03 00 00 */	cmpwi r3, 0
/* 807C99A4  41 82 00 0C */	beq lbl_807C99B0
/* 807C99A8  38 00 00 01 */	li r0, 1
/* 807C99AC  98 1B 12 29 */	stb r0, 0x1229(r27)
lbl_807C99B0:
/* 807C99B0  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 807C99B4  38 80 00 01 */	li r4, 1
/* 807C99B8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807C99BC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807C99C0  40 82 00 18 */	bne lbl_807C99D8
/* 807C99C4  C0 3D 00 04 */	lfs f1, 4(r29)
/* 807C99C8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807C99CC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C99D0  41 82 00 08 */	beq lbl_807C99D8
/* 807C99D4  38 80 00 00 */	li r4, 0
lbl_807C99D8:
/* 807C99D8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807C99DC  41 82 00 44 */	beq lbl_807C9A20
/* 807C99E0  7F 63 DB 78 */	mr r3, r27
/* 807C99E4  38 80 00 0C */	li r4, 0xc
/* 807C99E8  38 A0 00 02 */	li r5, 2
/* 807C99EC  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 807C99F0  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807C99F4  4B FF 9E 25 */	bl setBck__8daE_VA_cFiUcff
/* 807C99F8  38 00 00 02 */	li r0, 2
/* 807C99FC  90 1B 13 20 */	stw r0, 0x1320(r27)
/* 807C9A00  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 807C9A04  4B A9 DF 51 */	bl cM_rndF__Ff
/* 807C9A08  C0 1D 01 10 */	lfs f0, 0x110(r29)
/* 807C9A0C  EC 00 08 2A */	fadds f0, f0, f1
/* 807C9A10  FC 00 00 1E */	fctiwz f0, f0
/* 807C9A14  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 807C9A18  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 807C9A1C  90 1B 13 48 */	stw r0, 0x1348(r27)
lbl_807C9A20:
/* 807C9A20  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 807C9A24  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 807C9A28  39 61 00 80 */	addi r11, r1, 0x80
/* 807C9A2C  4B B9 87 F5 */	bl _restgpr_27
/* 807C9A30  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807C9A34  7C 08 03 A6 */	mtlr r0
/* 807C9A38  38 21 00 90 */	addi r1, r1, 0x90
/* 807C9A3C  4E 80 00 20 */	blr 
