lbl_80C51194:
/* 80C51194  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80C51198  7C 08 02 A6 */	mflr r0
/* 80C5119C  90 01 01 34 */	stw r0, 0x134(r1)
/* 80C511A0  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 80C511A4  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 80C511A8  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 80C511AC  F3 C1 01 18 */	psq_st f30, 280(r1), 0, 0 /* qr0 */
/* 80C511B0  DB A1 01 00 */	stfd f29, 0x100(r1)
/* 80C511B4  F3 A1 01 08 */	psq_st f29, 264(r1), 0, 0 /* qr0 */
/* 80C511B8  39 61 01 00 */	addi r11, r1, 0x100
/* 80C511BC  4B 71 10 11 */	bl _savegpr_25
/* 80C511C0  7C 7D 1B 78 */	mr r29, r3
/* 80C511C4  3C 60 80 C5 */	lis r3, M_attr__10daObjLdy_c@ha /* 0x80C52000@ha */
/* 80C511C8  3B E3 20 00 */	addi r31, r3, M_attr__10daObjLdy_c@l /* 0x80C52000@l */
/* 80C511CC  38 61 00 9C */	addi r3, r1, 0x9c
/* 80C511D0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C511D4  4B 40 A3 5D */	bl dKyw_get_AllWind_vecpow__FP4cXyz
/* 80C511D8  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80C511DC  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80C511E0  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80C511E4  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80C511E8  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80C511EC  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80C511F0  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80C511F4  7C 64 1B 78 */	mr r4, r3
/* 80C511F8  3B DF 00 00 */	addi r30, r31, 0
/* 80C511FC  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80C51200  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80C51204  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C51208  4B 6F 5E D1 */	bl PSVECScale
/* 80C5120C  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80C51210  4B 6F 5F 29 */	bl PSVECSquareMag
/* 80C51214  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C51218  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C5121C  40 81 00 58 */	ble lbl_80C51274
/* 80C51220  FC 00 08 34 */	frsqrte f0, f1
/* 80C51224  C8 9F 00 98 */	lfd f4, 0x98(r31)
/* 80C51228  FC 44 00 32 */	fmul f2, f4, f0
/* 80C5122C  C8 7F 00 A0 */	lfd f3, 0xa0(r31)
/* 80C51230  FC 00 00 32 */	fmul f0, f0, f0
/* 80C51234  FC 01 00 32 */	fmul f0, f1, f0
/* 80C51238  FC 03 00 28 */	fsub f0, f3, f0
/* 80C5123C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C51240  FC 44 00 32 */	fmul f2, f4, f0
/* 80C51244  FC 00 00 32 */	fmul f0, f0, f0
/* 80C51248  FC 01 00 32 */	fmul f0, f1, f0
/* 80C5124C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C51250  FC 02 00 32 */	fmul f0, f2, f0
/* 80C51254  FC 44 00 32 */	fmul f2, f4, f0
/* 80C51258  FC 00 00 32 */	fmul f0, f0, f0
/* 80C5125C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C51260  FC 03 00 28 */	fsub f0, f3, f0
/* 80C51264  FC 02 00 32 */	fmul f0, f2, f0
/* 80C51268  FC 21 00 32 */	fmul f1, f1, f0
/* 80C5126C  FC 20 08 18 */	frsp f1, f1
/* 80C51270  48 00 00 88 */	b lbl_80C512F8
lbl_80C51274:
/* 80C51274  C8 1F 00 A8 */	lfd f0, 0xa8(r31)
/* 80C51278  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C5127C  40 80 00 10 */	bge lbl_80C5128C
/* 80C51280  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C51284  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C51288  48 00 00 70 */	b lbl_80C512F8
lbl_80C5128C:
/* 80C5128C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C51290  80 81 00 08 */	lwz r4, 8(r1)
/* 80C51294  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C51298  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C5129C  7C 03 00 00 */	cmpw r3, r0
/* 80C512A0  41 82 00 14 */	beq lbl_80C512B4
/* 80C512A4  40 80 00 40 */	bge lbl_80C512E4
/* 80C512A8  2C 03 00 00 */	cmpwi r3, 0
/* 80C512AC  41 82 00 20 */	beq lbl_80C512CC
/* 80C512B0  48 00 00 34 */	b lbl_80C512E4
lbl_80C512B4:
/* 80C512B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C512B8  41 82 00 0C */	beq lbl_80C512C4
/* 80C512BC  38 00 00 01 */	li r0, 1
/* 80C512C0  48 00 00 28 */	b lbl_80C512E8
lbl_80C512C4:
/* 80C512C4  38 00 00 02 */	li r0, 2
/* 80C512C8  48 00 00 20 */	b lbl_80C512E8
lbl_80C512CC:
/* 80C512CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C512D0  41 82 00 0C */	beq lbl_80C512DC
/* 80C512D4  38 00 00 05 */	li r0, 5
/* 80C512D8  48 00 00 10 */	b lbl_80C512E8
lbl_80C512DC:
/* 80C512DC  38 00 00 03 */	li r0, 3
/* 80C512E0  48 00 00 08 */	b lbl_80C512E8
lbl_80C512E4:
/* 80C512E4  38 00 00 04 */	li r0, 4
lbl_80C512E8:
/* 80C512E8  2C 00 00 01 */	cmpwi r0, 1
/* 80C512EC  40 82 00 0C */	bne lbl_80C512F8
/* 80C512F0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C512F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C512F8:
/* 80C512F8  FF A0 08 90 */	fmr f29, f1
/* 80C512FC  3B 7D 07 20 */	addi r27, r29, 0x720
/* 80C51300  38 7D 05 E4 */	addi r3, r29, 0x5e4
/* 80C51304  4B 43 31 5D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C51308  28 03 00 00 */	cmplwi r3, 0
/* 80C5130C  41 82 00 D4 */	beq lbl_80C513E0
/* 80C51310  38 7D 05 E4 */	addi r3, r29, 0x5e4
/* 80C51314  4B 43 31 E5 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80C51318  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80C5131C  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 80C51320  40 82 00 0C */	bne lbl_80C5132C
/* 80C51324  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 80C51328  41 82 00 A4 */	beq lbl_80C513CC
lbl_80C5132C:
/* 80C5132C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C51330  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C51334  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C51338  38 83 04 D0 */	addi r4, r3, 0x4d0
/* 80C5133C  38 61 00 90 */	addi r3, r1, 0x90
/* 80C51340  38 BD 07 58 */	addi r5, r29, 0x758
/* 80C51344  4B 61 57 F1 */	bl __mi__4cXyzCFRC3Vec
/* 80C51348  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80C5134C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80C51350  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80C51354  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80C51358  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80C5135C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80C51360  38 61 00 84 */	addi r3, r1, 0x84
/* 80C51364  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80C51368  4B 61 5B E1 */	bl normalizeZP__4cXyzFv
/* 80C5136C  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80C51370  7C 64 1B 78 */	mr r4, r3
/* 80C51374  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80C51378  4B 6F 5D 61 */	bl PSVECScale
/* 80C5137C  3B 40 00 02 */	li r26, 2
/* 80C51380  3B 80 00 70 */	li r28, 0x70
/* 80C51384  3B 7F 00 00 */	addi r27, r31, 0
lbl_80C51388:
/* 80C51388  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80C5138C  7C 7D E2 14 */	add r3, r29, r28
/* 80C51390  D0 03 07 38 */	stfs f0, 0x738(r3)
/* 80C51394  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80C51398  D0 03 07 3C */	stfs f0, 0x73c(r3)
/* 80C5139C  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80C513A0  D0 03 07 40 */	stfs f0, 0x740(r3)
/* 80C513A4  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80C513A8  7C 64 1B 78 */	mr r4, r3
/* 80C513AC  C0 3B 00 18 */	lfs f1, 0x18(r27)
/* 80C513B0  4B 6F 5D 29 */	bl PSVECScale
/* 80C513B4  37 5A FF FF */	addic. r26, r26, -1
/* 80C513B8  3B 9C FF C8 */	addi r28, r28, -56
/* 80C513BC  40 80 FF CC */	bge lbl_80C51388
/* 80C513C0  7F A3 EB 78 */	mr r3, r29
/* 80C513C4  48 00 04 79 */	bl divorceParent__10daObjLdy_cFv
/* 80C513C8  48 00 01 40 */	b lbl_80C51508
lbl_80C513CC:
/* 80C513CC  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 80C513D0  41 82 01 38 */	beq lbl_80C51508
/* 80C513D4  7F A3 EB 78 */	mr r3, r29
/* 80C513D8  48 00 04 65 */	bl divorceParent__10daObjLdy_cFv
/* 80C513DC  48 00 01 2C */	b lbl_80C51508
lbl_80C513E0:
/* 80C513E0  38 7D 05 E4 */	addi r3, r29, 0x5e4
/* 80C513E4  4B 43 32 75 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 80C513E8  28 03 00 00 */	cmplwi r3, 0
/* 80C513EC  41 82 00 B8 */	beq lbl_80C514A4
/* 80C513F0  38 7D 06 CC */	addi r3, r29, 0x6cc
/* 80C513F4  4B 43 22 95 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80C513F8  A8 03 00 08 */	lha r0, 8(r3)
/* 80C513FC  2C 00 01 00 */	cmpwi r0, 0x100
/* 80C51400  40 82 01 08 */	bne lbl_80C51508
/* 80C51404  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C51408  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5140C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C51410  38 83 04 D0 */	addi r4, r3, 0x4d0
/* 80C51414  38 61 00 78 */	addi r3, r1, 0x78
/* 80C51418  38 BD 07 58 */	addi r5, r29, 0x758
/* 80C5141C  4B 61 57 19 */	bl __mi__4cXyzCFRC3Vec
/* 80C51420  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80C51424  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80C51428  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80C5142C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80C51430  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80C51434  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80C51438  38 61 00 6C */	addi r3, r1, 0x6c
/* 80C5143C  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80C51440  4B 61 5B 09 */	bl normalizeZP__4cXyzFv
/* 80C51444  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80C51448  7C 64 1B 78 */	mr r4, r3
/* 80C5144C  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80C51450  4B 6F 5C 89 */	bl PSVECScale
/* 80C51454  3B 40 00 02 */	li r26, 2
/* 80C51458  3B 80 00 70 */	li r28, 0x70
/* 80C5145C  3B 7F 00 00 */	addi r27, r31, 0
lbl_80C51460:
/* 80C51460  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80C51464  7C 7D E2 14 */	add r3, r29, r28
/* 80C51468  D0 03 07 38 */	stfs f0, 0x738(r3)
/* 80C5146C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80C51470  D0 03 07 3C */	stfs f0, 0x73c(r3)
/* 80C51474  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80C51478  D0 03 07 40 */	stfs f0, 0x740(r3)
/* 80C5147C  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80C51480  7C 64 1B 78 */	mr r4, r3
/* 80C51484  C0 3B 00 18 */	lfs f1, 0x18(r27)
/* 80C51488  4B 6F 5C 51 */	bl PSVECScale
/* 80C5148C  37 5A FF FF */	addic. r26, r26, -1
/* 80C51490  3B 9C FF C8 */	addi r28, r28, -56
/* 80C51494  40 80 FF CC */	bge lbl_80C51460
/* 80C51498  7F A3 EB 78 */	mr r3, r29
/* 80C5149C  48 00 03 A1 */	bl divorceParent__10daObjLdy_cFv
/* 80C514A0  48 00 00 68 */	b lbl_80C51508
lbl_80C514A4:
/* 80C514A4  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80C514A8  4B 61 5C 05 */	bl isZero__4cXyzCFv
/* 80C514AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C514B0  40 82 00 58 */	bne lbl_80C51508
/* 80C514B4  3B 40 00 00 */	li r26, 0
/* 80C514B8  C3 DF 00 B8 */	lfs f30, 0xb8(r31)
/* 80C514BC  C3 FF 00 BC */	lfs f31, 0xbc(r31)
lbl_80C514C0:
/* 80C514C0  4B 61 63 AD */	bl cM_rnd__Fv
/* 80C514C4  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80C514C8  40 80 00 30 */	bge lbl_80C514F8
/* 80C514CC  4B 61 63 A1 */	bl cM_rnd__Fv
/* 80C514D0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80C514D4  40 80 00 24 */	bge lbl_80C514F8
/* 80C514D8  38 61 00 60 */	addi r3, r1, 0x60
/* 80C514DC  38 9B 00 24 */	addi r4, r27, 0x24
/* 80C514E0  FC 20 E8 90 */	fmr f1, f29
/* 80C514E4  4B 61 56 A1 */	bl __ml__4cXyzCFf
/* 80C514E8  38 7B 00 18 */	addi r3, r27, 0x18
/* 80C514EC  38 81 00 60 */	addi r4, r1, 0x60
/* 80C514F0  7C 65 1B 78 */	mr r5, r3
/* 80C514F4  4B 6F 5B 9D */	bl PSVECAdd
lbl_80C514F8:
/* 80C514F8  3B 5A 00 01 */	addi r26, r26, 1
/* 80C514FC  2C 1A 00 03 */	cmpwi r26, 3
/* 80C51500  3B 7B 00 38 */	addi r27, r27, 0x38
/* 80C51504  41 80 FF BC */	blt lbl_80C514C0
lbl_80C51508:
/* 80C51508  3B 9D 07 20 */	addi r28, r29, 0x720
/* 80C5150C  3B 3D 04 D0 */	addi r25, r29, 0x4d0
/* 80C51510  3B 40 00 00 */	li r26, 0
/* 80C51514  3B 7F 00 00 */	addi r27, r31, 0
lbl_80C51518:
/* 80C51518  38 61 00 54 */	addi r3, r1, 0x54
/* 80C5151C  7F 24 CB 78 */	mr r4, r25
/* 80C51520  7F 85 E3 78 */	mr r5, r28
/* 80C51524  4B 61 56 11 */	bl __mi__4cXyzCFRC3Vec
/* 80C51528  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80C5152C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80C51530  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80C51534  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 80C51538  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80C5153C  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80C51540  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 80C51544  EC 01 00 2A */	fadds f0, f1, f0
/* 80C51548  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80C5154C  38 61 00 CC */	addi r3, r1, 0xcc
/* 80C51550  38 9C 00 18 */	addi r4, r28, 0x18
/* 80C51554  7C 65 1B 78 */	mr r5, r3
/* 80C51558  4B 6F 5B 39 */	bl PSVECAdd
/* 80C5155C  38 61 00 48 */	addi r3, r1, 0x48
/* 80C51560  38 81 00 CC */	addi r4, r1, 0xcc
/* 80C51564  4B 61 59 E5 */	bl normalizeZP__4cXyzFv
/* 80C51568  38 61 00 3C */	addi r3, r1, 0x3c
/* 80C5156C  38 81 00 CC */	addi r4, r1, 0xcc
/* 80C51570  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80C51574  4B 61 56 11 */	bl __ml__4cXyzCFf
/* 80C51578  38 61 00 30 */	addi r3, r1, 0x30
/* 80C5157C  7F 24 CB 78 */	mr r4, r25
/* 80C51580  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80C51584  4B 61 55 61 */	bl __pl__4cXyzCFRC3Vec
/* 80C51588  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80C5158C  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80C51590  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80C51594  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80C51598  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80C5159C  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80C515A0  38 61 00 24 */	addi r3, r1, 0x24
/* 80C515A4  38 9C 00 0C */	addi r4, r28, 0xc
/* 80C515A8  7F 85 E3 78 */	mr r5, r28
/* 80C515AC  4B 61 55 89 */	bl __mi__4cXyzCFRC3Vec
/* 80C515B0  38 61 00 18 */	addi r3, r1, 0x18
/* 80C515B4  38 9C 00 18 */	addi r4, r28, 0x18
/* 80C515B8  38 A1 00 24 */	addi r5, r1, 0x24
/* 80C515BC  4B 61 55 29 */	bl __pl__4cXyzCFRC3Vec
/* 80C515C0  38 61 00 0C */	addi r3, r1, 0xc
/* 80C515C4  38 81 00 18 */	addi r4, r1, 0x18
/* 80C515C8  C0 3B 00 14 */	lfs f1, 0x14(r27)
/* 80C515CC  4B 61 55 B9 */	bl __ml__4cXyzCFf
/* 80C515D0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C515D4  D0 1C 00 18 */	stfs f0, 0x18(r28)
/* 80C515D8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C515DC  D0 1C 00 1C */	stfs f0, 0x1c(r28)
/* 80C515E0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C515E4  D0 1C 00 20 */	stfs f0, 0x20(r28)
/* 80C515E8  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80C515EC  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 80C515F0  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80C515F4  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 80C515F8  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80C515FC  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 80C51600  7F 99 E3 78 */	mr r25, r28
/* 80C51604  3B 5A 00 01 */	addi r26, r26, 1
/* 80C51608  2C 1A 00 03 */	cmpwi r26, 3
/* 80C5160C  3B 9C 00 38 */	addi r28, r28, 0x38
/* 80C51610  41 80 FF 08 */	blt lbl_80C51518
/* 80C51614  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 80C51618  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 80C5161C  E3 C1 01 18 */	psq_l f30, 280(r1), 0, 0 /* qr0 */
/* 80C51620  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 80C51624  E3 A1 01 08 */	psq_l f29, 264(r1), 0, 0 /* qr0 */
/* 80C51628  CB A1 01 00 */	lfd f29, 0x100(r1)
/* 80C5162C  39 61 01 00 */	addi r11, r1, 0x100
/* 80C51630  4B 71 0B E9 */	bl _restgpr_25
/* 80C51634  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80C51638  7C 08 03 A6 */	mtlr r0
/* 80C5163C  38 21 01 30 */	addi r1, r1, 0x130
/* 80C51640  4E 80 00 20 */	blr 
